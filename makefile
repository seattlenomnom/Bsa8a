# makefile for bsa8a
#
bsa8a: bsa8a.o
	ld bsa8a.o -o ./Build/DEBUG/bsa8a

bsa8a.o: bsa8a.s
	as -g bsa8a.s -o bsa8a.o
