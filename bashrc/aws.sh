DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# set aws cli autocompletion
if [ -e '/usr/local/bin/aws_completer' ]; then
    complete -C '/usr/local/bin/aws_completer' aws
fi

# Requests new session token and replaces session credentials in the [default] section of the .aws/credentials file
#
# Usage:
# 1. Set your base aws_access_key_id and aws_secret_access_key under [master] profile
# 2. Set bash variable before including this script:
#    AWS_MFA_SERIAL="{mfa_serial}"
# 3. When needed, request new MFA-protected session token with "amfa {mfa_code}",
#   amfa 123456
if [ -e '/usr/local/bin/aws' ]; then
    amfa () {
        aws sts get-session-token --profile master --serial-number "$AWS_MFA_SERIAL" --token-code "$1" | "$DIR/bin/set-amfa-config.py"
    }
fi
