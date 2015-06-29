hg19:
	-rsync -avzP rsync://hgdownload.cse.ucsc.edu/goldenPath/hg19/bigZips/chromFaMasked.tar.gz .
	-tar zxvf chromFaMasked.tar.gz && cat *.masked > hg19.fasta && $(RM) -f *.masked
	-../bin/samtools faidx hg19.fasta
	-../bin/bwa index hg19.fasta


cleanall:
	-$(RM) -f hg19.fasta chromFaMasked.tar.gz hg19.fasta.amb  hg19.fasta.ann  hg19.fasta.bwt  hg19.fasta.fai  hg19.fasta.pac  hg19.fasta.sa 
