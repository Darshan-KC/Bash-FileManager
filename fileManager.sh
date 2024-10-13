#A script that creates, renames, deletes, and moves files or directories based on user input

#! /bin/bash

echo "Choose an operation: (1) Create (2) Rename (3) Delete (4) Move (5) Exit "
read choice

case $choice in
    1)
        # code to create a file or directory
        echo -e "Enter name.extension for file and only name for folder \n e.g. test.txt for file and test for folder";
        read -p "Enter file name or folder : " name
        if [[ $name == *.* ]];
        then
          touch $name;
          echo "File '$name' created successfully"
        else
          mkdir $name;
          echo "Folder '$name' created successfully";
        fi
        ;;
    
    2)
        # code to rename a file or directory
        echo -e "Enter name.extension for file and only name for folder \n e.g. test.txt for file and test for folder";
        read -p "Enter current file name or folder to rename : " name
        read -p "Enter new name for file or folder : " new_name
        mv $name $new_name
        
        ;;
    
    3)
        # code to delete a file or directory
        echo -e "Enter name.extension for file and only name for folder \n e.g. test.txt and test for folder";
        read name

        if [[ $name = "*.*" ]];
        then
            rm $name
        else
            rmdir $name
        fi
        echo -e "Successfully deleted $name \n"
        ;;
    
    4) 
        # code to move a file or directory
        echo -e "Enter name.extension for file and only name for folder \n e.g. test.txt for file and test for folder";
        read -p "Enter file name or folder to move : " name
        read -p "Enter path or folder where to move : " dest
        ;;

    5)
        # Exit
        ;;
    
    *)
        echo "Invalid option. Try again."
        ;;
esac