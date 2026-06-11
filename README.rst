grscheller/fish-functions.fish
==============================

Collections of fish functions I use in my dotfiles. Packaged
separately from the rest of my dotfiles. For those who would
find these functions useful but don't want the other personalize
cruft that comes with my dotfiles.

- Install this plugin with `fisher <https://github.com/jorgebucaran/fisher>`_

  - Fisher is the *de facto* Fish community plugin manager. 

- The plugins can also be installed manually.

See the `grscheller/fish-functions.fish docs
<https://grscheller.github.io/fish-functions.fish>`_
for more detailed documentation and examples.

Plugin Categories
-----------------

Broad categories of the functions provided by this package.

Alignment
~~~~~~~~~

Functions to horizontally and vertically align data.

- Horizontal column alignment commands

  - zip2 - Combine 2 fish arrays with a separator into 2 columns.
  - zip - Combine an arbitrary number of fish arrays with a separator into columns. (TODO)
  - tab_align2 - Tab align 2 fish arrays into 2 columns.
  - tab_align - Tab align an arbitrary number of fish arrays into columns. (TODO)
  - fields - Extract fields from rows.

Filesystem Navigatation
~~~~~~~~~~~~~~~~~~~~~~~

Filesystem navigation functions.

- Directory navigation

  - ud - Jump up a number of directories or to an initial pattern in the filesystem.
  - dn - Jump down directory tree to a file or directory.

Path
~~~~

Path manipulation and searching functions.

- Path manipulation

  - pathtrim - Remove duplicate and non-existent directories from $PATH.

- Path searching

  - digpath - Looks for targets on $PATH.

    - Like the fish "type -P" builtin.
    - Does not stop after finding the first match.
    - An alternate $PATH can be provided.
    - Targets do not have to be executable.

Copyright and License
---------------------

Copyright (c) 2023-2026 Geoffrey R. Scheller. Licensed under the Apache
License, Version 2.0. See the LICENSE file for details.
