#!/bin/bash

source_dir="$1"
target_dir="$2"

copied=0
skipped=0

for file in "$source_dir"/*; do
    filename=$(basename "$file")
    if [ -f "$target_dir/$filename" ]; then
        read -p "File $filename already exists in target directory. Overwrite? [y/n]: " overwrite
        if [ "$overwrite" = "y" ]; then
            cp "$file" "$target_dir"
            copied=$((copied+1))
        else
            skipped=$((skipped+1))
        fi
    else
        cp "$file" "$target_dir"
        copied=$((copied+1))
    fi
done

echo "Copied files: $copied"
echo "Skipped files: $skipped"
