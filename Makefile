#
# Makefile for Console Telnet
# Last modified 4/15/2000 by Paul Brannan
#

SRCDIR=./src
OBJDIR=src
RESDIR=resource

SRC=$(wildcard $(SRCDIR)/*.cpp)
RESOURCES=$(wildcard $(RESDIR)/*.rc)
OBJ1=$(SRC:.c=.o)
OBJ=$(OBJ1:.cpp=.o) $(RESOURCES:.rc=.o)

INCLUDES=-I$(RESDIR)

OUT=telnet.exe

# Modify these for your system if necessary
# Note: DJGPP+RDXNTDJ configuration is untested.

# --CYGWIN--
#CC=gcc
#CCC=g++
#LDFLAGS=-lwsock32 -lmsvcrt
#CFLAGS=-O2 -Wall -mwindows -mno-cygwin -D__CYGWIN__
#CCFLAGS=$(CFLAGS)
#RES=
#RC=windres
#RCFLAGS=-O coff

# --MINGW32(+EGCS)--
CC=gcc
CCC=g++
LDFLAGS=-lkernel32 -luser32 -lgdi32 -lshell32 -lwsock32
CFLAGS=-O2 -Wall
CCFLAGS=$(CFLAGS)
RES=
RC=windres
RCFLAGS=

# --DJGPP+RSXNTDJ--
#CC=gcc -Zwin32 -Zmt -Zcrtdll
#CCC=$(CC)
#LDFLAGS=
#CFLAGS= -g
#CCFLAGS=$(CFLAGS)
#RES=rsrc
#RC=grc
#RCFLAGS=-r


# You should not have to modify anything below this line

all: dep $(OUT)

.SUFFIXES: .c .cpp .rc

.c.o:
	$(CC) $(INCLUDES) $(CFLAGS) -c $< -o $@

.cpp.o:
	$(CCC) $(INCLUDES) $(CCFLAGS) -c $< -o $@

.rc.o:
	$(RC) -i $< $(RCFLAGS) -o $@

$(OUT): $(OBJ)
	$(CCC) $(OBJ) $(LDFLAGS) $(LIBS) -o $(OUT)
	strip $(OUT)

depend: dep

dep:
	start /min makedepend -- $(CFLAGS) -- $(INCLUDES) $(SRC)

clean:
	del $(OBJDIR)\*.o
	del $(OUT)

# DO NOT DELETE

src/ansiprsr.o: src/ansiprsr.h src/tnconfig.h src/tnerror.h src/tnmsg.h
src/ansiprsr.o: src/tparser.h src/tconsole.h src/keytrans.h src/tkeydef.h
src/ansiprsr.o: src/tkeymap.h src/stl_bids.h src/tscroll.h src/tmouse.h
src/ansiprsr.o: src/tnclip.h src/tnetwork.h src/tcharmap.h
src/keytrans.o: src/keytrans.h src/tkeydef.h src/tkeymap.h src/stl_bids.h
src/keytrans.o: src/tnerror.h src/tnmsg.h
src/tcharmap.o: src/tcharmap.h src/tnconfig.h src/tnerror.h src/tnmsg.h
src/tconsole.o: src/tconsole.h src/tnconfig.h src/tnerror.h src/tnmsg.h
src/tkeydef.o: src/tkeydef.h
src/tkeymap.o: src/tkeymap.h src/stl_bids.h src/tkeydef.h
src/tmapldr.o: src/tmapldr.h src/keytrans.h src/tkeydef.h src/tkeymap.h
src/tmapldr.o: src/stl_bids.h src/tcharmap.h src/tnerror.h src/tnmsg.h
src/tmapldr.o: src/tnconfig.h
src/tmouse.o: src/tmouse.h src/tnclip.h src/tnetwork.h src/tconsole.h
src/tmouse.o: src/tnconfig.h src/tnerror.h src/tnmsg.h
src/tnclass.o: src/tnclass.h src/tnconfig.h src/tnerror.h src/tnmsg.h
src/tnclass.o: src/ttelhndl.h src/tparser.h src/tconsole.h src/keytrans.h
src/tnclass.o: src/tkeydef.h src/tkeymap.h src/stl_bids.h src/tscroll.h
src/tnclass.o: src/tmouse.h src/tnclip.h src/tnetwork.h src/tcharmap.h
src/tnclass.o: src/tncon.h src/tparams.h src/ansiprsr.h src/tmapldr.h
src/tnclass.o: src/tnmisc.h
src/tnclip.o: src/tnclip.h src/tnetwork.h
src/tncon.o: src/tncon.h src/tparams.h src/ttelhndl.h src/tparser.h
src/tncon.o: src/tconsole.h src/tnconfig.h src/tnerror.h src/tnmsg.h
src/tncon.o: src/keytrans.h src/tkeydef.h src/tkeymap.h src/stl_bids.h
src/tncon.o: src/tscroll.h src/tmouse.h src/tnclip.h src/tnetwork.h
src/tncon.o: src/tcharmap.h
src/tnconfig.o: src/tnconfig.h src/tnerror.h src/tnmsg.h
src/tnerror.o: src/tnerror.h src/tnmsg.h src/ttelhndl.h src/tparser.h
src/tnerror.o: src/tconsole.h src/tnconfig.h src/keytrans.h src/tkeydef.h
src/tnerror.o: src/tkeymap.h src/stl_bids.h src/tscroll.h src/tmouse.h
src/tnerror.o: src/tnclip.h src/tnetwork.h src/tcharmap.h
src/tnetwork.o: src/tnetwork.h
src/tnmain.o: src/tnmain.h src/tncon.h src/tparams.h src/ttelhndl.h
src/tnmain.o: src/tparser.h src/tconsole.h src/tnconfig.h src/tnerror.h
src/tnmain.o: src/tnmsg.h src/keytrans.h src/tkeydef.h src/tkeymap.h
src/tnmain.o: src/stl_bids.h src/tscroll.h src/tmouse.h src/tnclip.h
src/tnmain.o: src/tnetwork.h src/tcharmap.h src/tnclass.h src/ansiprsr.h
src/tnmain.o: src/tmapldr.h src/tnmisc.h
src/tnmisc.o: src/tnmisc.h
src/tscript.o: src/tscript.h src/tnetwork.h
src/tscroll.o: src/tscroll.h src/tconsole.h src/tnconfig.h src/tnerror.h
src/tscroll.o: src/tnmsg.h src/tmouse.h src/tnclip.h src/tnetwork.h
src/tscroll.o: src/tncon.h src/tparams.h src/ttelhndl.h src/tparser.h
src/tscroll.o: src/keytrans.h src/tkeydef.h src/tkeymap.h src/stl_bids.h
src/tscroll.o: src/tcharmap.h
src/ttelhndl.o: src/ttelhndl.h src/tparser.h src/tconsole.h src/tnconfig.h
src/ttelhndl.o: src/tnerror.h src/tnmsg.h src/keytrans.h src/tkeydef.h
src/ttelhndl.o: src/tkeymap.h src/stl_bids.h src/tscroll.h src/tmouse.h
src/ttelhndl.o: src/tnclip.h src/tnetwork.h src/tcharmap.h src/telnet.h
src/ttelhndl.o: src/tparams.h
