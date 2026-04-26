#!/bin/bash

npm run build



SRC=~/obsidian-plugins/obsidian-spreadsheets/obsidian-spreadsheets
DEST=/mnt/c/Users/Jomar/Documents/test-vault/.obsidian/plugins/spreadsheets

mkdir -p "$DEST"

rsync -av --delete \
  --include="main.js" \
  --include="manifest.json" \
  --include="main.css" \
  --include="styles.css" \
  --exclude="*" \
  "$SRC/" "$DEST/"