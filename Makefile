# 3SS
### Hooks for the editor to set the default target
current: target

target pngtarget pdftarget vtarget acrtarget: Makefile

##################################################################

# make files

## Before sub.mk; and make sure Sources doesn't get reset
Sources += 3SS.mk
include 3SS.mk

Sources += Makefile .gitignore README.md sub.mk LICENSE.md
include sub.mk

##################################################################

## Make modules

Makefile: Lectures Lectures/Makefile

######################################################################

### Makestuff

-include $(ms)/git.mk
-include $(ms)/visual.mk
-include $(ms)/modules.mk

# -include $(ms)/wrapR.mk
# -include $(ms)/oldlatex.mk
