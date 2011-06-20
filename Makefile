-include ../../Make.config

all: i686 mipsel ppc db2 sh4 mipsel15 ipkg

i686:
	$(MAKE) -C build/i686
	
ppc: 	
	$(MAKE) -C build/ppc

db2: 	
	$(MAKE) -C build/db2

mipsel: 	
	$(MAKE) -C build/mipsel

mipsel15:         
	$(MAKE) -C build/mipsel15
	
sh4:         
	$(MAKE) -C build/sh4

ipkg:   mipsel
	$(MAKE) -C pkgs ipkg
    	
arm:         
	$(MAKE) -C build/arm

	
clean:
	$(MAKE) -C build/i686 clean
	$(MAKE) -C build/ppc clean
	$(MAKE) -C build/db2 clean
	$(MAKE) -C build/mipsel clean
	$(MAKE) -C build/sh4 clean
	$(MAKE) -C build/mipsel15 clean
	$(MAKE) -C pkgs clean
	$(MAKE) -C build/arm clean