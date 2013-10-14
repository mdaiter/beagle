./boneCV/capture -F -o -c0 | ffmpeg -y -i - -vcodec copy -f ssegment -segment_time 4 -segment_format mpegts -c:v libx264 -b:v 128k -flags -global_header -map 0 -segment_list stream.m3u8 -segment_list_size 3 -segment_list_flags live -segment_list_type m3u8 "segments/%08d.ts"

trap "rm stream.m3u8 segments/*.ts" EXIT
