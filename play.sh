#!/usr/local/bin/bash

# TapeDeck Player
#
# Usage: play.sh <bosque-source-file>
# Example:
# play.sh input.bsq


if [[ -z "$1" ]]; then
    echo "No Bosque file specified"
    exit 1
fi

node tapedeck/BosqueLanguage/impl/bin/runtimes/exegen/exegen.js "$1"
