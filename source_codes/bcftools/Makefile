DIRS	= bcftools-1.2

bcftools: clean
	-wget -cN --no-check-certificate https://github.com/samtools/bcftools/releases/download/1.2/bcftools-1.2.tar.bz2 -O bcftools-1.2.tar.bz2
	-tar jxvf bcftools-1.2.tar.bz2
	-cd bcftools-1.2 && $(MAKE) && cd ..
	-mv -f bcftools-1.2/bcftools ../../bin/

clean:
	-rm -f ../../bin/bcftools
	-$(RM) -rf bcftools-1.2.tar.bz2 bcftools-1.2
