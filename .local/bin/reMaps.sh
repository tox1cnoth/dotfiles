#!/bin/sh

# Map the caps lock key to super.
setxkbmap -option caps:super
setxkbmap -layout us,el -option grp:alt_shift_toggle

# When it is pressed only once, treat it as escape.
killall xcape 2>/dev/null ; xcape -e 'Super_L=Escape'

# Map the menu button to right super as well.
xmodmap -e 'keycode 135 = Super_R'
