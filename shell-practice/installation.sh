#!/bin/bash
Userid=$(id -u)

if[ $Userid -ne 0 ]; then
  echo "please run the script with root user access"
  fi

echo "installing nginix"
dnf install nginix -y