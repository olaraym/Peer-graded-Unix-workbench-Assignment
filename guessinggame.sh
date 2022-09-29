#!/bin/bash

echo "Directory files guessing game: How many files do you think is in this present working directory"


function filesinpwd
{
  command=$(pwd | ls | wc -l)


while
#Get users guesses 
echo "Please enter your guessed number of file below:"
read fn
 
do
  if [[ $fn -lt $command ]]
  then
    echo "Your guess was too low, try again"

  elif [[ $fn -gt $command ]]
  then
    echo "Your guess was too high, try again"
    
  elif [[ $fn -eq $command ]]
  then
    echo "Congratulation, your guess was right, you can now continue with other tasks."
    break;
  else
    continue;

  fi
done
echo "The actual working directory is the $PWD directory"
}


filesinpwd 
