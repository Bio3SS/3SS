ms = makestuff
-include local.mk
-include $(ms)/os.mk

Sources += $(ms)

Makefile: $(ms) $(ms)/Makefile
$(ms):
	git submodule add https://github.com/dushoff/$@.git

$(ms)/Makefile: 
	git submodule init $(ms) 
	git submodule update $(ms) 
	touch $@

