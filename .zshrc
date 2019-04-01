# Set path
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/boxen/homebrew/bin"

# Antibody
alias antibody_update='antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh'
if [[ -n ~/.zsh_plugins.txt(#qN.mh+24) ]]; then
    antibody_update
fi
export ZSH="$(antibody home)/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh"
source ~/.zsh_plugins.sh

# Completion
fpath=($fpath ~/.zsh/completion)
autoload -U compinit && compinit
if [[ -n ~/.zcompdump(#qN.mh+24) ]]; then
	compinit;
else
	compinit -C;
fi

# Source all files in ~/.zshrc.d/
for i in ~/.zshrc.d/* ; do
    if [ -r "$i" ]; then
        source $i
    fi
done
