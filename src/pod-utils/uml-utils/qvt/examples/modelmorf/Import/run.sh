mv /local/ModelMorf/ModelMorf/qvt.cfg /local/ModelMorf/ModelMorf/qvt.cfg.bak -f
cp spec/qvt.cfg /local/ModelMorf/ModelMorf
cp spec/umlMM.xml .
cp spec/rdbmsMM.xml .
cp spec/umlUM.xml .
cp spec/rdbmsUM.xml .
cp spec/UmlToRdbms_1.qvt .
cp spec/UmlToRdbms_2.qvt .
sh /local/ModelMorf/ModelMorf/modelmorf.sh -m umlMM -mf umlMM.xml -m rdbmsMM -mf rdbmsMM.xml -c UmlToRdbms_1.qvt -u uml -f umlUM.xml -u rdbms -f rdbmsUM.xml -t UmlToRdbms_1 -d rdbms -q checkonly
rm -f /local/ModelMorf/ModelMorf/qvt.cfg
mv /local/ModelMorf/ModelMorf/qvt.cfg.bak /local/ModelMorf/ModelMorf/qvt.cfg
