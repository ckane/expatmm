#!/bin/sh
#

ACLOCAL=`which aclocal 2>/dev/null`
AUTOMAKE=`which automake 2>/dev/null`
AUTOHEADER=`which autoheader 2>/dev/null`
AUTOCONF=`which autoconf 2>/dev/null`

$ACLOCAL
$AUTOHEADER
$AUTOMAKE --foreign --add-missing --copy
$AUTOCONF --include=../include
