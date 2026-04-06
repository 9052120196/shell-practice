#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]; then
  echo "please run the script as root user"
   exit 1
  fi




VALIDATE(){
    if [ $1 -ne 0 ]; then
      echo "$2 installation is failed"
    else
      echo "$2 installation is succcess"
  
    fi
}

for package in $@
do
if [ $? -ne 0 ];then
  echo "$package is not installed,Installing the package"
  dnf install $package -y
  VALIDATE $? "$package installation"
  else
  echo "$package already installed,skipping"
  fi
done