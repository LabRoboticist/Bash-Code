function find_logo(){
    files=($(ls ~/Bash_Code/Workspace/neofetch-themes/$size/$conf))
    #echo "${files[0]}"
    for i in ${#files[@]}; do
        if [[ $i == 1 ]]; then
            echo "You selected a file (because there is only..."
        fi
        if [[ ${files[$i]} != *.conf && ${files[$i]} != *.sh ]]; then
            echo "The Logo's position is $i" $'\n'
            echo "The Logo's file name is ${files[$i]}"
        fi
        #echo $i #file in specified file path
    done
}
echo "normal or small"
read size
ls ~/Bash_Code/Workspace/neofetch-themes/$size
echo "copy and past which directory (none *.conf) you prefer"
read conf
echo $(find_logo)
