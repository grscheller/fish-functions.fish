Fish Functions
==============

Collections of fish functions geared to typical Linux/Unix
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
`grscheller/fish-functions-alignment
<https://grscheller.github.io/fish-functions-alignment.fish>`_
for more information.

- Horizontal column alignment commands

  - **zip2**: Combine 2 fish arrays with a separator into 2 columns.
  - **zip**: Combine an arbitrary number of fish arrays with a separator into columns.
  - **tab_align2**: Tab align 2 fish arrays into 2 columns.
  - **tab_align**: Tab align an arbitrary number of fish arrays into columns.
  - **fields**: Extract fields from rows.

Path
~~~~

Path manipulation and navigation plugin. See
`grscheller/fish-functions-path
<https://grscheller.github.io/fish-functions-path.fish>`_
for more information.

- Directory navigation

  - **ud**: Jump up a number of directories or to an initial pattern
    in the file system.
  - **dn**: Jump down directory tree to find a file or directory.

- Path manipulation

  - **pathtrim**: Remove duplicate and non-existent directories from $PATH.

Copyright and License
---------------------

Copyright (c) 2023-2026 Geoffrey R. Scheller. Licensed under the Apache
License, Version 2.0. See the LICENSE file for details.
