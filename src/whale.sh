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

whale=( \
  n  n  n  n lc  n lc  n  n  n  n  n  n  n  n  n  n  n  n  n \
  n  n  n lc  n lc  n lc  n  n  n  n  n  n  n  n  n  n  n  n \
  n  n  n  n  n lc  n  n  n  n  n  n  n  n  n  n  n  n  n  n \
  n  n  n  n  n  n  n  n  n  n  n  n  n  n  n  n  n  n  n  n \
  n  n lb lb lb lb lb lb lb  n  n  n  n  n  n  n  n  n  n  n \
  n lb lc lc lc lc lc lc lc lb lb  n  n  n  n  n  n  n  n  n \
 lb lc lc  c  c  c  c  c  c lc lc lb  n  n  n  n  n  n  n  n \
 lb lc  c  c  c  c  c  c  c  c  c lc lb  n  n  n lb  n lb  n \
 lb lc  c  c  c  c  c  c  c  c  c  c lb  n  n lb lc lb lc lb \
 lb lc  c  c lw  b  c  c  c  c  c  c lb  n  n lb lc lc lc lb \
 lb lc  c  c  b  b  c  c  c  c  c  c lb  n  n lb lc lc lc lb \
 lb lc  c  c  c  c  c  c  c  c  c  c  c lb  n  n lb lc lb  n \
 lb lw lw lw lw lw  c  c  c  c  c  c  c  c lb lb lc  c lb  n \
  n lb lw lw lw lw lb  c lc lw lw lw  c  c  c  c  c lb  n  n \
  n  n lb lb lb lb lb lb lc lb lb lb lb lb lb lb lb  n  n  n \
  n  n  n  n lb lb  n  n lb lb  n  n  n  n  n  n  n  n  n  n \
);

column_size=20

matrix=(${whale[@]})

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
