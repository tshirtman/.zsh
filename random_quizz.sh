random_quizz(){
 if [ $(($RANDOM % $1)) == 0 ]
 then
   quizz $2
 fi
}

quizz(){
  count=0
  time=$(date +%s)
  a=$(($RANDOM % (10 ** $1)))
  b=$(($RANDOM % (10 ** $1)))
  c=0

  while [ x$c != x$(($a * $b)) ]
    do
    count=$((count +1))
    echo "$a * $b ?"
    read c
  done
  echo "found in $count tries, in $(($(date +%s) - $time)) seconds"
  echo "$a * $b : $count : $(($(date +%s) - $time))" >> ~/.zsh/quizz_scores
}
