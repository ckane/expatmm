#!/bin/sh
#

ACLOCAL=`which aclocal 2>/dev/null`
AUTOMAKE=`which automake 2>/dev/null`
AUTOHEADER=`which autoheader 2>/dev/null`
AUTOCONF=`which autoconf 2>/dev/null`

# On some platforms, "libtoolize" gets installed as "glibtoolize"
LIBTOOLIZE=`which libtoolize 2> /dev/null`
if test "$?" -eq 1; then
    LIBTOOLIZE=`which glibtoolize 2> /dev/null`
fi

${LIBTOOLIZE} --copy --install --force
$ACLOCAL
$AUTOHEADER
$AUTOMAKE --foreign --add-missing --copy
$AUTOCONF --include=../include
