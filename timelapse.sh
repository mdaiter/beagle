#!/bin/bash
ffmpeg -i /root/pictures/image-%04d.jpeg -c:v libx264 -r 30 out.mp4
