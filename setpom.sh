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

echo "How many minutes do you want to work for?"

read pomMinutes

echo "How long do you want your break to be?"

read breakMinutes

echo 'Beginning Pomodoro.'
aplay /usr/share/sounds/alsa/boxingBell.wav
echo 'Go go go!'
notify-send -i face-cool 'Go go go!'

for i in $(seq "${pomMinutes}" -1 1); do
  echo $i
  sleep 1m
done

notify-send -i face-cool -t 0 'End of Pomodoro!'
aplay /usr/share/sounds/alsa/meditationBell.wav
echo 'End of Pomodoro! Beginning break.'

for i in $(seq "${breakMinutes}" -1 1); do
  echo $i
  sleep 1m
done

notify-send -i face-cool -t 0 'End of break!'
aplay /usr/share/sounds/alsa/meditationBell.wav
echo 'End of break! Run setpom for a new Pomodoro.'
