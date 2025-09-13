#!/bin/sh
choice=$(printf "Logout\nReboot\nShutdown" | dmenu -p "System:")
case "$choice" in
    Logout) loginctl terminate-session "$XDG_SESSION_ID" ;;
    Reboot) systemctl reboot ;;
    Shutdown) systemctl poweroff ;;
esac
