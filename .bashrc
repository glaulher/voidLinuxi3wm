
# ----------------------------------------------------------------------------------------------
 
# Stupid Welcome intro.
 
setterm -foreground red -bold on -term linux
echo '   _ '
echo '  °v° ** Welcome to' `lsb_release -ds | awk '{print $1}'`' '`lsb_release -ds | awk '{print $2}'` '**'
echo ' /(_)\ '
echo '  ^ ^ ' `date`
echo ' '
 

# ----------------------------------------------------------------------------------------------
 # .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
#PS1='[\u@\h \W]\$ '
#PS1="\e[0;35m[\u@\h \W]\$ \e[m "
PS1="[\e[0;32m\W\e[m]\e[0;35m\$ \e[m "

# ----------------------------------------------------------------------------------------------
 
# E mais outro Bash Style.
#set_prompt_style () {
#  PS1="┌─[[\033[1;34m]u[\033[1;32m]@[\033[1;34m] h[e[0m]][[e[1;32m]w[e[0m]]n└─╼ "
#}
#set_prompt_style
 
# ----------------------------------------------------------------------------------------------

 
# Barrinhas coloridas! rsrs
 
FGNAMES=('▐▐▐' '▐▐▐' '▐▐▐' '▐▐▐' '▐▐▐' '▐▐▐' '▐▐▐' '▐▐▐')
BGNAMES=('  ')
 
for b in $(seq 0 0); do
    if [ "$b" -gt 0 ]; then
      bg=$(($b+39))
    fi
#echo -en "\033[0m ${BGNAMES[$b]}"
echo
    for f in $(seq 0 7); do
      echo -en "\033[${bg}m\033[$(($f+30))m ${FGNAMES[$f]} "
      echo -en "\033[${bg}m\033[1;$(($f+30))m ${FGNAMES[$f]} "
    done
echo
  echo -e "\033[0m"
done
 
# ----------------------------------------------------------------------------------------------
 
# Opções para o bash_history, cores, aliases e autocomplete.
#
# INFO: http://dan-scientia.blogspot.com/2010/05/usando-o-historico-do-bash-com.html
 
#if [ -f ~/.bash_aliases ]; then
# . ~/.bash_aliases
#fi
 
export ANDROID_HOME=~/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=~/.npm-global/bin:$PATH


