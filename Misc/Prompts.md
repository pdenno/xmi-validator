# Prompts I Used

Please look at thecurrent project files. This is a tool to validate XMI which is used to model UML or UML-based models and profiles like SysML and UAF. However, this is based on older XMI, UML, and profiles like SysML which all need to be updated. We also need to extend the error reporting as needed as other problems are found For example, warnings when stereotypes and their properties do not have documentation. Of course this biggest issue is that the app is written in LISP and is server-based, thus we need to convert to a fully javascript-based to allow users to run fully in their browser.  We will also need to add new folders hold the latest XMI, Schemas, for MOF, UML, SysML, UAF, and others as needed.  Note that this also has OWL, RDF, CMOF, and other standards that are also likely out of date. Please come up with requirements, test-first methodology and any extra tooling we need and a plan to rewrite the validor.

Add to the requirements to mark the line and character where errors or warnings exist. Also there are very specfic errors seen in files from Cameo/MagicDraw based tools and Sparx that we need to ensure are seen as critical warnings in which there is a reference to a tool-specific library or extention. I also noticed you did not spt the cononical renumbering functionality of this tool which is an optional replacement of UUID with connanical ID.

I tlooks like, based on your plan,  you are running this as a server, so if this was actually run on a server, plase ensure that we have a requirement that the app is imune to mutiple people running the application (no side effects). We also need to create scripts for windows and Unix/Linux platforms and detailed documentation for instalation, setup, running self tests or running a test against a web-based (like hosted in the OMG.org document service) or a local file. Also there should also be an addtional requirement to configure a different reference for an XMI or dependent XMI to allow a user to validate a file against an other version or beta of a file. For testing, we should be able to run the test against a set of URL pointing to existing XMI. This means that this capability also has the capability to configure specific dependencies.

Can you do a security review. Also be sure you are not using any software that may have an active threat

Ok, if you look at the test file ptc-26-02-08.xmi there are additional errors that you are missing.
First this issue

Cannot set feature "value" with value "@bit_bound" to the element Literal Unlimited Natural(EAID_LI000110__1A00_4a80_8FCE_2A153E61053A).

Then another error:

Feature "ownedAttribute" cannot be set for the element Instance Specification(EAID_607C8664_335C_40fc_89AF_A690E0311F6F) with value Property(EAID_dstAB60EB_B422_4e00_AC58_8C99683DE8B2), line number : 1532

we also might want a button to load a file. It is also critical that you support loading of multiple files as some standards (UML being one) where we need to validate files as a set. I have added files in the tests directory that you can use to test the application

The following are issues becase one end of the association is referencing an instance rather than a classifier.

Association - Relationship has no client. (Element id is 'EAID_37AB60EB_B422_4e00_AC58_8C99683DE8B2') Association - Relationship has no supplier. (Element id is 'EAID_4B071F22_1BA2_45e0_A9CB_9CF7CB36FC45') Association - Relationship has no supplier. (Element id is 'EAID_A71432B7_6D00_4d95_9858_3381DE429182') Profile Application - Relationship has no supplier. (Element id is 'profileap_thecustomprofile') Property - Relationship has no supplier. (Element id is 'EAID_src071F22_1BA2_45e0_A9CB_9CF7CB36FC45') Property - Relationship has no supplier. (Element id is 'EAID_src1432B7_6D00_4d95_9858_3381DE429182') Property - Relationship has no client. (Element id is 'EAID_srcAB60EB_B422_4e00_AC58_8C99683DE8B2') Property data - Relationship has no supplier. (Element id is 'EAID_dst071F22_1BA2_45e0_A9CB_9CF7CB36FC45') Property data - Relationship has no supplier. (Element id is 'EAID_dst1432B7_6D00_4d95_9858_3381DE429182') Property type - Relationship has no client. (Element id is 'EAID_dstAB60EB_B422_4e00_AC58_8C99683DE8B2')

What is remaining? I noticed you did not add the canonical renumbering functionality. Do you have test cases created to test each of the rules?
