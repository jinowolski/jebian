# First line containing "bash" word makes vim recognize file as a bash script.

export PS1="$SESSION_COLSTR\[$DARKGRAY\]\u@\h \[$GREEN\]\A \[$NOCOLOR\]\w \[$YELLOW\]\$? \[$LIGHTBLUE\]\$\[$NOCOLOR\] "
if [ "$TERM" = "screen" -a "$WINDOW" != "" ]
then
    export PS1="[$WINDOW] $PS1"
fi
