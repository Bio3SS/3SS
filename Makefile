
## 3SS
## This is the container repo for 3SS content
## Should be a hybrid repo, but don't feel like bothering right now

current: target
target = Makefile
-include target.mk

##################################################################

## Make modules (does this have to be above module includes?)

clonedirs += Lectures

## Lots of course info, co-ordination stuff

Sources += notes.txt

######################################################################

# make files

## Need to figure out how to tag things for modules vs. clones.
## Do we need another repo type?
## Before sub.mk; and make sure Sources doesn't get reset
Sources += 3SS.mk
# include 3SS.mk

Sources += Makefile .ignore README.md upstuff.mk LICENSE.md
include upstuff.mk

##################################################################

## Contained repos

## A lot of things go inside Lectures, which is a working repo 
## and also has display content

clonedirs += Lectures
Lectures:
	git clone https://github.com/Bio3SS/$@.git $@

######################################################################

-include $(ms)/git.mk
-include $(ms)/visual.mk
# -include $(ms)/modules.mk
