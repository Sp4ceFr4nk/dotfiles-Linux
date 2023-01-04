# set the italian keyboard
setxkbmap it &
# source the right setting and colors
xrdb $HOME/.Xresources &
# set the right resolution
xrandr -s 1920x1080 &
# xrandr -s 1856x1392 &
# start all the audio related app
/usr/bin/pipewire &
/usr/bin/pipewire-pulse &
/usr/bin/wireplumber &
# add the wallpaper
$HOME/.fehbg &
# start polybar
exec polybar &
# start i3
exec i3
