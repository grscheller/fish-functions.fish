Fish Functions
==============

Collections of fish functions plugins geared to modern Linux/Unix
tooling. These functions are intended to be installer into
your ``~/.config/fish/`` configuration files directory.

- Install with `fisher <https://github.com/jorgebucaran/fisher>`_

  - Fisher is the *de facto* Fish community plugin manager. 

- Can also be installed manually.

See
`fish-functions
<https://grscheller.github.io/fish-functions>`_
for more information.

Plugin Collections
------------------

Each plugin below is designed to be installed as a unit.

Alignment
~~~~~~~~~

Functions to horizontally and vertically align data. See
`grscheller/fish-functions-alignment.fish
<https://grscheller.github.io/fish-functions-alignment.fish>`_
for more information.

- Horizontal column alignment commands

  - zip2 - Combine 2 fish arrays with a separator into 2 columns.
  - zip - Combine an arbitrary number of fish arrays with a separator into columns.
  - tab_align2 - Tab align 2 fish arrays into 2 columns.
  - tab_align - Tab align an arbitrary number of fish arrays into columns.
  - fields - Extract fields from rows.

Navigation
~~~~~~~~~~

Filesystem navigation plugin. See
`grscheller/fish-functions-navigation.fish
<https://grscheller.github.io/fish-functions-navigation.fish>`_
for more information.

- Directory navigation

  - ud - Jump up a number of directories or to an initial pattern
    in the file system.
  - dn - Jump down directory tree to find a file or directory.

Path
~~~~

Path manipulation and searching plugin. See
`grscheller/fish-functions-path.fish
<https://grscheller.github.io/fish-functions-path.fish>`_
for more information.

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
