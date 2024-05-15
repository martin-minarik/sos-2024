#!/bin/bash

for i in $(cat seznam-obci-cr.txt | grep "ova" | grep -v "Nova" | tr -t " " "_"); do mkdir $i; done
