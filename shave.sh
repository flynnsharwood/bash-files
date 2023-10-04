for f in C:/Users/ggggg/Downloads/pdf-image-set/;
do
   convert "$f" -shave 0x180 "$f".jpeg
done
