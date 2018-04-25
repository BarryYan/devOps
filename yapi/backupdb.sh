Blue='\033[1;34m'
Green='\033[1;32m'
NC='\033[0m'

Info='info: '
Succ='Succ: '

echo -e "\n${Blue}${Info} Copy database files from docker...${NC}"
docker cp yapi_mongo:/data/db /d/devOps/yapi/mongo/
echo -e "${Blue}${Info} Copy database files done...${NC} \n"

echo -e "${Blue}${Info} Backup database files to monogo/backup dir...${NC}"
mkdir -p /d/devOps/yapi/mongo/backup
date '+%Y-%m-%d' | xargs -I {} tar -zcf /d/devOps/yapi/mongo/backup/db.{}.tar.gz /d/devOps/yapi/mongo/db
echo -e "${Blue}${Info} Backup database files to monogo/backup dir done...${NC} \n"

echo -e "${Green}${Succ} Back up succcess!${NC}"
