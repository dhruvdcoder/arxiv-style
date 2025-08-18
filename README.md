This template is adapted from [https://github.com/kourgeorge/arxiv-style](https://github.com/kourgeorge/arxiv-style) and is available at [https://github.com/dhruvdcoder/arxiv-style](https://github.com/dhruvdcoder/arxiv-style).

# Usage

Copy or rename `template.tex` to `main.tex` and start writing your paper.


# Features

## Multiple Drafts

1. Create copies of the `drafts/preprint`, for example as `drafts/iclm`, `drafts/workshop`, etc. 
2. Keep only one file with the name `main.tex` such that at any point only one draft is compiled. To do this rename to `preprint.tex`, `icml.tex` etc. You will have custom content in the main file for each draft, therefore, keep separate main files, just don't have `main` in the file name except for the active draft.
3. In the active main file, change the `\input` commands to point to the correct draft folder.



## TODO Notes
`packages/colab.sty` contains macros and commands for authors to leave comments. It provides a quick way to hide all the comments when you are ready to submit or if you want to see the true length of the paper. To hide all the comments and annotations, uncomment the `%\readytosubmit` line in `packages/colab.sty`. Note that when commented, i.e., not ready to submit, in addition to the comments being visible in the pdf, the margins of the pdf will also be relaxed to accommodate the comments. If you are using this file as a drop-in in some other latex project, the relaxation of margin might raise errors or give warnings. For example, the ICML template raises errors when the margins are relaxed. You should not worry about these error. They will disappear when you uncomment the `%\readytosubmit` line.


Each author gets their own color. There are three commands defined for three authors. I suggest naming the commands using the initials of the authors. Modify the following lines to change the initials:

```
% Commands for people to comment
\newcommand{\dnp}[1]{\ifsubmissionready\else\todo[color=red]{{\textbf{DP: }#1}}\fi}
\newcommand{\vp}[1]{\ifsubmissionready\else\todo[color=magenta]{{\textbf{VP: }#1}}\fi}
\newcommand{\kc}[1]{\ifsubmissionready\else\todo[color=lightgreen]{{\textbf{KC: }#1}}\fi}
```

You may use `\dnp{}`, etc. to leave comments in the form of todo notes.
Additionally, there is a common `\TODO{}` command as well, which can be used by anyone.

1. `\TODO{}`: Common TODO note that can be used by anyone.
2. `\sout{}`: Stands for "strike out". Use this to mark text that you think should be removed. In the submission ready version, the marked text will not be visible.
3. `\comment{}`: Use this to leave an inline (not a todo note comment) comment in red color. This will not be visible in the submission ready version.
4. `\na{}`: Usually used in combination with `\sout{}`, like `\sout{something to remove}\na{something added in its place}` to highlight, in green, the new text added. The green color will not be visible in the submission ready version.
5. `\mr{}`: Stands for "maybe remove". It is a suggestion to remove some text. The text will be highlighted in gray. The text will not be removed in the submission ready version, and will appear as normal text. This is a milder version of `\sout{}`, which removes the text in the submission ready version.

## Math Macros
1. `packages/math.sty` Basic operators that are frequently used like argmax, norm, etc.

## Referencing macros
1. `packages/references.sty` Macros for referencing sections, figures, tables, etc. Use `\secref{}`, `\figref{}`, `\tabref{}`, etc. to reference sections, figures, tables, etc.

## Styles
Different styles are present in the `styles` folder. For example, place `\usepackage(styles/arxiv)` after `\documentclass{article}` to use neurips inspired style. The default is `styles/altpreprint`.



## Handling References when submitting to arXiv.org

We use the [arxiv-collector](https://github.com/djsutherland/arxiv-collector) script to collect the source files that are needed to submit to arXiv.org. This script will be automatically run at the end of compilation when you compile using `latexmk`. This also means that the compilation will have have the same behavior on overleaf as well. See [how overleaf compiles](https://www.overleaf.com/learn/how-to/How_does_Overleaf_compile_my_project%3F), [how to replicate overleaf's compilation setup locally](https://tex.stackexchange.com/questions/565511/how-to-run-overleaf-locally), and the [README of arxiv-collector](https://github.com/djsutherland/arxiv-collector/blob/master/README.md) for more details.

