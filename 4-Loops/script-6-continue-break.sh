for file in $(ls)
do 
    if [[ -d $file ]]
        then
            echo "Continue"; 
            continue;
    elif [[ -f $file ]]
        then 
            echo "break";
            break;
    else
        stat -c "%n %F" $file;
    fi
done