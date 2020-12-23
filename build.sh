#!/bin/sh

set -e

GITDIR=$PWD

echo "Building"

echo "Building thumbnails"

cd photos

for f in *.jpg ; do
  convert -resize x200 "$f" "thumbs/$f"
done

cd ..

echo "Done"
