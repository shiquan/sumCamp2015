DIRS	= bwa

bwa: clean
	-wget -cN --no-check-certificate https://downloads.sourceforge.net/project/bio-bwa/bwa-0.7.12.tar.bz2 -O bwa-0.7.12.tar.bz2 
	-tar jxvf bwa-0.7.12.tar.bz2 
	-cd bwa-0.7.12 &&  $(MAKE) && cd ..
	-mkdir -p ../../bin
	-mv bwa-0.7.12/bwa ../../bin/

clean:
	-rm -f ../../bin/bwa
	-$(RM) -rf bwa-0.7.12.tar.bz2 bwa-0.7.12
