# ExpatMM project configure script
#
# Copyright (C) 2015 Coleman Kane
# Written by Coleman Kane <ckane@colemankane.org>
#
# Copyright (C) 2006, 2007, 2008, 2009 IntelliTree Solutions llc
# Written by Coleman Kane <ckane@intellitree.com>
# 
# The autoconf/automake template for the configure script. Use autogen.sh
# to re-process this file and update configure after changing it. This is
# the standard part of an "Autotooled" build system
#
AC_INIT(expatmm,1.0.3,Coleman Kane <ckane@colemankane.org>)
  AC_CANONICAL_TARGET
  AC_LANG(C++)
  AC_PREREQ(2.59)
  AM_INIT_AUTOMAKE([foreign])
  AM_CONFIG_HEADER(include/config.h)
  AC_PROG_CPP
  AC_PROG_CC
  AC_PROG_CXX
  AC_PROG_RANLIB
  AC_HEADER_STDC
  AC_HEADER_STDBOOL
  AC_PROG_LN_S
  AC_C_CONST
  AC_C_INLINE
  AC_CHECK_FUNCS([bzero])
  AC_LIBTOOL_DLOPEN
  AC_LIBTOOL_WIN32_DLL
  AC_PROG_LIBTOOL
  AC_LIBTOOL_CXX
  AC_SUBST(LIBTOOL_DEPS)

  AC_MSG_CHECKING([whether ${host} needs -no-undefined at link time])
  case $host in
    *-mingw32)
        AC_MSG_RESULT([yes])
        LDFLAGS="$LDFLAGS -no-undefined"
        ;;
    *)
        AC_MSG_RESULT([no])
        ;;
  esac

  AC_MSG_CHECKING([whether ${host} needs to be told to export library symbols])
  case $host in
    *-mingw32|*-cygwin)
        CFLAGS="$CFLAGS -DBUILDING_EXPATMM_DLL"
        CXXFLAGS="$CXXFLAGS -DBUILDING_EXPATMM_DLL"
        AC_MSG_RESULT([yes])
        ;;
    *)
        AC_MSG_RESULT([no])
        ;;
  esac

  AC_MSG_CHECKING([where pkgconfig data dir is kept])
  case $host in
    *-freebsd*|-FreeBSD*)
        PKGCONFIG_DATA_BASE="libdata"
        ;;
    *)
        PKGCONFIG_DATA_BASE="lib"
        ;;
  esac
  AC_MSG_RESULT([${PKGCONFIG_DATA_BASE}/pkgconfig])

  AC_CHECK_HEADERS([sys/types.h stdio.h string.h string])
  PKG_PROG_PKG_CONFIG()

  AC_CHECK_LIB(expat, XML_ParserCreate, LIBS="$LIBS -lexpat",
	  AC_MSG_ERROR([*** libexpat.so not found! Please ensure it is in your search path. ***]))
  AC_CHECK_HEADERS([expat.h])

  PACKAGE_MAJOR=`echo -n $PACKAGE_VERSION | cut -d. -f1`
  PACKAGE_MINOR=`echo -n $PACKAGE_VERSION | cut -d. -f2`
  PACKAGE_REVISION=`echo -n $PACKAGE_VERSION | cut -d. -f3`
  AC_SUBST(PKGCONFIG_DATA_BASE)
  AC_SUBST(PACKAGE_MAJOR)
  AC_SUBST(PACKAGE_MINOR)
  AC_SUBST(PACKAGE_REVISION)
AC_OUTPUT(Makefile src/Makefile expatmm.pc include/expatmm.h)
