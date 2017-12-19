ms = makestuff
-include local.mk
-include $(ms)/os.mk

Sources += $(ms)

Makefile: $(ms) $(ms)/Makefile
makestuff:
	git submodule add -b master https://github.com/dushoff/$@.git

makestuff/git.mk: 
	git submodule init $(ms) 
	git submodule update $(ms) 
	touch $@

makestuff/Makefile: 
	git submodule init $(ms) 
	git submodule update $(ms) 
	touch $@

