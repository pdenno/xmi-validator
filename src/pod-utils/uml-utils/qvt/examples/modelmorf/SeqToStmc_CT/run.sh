cp spec/SeqMM.xml .
cp spec/StmcMM.xml .
cp spec/SeqUM.xml .
cp spec/StmcUM.xml .
cp spec/SeqToStmc.qvt .
sh /local/ModelMorf/ModelMorf/modelmorf.sh -m SeqMM -mf SeqMM.xml -m StmcMM -mf StmcMM.xml -c SeqToStmc.qvt -u seqDgm -f SeqUM.xml -u stmc -f StmcUM.xml -t SeqToStmc -d stmc -q checkonly
