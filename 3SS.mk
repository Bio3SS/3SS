3SSrepos = Lectures
repodirs += $(3SSrepos)

$(3SSrepos):
	git submodule add https://github.com/Bio3SS/$@.git || (git submodule init $@ && git submodule update $@)
