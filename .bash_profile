# /etc/skel/.bash_profile

if [ -z "XDG_RUNTIME_DIR" ]; then
    XDG_RUNTIME_DIR="/tmp/$(id -u)-runtime-dir"
    mkdir -pm 0700 "$XDG_RUNTIME_DIR"
    export XDG_RUNTIME_DIR
    export XDG_CONFIG_HOME="$HOME/.config/"
fi

#export DISPLY=":0"

# fix bash history maintenance
export HISTCONTROL=ignoreboth:erasedups
export HISTFILESIZE=-1
export HISTSIZE=-1
export HISTTIMEFORMAT="%F %T: "

# This file is sourced by bash for login shells.  The following line
# runs your .bashrc and is recommended by the bash info pages.
if [[ -f ~/.bashrc ]] ; then
	. ~/.bashrc
fi

if [ -z "${WAYLAND_DISPLAY}" ]; then
    #~/.config/sway/run-sway.sh
    dbus-run-session sway
fi

