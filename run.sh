#!/bin/bash

if [ $1 = "build" ]; then
  echo "Building"
  go build -o main cmd/main.go

  if [ $? -eq 0 ]; then
    echo "Build succeeded"
  else
    echo "Build failed"
  fi
elif [ $1 = "install" ]; then
  echo "Installing"
  main install
elif [[ $1 == *"/"* ]]; then
  "Retrieving Packages"
  main $1
elif [[ $1 == "test" ]]; then
  "Testing"
  main $1
else
  echo "Invalid argument. Usage: $0 [build | install | test | "URL File"]"
fi