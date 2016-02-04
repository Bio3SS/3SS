
msrepo = https://github.com/dushoff
courserepo = https://github.com/Bio3SS

gitroot = ./
export ms = $(gitroot)/makestuff

-include local.mk
-include $(gitroot)/local.mk
export ms = $(gitroot)/makestuff
-include $(ms)/os.mk

coursedirs = $(gitroot)/Population_time_series $(gitroot)/Exponential_figures $(gitroot)/Birth_death_models $(gitroot)/Compensation_models $(gitroot)/Life_tables $(gitroot)/Age_distributions $(gitroot)/Structured_models $(gitroot)/Bio3SS_content $(gitroot)/Lecture_images

Makefile: $(ms) $(coursedirs)

$(ms):
	cd $(dir $(ms)) && git clone $(msrepo)/$(notdir $(ms)).git

$(coursedirs): local.mk
	$(MAKE) -f stuff.mk $(gitroot)
	cd $(gitroot) && git clone $(courserepo)/$(notdir $@).git
	cp local.mk $@

local.mk:
	echo gitroot = $(shell pwd) > $@

$(gitroot):
	mkdir $@
