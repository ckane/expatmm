#!/bin/sh
#
# IntelliTree autogen.sh v1.3 - Coleman Kane <ckane@intellitree.com>
#
# ChangeLog:
# Rev. 1.3:
#   Add --copy to automake command line

# Here, I want specific versions of the GNU AutoTools. Barring the
# existence of them, I'll just fall-back to the default local versions,
# whatever they might be, and hope for the best :)
#

ACLOCAL=`which aclocal110 2>/dev/null`
if [ $? != 0 ]; then
	ACLOCAL=`which aclocal-1.10 2>/dev/null`
	if [ $? != 0 ]; then
		ACLOCAL=`which aclocal 2>/dev/null`
		if [ $? != 0 ]; then
			echo "Can't find aclocal! You need automake v1.10+"
			exit 1
		fi
		let ACLOCAL_VER=`aclocal --version | sed -ne '/^aclocal[^0-9]*\([0-9][0-9]*\)\.\([0-9]*\)*$/s//\1*10000+\2/p'`
		if [ "$ACLOCAL_VER" -lt 10010 ]; then
			echo "WARNING: Your version of aclocal is older than 1.10"
		fi
	fi
fi

AUTOMAKE=`which automake110 2>/dev/null`
if [ $? != 0 ]; then
	AUTOMAKE=`which automake-1.10 2>/dev/null`
	if [ $? != 0 ]; then
		AUTOMAKE=`which automake 2>/dev/null`
		if [ $? != 0 ]; then
			echo "Can't find automake! You need automake v1.10+"
			exit 1
		fi
		let AUTOMAKE_VER=`automake --version | sed -ne '/^automake[^0-9]*\([0-9][0-9]*\)\.\([0-9]*\)*$/s//\1*10000+\2/p'`
		if [ "$AUTOMAKE_VER" -lt 10010 ]; then
			echo "WARNING: Your version of automake is older than 1.10"
		fi
	fi
fi

AUTOHEADER=`which autoheader261 2>/dev/null`
if [ $? != 0 ]; then
	AUTOHEADER=`which autoheader-2.61 2>/dev/null`
	if [ $? != 0 ]; then
		AUTOHEADER=`which autoheader 2>/dev/null`
		if [ $? != 0 ]; then
			echo "Can't find autoheader! You need autoconf v2.61+"
			exit 1
		fi
		let AUTOHEADER_VER=`autoheader --version | sed -ne '/^autoheader[^0-9]*\([0-9][0-9]*\)\.\([0-9]*\)*$/s//\1*10000+\2/p'`
		if [ "$AUTOHEADER_VER" -lt 20061 ]; then
			echo "WARNING: Your version of autoheader is older than 2.61"
		fi
	fi
fi

AUTOCONF=`which autoconf261 2>/dev/null`
if [ $? != 0 ]; then
	AUTOCONF=`which autoconf-2.61 2>/dev/null`
	if [ $? != 0 ]; then
		AUTOCONF=`which autoconf 2>/dev/null`
		if [ $? != 0 ]; then
			echo "Can't find autoconf! You need autoconf v2.61+"
			exit 1
		fi
		let AUTOCONF_VER=`autoconf --version | sed -ne '/^autoconf[^0-9]*\([0-9][0-9]*\)\.\([0-9]*\)*$/s//\1*10000+\2/p'`
		if [ "$AUTOCONF_VER" -lt 20061 ]; then
			echo "WARNING: Your version of autoconf is older than 2.61"
		fi
	fi
fi

$ACLOCAL
$AUTOHEADER
$AUTOMAKE --foreign --add-missing --copy
$AUTOCONF --include=../include
