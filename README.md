# Fish functions for dotfiles

Collections of fish functions I use in my dotfiles. Packaged
separately from the rest of my dotfiles. For those who would
find these functions useful but don't want the other personalize
cruft that comes with my dotfiles.

- Install this plugin with `fisher <https://github.com/jorgebucaran/fisher>`_

  - Fisher is the *de facto* Fish community plugin manager. 

- The plugins can also be installed manually.

## Plugin Categories

- [Filesystem Navigation](#filesystem-navigation)
- [Path Manipulation and Searching](#path-manipulation-and-searching)
- [Text Alignment](#text-alignment)

### Filesystem Navigation

  - **ud** 
    - jump up a number of directories
    - jump up to a directory with
      - with an initial string in directory name, or 
      - containing a file with an initial string in file name
  - **dn**
    - jump down directory tree to a directory
      - with an initial string in directory name, or 
      - containing a file with an initial string in file name

### Path Manipulation and Searching

Path manipulation and searching functions.

- **pathtrim**
  - Remove duplicate and non-existent directories from
    - the arguments given
    - $PATH if no arguments are given
- **digpath**
  - looks for targets on $PATH
    - like the `type -P` fish builtin
    - does not stop after finding the first match
    - an alternate $PATH can be provided as arguments
    - targets do not have to be executable

### Text Alignment

Functions to horizontally and vertically align data.

- Horizontal column alignment commands

  - **zip2** 
    - Combine 2 fish arrays with a separator into 2 columns.
  - **zip** (TODO)
    - Combine an arbitrary number of fish arrays with a separator into columns.
  - **tab_align2**
    - Tab align 2 fish arrays into 2 columns.
  - **tab_align** (TODO)
    - Tab align an arbitrary number of fish arrays into columns.
  - **fields**
    - Extract fields from rows.


## Copyright and License

Copyright (c) 2026 Geoffrey R. Scheller. Licensed under the Apache
License, Version 2.0. See the LICENSE file for details.
