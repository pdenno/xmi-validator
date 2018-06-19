cp spec/hstmMM.xml .
cp spec/stmMM.xml .
cp spec/hstmUM.xml .
cp spec/hstmtostm.qvt .
rm -f stmUM.xml
sh /local/ModelMorf/ModelMorf/modelmorf.sh -m hstmMM_p -mf hstmMM.xml -m stmMM_p -mf stmMM.xml -c hstmtostm.qvt -u hstm -f hstmUM.xml -u stm -f stmUM.xml -t HstmToStm -d stm -q enforce
