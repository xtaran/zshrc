Axel's zshrc
============

How to install:

    git clone git://github.com/xtaran/zshrc.git ~/.zsh
    cd ~/.zsh
    git submodule init
    git submodule update
    ln -vis .zsh/zshenv ~/.zshenv

BEWARE
======

This config contains some personal preferences like setting the
DEBEMAIL and DEBFULLNAME environment variables. So if you don't want
your changelogs ending with my name, I propose to grep the whole
repository for strings like abe, deuxchevaux, Axel and Beckert before
using it in production. ;-)

At least I was quite surprised that
[I did backport puppet to Squeeze] [puppet] without knowing it:

[puppet]: http://snapshot.debian.org/archive/debian-backports/20111101T153804Z/pool/main/p/puppet/puppet_2.7.6-1%7Ebpo60%2B1.dsc

Thanks to Micah for making me aware of that issue by uploading puppet
in my name. I'll try to fix this issue somehow, like checking if $USER
equals "abe" or so. :-)
