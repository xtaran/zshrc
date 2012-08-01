# Axel's .zshrc -*- sh -*-
#
# With ideas from grml and Freak

setopt EXTENDED_GLOB CSH_NULL_GLOB
if [ -d ~/.zsh/zsh.d ]; then
    for zshrc_snipplet in ~/.zsh/zsh.d/[0-9][0-9]{,$(hostname -s)}-*[^~] ; do
	if [ "${zshrc_snipplet:e}" != zwc ]; then
            source $zshrc_snipplet
	fi
    done
fi
