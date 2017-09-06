README: Project template
========================

This repository is to be the starting point for all new projects in the [Yoder Lab](http://lab.jbyoder.org). To begin a new project, fork this one, renaming it to something apt and pithy. 

This file is the README, which contains an explanation of the repository contents. It's written in [markdown](https://daringfireball.net/projects/markdown), a form of text markup that is readable as plaintext, but can be interpreted into formated rich text or HTML by various readers, including the GitHub website. When you create a project, you should revise this file to describe the project as you plan it, and keep it updated as you proceed.


Directory structure and contents
--------------------------------

These are the major contents and subdirectories of the project folder. Add or delete and modify as necessary.

- `project_template.md`: project notes, ongoing, in markdown; this should be renamed to match the repository name when you fork the new project
- `scripts`: shell scripts and other languages
	- `R`: R code specifically
	- `Mathematica`: Mathematica notebooks
- `data`: data generated *in the course of analysis*; larger raw datafiles, especially DNA sequence reads, should live elsewhere, outside the project folder, to save space on GitHub and so that we can share project code without automatically also sharing the raw data
- `output`: final(ish) analysis results
- `figures`: figures
- `ms`: manuscript text, drafted in markdown with LaTex-formatted display items (tables, figures, equations) for typesetting using pandoc


Dependencies
------------

These are the programs, utilities, and other software infrastructure necessary to make the elements of the project work. At a minimum, we'll usually use the following; add to this as the project proceeds.

- Mathematica --- [http://www.wolfram.com/mathematica](http://www.wolfram.com/mathematica/) --- regrettably proprietary but very useful software for doing complex algebra; we have a lab license 
- pandoc --- [https://pandoc.org](https://pandoc.org) --- for typesetting manuscript drafts
- R --- [http://www.r-project.org](http://www.r-project.org) --- for most statistical analysis and a fair bit of scripting-like work


External data
-------------

This should list and describe any external datasets that the project scripts operate on. File formats, especially, should be annotated to aid people using the project scripts.
