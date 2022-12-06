# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs
# run neofetch, if it exists
if [[ -f  /usr/bin/neofetch ]] ;
then
        neofetch
elif
   [[ -f  /usr/local/bin/neofetch ]] ;
then
        neofetch
fi
