#!/bin/bash
date=$(date +%Y-%m-%d:%H:%M:%S)
# date=$(date +%Y-%m-%d)
zip -r /ssd2/wangshun01/codes.zip /ssd2/wangshun01/Codes
echo $date
cp /ssd2/wangshun01/codes.zip /home/work/wenku_yq/wangshun/Backup/codes.zip
rename codes $date /home/work/wenku_yq/wangshun/Backup/codes.zip