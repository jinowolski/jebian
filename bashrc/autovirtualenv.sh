_virtualenv_auto_activate() {
    if [ -e ".venv" ]; then
        # Check to see if already activated to avoid redundant activating
        if [ "$VIRTUAL_ENV" != "$(pwd -P)/.venv" ]; then
            _VENV_NAME="$(basename `pwd`)"
            VIRTUAL_ENV_DISABLE_PROMPT=1
            # only execute if .venv is owned by user and has safe permissions
            if [ "$(stat -c "%a%u" .venv/bin/activate)" == "$(echo 644$(id -u))" ]; then
                echo Activating virtualenv \"$_VENV_NAME\"...
                _VENV_BASE="$(pwd -P)"
                source .venv/bin/activate
                _OLD_VIRTUAL_PS1="$PS1"
                PS1="\[$YELLOW\]($_VENV_NAME) $PS1"
                export PS1
            else
                echo Would activate virtualenv \"$_VENV_NAME\", but it has wrong permissions.
            fi
        fi
    else
        if [[ "$_VENV_BASE" = "$(pwd -P)"* && "$VIRTUAL_ENV" != "" ]]; then
            echo Deactivating virtualenv \"$_VENV_NAME\"...
            deactivate
        fi
    fi
}

export PROMPT_COMMAND=_virtualenv_auto_activate
