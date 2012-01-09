#!/bin/sh

if [ -n "$SSH_TTY" ] || [ -n "$SSH_CONNECTiON" ]; then
	export PS1='remote rescueshell \w \# '
	touch /remote-rescueshell.lock
else
	export PS1='rescueshell \w \# '
	# As the rescueshell 'pouse' boot proces we will write pid into file.
	# So we can easly kill -9 it via remote rescueshell to resume boot process.
	# fwiw from rescueshell we can just exit to make it resume.
	echo "$$" > /rescueshell.pid
fi
