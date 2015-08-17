
# if the following does not work, perhaps you are using a shell who's not bash.
# verify the shell you are using by: echo $SHELL or ls -l /bin/sh
# you may need to switch to bash using: chsh -s /bin/bash
# see: http://unix.stackexchange.com/questions/94490/bash-doesnt-read-bashrc-unless-manually-started

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
