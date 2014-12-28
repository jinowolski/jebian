# First line containing "bash" word makes vim recognize file as a bash script.

# Don't put duplicate lines in the history.
# Don't put lines starting with space in the history.
# Remove all previous command occurences from the history.
HISTCONTROL=ignoredups:ignorespace:erasedups

# Append to the history file, don't overwrite it.
shopt -s histappend

HISTSIZE=1000
HISTFILESIZE=838860 # 16 MB for 20-char average line

# add timestamps to the 'history' command:
#   42  31.01 13:59:59  ls
#   43  31.01 14:00:02  cd
HISTTIMEFORMAT='%d.%m %T  '

# Check the window size after each command and, if necessary, update the values
# of LINES and COLUMNS.
shopt -s checkwinsize

# List any stopped or running jobs before exiting an interactive shell.
shopt -s checkjobs

# Include .dotfiles in the result of filename expansion
shopt -s dotglob

