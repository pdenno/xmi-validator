
 /* This is an example from Appendix A.1 of the QVT spec. */

transformation umlToRdbms (uml:SimpleUML, rdbms:SimpleRDBMS)
{
key Table (name, schema);   // Further evidence that this is one-way:
key Column (name, owner);   // If not, where are the uml key constructs, and why don't these have domain prefix?
key Key (name, owner);      // Also without prefix, how do you enforce to multiple domains?
key Schema (name);            // POD ADDED THIS ONE!!!
key ForeignKey (name, owner); // POD ADDED THIS ONE!!!

top relation PackageToSchema // map each package to a schema
{
 pn: String;
 checkonly domain uml p:Package {name=pn};
 enforce domain rdbms s:Schema {name=pn};
}


top relation ClassToTable 
{
    // I think as a general rule, you ought to supply key attributes to the enforce domain.
    // The parser post-processing ought to check for it, and the QVT spec ought to say so.
	cn, prefix: String;
	checkonly domain uml c:Class {namespace=p:Package {}, kind='Persistent', name=cn};
	enforce domain rdbms t:Table {schema=s:Schema {}, 
				      name=cn, // POD they didn't have owner=t here !!!
					  // POD Why is type forced to number ???
                       	              column=cl:Column {name=cn+'_tid', type='NUMBER', owner=t},
                                      // POD they had 'column' here not 'owner' !!!
 				      key=k:Key {name=cn+'_pk', owner=cl}}; 
 when { 
     PackageToSchema(p, s); 
     // After this WHEN, ?S is established, and we can complete the key for ?T (establish ?T)
  }
  where {
      // So here you have ?C ?T and ?PREFIX established. 
      // This just does work (migrating to related elements).
      prefix = '';
      AttributeToColumn(c, t, prefix); 
  }
}    

// This one does all its work through the WHERE. Enforce does nothing.
relation AttributeToColumn
{
    checkonly domain uml c:Class {};
    enforce domain rdbms t:Table {};
    primitive domain prefix:String;
    where {
	// Another example of a WHERE doing work...
	PrimitiveAttributeToColumn(c, t, prefix);
	ComplexAttributeToColumn(c, t, prefix);
	SuperAttributeToColumn(c, t, prefix);
    }
}

// This one does work through the enforce
// The writer of this mapping tends to define variables that are not needed: ?p, ?cl here.
relation PrimitiveAttributeToColumn
{
    an, pn, cn, sqltype: String;
    checkonly domain uml c:Class {attribute=a:Attribute {name=an,type=p:PrimitiveDataType {name=pn}}};
    enforce domain rdbms t:Table {column=cl:Column {name=cn, type=sqltype}};
    primitive domain prefix:String;
    where {
	cn = if (prefix = '') then an else prefix+'_'+an endif;
	sqltype = PrimitiveTypeToSqlType(pn);
    }
}

relation ComplexAttributeToColumn
{
    an, newPrefix: String;
    checkonly domain uml c:Class {attribute=a:Attribute {name=an,type=tc:Class {}}};
    enforce domain rdbms t:Table {};
    primitive domain prefix:String;
    where {
	newPrefix = prefix+'_'+an;
	AttributeToColumn(tc, t, newPrefix);
    }
}

relation SuperAttributeToColumn
{
    checkonly domain uml c:Class {general=sc:Class {}};
    enforce domain rdbms t:Table {};
    primitive domain prefix:String;
    where { // POD This looks odd at first, but prefix gets bound in calls from 
            // POD AttributeToColumn <-- PackageToSchema and this recurses on the superclass
	AttributeToColumn(sc, t, prefix);
    }
}

// map each association between persistent classes to a foreign key
top relation AssocToFKey
{
    srcTbl, destTbl: Table;
    pKey: Key;
    an, scn, dcn, fkn, fcn: String;
    s : Schema;

    checkonly domain uml a:Association {namespace=p:Package {},name=an,
				        source=sc:Class {kind='Persistent',name=scn},
					destination=dc:Class {kind='Persistent',name=dcn}};

					  // POD Why is type forced to number ???
     enforce domain rdbms fk:ForeignKey { /* POD I need to add // to lexer!!! schema=s:Schema{} Not in the UML!!! */
					name=fkn,
                                        owner=srcTbl,
					column=fc:Column {name=fcn,type='NUMBER',owner=srcTbl},
					refersTo=pKey};
    // POD WHEN may obtain bindings for target-side things, whereas the k-1 checkonly domains
    // have no relation to the target. 
    // WHERE can also set target side, but at that point in processing, the enforce is already 
    // set to fire. (fkn, fcn are examples).
    // (Having made it past the WHEN, it is guaranteed to fire, with binding from WHERE).
    // So it works like this:
    //   (1) Get bindings from k-1 checkonly domains.
    //   (2) Get binding, if any, from the WHEN (Relation calls and these queer assignments like pKey below).
    //   (3) Do key-completion (first step of enforcement).
    //   (4) Evaluate WHERE, producing ("ancillary") target objects ("migrating"), and more bindings.
    //   (5) Do whatever additional key-completion was enabled by the WHERE.
    //   (6) enforce the target domain
    when { 
	PackageToSchema(p, s);
	ClassToTable(sc, srcTbl);
	ClassToTable(dc, destTbl);
	pKey = destTbl.key; // This is always true (it's an assignment). The spec should say something about this!
	// Not enough here to establish ?FK : ForeignKey (need name and owner).
    }
    // The tricky thing about this language is that in this situation the WHERE doesn't 
    // need anything from the key completion, but it does constrain the enforced objects.
    // (It is really doing direct constraints, rather than "migrating constraints" that
    // are be based on some key completion.
    where {
	fkn=scn+'_'+an+'_'+dcn;
	fcn=fkn+'_tid';
	// Now have enough to establish ?FK and ?FC (both need names and owners).
    }
}


function PrimitiveTypeToSqlType(primitiveType:String) : String
{
    if (primitiveType='INTEGER')
	then 'NUMBER'
	    else if (primitiveType='BOOLEAN')
		then 'BOOLEAN'
		    else 'VARCHAR'
			     endif
			     endif /* POD there was a ; here */
}


}
