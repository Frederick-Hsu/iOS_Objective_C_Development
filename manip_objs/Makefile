# File name		: Makefile
# Description	: This file defines the script on how to build current project.
# Creator		: Frederick Hsu
# Creation date	: Thur.	26 March 2020
# Copyright(C)	2020	All rights reserved
#

OBJS = main.o Circle.o misc.o XYPoint.o ShapeCircle.o testing.o

manip_objs : $(OBJS)
	gcc `gnustep-config --objc-flags` -Wl,--no-as-needed -lobjc -lgnustep-base $(OBJS) -o manip_objs

main.o : main.m Circle.h testing.h
	gcc `gnustep-config --objc-flags` -Wl,--no-as-needed -lobjc -lgnustep-base -c main.m

Circle.o : Circle.m Circle.h
	gcc `gnustep-config --objc-flags` -Wl,--no-as-needed -lobjc -lgnustep-base -c Circle.m

misc.o : misc.m misc.h
	gcc `gnustep-config --objc-flags` -Wl,--no-as-needed -lobjc -lgnustep-base -c misc.m

XYPoint.o : XYPoint.m XYPoint.h
	gcc `gnustep-config --objc-flags` -Wl,--no-as-needed -lobjc -lgnustep-base -c XYPoint.m

ShapeCircle.o : ShapeCircle.m ShapeCircle.h XYPoint.h
	gcc `gnustep-config --objc-flags` -Wl,---no-as-needed -lobj -lgnustep-base -c ShapeCircle.m

testing.o : testing.m testing.h ShapeCircle.h
	gcc `gnustep-config --objc-flags` -Wl,--no-as-needed -lobjc -lgnustep-base -c testing.m


.PHONY : clean
clean :
	-rm -frv $(OBJS) manip_objs *.o *.d