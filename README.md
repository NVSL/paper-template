# NVSL Paper Template

We will be using this template moving forward as the starting point for all papers.  You should fork the repo to create a new paper.

This repo works in conjunction with `libpaper` a set of common `.tex`, `.bib`, and other files we will use for writing papers.  That repo is here:  [git@github.com:NVSL/libpaper.git]

## Usage

Create a new paper (e.g.):

```sh
$ git clone git@github.com:NVSL/paper-template.git 2019ASPLOS-StarQuake
$ cd 2019ASPLOS-StarQuake
$ make setup
$ libpaper/bin/newpaper.py --topic StarQuake --year 2019 --conference ASPLOS --github-user stevenjswanson
$ make
$ open paper.pdf
```

