## TapeDeck-Player

This is the main workspace for TapeDeck.

Currently TapeDeck is working on FreeBSD but more platforms will follow.

Dependencies needed are Cling, Rust, NodeJS, Z3, and TypeScript

A custom version of Bosque is included in this project as a submodule.

Running "npm run build" from within the tapedeck/BosqueLanguage/impl folder

will automatically download the correct version of Z3 for the detected platform.

Rust analyzer may throw erroneous errors when trying to parse the auto-generated file in
VSCode. Warnings may be generated from the Rust build process on some platforms.
These are issues which are still being worked on.

Right now everything in Bosque defaults to the MacOS folders so on FreeBSD just create a symbolic link to
Z3 in the folder which normally contains it. For all other platforms Bosque will attempt to download a
specific version of Z3.

This project is a combination of Bosque and Rust. Using Bosque Exegen will also attempt to run Exegen for Rust.

play.sh has been included as an example of running the NodeJS command to generate both executables.
