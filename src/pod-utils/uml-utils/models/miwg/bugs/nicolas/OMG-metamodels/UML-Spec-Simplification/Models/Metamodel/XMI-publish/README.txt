September 24, 2013.
Nicolas Rouquette.

For UML 2.5:

- PrimitiveTypes
- UML						
- UMLDI		
- StandardProfile	

The only manual post-edit involved is adding UML::Packages::Package::URI {isID=true}
For DD 1.0.1:

- DC				
- DG				
- DI

For each of the above, there are 3 files:

1) *.xmi			
The xmi machine-readable file corresponding to the normative artifact

2) *.omg-issues.xmi	
The xmi machine-readable file corresponding to the instances of the OMGIssueTag stereotypes 
annotating individual elements in (1) according to issue resolutions.

The *.omg-issues.xmi includes a package merge relation to explicitly indicate
that the package in the *.omg-issues.xmi file is an increment of the corresponding
package in the *.xmi with the same URI

3) *.umldi.xmi
The xmi machine-readable file corresponding to a conversion of the RSA 8.0.0.3 diagram format
into a representation per UMLDI 2.5

The *.umldi.xmi includes a package merge relation to explicitly indicate
that the package in the *.umldi.xmi file is an increment of the corresponding
package in the *.xmi with the same URI

--------------------------------------------

The above covers the following:

+ Version numbers. Should be 20131001.
+ Hrefs should be absolute.  References to DI need to refer to a MOF/XMI 2.5 version of DI.
+ Literal default values should have their values serialized even if they have default values (see issue 18287).
+ Remove all eclipse namespaces etc.
* Xmi:ids. Correlate with UML 2.4.1 if possible. Must be unique (see issue 18141).
* Operation bodies should be expanded from <expr> to result = (<expr>)  (see issue 15259)
* Tags: nsPrefix tags need to refer to the package being tagged.  Schema tags as per issue 18831.
* Also produce a list of metamodel diffs from UML 2.4.1.
