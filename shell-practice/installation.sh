#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]; then
  echo "Ngnix installation is success"
   else
      echo "Nginx installation is failed"
  fi

echo "installing nginx"
dnf install nginx -y

if [ $USERID -ne 0 ]; then
   echo "Nodejs installation is success"
  else
     echo "Nodejs installation is failed"
  
  fi

echo "installing nodejs"
dnf install nodejs -y

if [ $USERID -ne 0 ]; then
  echo "mysql installation is success"
  else
  echo "mysql installation is failed"
  fi

echo "installing mysql"
dnf install mysql -y