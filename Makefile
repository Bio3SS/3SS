
## 3SS
## This is the container repo for 3SS content
## Working on making this a hybrid repo

current: target
target = Makefile
-include target.mk

##################################################################

## Make modules (does this have to be above module includes?)

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

## Original, super-overloaded "content" repo
clonedirs += content
content:
	git clone https://github.com/Bio3SS/Bio3SS_content.git $@

## Lectures is a working repo with a lot of modules,
## and also has display content
clonedirs += Lectures
Lectures:
	git clone https://github.com/Bio3SS/$@.git $@

## Homework for homework; also a working repo
clonedirs += Homework
Homework:
	git clone https://github.com/Bio3SS/$@.git $@

## Tests is an older repo than many of these and may have issues
clonedirs += Tests
Tests:
	git clone https://github.com/Bio3SS/$@.git $@

######################################################################

-include $(ms)/git.mk
-include $(ms)/visual.mk
# -include $(ms)/modules.mk
