cp spec/Example1/UmlMM.xml .
cp spec/Example1/RelMM.xml .
cp spec/Example1/UmlUM1.xml .
cp spec/UmlToRel.qvt .
rm -f RelUM1.xml
sh /local/ModelMorf/ModelMorf/modelmorf.sh -m umlmm -mf UmlMM.xml -m relmm -mf RelMM.xml -c UmlToRel.qvt -u uml -f UmlUM1.xml -u rdbms -f RelUM1.xml -t UmlToRel -d rdbms -q enforce
