# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

# Put your fun stuff here.

# fix bash history maintenance
history -a
history -r

# cd without typing cd
shopt -s autocd
# enable globbing
shopt -s globstar

# doas auto-complete
complete -F _root_command doas
# alternative not requiring app-shalls/bash-completion
#complete -cf doas
complete -cf sudo

source .commonrc
