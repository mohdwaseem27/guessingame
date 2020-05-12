#!/usr/bin/env bash
# File: guessinggame.sh

function guess(){
  correct_answer=$(ls -l |grep "^-"|wc -l)
  while true;
  do
    echo "guess the number of files in your current dir"
    read num
    if [[ $num -lt $correct_answer ]]
    then
      echo " your guess is too low than the actual number"
    elif [[ $num -gt $correct_answer ]]
    then 
      echo "your guess is too high than the actual number"
    else
      echo "congo!! you've got it!"
    break;
    fi
  done
}
guess
