#!/bin/bash

color_table=( \
  "\e[40m" "\e[41m" "\e[42m" "\e[43m" \
  "\e[44m" "\e[45m" "\e[46m" "\e[47m" \
  "\e[100m" "\e[101m" "\e[102m" "\e[103m" \
  "\e[104m" "\e[105m" "\e[106m" "\e[107m" "\e[0m");

declare -A color_map=( \
  ["b"]=0   ["r"]=1   ["g"]=2   ["y"]=3 \
  ["u"]=4   ["m"]=5   ["c"]=6   ["w"]=7 \
  ["lb"]=8  ["lr"]=9  ["lg"]=10 ["ly"]=11 \
  ["lu"]=12 ["lm"]=13 ["lc"]=14 ["lw"]=15 \
  ["n"]=16);

mario=(\
  b  b  b  b  b  r  r  r  r  r  b  b  b  b  b  b \
  b  b  b  b  r  r  r  r  r  r  r  r  r  b  b  b \
  b  b  b  b lb lb lb  y  y lb  y  b  b  b  b  b \
  b  b  b lb  y lb  y  y  y lb  y  y  y  b  b  b \
  b  b  b lb  y lb lb  y  y  y lb  y  y  y  b  b \
  b  b  b  b lb  y  y  y  y lb lb lb lb  b  b  b \
  b  b  b  b  b  y  y  y  y  y  y  b  b  b  b  b \
  b  b  b  b  r  r  u  r  r  u  r  r  b  b  b  b \
  b  b  b  r  r  r  u  r  r  u  r  r  r  b  b  b \
  b  b  r  r  r  r  u  r  r  u  r  r  r  r  b  b \
  b  b  y  y  r  u ly  u  u ly  u  r  y  y  b  b \
  b  b  y  y  y  u  u  u  u  u  u  y  y  y  b  b \
  b  b  y  y  u  u  u  u  u  u  u  u  y  y  b  b \
  b  b  b  b  u  u  u  b  b  u  u  u  b  b  b  b \
  b  b  b lb lb lb  b  b  b  b lb lb lb  b  b  b \
  b  b lb lb lb lb  b  b  b  b lb lb lb lb  b  b \
);

column_size=16

matrix=(${mario[@]})

for (( i = 0 ; i < ${#matrix[@]} ; i++ ))
do
  printf ${color_table[${color_map[${matrix[$i]}]}]};
  printf "  "
  if (( ${i} > 0 )); then
    if ! (( (${i} + 1) % ${column_size} )); then
      printf "\e[0m";
      printf "\n";
    fi
  fi
done
printf "\e[0m\n"
