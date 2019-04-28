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
  n  n  n  n  n  r  r  r  r  r  n  n  n  n  n  n \
  n  n  n  n  r  r  r  r  r  r  r  r  r  n  n  n \
  n  n  n  n lb lb lb lw lw lb lw  n  n  n  n  n \
  n  n  n lb lw lb lw lw lw lb lw lw lw  n  n  n \
  n  n  n lb lw lb lb lw lw lw lb lw lw lw  n  n \
  n  n  n  n lb lw lw lw lw lb lb lb lb  n  n  n \
  n  n  n  n  n lw lw lw lw lw lw  n  n  n  n  n \
  n  n  n  n  r  r  u  r  r  u  r  r  n  n  n  n \
  n  n  n  r  r  r  u  r  r  u  r  r  r  n  n  n \
  n  n  r  r  r  r  u  r  r  u  r  r  r  r  n  n \
  n  n lw lw  r  u ly  u  u ly  u  r lw lw  n  n \
  n  n lw lw lw  u  u  u  u  u  u lw lw lw  n  n \
  n  n lw lw  u  u  u  u  u  u  u  u lw lw  n  n \
  n  n  n  n  u  u  u  n  n  u  u  u  n  n  n  n \
  n  n  n lb lb lb  n  n  n  n lb lb lb  n  n  n \
  n  n lb lb lb lb  n  n  n  n lb lb lb lb  n  n \
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
