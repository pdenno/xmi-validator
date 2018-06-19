cp spec/umlMM.xml .
cp spec/javaMM.xml .
cp spec/transportuml.xml .
cp spec/mitosi.qvt .
rm -f transportjava.xml
rm -f trace.xml
sh /local/ModelMorf/ModelMorf/modelmorf.sh -m umlmmmi -mf umlMM.xml -m javammsi -mf javaMM.xml -c mitosi.qvt -u uml -f transportuml.xml -u java -f transportjava.xml -t MiToSi -d java -q enforce -of trace.xml
