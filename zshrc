# Axel's .zshrc -*- sh -*-
#
# With ideas from grml and Freak

# Needed for Emacs' TRAMP mode, as it otherwise will be confused by
# complex prompts
[[ $TERM == "dumb" ]] && unsetopt zle && PS1='$ ' && return

# Needed if /bin/hostname is not present
if [ ! -x /bin/hostname -a -r /proc/sys/kernel/hostname ]; then
    hostname() {
        cat /proc/sys/kernel/hostname
    }
fi

setopt EXTENDED_GLOB CSH_NULL_GLOB
if [[ -d ~/.zsh/zsh.d ]]; then
    for zshrc_snipplet in ~/.zsh/zsh.d/[0-9][0-9]{,$(hostname -s)}-*[^~] ; do
	if [[ "${zshrc_snipplet:e}" != zwc ]]; then
            source $zshrc_snipplet
	fi
    done
fi
