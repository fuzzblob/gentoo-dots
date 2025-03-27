#!/bin/sh

# Session
export XDG_SESSION_TYPE=wayland
export XDG_SESSION_DESKTOP=sway
export XDG_CURRENT_DESKTOP=sway

# Wayland stuff
export DISPLAY=":0.0"
export SDL_VIDEODRIVER="wayland"
export MOZ_ENABLE_WAYLAND=1
export MOZ_WEBRENDER=1
export MOZ_ACCELERATED=1
export GDK_BACKEND="wayland,x11"
export QT_QPA_PLATFORM=wayland
export SDL_VIDEODRIVER=wayland
export _JAVA_AWT_WM_NONREPARENTING=1
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=lcd'
export ELM_DISPLAY=wl
export ECORE_EVAS_ENGINE=wayland_egl
export ELM_ENGINE=wayland_egl
export ELM_ACCEL=opengl
export DBUS_SESSION_BUS_ADDRESS
export DBUS_SESSION_BUS_PID

export TERMINAL="alacritty"
export BROWSER="firefox"
#export EDITOR="nvim"
#export VISUAL="nvim"

#exec sway "$@"

#
# If you use systemd and want sway output to go to the journal, use this
# instead of the `exec sway "$@"` above:
#
#    exec systemd-cat --identifier=sway sway "$@"
#
