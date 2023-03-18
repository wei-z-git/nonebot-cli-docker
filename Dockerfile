FROM python:3.10
WORKDIR /app
RUN pip install nb-cli nonebot2[fastapi] nonebot-plugin-gocqhttp \
    -i https://pypi.tuna.tsinghua.edu.cn/simple 

COPY ./app /app

RUN nb plugin install nonebot-plugin-gocqhttp

