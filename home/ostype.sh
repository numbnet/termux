#!/bin/bash

case "$OSTYPE" in
  solaris*) echo "SOLARIS" ;;
  darwin*)  echo "OSX" ;; 
  linux*)   
  case "$OSTYPE" in
    linux-centos*)   echo "LINUX Centos" ;;
    linux-android*)   echo "ANDROID 8" ;;
esac
  ;;
  bsd*)     echo "BSD" ;;
  msys*)    echo "WINDOWS" ;;
  *)        echo "unknown: $OSTYPE" ;;
esac