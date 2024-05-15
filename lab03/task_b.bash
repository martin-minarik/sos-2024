#!/bin/bash

rm -r less && mkdir less
rm -r greater && mkdir greater

size_delim_="$(($1 * 1024))"
echo "size delimiter: ${size_delim_} bytes"

for file_ in $(ls files);
do
        filepath_=files/$file_;
        size_=$(stat -c %s $filepath_);

        echo -n "$filepath_ | $size_ bytes | ";
        if [[ $size_ -lt $size_delim_ ]];
        then
                echo "less";
                mv $filepath_ less/$file;
        else
                echo "greater";
                mv $filepath_ greater/$file;
        fi;
done