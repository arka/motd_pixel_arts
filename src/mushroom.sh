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

mushroom=( \
  n  n  n  n  n lb lb lb lb lb lb  n  n  n  n  n \
  n  n  n lb lb  r  r  r  r lw lw lb lb  n  n  n \
  n  n lb lw lw  r  r  r  r lw lw lw lw lb  n  n \
  n lb lw lw  r  r  r  r  r  r lw lw lw lw lb  n \
  n lb lw  r  r lw lw lw lw  r  r lw lw lw lb  n \
 lb  r  r  r lw lw lw lw lw lw  r  r  r  r  r lb \
 lb  r  r  r lw lw lw lw lw lw  r  r lw lw  r lb \
 lb lw  r  r lw lw lw lw lw lw  r lw lw lw lw lb \
 lb lw lw  r  r lw lw lw lw  r  r lw lw lw lw lb \
 lb lw lw  r  r  r  r  r  r  r  r  r lw lw  r lb \
 lb lw  r  r lb lb lb lb lb lb lb  r  r  r  r lb \
  n lb lb lb lw lw lb lw lw lb lw lw lb lb lb  n \
  n  n lb lw lw lw lb lw lw lb lw lw lw lb  n  n \
  n  n lb lw lw lw lw lw lw lw lw lw lw lb  n  n \
  n  n  n lb lw lw lw lw lw lw lw lw lb  n  n  n \
  n  n  n  n lb lb lb lb lb lb lb lb  n  n  n  n \
);

column_size=16

for (( i = 0 ; i < ${#mushroom[@]} ; i++ ))
do
  printf ${color_table[${color_map[${mushroom[$i]}]}]};
  printf "  "
done
printf "\e[0m\n"
