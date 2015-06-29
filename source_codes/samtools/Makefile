DIRS	= samtools-1.2

bcftools: clean
	-wget -cN --no-check-certificate https://github.com/samtools/samtools/releases/download/1.2/samtools-1.2.tar.bz2 -O samtools-1.2.tar.bz2
	-tar jxvf samtools-1.2.tar.bz2
	-cd samtools-1.2 &&  $(MAKE) && cd ..
	-mv samtools-1.2/samtools ../../bin/

clean:
	-rm -f ../../bin/samtools
	-$(RM) -rf samtools-1.2.tar.bz2 samtools-1.2
