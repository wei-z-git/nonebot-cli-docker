# nonebot-cli-docker

一个装了nonebot cli和nonebot-plugin-gocqhttp的docker容器，具有基本的python环境，可以用来：
1. 一键启动机器人
2. 安装插件

不适合（但也可以）:
1. 开发自己插件
2. 部署在生产环境


## 使用方法
### 0.准备
安装docker desktop
- Windows： https://docs.docker.com/desktop/install/windows-install/ 点击`Docker Desktop for Windows` 下载后不停按next安装启动即可
- Mac: https://docs.docker.com/desktop/install/mac-install/
### 1.启动

-e GOCQ_ACCOUNTS='[{ "uin": "123456","protocol":2}]' \
## Roadmap
[x] asd


## License
