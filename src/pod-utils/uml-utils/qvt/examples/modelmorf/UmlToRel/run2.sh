cp spec/Example2/RelMM.xml .
cp spec/Example2/UmlMM.xml .
cp spec/Example2/RelUM2.xml .
cp spec/UmlToRel.qvt .
rm -f UmlUM2.xml
sh /local/ModelMorf/ModelMorf/modelmorf.sh -m umlmm -mf UmlMM.xml -m relmm -mf RelMM.xml -c UmlToRel.qvt -u uml -f UmlUM2.xml -u rdbms -f RelUM2.xml -t UmlToRel -d uml -q enforce
