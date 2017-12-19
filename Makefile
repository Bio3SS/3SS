
current: target
target = Makefile
-include target.mk

##################################################################

## Make modules (does this have to be above module includes?)

mdirs += Lectures
Makefile: Lectures Lectures/Makefile

######################################################################

# make files

## Before sub.mk; and make sure Sources doesn't get reset
Sources += 3SS.mk
include 3SS.mk

Sources += Makefile .gitignore README.md sub.mk LICENSE.md
include sub.mk

Sources += $(mdirs)

##################################################################

### Makestuff

-include $(ms)/git.mk
-include $(ms)/visual.mk
-include $(ms)/modules.mk

# -include $(ms)/wrapR.mk
# -include $(ms)/oldlatex.mk
