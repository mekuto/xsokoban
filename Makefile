# Generated automatically from Makefile.in by configure.
############################################################
# C compiler
############################################################
CC = gcc

############################################################
# C compiler flags
############################################################
#
OPTIMIZER = -O -DNDEBUG
#OPTIMIZER = -g -UNDEBUG
INCS = 
WARN = -Wall
LIBS =  -lXpm -lX11 -ldnet_stub
DEFS =

############################################################
# Where to install the executable
############################################################
BIN = /usr/local/bin

##### Nothing from here on should need customization ######################

CFLAGS = $(OPTIMIZER) $(WARN) $(INCS) $(DEFS)
OBJECTS = display.o main.o resources.o play.o score.o screen.o save.o \
	  scoredisp.o qtelnet.o

xsokoban: $(OBJECTS)
	$(CC) $(CFLAGS) -o xsokoban $(OBJECTS) $(LIBS)

clean:
	rm -f $(OBJECTS)

clobber: clean
	rm -f xsokoban

# DO NOT DELETE THIS LINE -- make depend depends on it.

display.o: config_local.h globals.h config.h defaults.h help.h
main.o: externs.h config_local.h globals.h config.h options.h errors.h
play.o: externs.h config_local.h globals.h config.h
resources.o: externs.h config_local.h globals.h config.h defaults.h
save.o: config_local.h externs.h globals.h config.h
score.o: config_local.h externs.h globals.h config.h
scoredisp.o: externs.h config_local.h globals.h config.h defaults.h
screen.o: externs.h config_local.h globals.h config.h
