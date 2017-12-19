3SSrepos = Lectures
repodirs += $(3SSrepos)

$(3SSrepos):
	git submodule -b master add https://github.com/Bio3SS/$@.git || (git submodule init $@ && git submodule update $@)

