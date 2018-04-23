# YApi Docker 部署平台

## Usage

1. docker-compose 安装 yapi 和 mongodb 服务
```bash
docker-compose up
```
2. 打开 **http://0.0.0.0:9090**, 表单中修改**数据库地址**为`mongo`, 点击开始部署
3. 部署成功后到部署目录运行 `node vendors/server/app.js`, 如果运行失败提示数据库连接失败, 则修改部署目录下的`config.json`文件中的 **servername**为`127.0.0.1`, 重新跑命令即可; 如果提示连接数据库权限失败， 手动到 `cd my-yapi/vender > node server/install.js`
4. 打开 **http://127.0.0.1:3000**
```js
    adminAccount: "admin@admin.com",
    adminPaassword: "ymfe.org"
```

## Backup

1. 启动容器服务 `docker-compose up -d`
2. 进入容器 `docker exec -it yapi_mongo /bin/bash`
3. 在容器交互界面 `tar -zcf db-2018-04-24.tar.gz data/db`
4. 退出容器， `docker cp yapi_mongo:/data/db-2018-04-24.tar.gz mongo/db/`
