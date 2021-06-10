# JWST ERS GitHub Hack Tools

In these notebooks we're going to look at how to use git and GitHub, and try to answer these questions?

* How do you get and use someone else’s code?
* How do you submit an issue for a code you care about?
* How do you fork and contribute to a project?
* How do you make your own code repository?
* How do you make your code usable and enticing to other people?

These notebooks are all going to be in Python, but we'll try to be general where we can!



## Using the Makefile to start a project with all the recommended tools
**Warning: If you want to use the `Makefile`, make sure you update the license to one you agree with, with your name in it and the correct date!**

I'm including a Makefile which

1. Makes a new `pyenv` virtual environment
2. Makes a new `poetry` project, with the correct directory structure
3. Adds basic packages (`jupyter-lab` and `numpy`)
4. Installs `mkdocs`, and adds a `.yaml` file for it
5. Initializes a git repository, with a .gitignore
6. Adds a license, a test, and GitHub action files for `flake8`, `black` and `pytest` which are all found in the `init` directory.

I find this is a great way to setup a new project with roughly the things I'm going to want to start with every time. You can start a project using this file with

```
make init
```

and delete a project using it with

```
make delete
```

Use this with some caution though, you may not like all of my defaults!
