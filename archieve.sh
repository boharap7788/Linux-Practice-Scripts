#!/bin/bash

while true; do
read -p "Enter the foler Name :" dir

if [ -d "$dir" ]
then
	echo "archeiving directory :: "
	tar -czvf $dir.tar.gz $dir
	break
else
	echo "The directory not exist !!!!"

fi
done

echo "script done !!!!!!"
