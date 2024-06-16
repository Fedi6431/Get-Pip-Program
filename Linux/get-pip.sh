#!/bin/bash

selectop="Select an option
1) install
2) update
3) remove
4) close
"

echo -e "What are you using:\n1) Linux\n2) Tremux\n"

read -p "--> " usr_sys

if [[ $usr_sys = 1 ]]; then 
  apt update
  apt upgrade
  apt autoremove -y

  echo $selectop

  if [[ $selectop = 1 ]]; then 
    sudo apt install python3-pip -y 
    echo -e "\n"
    python3 -m pip install --upgrade pip
    echo -e "\n"
    read -p "Press enter to continue" WAIT

  elif [[ $selectop = 2 ]]; then 
    pip uninstall pip -y
    echo -e "\n"
    sudo apt install python3-pip -y 
    python3 -m pip install --upgrade pip
    echo -e "\n"
    read -p "Press enter to continue" WAIT

  elif [[ $selectop = 3 ]]; then 
    pip uninstall pip -y
    echo -e "\n"
    read -p "Press enter to continue" WAIT
    
  elif [[ $selectop = 4 ]]; then 
    exit 0 

if [[ $usr_sys = 2 ]]; then 
  pkg update
  pkg upgrade
  apt autoremove -y

  echo $selectop

  if [[ $selectop = 1 ]]; then 
    pkg install python-pip -y
    echo -e "\n"
    python -m pip install --upgrade pip
    echo -e "\n"
    read -p "Press enter to continue" WAIT

  elif [[ $selectop = 2 ]]; then 
    pkg remove python-pip -y
    echo -e "\n"
    pkg install python-pip -y 
    python -m pip install --upgrade pip
    echo -e "\n"
    read -p "Press enter to continue" WAIT

  elif [[ $selectop = 3 ]]; then 
    pkg remove python-pip -y
    echo -e "\n"
    read -p "Press enter to continue" WAIT
    
  elif [[ $selectop = 4 ]]; then 
    exit 0 
fi
