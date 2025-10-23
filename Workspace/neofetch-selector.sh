#!/bin/zsh

function find_logo(){
    files=($(ls ~/Bash_Code/Workspace/neofetch-themes/$size))
    echo "${files[0]}"
}

echo "Neofetch Selector"
echo "normal or small?"; read size
if [[ $size == "normal" || $size == "small" ]]; then
    ls ~/Bash_Code/Workspace/neofetch-themes/$size
    echo "Which of the config files do you want to use?"
    read conf
    if [[ $conf != *.conf && -d ~/Bash_Code/Workspace/neofetch-themes/$size/$conf ]]; then #if conf is not a config file && if directory
        neofetch --config ~/Bash_Code/Workspace/neofetch-themes/$size/$conf/*.conf 
    elif [[ ~/Bash_Code/Workspace/neofetch-themes/$size/$conf/*.conf && -f ~/Bash_Code/Workspace/neofetch-themes/$size/$conf ]]; then 
        #&& -f = file?
        neofetch --config ~/Bash_Code/Workspace/neofetch-themes/$size/$conf
    fi
fi

echo $(find_logo)
#neofetch --config config.conf --source Logo/logo
#neofetch --config bmofetch.conf --source bmo.txt
