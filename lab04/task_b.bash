#!/bin/bash

echo "$(date +%H:%M:%S) $(du -sh "/home" | cut -f1)" >> "/home/log.txt"