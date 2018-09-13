# At NVSL Paper

## Deadlines

Don't forget the timezone.

* Abstract Due: <Fill it in>
* Full paper Due: <Fill it in>
* Rebuttal Period: <Fill it in>
* Author Notification: <Fill it in>
* Camera ready: <Fill it in>
* Page limit: <Fill it in>

* Conference Dates: <Fill it in>
* Conference Location: <Fill it in>

## The Template

We will be using this template moving forward as the starting point for all papers.  You should fork the repo to create a new paper.

This repo works in conjunction with `libpaper` a set of common `.tex`, `.bib`, and other files we will use for writing papers.  That repo is here:  [git@github.com:NVSL/libpaper.git]

## Usage

Create a new paper, you need to:

1.  Get a copy of `libpaper`, e.g. with `git clone git@github.com:NVSL/libpaper.git ./libpaper` or 

```sh
$ git clone git@github.com:NVSL/paper-template.git
$ cd paper-template
$ make setup
```

Assuming the latter:
 
```sh
$ paper-template/libpaper/bin/newpaper.py --topic StarQuake --year 2019 --conference ASPLOS --github-user stevenjswanson
```

Note that you *should not* be checking in the contents of `libpaper` in your paper repo.  You should checkeout `libpaper` in a subdirectory.

## Submitting to ArXiv

To build a version to submit to Arxiv, you need to change the top line of `paper.tex` to 

```tex
\documentclass[manuscript]{acmart}
```

and then do 

```sh
make arxiv
```

This will create a `*-arxiv.tgz` which should upload and build fine on Arxiv.  Please try it and make sure it works, but *do not* post the document.  Steve will do that.


## Grammar Checking

Grammerly (https://app.grammarly.com/) is a free and very good grammar checker.  It can't understand tex, but you can still use it to check the grammar in your papers by exporting the paper as text and uploading.  Create an Grammarly account and then do 

```sh
$ make paper.txt
```

To generate a text version of your paper, upload it, and go through its suggestions.

Like all grammar checkers, it is imperfect, so you must use your judgement and read the suggestions carefully.  It catches a bunch of stuff, though.



