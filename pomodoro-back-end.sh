#!/bin/bash

echo "Initializing the docker with databases..."
docker start pomodoro-postgres mongodb redis

if (dialog --title "Message" --yesno "Want to edit the backend?" 10 35)
then
  cd ~/dev/pomodoro-back-end
  code .
  clear
  echo "Opening vscode."
else
  clear
  echo "Closed vscode."
fi

echo "Initializing server..."
cd ~/dev/pomodoro-back-end
yarn dev:server