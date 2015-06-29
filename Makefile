program:
	-cd source_codes && $(MAKE) && cd ..
	-cd database && $(MAKE) && cd ..
	-perl generate.pl

clean:
	-cd source_codes && $(MAKE) clean && cd ..

