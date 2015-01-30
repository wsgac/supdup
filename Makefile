# Makefile for the supdup server and user.

# Definitions for supdup.
# TERMCAP	Uses the termcap database.
# TERMINFO	Uses the terminfo database.  Exactly one of TERMCAP or
#		TERMINFO must be defined and the corresponding library
#		(-ltermcap or -lterminfo) must be linked in.
# DEBUG

supdup: supdup.c termcaps.h
	cc -g -o supdup -DTERMCAP supdup.c -ltermcap

clean:
	rm -rf supdup
