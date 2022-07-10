#-----------------------------------------------------------------------------
# Common
#-----------------------------------------------------------------------------
alias ls="ls --color=auto -bF"
alias la="ls -lAhbF"
alias ll="ls -lhbF"
alias l="ls -lAhbF"
alias lt="ls -lAhbnFtr"
alias disk="du --max-depth=1 -h"
alias cd..="cd .."
alias pwd='pwd -P'
alias less='less -R'
alias grep='grep --exclude-dir=.git'
alias mtr='mtr -t'
alias skype='env PULSE_LATENCY_MSEC=30 skype'
alias poff='sudo shutdown -h now'
alias checkip='curl http://checkip.amazonaws.com/'

#-----------------------------------------------------------------------------
# Text conversions
#-----------------------------------------------------------------------------
alias win2iso='iconv -f windows-1250 -t iso-8859-2'
alias iso2win='iconv -f iso-8859-2 -t windows-1250'
alias win2utf='iconv -f windows-1250 -t utf-8'
alias iso2utf='iconv -f iso-8859-2 -t utf-8'

#-----------------------------------------------------------------------------
# Wget
#-----------------------------------------------------------------------------
alias wget_site='wget --restrict-file-names=windows --progress=bar --wait 0 --recursive --level 8 --convert-links --no-parent --page-requisites --html-extension --ignore-case -R zip -R tgz -R gz -R bz2 -R tbz2 -R rar -R exe -c'
alias wget_site_ff='wget --restrict-file-names=windows --progress=bar --wait 0 --recursive --level 8 --convert-links --no-parent --page-requisites --html-extension --ignore-case -R zip -R tgz -R gz -R bz2 -R tbz2 -R rar -R exe -U "Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.9.2.11) Gecko/20101012 Firefox/3.6.11" -c'

#-----------------------------------------------------------------------------
# Fun
#-----------------------------------------------------------------------------

alias rtfm='man'
alias nomnom='killall'
alias icanhaz='sudo apt-get install'
alias please='sudo'
alias spierdalaj='sudo shutdown -h now'

#-----------------------------------------------------------------------------
# Gerrit
#-----------------------------------------------------------------------------

alias gerrit="ssh -p `git config --get gerrit.port` `git config --get gerrit.user`@`git config --get gerrit.host` gerrit"

#-----------------------------------------------------------------------------
# Functions
#-----------------------------------------------------------------------------

function abs {
    if [[ -d "$1" ]]
    then
        pushd "$1" >/dev/null
        pwd
        popd >/dev/null
    elif [[ -e $1 ]]
    then
        pushd $(dirname $1) >/dev/null
        echo $(pwd)/$(basename $1)
        popd >/dev/null
    else
        echo $1 does not exist! >&2
        return 127
    fi
}

unzipd() {
    unzip $1 -d `echo $1 | sed -e 's/\.zip$//gi'`
}

waitfor() {
    while kill -0 $1 2> /dev/null ; do sleep 1 ; done
}

