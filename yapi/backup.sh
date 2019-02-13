#!/bin/bash

Blue='\033[1;34m'
Green='\033[1;32m'
NC='\033[0m'

Info='info: '
Succ='Succ: '

echo -e "${Blue}${Info} Backup database files to mongo/backup dir...${NC}"
date '+%Y-%m-%d_%H_%M_%S' | xargs -I {} tar -zcf /home/ubuntu/devOps/yapi/mongo/backup/db.{}.tar.gz -C /home/ubuntu/devOps/yapi/mongo ./db
echo -e "${Blue}${Info} Backup database files to mongo/backup dir done...${NC} \n"

echo -e "${Green}${Succ} Back up succcess!${NC}"

