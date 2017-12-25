#!/bin/sh
#

ACLOCAL=`which aclocal 2>/dev/null`
AUTOMAKE=`which automake 2>/dev/null`
AUTOHEADER=`which autoheader 2>/dev/null`
AUTOCONF=`which autoconf 2>/dev/null`

libtoolize --copy --install --force
$ACLOCAL
$AUTOHEADER
$AUTOMAKE --foreign --add-missing --copy
$AUTOCONF --include=../include
