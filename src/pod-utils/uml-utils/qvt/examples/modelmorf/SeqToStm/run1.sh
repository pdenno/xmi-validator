cp spec/SeqMM.xml .
cp spec/StmcMM.xml .
cp spec/SeqUM.xml .
cp spec/StmcUM.xml .
cp spec/SeqToStm.qvt .
sh /local/ModelMorf/ModelMorf/modelmorf.sh -m SeqMM -mf SeqMM.xml -m StmcMM -mf StmcMM.xml -c SeqToStm.qvt -u seqDgm -f SeqUM.xml -u stm -f StmcUM.xml -t SeqToStm -d stm -q checkonly
