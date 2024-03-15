 magick -size 200x50 xc:transparent -font Cantarell -pointsize 24 \
	-fill grey30 -annotate +20+32 "$(date '+%A %b %d')" -blur 0x2 \
	-fill lightgrey -annotate +20+30 "$(date '+%A %b %d')" \
	/tmp/lockscreen-date.png