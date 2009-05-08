# Axel's .zshrc -*- sh -*-
#
# With ideas from grml and Freak

setopt EXTENDED_GLOB CSH_NULL_GLOB
if [ -d ~/.zsh/zsh.d ]; then
    for zshrc_snipplet in $(ls -1 ~/.zsh/zsh.d/[0-9][0-9]{,$(hostname -s)}-*[^~]) ; do
	if [ x$zshrc_snipplet:e != xzwc ]; then
            source $zshrc_snipplet
	fi
    done
fi
