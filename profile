# ~/.profile: executed by the command interpreter for login shells.
#
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

if [ "$TERM" = "linux" ] ; then
	setterm -blength=0
fi

if [ "$(uname)" = "Linux" ] ; then
	# EurKey-Tastenbelegung verwenden
	# setxkbmap eu # das direkt via /etc/default/keyboard setzen

	# Linke CMD/WIN-Taste mit linker Ctrl-Taste vertauschen
	#setxkbmap -option ctrl:swap_lwin_lctl

	# Anderweitige Default-Tastenbelegungen
	xmodmap ~/.Xmodmap
fi

LANG=de_DE.UTF-8
LC_MESSAGES=C

export EDITOR=vim
export PAGER=less
