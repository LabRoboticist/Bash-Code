#!/bin/zsh

echo "\nYou are useing the symlink neofetch slector! 0w0"
echo "(small or normal)"
read size
ls ~/CODE/Bash_Code/Workspace/neofetch-themes/$size
echo "Copy and paste the directory or config file of your choice.\n"
read ford
echo $ford

#Delete all symlinks in the directory
if [ "$(ls -A ~/.config/neofetch/)" ]; then #lss -A == hidden files
    echo "Directory is not empty"
    for file in ~/.config/neofetch/*; do 
        unlink "$file"
    done
 
fi

echo "processing..."
#make a symlink for every file in a directory selected
if [[ -d ~/CODE/Bash_Code/Workspace/neofetch-themes/$size/$ford ]]; then
	echo "you chose a directory"
    	files=($(ls ~/CODE/Bash_Code/Workspace/neofetch-themes/$size/$ford))
    		#echo "${files[0]}"
    		for i in "${files[@]}"; do #remeber this
        		ln -sf ~/CODE/Bash_Code/Workspace/neofetch-themes/$size/$ford/$i ~/.config/neofetch/
		done
#make a symlink for the file (change name as well)
elif [[ -f ~/CODE/Bash_Code/Workspace/neofetch-themes/$size/$ford ]]; then
	echo "You Have the conf file $ford."   
	ln -s ~/CODE/Bash_Code/Workspace/neofetch-themes/$size/$ford ~/.config/neofetch/config.conf
fi
echo "Also preocessing..."
