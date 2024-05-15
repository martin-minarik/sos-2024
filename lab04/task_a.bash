#!/bin/bash

size_limit_="$((150 * 1024))"  # 150MB

for file_ in /home/*; do
        if [ -d $file_ ];
        then
                size_=$(du -s "$file_" | cut -f1);
                if [[ $size_ -gt $size_limit_ ]];
                then
                        echo "$file_ $size_"
                        touch $file_/"BYLA PREKROCENA MAX VELIKOST SLOZKY";
                fi

        fi
done