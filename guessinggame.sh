#!/usr/bin/env bash

function rightanswer {
 echo " _____________________________________________________"
 echo "|                                                     |"
 echo "|                     Correct!                        |"
 echo "|               Congrats on guessing                  |"
 echo "|    the number of files in the current directory!    |"
 echo "|_____________________________________________________|"
}

answer=$( ls | wc -l )
echo "Guess the number of files in the current directory."
while [[ $guess != $answer ]]
do
 echo "What is your guess?"
 read guess
 if [[ $guess -lt $answer ]]
 then
  echo "Sorry, your guess is too small."
 elif [[ $guess -gt $answer ]]
 then
  echo "Sorry, your guess is too big."
 fi
done
rightanswer

