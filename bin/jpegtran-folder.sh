#!/usr/bin/env bash
dir="$1"
for f in "$dir"/*.jp* ; do
    echo "Optimizing $f ..."
    jpegtran -copy none -optimize -perfect -outfile "$f" "$f"
done

# can also use: jpegoptim "$dir"/*.jp*

# lossless
# sudo apt-get install pngcrush
# sudo apt-get install jpegoptim
# sudo apt-get install jpegtran
# sudo apt-get install gifsicle
# sudo apt-get install optipng

# lossy
# sudo apt-get install imgmin
# sudo apt-get install pngquant2
