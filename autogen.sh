#!/bin/sh
if [ -x /usr/bin/aclocal ]
then
    aclocal -I config
    libtoolize --force --copy \
        && automake --add-missing --foreign --copy \
        && autoconf
else
    aclocal14 -I config \
        && libtoolize --force --copy \
        && automake14 --add-missing --foreign --copy \
        && autoconf2.61
fi
