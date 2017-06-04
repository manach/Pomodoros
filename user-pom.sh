#!/bin/sh
#
# Pomodoro script.
#
# Displays a notification after 25 minutes.
#
# Don't forget to 'sudo apt-get install libnotify-bin'
#
# Shell script version by Gabriel Bezerra <gabriel.bezerra@gmail.com>
# based on the Ruby version by Philippe Creux at https://gist.github.com/1321896.

echo 'Go go go!'
notify-send -i face-cool 'Go go go!'

echo "How many minutes do you want to work for?"

read pomMinutes

echo "How long do you want your break to be?"

read breakMinutes

for i in $(seq "$pomMinutes" -1 1); do
  echo $i
  sleep 1m
done

echo 'End of Pomodoro! Beginning break.'
notify-send -i face-cool -t 0 'End of Pomodoro!'
aplay ~/Downloads/STE-015.wav

for i in $(seq "$breakMinutes" -1 1); do
  echo $i
  sleep 1m
done

echo 'End of break! Run setpom for a new Pomodoro.'
notify-send -i face-cool -t 0 'End of break!'
aplay ~/Downloads/STE-015.wav
