SHELL=zsh

all: zshrc.zwc .zshrc.zwc
	cd zsh.d; $(MAKE)

%.zwc: %
	zcompile $<
