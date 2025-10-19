#!/bin/sh

# power menu, liberally cribbed from https://github.com/binoymanoj/dotfiles/blob/master/hypr/scripts/power-menu.sh

selected_option=$(echo -e "shut down\nreboot\nsuspend\nlock" | rofi -dmenu -i -p "Power")

case $selected_option in
  "shut down")
      systemctl poweroff
      ;;
  "reboot")
      systemctl reboot
      ;;
  "suspend")
      systemctl suspend
      ;;
  "lock")
      hyprlock
      ;;
esac
