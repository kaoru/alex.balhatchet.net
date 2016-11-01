#!/bin/sh

set -e

GITDIR=$PWD
TMPDIR=$(mktemp -d)

echo "Building release in $TMPDIR"

echo "Exporting Git Repository"

git archive --format=tar HEAD | (cd $TMPDIR ; tar xf - ; cd $GITDIR)

echo "Bulding cv.pdf"

wkhtmltopdf --quiet "cv-build/cv.html" "$TMPDIR/cv.pdf"

echo "Releasing to alex.balhatchet.net"

rsync -az $TMPDIR/.htaccess alexwww@alex.balhatchet.net:alex.balhatchet.net/
rsync -az $TMPDIR/* alexwww@alex.balhatchet.net:alex.balhatchet.net/

echo "Tidying up"

rm -rf $TMPDIR

echo "Done"
