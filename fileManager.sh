#A script that creates, renames, deletes, and moves files or directories based on user input

#! /bin/bash

read -p "Choose an operation: (1) Create (2) Rename (3) Delete (4) Move (5) Exit" choice

case $choice in
    1)
        # code to create a file or directory
        ;;
    
    2)
        # code to rename a file or directory
        ;;
    
    3)
        # code to delete a file or directory
        ;;
    
    4) 
        # code to move a file or directory
        ;;

    5)
        # Exit
        ;;
    
    *)
        echo "Invalid option. Try again."
        ;;
esac