#!/bin/bash

DIRECTORY="$HOME/Downloads/Screenshots"
FILENAME=$(date +%Y-%m-%d-%H%M%S).png

mkdir -p "$DIRECTORY"
grim -g "$(slurp)" "$DIRECTORY/$FILENAME"
