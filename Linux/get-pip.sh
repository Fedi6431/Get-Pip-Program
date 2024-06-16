#!/bin/bash

while : 
do 
  echo -e "What are you using:\n1) Linux\n2) Tremux\n"
  
  read -p "--> " usr_sys
  
  if [[ $usr_sys = 1 ]]; then 
    apt update
    apt upgrade
    apt autoremove -y
  
    echo -e "Select an option\n1) install\n2) update\n3) remove\n4) close\n"
  
    read -p "--> " selectop
  
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
    fi
  fi
  
  if [[ $usr_sys = 2 ]]; then 
    pkg update
    pkg upgrade
    apt autoremove -y
  
    echo -e "Select an option\n1) install\n2) update\n3) remove\n4) close\n"
  
    read -p "--> " selectop
  
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
  fi
done
