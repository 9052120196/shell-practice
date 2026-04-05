#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]; then
  echo "please run the script as root user"
   exit 1
  fi

echo "installing nginx"


VALIDATE(){
    if [ $1 -ne 0 ]; then
      echo "$2 installation is failed"
    else
      echo "$2 installation is succcess"
  
    fi
}

dnf install nginx -y
VALIDATE $? "Installing nginx"

dnf install nodejs
VALIDATE $? "Installing nodejs"

dnf install mysql
VALIDATE $? "Installing mysql"



