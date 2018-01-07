
#Bash Profile

#Set Paths
export PATH="$PATH:/usr/local/bin/"
export PATH="/usr/local/git/bin:/sw/bin/:/usr/local/bin:/usr/local/:/usr/local/sbin:/usr/local/mysql/bin:$PATH"

#Set Editor
export EDITOR=/usr/bin/atom


#Navigating Terminal
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias edit='atom'                           # edit:         Opens any file in sublime editor
alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
alias ~="cd ~"                              # ~:            Go Home
alias c='clear'                             # c:            Clear terminal display
alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation




#Searching
alias qfind="find . -name "                 # qfind:    Quickly search for file

#   lr:  Full Recursive Directory Listing
#   ------------------------------------------
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'



#Networking
alias myip='curl ip.appspot.com'                    # myip:         Public facing IP Address
alias openPorts='sudo lsof -i | grep LISTEN'        # openPorts:    All listening connections


#Git
# ok
# Enable tab completion
source ~/git-completion.bash


# Change command prompt
source ~/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
export PS1="$purple\u$green\$(__git_ps1)$blue \W $ $reset"

alias subl="/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl"
export NVM_DIR="/Users/alanfu/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


#--------- Docker ----------------
#set default env for default
dkme () {
  eval "$(docker-machine env $1)"
}

# remove containers
#dkrm () {
#  docker rm -f $(docker ps -a -q)
#}

#dkBC() {
#  dkrm
#  docker rmi battlecode_creator
#  docker rmi battlecode_solution
#  docker-compose up -d
#}






