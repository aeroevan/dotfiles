# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

export PATH=$HOME/.local/bin:$HOME/.cargo/bin:$HOME/go/bin:$PATH
export PKG_CONFIG_PATH=/usr/local/lib64/pkgconfig

# rust
if [ -f $HOME/.cargo/env ]; then
  source $HOME/.cargo/env
fi

if command -v nvim >/dev/null 2>&1 ; then
  export EDITOR=nvim
elif command -v vim >/dev/null 2>&1 ; then
  export EDITOR=vim
fi

export JAVA_HOME=$(dirname $(dirname $(dirname $(readlink -f $(which java)))))

if [ -f /usr/share/powerline/bash/powerline.sh ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . /usr/share/powerline/bash/powerline.sh
fi

# Set SSH to use gpg-agent
unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
  export SSH_AUTH_SOCK="/run/user/$UID/gnupg/S.gpg-agent.ssh"
fi

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# added by Pew
source $(pew shell_config)
