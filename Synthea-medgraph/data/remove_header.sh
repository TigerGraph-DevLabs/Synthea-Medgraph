#!/bin/bash
for f in *.csv
do
    head -1 "$f" > "$f.header"
    sed -i '' 1d "$f"
done
