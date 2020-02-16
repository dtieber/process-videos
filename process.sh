[ -z "$1" ] && echo "no video, exiting." && exit -1 
VIDEO=$1

[ -z "$2" ] && echo "no timestamps provided, exiting." && exit -1 
TIMESTAMPS=$2

while IFS= read -r line
do
  start=$(echo $line | cut -f1 -d-)
  end=$(echo $line | cut -f2 -d- | cut -f1 -d=)
  label=$(echo $line | cut -f2 -d=)

  echo "Processing sequence \"$label\": $start to $end"
  < /dev/null ffmpeg -i "${VIDEO}" -vcodec libx264 -vprofile high \
    -ss "$start" -to "$end" -async 1 "out/${label}.mp4" \
    -loglevel warning -y 

done < "$TIMESTAMPS"

echo "done."
