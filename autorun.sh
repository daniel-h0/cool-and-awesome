

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

#arandr file

run .screenlayout/default.sh

#this is the only way i could get the restore to actually work
#i am afraid to change it
run nitrogen --restore ; nitrogen restore ; nitrogren --restore ; run nitrogen -restore ; nitrogen --restore &

#maybe this will work?
#nitrogen --restore

#open the terminal to see whether or not this is actually working
#run kitty

#run picom
run picom --experimental-backends

#open the bluetooth gui
run blueman-applet

#open flameshot
run flameshot

#simple x hotkey daemon

run sxhkd

#open KDEconnect (not actually sure if this is working or if its a good idea)

run kdeconnect-app