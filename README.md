# regular_backup
backup your code automatically and regularly.
****
1. 写好并测试备份脚本
2. 使用crontab定期执行备份脚本，参考[crontab用法与实例](https://www.linuxprobe.com/how-to-crontab.html)
   a. 在脚本目录下```crontab -e```进入当前用户的工作表编辑界面（默认为vi）
   b. 在工作表中记录定期执行命令，命令构成为 时间+动作 ， 前五个* * * * *分别对应分、时、日、月、周（下例为每一分钟执行一次备份文件）。
```
* * * * * sh backup.sh
```
每天零点执行可表示为
```
0 0 * * * sh backup.sh
```
   c. ```crontab -l```列出当前用户工作表中的内容，新创建的cron job不会马上执行，至少要等2分钟才能执行
     也可以使用```service crond restart```或者```service crond start```启动服务，需要root账户权限。
   
