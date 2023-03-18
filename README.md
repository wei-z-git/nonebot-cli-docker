# nonebot-cli-docker
[![release tag](https://img.shields.io/gitlab/v/release/nonebot2-wei-z/nonebot-cli-docker?gitlab_url=https%3A%2F%2Fjihulab.com&include_prereleases&sort=semver
)](https://jihulab.com/nonebot2-wei-z/nonebot-cli-docker/-/releases)
[![build status](https://img.shields.io/gitlab/pipeline-status/nonebot2-wei-z/nonebot-cli-docker?branch=main&gitlab_url=https%3A%2F%2Fjihulab.com%2F)](https://jihulab.com/nonebot2-wei-z/nonebot-cli-docker/-/pipelines)
## Description
#### 一分钟通过Docker部署Nonebot2-QQ机器人
（不含下载安装docker时间）

一个装了nonebot cli和nonebot-plugin-gocqhttp的docker容器，可以快速拥有一个具有完备nonebot2环境，可以用来：
1. 快速创建一个完整的nb-cli环境
2. 安装插件
3. 启动机器人？

不适合（但也可以）:
1. 开发自己插件
2. 部署在生产环境


## 使用方法
### 0.准备
**安装docker desktop**
- Windows： https://docs.docker.com/desktop/install/windows-install/ 点击`Docker Desktop for Windows` 下载后不停按next安装启动即可
- Mac: https://docs.docker.com/desktop/install/mac-install/
### 1.启动容器
在CMD或powershell或把bash里执行
```
docker run --name my_bot -it -p 8082:8080 -e HOST="0.0.0.0"  -e GOCQ_ACCOUNTS='[{\"uin\":\"123456\",\"protocol\":2}]' registry.jihulab.com/nonebot2-wei-z/nonebot-cli-docker bash
```
- 123456 替换为QQ号
- -p 8082:8080 将8082替换为自己希望访问gocqhttp-plugin webUI的端口
- --name my_bot是容器名
`ps.由于某些未知原因有时候GOCQ_ACCOUNTS似乎环境变量不生效，可以直接在.env里修改`
### 2.启动机器人
```
nb run --reload
```
### 3.访问gocqhttp-plugin webUI
`localhost:8082/go-cqhttp/`
### 4.退出机器人
- 后台运行：关了终端就行
- 销毁：终端输入exit，会销毁容器

### 5. 其他命令
- Nonebot脚手架命令参考Nonebot官网：
https://nb2.baka.icu/docs/start/installation
- docker命令参考菜鸟教程docker使用：
https://www.runoob.com/docker/docker-container-usage.html

## Roadmap
- [x] xxx


## License
