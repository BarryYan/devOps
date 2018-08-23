#!/bin/bash

Blue='\033[1;34m'
Green='\033[1;32m'
NC='\033[0m'

Info='info: '
Succ='Succ: '

echo -e "\n${Blue}${Info} Copy database files from docker...${NC}"
docker cp yapi_mongo:/data/db mongo/
echo -e "${Blue}${Info} Copy database files done...${NC} \n"

echo -e "${Blue}${Info} Backup database files to mongo/backup dir...${NC}"
date '+%Y-%m-%d' | xargs -I {} tar -zcf ~/workspace/yapi/mongo/backup/db.{}.tar.gz -C ~/workspace/yapi/mongo ./db
echo -e "${Blue}${Info} Backup database files to mongo/backup dir done...${NC} \n"

echo -e "${Green}${Succ} Back up succcess!${NC}"

