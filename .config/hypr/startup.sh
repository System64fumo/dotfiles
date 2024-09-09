# Shell
nice -n 19 sysshell &> /tmp/log/sysshell.log &
nice -n 19 swaybg \
	-o HDMI-A-1 -m fill -i ~/Pictures/wallpaper.jpg \
	-o DP-3 -m fill -i ~/Pictures/wallpaper.jpg \
	-o HDMI-A-2 -m fill -i ~/Pictures/wallpaper.jpg &

# Extras
nice -n 19 foot -s -S &
nice -n 19 gnome-keyring-daemon &
nice -n 19 /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
hypridle -q &

# Mobile stuff
#iio-hyprland DSI-1 &
#sensh &> /dev/null &

# Plugins
#hyprctl plugin load ~/.config/hypr/libhyprgrass.so &
#hyprctl plugin load ~/.config/hypr/dynamic-cursors.so

# Virtual display
#wayvnc 0.0.0.0 --output=HEADLESS-2 -f 60
#hyprctl output create headless
#hyprctl output remove HEADLESS-2

nice -n 19 taskset -c 1 jamesdsp -t &
