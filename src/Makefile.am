lib_LTLIBRARIES= libexpatmm.la

DEFAULT_INCLUDES= -I. -I$(top_srcdir)/include -I$(top_builddir)/include

libexpatmm_la_includedir= $(includedir)/expatmm-1.0/expatmm

libexpatmm_la_SOURCES= ExpatXMLParser.cpp \
                       ExpatXMLFileParser.cpp \
                       ExpatMM-version.cpp

libexpatmm_la_include_HEADERS= $(top_srcdir)/include/ExpatXMLParser.h \
                               $(top_srcdir)/include/ExpatXMLFileParser.h \
                               $(top_srcdir)/include/expatmm-libdef.h \
                               $(top_builddir)/include/expatmm.h
