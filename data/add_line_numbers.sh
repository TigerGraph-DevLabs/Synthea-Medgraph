#/bin/bash
awk '{printf "%s,%s\n", NR,$0}' "$1" > "$1.temp"
mv -f "$1.temp" "$1"
echo "ID," `cat "$1.header"` > "$1.header"
