Blue='\033[0;34m'
Green='\033[0;32m'
NC='\033[0m'

echo -e "${Blue}--> Copy database files from docker...${NC}"
docker cp yapi_mongo:/data/db /d/devOps/yapi/mongo/

echo -e "${Blue}--> Backup database files to monogo/backup dir...${NC}"
mkdir -p /d/devOps/yapi/mongo/backup
date '+%Y-%m-%d' | xargs -I {} tar -zcf /d/devOps/yapi/mongo/backup/db.{}.tar.gz /d/devOps/yapi/mongo/db

echo -e "${Green}--> Back up succcess!${NC}"
