#!/bin/bash
remotedir=/home/backup/
basedir=/backup/weekly
host=scdc.mydlink.com
id=whillewang

# 底下为程序阶段！不需要修改喔！
rsync -avz -e \"ssh -p 2226\" $basedir ${id}@${host}:${remotedir}
