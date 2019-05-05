## 3SS
## This is the container repo for 3SS content
## Working on making this a simple container. What does it actually need?

current: target
target = Makefile
-include target.mk

##################################################################

screen_session: Lectures.vscreen web.vscreen Homework.vscreen Tests.vscreen Grading.vscreen

vim_session:
	bash -cl "vi Makefile todo.mkd"

##################################################################

Sources += todo.mkd

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
Ignore += content
content:
	git clone https://github.com/Bio3SS/Bio3SS_content.git $@

### These repos should stay here so they can keep their non-specific names?
### Does that mean we have to keep other things just for parallelism??

## Lectures is a working repo with a lot of modules,
## and also has display content
clonedirs += Lectures web
Lectures:
	git clone https://github.com/Bio3SS/$@.git $@

web:
	git clone https://github.com/Bio3SS/Bio3SS.github.io.git $@

## Homework: a public directory with Homework machinery
## It calls on assign, which is the private directory
## The linkages to other submodules are unclear to me.

clonedirs += Homework
Homework:
	git clone https://github.com/Bio3SS/$@.git $@

######################################################################

## Tests 

## 2018 Nov 27 (Tue) I don't understand the nesting structure with these repos
## Tests is old and maybe confused
## It is a public machinery repo that calls on the private repo Evaluation_materials

clonedirs += Tests
Tests:
	git clone https://github.com/Bio3SS/$@.git $@

## clonedirs += material
material:
	git clone https://github.com/Bio3SS/Evaluation_materials $@

## Tests and Grading need to link for test keys probably pardirs
clonedirs += Grading
Grading:
	git clone https://github.com/Bio3SS/$@.git $@

Ignore += $(resting)

######################################################################

-include $(ms)/git.mk
-include $(ms)/visual.mk
# -include $(ms)/modules.mk
