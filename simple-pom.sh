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

for i in $(seq 1 -1 1); do
  echo $i
#  sleep 1m
done

echo 'End of Pomodoro!'
notify-send -i face-cool -t 0 'End of Pomodoro!'
aplay /usr/share/sounds/alsa/meditationBell.wav
