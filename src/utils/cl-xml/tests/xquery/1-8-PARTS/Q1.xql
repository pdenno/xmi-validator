DEFINE FUNCTION one_level (ELEMENT $p) RETURNS ELEMENT

{

        <part partid={ $p/@partid } 

              name={ $p/@name } >

                {

                        FOR $s IN document("data/parts-data.xml")//part

                        WHERE $s/@partof = $p/@partid

                        RETURN one_level($s)

                }

        </part>

}



<parttree>

  {

        FOR $p IN document("data/parts-data.xml")//part[empty(@partof)]

        RETURN one_level($p)

  }

</parttree>

