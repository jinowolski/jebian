# First line containing "bash" word makes vim recognize file as a bash script.

BLACK='\e[0;30m'
BLUE='\e[0;34m'
GREEN='\e[0;32m'
CYAN='\e[0;36m'
RED='\e[0;31m'
PURPLE='\e[0;35m'
BROWN='\e[0;33m'
LIGHTGRAY='\e[0;37m'
DARKGRAY='\e[1;30m'
LIGHTBLUE='\e[1;34m'
LIGHTGREEN='\e[1;32m'
LIGHTCYAN='\e[1;36m'
LIGHTRED='\e[1;31m'
LIGHTPURPLE='\e[1;35m'
YELLOW='\e[1;33m'
WHITE='\e[1;37m'
NOCOLOR='\e[0m'

# Display 88/256 color examples
alias allcolors='for code in {0..255}; do echo -e "\e[38;05;${code}m $code: The quick brown fox jumped over lazy dog ██████"; done'
alias allcolorsbg='for code in {0..255}; do echo -e "\e[48;05;${code}m $code: The quick brown fox jumped over lazy dog\e[0m"; done'
