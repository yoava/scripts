#!/bin/sh
find "$1" -name \.gradle -type d -print0 | xargs -0 rm -r
