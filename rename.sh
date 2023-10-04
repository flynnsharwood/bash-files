for f in /mnt/c/Users/Study/Downloads/pdf-image-set/**/*;
do
   convert "$f" "${f%.jpg.jpeg}".png
done
