# File name		: Makefile
# Description	: This file defines the script on how to build current project.
# Creator		: Frederick Hsu
# Creation date	: Thur.	26 March 2020
# Copyright(C)	2020	All rights reserved
#

OBJS = main.o Circle.o

manip_objs : $(OBJS)
	gcc `gnustep-config --objc-flags` -Wl,--no-as-needed -lobjc -lgnustep-base $(OBJS) -o manip_objs

main.o : main.m Circle.h
	gcc `gnustep-config --objc-flags` -Wl,--no-as-needed -lobjc -lgnustep-base -c main.m

Circle.o : Circle.m Circle.h
	gcc `gnustep-config --objc-flags` -Wl,--no-as-needed -lobjc -lgnustep-base -c Circle.m


.PHONY : clean
clean :
	-rm -frv $(OBJS) manip_objs *.o *.d