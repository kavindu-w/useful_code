# create a bash script
# // create file
touch test.sh

# // open and add and sawe
#!/bin/bash
cmdsc

# // check permissions
ls -l mr.sh
# // change permissions
sudo chmod 774 mr.sh
# // run
./mr.sh




# nano
# 	save
# 	ctrl+x exit
# 	ctrl+z force stop
# 	I -> insert
# 	esc -> get out to enter cmds
# 	:wq -> save and exit
# ctrl+c ->interrupt
	
# // open directory in vscode
code .


# run programs and output them to files(RPAL) -> go to directory
for file in *; do
    if [[ -f "$file" && "$file" != "rpal" && "$file" != "rpal.exe" && "$file" != "cygwin1.dll" ]]; then
        ./rpal "./$file" > "${file}_out"
    fi
done
# go through the files and echo the commands to append to makefile java
#!/bin/bash

# Loop through files in the folder
for file in *; do
    # Check if it's a regular file and not one of the excluded files
    if [[ -f "$file" && "$file" != "rpal" && "$file" != "rpal.exe" && "$file" != "cygwin1.dll" && "$file" != *_out ]]; then
        echo "java -cp bin rpal20 tests_v2/$file > output.01"
        echo "fc output.01 tests_v2/${file}_out"
        echo
    fi
done
