#!/bin/bash
FILES="$@"
for i in $FILES
do
echo "Processing image $i ..."
IFS='.' read -r name ext <<< "$i"
/usr/bin/convert -thumbnail 200 $i "${name}-thumb.${ext}"
done
