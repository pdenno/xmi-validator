cp spec/ClassMM_IN.xml .
cp spec/ClassUM_IN.xml .
cp spec/AbstractToConcrete.qvt .
sh /local/ModelMorf/ModelMorf/modelmorf.sh -m UMLMM -mf ClassMM_IN.xml -c AbstractToConcrete.qvt -u uml1 -f ClassUM_IN.xml -u uml2 -ui uml1 -t AbstractToConcrete -d uml2 -q enforce
