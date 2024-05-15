#!/bin/bash

disk_quota_soft_="50M"
disk_quota_hard_="70M"
file_system_="/dev/sdb"

for i_ in $(seq 1 50);
do
user_="user$i_";
password_hash_=$(echo "foobar$i_" | openssl passwd -1 -stdin);
useradd -m -s /bin/bash -p "$password_hash_" "$user_";
passwd -e "$user_";
setquota -u "$user_" "$disk_quota_soft_" "$disk_quota_hard_" 0 0 "$file_system_";
done