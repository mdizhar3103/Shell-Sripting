for FILE in file1.txt file2.txt file3.txt
do
    chmod 640 $FILE
done

# other way
for FILE in $(ls -1 | grep file)
do
    chmod 640 $FILE
done