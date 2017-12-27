This looks like it's pre-modules. Gut it and set it up with a new module-based style

Setup
=====

__old directions__

* Clone this repo (`git clone git@github.com:Bio3SS/3SS.git` or `git clone https://github.com/Bio3SS/3SS.git`), and go there (`cd 3SS`)

* Type `make`

* This will produce a bunch of directories by cloning a bunch of repos (probably bad design)

* Change directories to Bio3SS_content (`cd Bio3SS_content/`)

* Type `make` to make something I made recently, or `make structure.draft.pdf` to get the draft slides for the structure unit
  * This will probably produce a fatal error because it is working out its own latex dependencies. That's fine. 

If you are making slides (or handouts that happen to have downloaded images), you will need to get the downloaded images, which need to go somewhere. You should __either__:

* Link to my Dropbox folder Lecture_images

* Edit `local.mk` in the Bio3SS_content directory to add a line something like `Drop = ~/Dropbox` (it should point to the parent of Lecture_images)

__or__:

* Don't.  This will let make go around the web and download all of the image files whose locations I have archived (they were all identified by google as being tagged for non-commercial reuse).

__Then__:

* Type `make update_images`. In the Dropbox case this doesn't do anything but let make know you think you've made a decision.

Now:

* type `make` again. Things should work. You may want to keep making until it seems to stop doing stuff, and this may help for indexing (clicking correctly on the ToC)

Products
========

The units are:

* linear

* nonlinear

* structure

The products are:

* outline

* handouts

* complete _(handouts with gaps filled)_

* draft _(slides with one slide per pdf page, for reviewing)_

* final _(slides with pauses and so on, for presenting)_

The suffixes are:

* .pdf

* .pdf.go _Tries to display the product immediately; probably won't work, especially if you are not on linux_

So, for example:

* `make linear.outline.pdf`

* `make structure.draft.pdf.go` (this is the currently most relevant one).

Publishing
==========

* To be added ... may need to link some _more_ repos first.
