sleep 14
v4l2-ctl --set-fmt-video=width=320,height=240,pixelformat=1
v4l2-ctl --set-parm=15
ffmpeg -s 320x240 -f video4linux2 -i /dev/video0 -f mpeg1video -b:a 800k -r 30 http://127.0.0.1:8082/matthew8121/320/240 
