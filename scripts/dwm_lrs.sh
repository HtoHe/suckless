#!/bin/sh
choice=$(echo -e "logout\nreboot\nshutdown" | dmenu -p "System:")
case "$choice" in
    logout) loginctl terminate-session "$XDG_SESSION_ID" ;;
    reboot) systemctl reboot ;;
    shutdown) systemctl poweroff ;;
esac
