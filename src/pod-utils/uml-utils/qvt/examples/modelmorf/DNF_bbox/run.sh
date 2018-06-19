cp spec/DNFMM.xml .
cp spec/DNFUM.xml .
cp spec/DNF_bbox.qvt .
sh spec/DNF_bbox/compile.sh
sh /local/ModelMorf/ModelMorf/modelmorf.sh -m exprMM -mf DNFMM.xml -c DNF_bbox.qvt -u expr1 -f DNFUM.xml -u expr2 -ui expr1 -t DNF_bbox -d expr2 -q enforce
