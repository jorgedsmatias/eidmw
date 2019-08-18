######################################################################
# Automatically generated by qmake (2.01a) Thu Dec 13 13:16:39 2007
######################################################################


include(../../_Builds/eidcommon.mak)

TEMPLATE = lib

## set target name
TARGET = $${DLGLIB}
## set version number
VERSION = $${DLGLIB_MAJ}.$${DLGLIB_MIN}.$${DLGLIB_REV}

message("Compile $$TARGET")

###
### Installation setup
###
target.path = $${INSTALL_DIR_LIB}
INSTALLS += target

###
### Compiler setup
###

CONFIG -= warn_on qt no_lflags_merge
DEPENDPATH += .
INCLUDEPATH += . ../../common 

##
## we need the following compiler flag to be able to use
## the include file 'language.h' which is in CP1252 encoding
##
QMAKE_CXXFLAGS+=-fno-strict-aliasing

#Support Fat binaries on Mac with both x86 and x86_64 architectures
macx: CONFIG += x86

## destination directory for the compiler
DESTDIR = ../../lib

unix: LIBS += -L../../lib  \
		-l$${COMMONLIB}

macx: LIBS += -L../../lib -l$${COMMONLIB} 


# Input
HEADERS +=  ../dialogs.h \
           ../langUtil.h \
           ../language.h \
	   SharedMem.h

FORMS +=

SOURCES += dlgs.cpp \
           ../langUtil.cpp \
	   SharedMem.cpp


QMAKE_EXTRA_TARGETS += language
PRE_TARGETDEPS +=  $${language.target}
