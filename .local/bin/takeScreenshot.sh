#!/bin/sh

# This is bound to Shift+PrintScreen by default, requires maim. It lets you
# choose the kind of screenshot to take, including copying the image or even
# highlighting an area to copy. scrotcucks on suicidewatch right now.

case "$(printf "a selected area\\ncurrent window\\nfull screen\\na selected area (copy)\\ncurrent window (copy)\\nfull screen (copy)" | dmenu -l 6 -i -p "Screenshot which area?")" in
	"a selected area") sleep 2 && maim -s pic-selected-"$(date '+%y%m%d-%H%M-%S').png" ;;
	"current window") sleep 2 && maim -i "$(xdotool getactivewindow)" pic-window-"$(date '+%y%m%d-%H%M-%S').png" ;;
	"full screen") sleep 2 && maim pic-full-"$(date '+%y%m%d-%H%M-%S').png" ;;
	"a selected area (copy)") sleep 2 && maim -s | xclip -selection clipboard -t image/png ;;
	"current window (copy)") sleep 2 && maim -i "$(xdotool getactivewindow)" | xclip -selection clipboard -t image/png ;;
	"full screen (copy)") sleep 2 && maim | xclip -selection clipboard -t image/png ;;
esac
