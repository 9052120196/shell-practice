#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]; then
  echo "please run the script as root user"
   exit 1
  fi

echo "installing nginx"
dnf install nginx -y

if [ $? -ne 0 ]; then
   echo "Ngnix installation is failed"
  else
     echo "Nginx installation is succcess"
  
  fi

echo "installing nodejs"
dnf install nodejs -y

if [ $? -ne 0 ]; then
   echo "Nodejs installation is failed"
  else
     echo "Nodejs installation is succcess"
  
  fi

echo "installing mysql"
dnf install mysql -y

if [ $? -ne 0 ]; then
  echo "mysql installation is failed"
  else
  echo "mysql installation is success"
  fi

