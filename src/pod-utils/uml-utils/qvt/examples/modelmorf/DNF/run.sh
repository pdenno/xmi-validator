cp spec/DNFMM.xml .
cp spec/DNFUM.xml .
cp spec/DNF.qvt .
sh /local/ModelMorf/ModelMorf/modelmorf.sh -m exprMM -mf DNFMM.xml -c DNF.qvt -u expr1 -f DNFUM.xml -u expr2 -ui expr1 -t DNF -d expr2 -q enforce
