SHELL=zsh
RCFILES=$(wildcard [0-9][0-9]*[^~])
RCZWC=$(shell printf "%s\n" $(RCFILES) | fgrep -v .zwc | sed -e 's/\($$\| \)/.zwc\1/g')

all: $(RCZWC)

%.zwc: %
	zcompile $<

clean:
	rm -vf *.zwc
