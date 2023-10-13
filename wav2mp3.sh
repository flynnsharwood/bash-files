for f in /home/flynn/*.wav
do
   ffmpeg -i "$f" -acodec libmp3lame "${f%.wav}".mp3
done
