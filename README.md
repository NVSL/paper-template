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

To prepare a paper for submission to the ArXiv (or for distribution to companies, etc.)

1. Make sure the paper builds properly using `libpaper`
2. Make sure the 'make arxiv' target works properly. It should give you a tar ball with everything you need to build the paper: `*-arxiv.tgz`. There are some variables you may need to set in your `Makefile`.  See `NVSL/paper-template` for an example.
3. Create a branch for the arxiv submission with the name `arxiv`
4. Change the first line of `paper.tex` to `\documentclass[twocolumn]{article}`.
5. Make any other changes necessary to make the paper build.
6. Check the paper output does not include any copyright information (e.g., for ACM or USENIX)
7. Remove all the comments and `\ignore{}`s -- Everything that does not appear in the paper output.
8. Make sure the paper looks good (E.g., all the figures and tables fit in their columns).
9. Create an account on http://arxiv.org and test that it builds properly there. **__do not__** submit it (this is very important).
10. Commit the changes to the branch.

## Grammar Checking

Grammerly (https://app.grammarly.com/) is a free and very good grammar checker.  It can't understand TeX, but you can still use it to check the grammar in your papers by exporting the paper as text and uploading.  Create an Grammarly account and then do 

```sh
$ make paper.grammarly.txt
```

To generate a text version of your paper, upload it, and go through its suggestions.

Like all grammar checkers, it is imperfect, so you must use your judgement and read the suggestions carefully.  It catches a bunch of stuff, though.

### Grammarly is not Magic

You still need to proofread your paper yourself and you cannot blindly accept Grammarly's suggestions.  Doing so will make your paper worse, not better.

### Interpretting Grammarly Errors

Grammarly is built for general writing, so some of it's errors/warnings don't apply directly to our papers (which are technical).  The most important thing about text in a paper is that be clear and easy to understand.  Here are some notes about how to respond to common warnings:

#### “Split Infinitive"
  Remove if it is easy.  This is not a big deal
  
  
#### "Repetitive Word"
Repitition can make text boring, but in technical writing referring to the same concept with the same word increases clarity.

So if it is being used a technical sense or to refer to a specific concept, do not change it.  For instance, grammarly flagged “commit” and “log” as  repetitive in a section and transaction processing.  These are technical terms, so you have to use them to be clear.   

If it’s not a technical term, minimize repetition.  For instance, grammarly flagged “traditional” as repetitive in a related work section, so I changed some of the “traditional”s to “previous” or "recent" or just deleted them.   

#### "Overused Word"

These are words that people use too much in general.  If it’s a technical term, keep it.    For instance, “strongest” has a technical meaning in terms of consistency, but in a non-technical context, you could replace with “most powerful”.   For non-techinical terms, you don’t always need to fix these.  Use the most clear, descriptive, and accurate word you can find.

#### TeX Articfacts
paper.grammarly.txt is not perfect, and some TeX artifacts end up in there.  Ignore any complaints from Grammarly about those.

