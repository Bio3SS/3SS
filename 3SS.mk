3SSrepos = Lectures

$(3SSrepos):
	git submodule add https://github.com/Bio3SS/$@.git || (git submodule init $@ && git submodule update $@)

$(ms)/%.mk: 
	git submodule init $(ms) 
	git submodule update $(ms) 
	touch $@

