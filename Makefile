#
# $Id: Makefile 1150 2010-05-13 12:30:54Z os $
#

CXX = i686-pc-mingw32-c++
CXXFLAGS = -Wall -g
LDFLAGS = -static-libgcc

OBJS = aodb.o ctree.o main.o

PROG = adbd.exe

all:	$(PROG)

$(PROG):	$(OBJS)
	$(CXX) $(CXXFLAGS) $(LDFLAGS) $(OBJS) -o $(PROG)


clean:
	$(RM) $(PROG) $(OBJS)
