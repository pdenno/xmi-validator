cp spec/Example1/ClassMM.xml .
cp spec/Example1/ClassUM1.xml .
cp spec/Example1/ClassUM2.xml .
cp spec/ClassModelToClassModel.qvt .
sh /local/ModelMorf/ModelMorf/modelmorf.sh -m umlMM -mf ClassMM.xml -c ClassModelToClassModel.qvt -u uml1 -f ClassUM1.xml -u uml2 -f ClassUM2.xml -t ClassModelToClassModel -d uml2 -q checkonly
