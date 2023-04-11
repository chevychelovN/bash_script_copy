# bash_script_copy
Simple bash script that copies all files from one directory to another one, checking if there is a file with the same name.
If a file with the same name already exists in the target directory, the script prompt user to overwrite the file or skip copying it.
At the end script prints out number of copied and skipped files.

## Running script 
```
./copy.sh $(sourse_directory) $(destination_derictory)
```

## Notes
This script only copies files, it cannot copy subdirectories. 
### Screenshots 
![image](https://user-images.githubusercontent.com/86499004/231262197-60afd646-21d5-43a0-b373-6dad59959c95.png)

