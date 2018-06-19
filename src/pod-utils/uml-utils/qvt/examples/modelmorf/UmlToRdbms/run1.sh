cp spec/umlMM.xml .
cp spec/rdbmsMM.xml .
cp spec/umlUM.xml .
cp spec/rdbmsUM.xml .
cp spec/UmlToRdbms.qvt .
sh /local/ModelMorf/ModelMorf/modelmorf.sh -m umlMM -mf umlMM.xml -m rdbmsMM -mf rdbmsMM.xml -c UmlToRdbms.qvt -u uml -f umlUM.xml -u rdbms -f rdbmsUM.xml -t UmlToRdbms -d rdbms -q checkonly
