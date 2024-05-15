#!/bin/bash

for a_ in $(ls -d */);
 do
        filepath_=$a_/similar.txt;
        touch $filepath_;
        count_a=$(echo $a_ | grep -o "_" | wc -l);
        list_=""
        for b_ in $(ls -d */);
        do
                count_b=$(echo $b_ | grep -o "_" | wc -l);
                if [ "$count_a" == "$count_b" ];
                then
                        list_+=$b_;
                        list_+='\n';
                fi;
         done;
        echo -e $list_;
        echo $list_ >> $filepath_;
done