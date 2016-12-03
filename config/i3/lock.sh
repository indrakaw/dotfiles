image="/tmp/lockscreen.png"

scrot $image
# WARNING: too much effect may cause CPU overusge.
convert $image -blur 10 -set colorspace Gray -separate -average $image
i3lock -i $image
rm $image

unset image
