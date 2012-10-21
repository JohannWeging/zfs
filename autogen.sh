#!/bin/sh

patch -p1 -i patches/user-level.patch
aclocal -I config
libtoolize --automake --copy
autoheader
automake --add-missing --include-deps --copy
autoconf
