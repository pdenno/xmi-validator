cp spec/Example2/ClassMM.xml .
cp spec/Example2/ClassUM3.xml .
cp spec/Example2/ClassUM4.xml .
cp spec/ClassModelToClassModel.qvt .
sh /local/ModelMorf/ModelMorf/modelmorf.sh -m umlMM -mf ClassMM.xml -c ClassModelToClassModel.qvt -u uml1 -f ClassUM3.xml -u uml2 -f ClassUM4.xml -t ClassModelToClassModel -d uml2 -q checkonly
