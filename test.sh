#!/bin/bash

# unicode
echo -e "\e[30m██\e[31m██\e[32m██\e[33m██\e[34m██\e[35m██\e[36m██\e[37m██\e[0m"

# unicode background
echo -e "\e[90m██\e[91m██\e[92m██\e[93m██\e[94m██\e[95m██\e[96m██\e[97m██\e[0m"

# space
echo -e "\e[40m  \e[41m  \e[42m  \e[43m  \e[44m  \e[45m  \e[46m  \e[47m  \e[0m"

# space background
echo -e "\e[100m  \e[101m  \e[102m  \e[103m  \e[104m  \e[105m  \e[106m  \e[107m  \e[0m"

# ASCII
echo -e "\e[47;31m"
for  (( i = 0x20; i < 127; i++ )) do
  printf "${i}: \x$(printf %x ${i})\t"
done
echo -e "\e[0m"
