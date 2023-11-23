#!/bin/bash
date=$(date +%Y-%m-%d:%H:%M:%S) # 获取当前日期及时间
# date=$(date +%Y-%m-%d)
zip -r /ssd2/wangshun01/codes.zip /ssd2/wangshun01/Codes # 打包待备份文件
echo $date
cp /ssd2/wangshun01/codes.zip /home/work/wenku_yq/wangshun/Backup/codes.zip # 复制备份文件到指定目录
rename codes $date /home/work/wenku_yq/wangshun/Backup/codes.zip # 用时间戳为备份文件改名，方便管理记录
