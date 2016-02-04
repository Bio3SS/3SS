* Clone this repo.

* Type `make`

* This will produce a bunch of directories by cloning a bunch of repos (probably bad design)

* Type `cd Bio3SS_content/`

* Type `make` to make something I made recently, or `make structure.draft.pdf` to get the draft slides for the structure unit
  * This will probably produce a fatal error because it is working out its own latex dependencies. That's fine. Repeat the make command, and you should get something reasonably like what you want (but without images)

To get the images, you should __either__:

* Link to my Dropbox folder Lecture_images

* Edit `local.mk` in the Bio3SS_content directory to add a line something like `Drop = ~/Dropbox` (it should point to the parent of Lecture_images)

__or__:

* Type `make update_images`. This will go around the web and download all of the image files whose locations I have archived (they were all identified by google as being tagged for non-commercial reuse).

Now:

* type `make` again. Things should work.

The units are:

* linear

* nonlinear

* structure

The products are:

* handouts

* complete _(handouts with gaps filled)_

* draft _(slides with one slide per pdf page, for reviewing)_

* final _(slides with pauses and so on, for presenting)_
