#Basic Script Structure:



#!/bin/
echo "Hello, World!"

#Variable Handling:



#!/bin/
echo "Enter your name:"
read name
echo "Hello, $name!"

#Conditional Statements:



#!/bin/
file="example.txt"
if [ -e "$file" ]; then
    echo "$file exists!"
else
    echo "$file does not exist. Creating..."
    touch "$file"
fi

#Looping:



#!/bin/
for i in {1..10}; do
    echo $i
done

#User Input and Validation:



#!/bin/
echo "Enter a number:"
read input
if [[ "$input" =~ ^[0-9]+$ ]]; then
    echo "Valid number."
else
    echo "Invalid input. Please enter a number."
fi

#String Manipulation:



#!/bin/
echo "Enter a sentence:"
read sentence
words=$(echo "$sentence" | wc -w)
echo "Number of words: $words"

#File Operations:



#!/bin/
file="example.txt"
line_number=1
while IFS= read -r line; do
    echo "Line $line_number: $line"
    ((line_number++))
done < "$file"

#Functions:



#!/bin/
factorial() {
    if [ "$1" -eq 0 ]; then
        echo 1
    else
        echo $(( $1 * $(factorial $(( $1 - 1 ))) ))
    fi
}

result=$(factorial 5)
echo "Factorial of 5: $result"

#Command Line Arguments:



#!/bin/
if [ "$#" -eq 2 ]; then
    sum=$(( $1 + $2 ))
    echo "Sum of $1 and $2 is $sum"
else
    echo "Usage: $0 <num1> <num2>"
fi

#Error Handling:



#!/bin/
file="nonexistent.txt"
if [ -e "$file" ]; then
    echo "$file exists!"
else
    echo "$file does not exist. Exiting..."
    exit 1
fi

#Advanced Scripting:



#!/bin/
search_extension=".txt"
search_directory="/path/to/search/directory"

find "$search_directory" -type f -name "*$search_extension" -exec echo {} \;

#Parsing and Processing Text Files:



#!/bin/
csv_file="example.csv"
while IFS=, read -r column1 column2 column3; do
    echo "Column1: $column1, Column2: $column2, Column3: $column3"
done < "$csv_file"
