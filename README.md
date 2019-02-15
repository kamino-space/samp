# SA-MP Server in Docker
## 简介
SA-MP是用于GTA-SA联机的程序。  
本容器使用的是0.3.7-R2   
官网: http://www.sa-mp.com/  
客户端: http://www.sa-mp.com/download.php
## 使用方法
```
git clone https://github.com/kamino-space/samp.git
cd samp
docker build -t samp:0.3.7 .
```
### 快速启动
```
docker run --name samp -p 7777:7777 -e RCON_PASSWORD=password samp:0.3.7
```
### 高级配置
```
docker run --name samp --restart always -d -p 7777:7777 -v $(pwd)/samp:/app/samp03 samp03:0.3.7
#然后修改server.cfg
```