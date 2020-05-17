# File name		: Makefile
# Description	: This is a universal makefile script, which guides you how to build your project automatically.
# Creator		: Frederique Hsu
# Creation date : Sat.	16 May 2020
# Copyright(C)	2020	All rights reserved.
#


# Only need to change this EXECUTABLE variable later for each project
EXECUTABLE = features

# The below lines are not necessary to change
CURRENT_DIR = .

SRCEXTS = .m .mm
HDREXTS = .h

DIRS = $(shell find $(CURRENT_DIR) -maxdepth 4 -type d)
SOURCES = $(foreach dir, $(DIRS), $(wildcard $(dir)/*$(SRCEXTS)))
OBJECTS = $(addsuffix .o, $(basename $(SOURCES)))


# Which compiler 
CC = gcc
# Which libraries to link
LIBS = 
# Which mode do you want to build, options: Debug, Release
MODE = Debug
# Profiling option: -p
PROF =

CFLAGS = `gnustep-config --objc-flags` -Wl,--no-as-needed -lobjc -lgnustep-base -g2


.PHONY : all clean show rebuild
all : $(EXECUTABLE)

$(EXECUTABLE) : $(OBJECTS)
	$(CC) $(CFLAGS) $^ -o $@

%.o : %.m
	$(CC) $(CFLAGS) -c $< -o $@

clean :
	@echo "Removing all linked and compiled files..."
	@find . -name "*.o" -exec rm -frv {} \;
	@find . -name "*.d" -exec rm -frv {} \;
	@-rm -frv $(EXECUTABLE)

show :
	@echo "DIRS : " $(DIRS)
	@echo "SOURCES : "$(SOURCES)
	@echo "OBJECTS : " $(OBJECTS)
	@echo "EXECUTABLE : " $(EXECUTABLE)

rebuild : clean all