#!/usr/bin/env bash
dir="$1"
for f in "$dir"/*.j* ; do
    echo "Optimizing $f ..."
    jpegtran -copy none -optimize -perfect -outfile "$f" "$f"
done

