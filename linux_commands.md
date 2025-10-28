# create a bash script
```bash
# create file
touch test.sh
# open and add and save
#!/bin/bash
cmdsc
# check permissions
ls -l mr.sh
# // change permissions
sudo chmod 774 mr.sh
# // run
./mr.sh
```
-----------------
# nano
```bash
# 	save (write) : ctrl+o and enter
# 	ctrl+x exit
# 	ctrl+z force stop
# 	I -> insert
# 	esc -> get out to enter cmds
# 	:wq -> save and exit
# ctrl+c ->interrupt
```
-----------------
# open directory in vscode
```bash
code .
```
-----------------
# run programs and output them to files(RPAL) -> go to directory
```bash
for file in *; do
    if [[ -f "$file" && "$file" != "rpal" && "$file" != "rpal.exe" && "$file" != "cygwin1.dll" ]]; then
        ./rpal "./$file" > "${file}_out"
    fi
done
```

# go through the files and echo the commands to append to makefile java
```bash
#!/bin/bash
```

# Loop through files in the folder
```bash
for file in *; do
    # Check if it's a regular file and not one of the excluded files
    if [[ -f "$file" && "$file" != "rpal" && "$file" != "rpal.exe" && "$file" != "cygwin1.dll" && "$file" != *_out ]]; then
        echo "java -cp bin rpal20 tests_v2/$file > output.01"
        echo "fc output.01 tests_v2/${file}_out"
        echo
    fi
done
```
-----------------
# ip commands in mac
```bash
# install brew
brew install iproute2mac
```
