# generated automatically by aclocal 1.10 -*- Autoconf -*-

# Copyright (C) 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004,
# 2005, 2006  Free Software Foundation, Inc.
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY, to the extent permitted by law; without
# even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE.

# Copyright (C) 2003, 2004, 2005, 2006  Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# AM_PROG_MKDIR_P
# ---------------
# Check for `mkdir -p'.
AC_DEFUN([AM_PROG_MKDIR_P],
[AC_PREREQ([2.60])dnl
AC_REQUIRE([AC_PROG_MKDIR_P])dnl
dnl Automake 1.8 to 1.9.6 used to define mkdir_p.  We now use MKDIR_P,
dnl while keeping a definition of mkdir_p for backward compatibility.
dnl @MKDIR_P@ is magic: AC_OUTPUT adjusts its value for each Makefile.
dnl However we cannot define mkdir_p as $(MKDIR_P) for the sake of
dnl Makefile.ins that do not define MKDIR_P, so we do our own
dnl adjustment using top_builddir (which is defined more often than
dnl MKDIR_P).
AC_SUBST([mkdir_p], ["$MKDIR_P"])dnl
case $mkdir_p in
  [[\\/$]]* | ?:[[\\/]]*) ;;
  */*) mkdir_p="\$(top_builddir)/$mkdir_p" ;;
esac
])

m4_include([m4/codeset.m4])
m4_include([m4/gettext.m4])
m4_include([m4/glibc2.m4])
m4_include([m4/glibc21.m4])
m4_include([m4/iconv.m4])
m4_include([m4/intdiv0.m4])
m4_include([m4/intl.m4])
m4_include([m4/intmax.m4])
m4_include([m4/inttypes-pri.m4])
m4_include([m4/inttypes_h.m4])
m4_include([m4/lcmessage.m4])
m4_include([m4/lib-ld.m4])
m4_include([m4/lib-link.m4])
m4_include([m4/lib-prefix.m4])
m4_include([m4/lock.m4])
m4_include([m4/longdouble.m4])
m4_include([m4/longlong.m4])
m4_include([m4/man-ansi-sprintf.m4])
m4_include([m4/man-bdb.m4])
m4_include([m4/man-check-progs.m4])
m4_include([m4/man-fnmatch.m4])
m4_include([m4/man-gnu-nroff.m4])
m4_include([m4/man-pclose.m4])
m4_include([m4/man-strsignal.m4])
m4_include([m4/nls.m4])
m4_include([m4/po.m4])
m4_include([m4/printf-posix.m4])
m4_include([m4/progtest.m4])
m4_include([m4/setenv.m4])
m4_include([m4/size_max.m4])
m4_include([m4/stdint_h.m4])
m4_include([m4/tempname.m4])
m4_include([m4/uintmax_t.m4])
m4_include([m4/ulonglong.m4])
m4_include([m4/visibility.m4])
m4_include([m4/wchar_t.m4])
m4_include([m4/wint_t.m4])
m4_include([m4/xsize.m4])
