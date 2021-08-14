## TapeDeck-Player

This is the main workspace for TapeDeck.

Currently TapeDeck is working on FreeBSD and somewhat on Linux and more platforms will follow.

Dependencies needed are Cling, Rust, NodeJS, Z3, and TypeScript

Cling is part of ROOT a framework developed by CERN.
Installation instructions can be found here: [ROOT Data Analysis Framework](https://root.cern/install/)

FreeBSD users should install Cling from ports: [Interactive C++ Interpreter Based on LLVM and Clang Libs](https://www.freshports.org/lang/cling/)

The [Bosque Programming Language](https://github.com/microsoft/BosqueLanguage) is a functional programming language which generates it's own IR.

A custom version of Bosque is included in this project as a submodule.

Executing `npm run build` from within the tapedeck/BosqueLanguage/impl folder
will automatically download the correct version of Z3 for the detected platform.

FreeBSD users should install Z3 from ports: [Z3 Theorem Prover](https://www.freshports.org/math/z3/)

Rust analyzer may throw erroneous errors when trying to parse the auto-generated file in
VSCode. Warnings may be generated from the Rust build process on some platforms.
These are issues which are still being worked on.

Right now in the custom Bosque runtime for on FreeBSD a symbolic link to Z3 is created
in "/usr/local/bin/z3". This is the default installation path after installing it from ports.

For all other platforms Bosque will attempt to download a specific version of Z3.

This project is a combination of Bosque and Rust. Using Bosque Exegen will also attempt to run Exegen for Rust.

play.sh has been included as an example of running the NodeJS command to generate both executables.
