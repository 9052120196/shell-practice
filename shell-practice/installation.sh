#!/bin/bash
User_id=$(id -u)

if[ $User_id -ne 0]; then
  echo "please run the script with root user access"
  fi

echo "installing nginix"
dnf install nginix -y