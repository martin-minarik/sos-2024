#!/bin/bash

rm -r files
mkdir files
for i_ in $(seq $1);
do
        filepath_=files/$i_;
        touch $filepath_;
        RANDOM=$i_;
        dd if=/dev/random of=$filepath_ bs=1 count=$RANDOM;
done