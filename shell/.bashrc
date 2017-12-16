# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

export PATH=$HOME/.local/bin:$HOME/go/bin:$PATH

export JAVA_HOME=$(dirname $(dirname $(dirname $(readlink -f $(which java)))))

if [ -f /usr/share/powerline/bash/powerline.sh ]; then
	powerline-daemon -q
	POWERLINE_BASH_CONTINUATION=1
	POWERLINE_BASH_SELECT=1
	. /usr/share/powerline/bash/powerline.sh
fi

#if [ ! -f /run/user/$(id -u)/gpg-agent.env ]; then
#    killall gpg-agent;
#    eval $(gpg-agent --daemon --enable-ssh-support > /run/user/$(id -u)/gpg-agent.env);
#fi
#source /run/user/$(id -u)/gpg-agent.env
