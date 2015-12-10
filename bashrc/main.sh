# First line containing "bash" word makes vim recognize file as a bash script.

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

source $DIR/colors.sh
source $DIR/bash.sh
source $DIR/ps1.sh
source $DIR/nobell.sh
