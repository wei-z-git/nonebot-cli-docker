FROM python:3.10

WORKDIR /app
COPY ./app /app

RUN pip install nb-cli \
    nonebot2[fastapi] \
    nonebot-plugin-gocqhttp \
    nonebot-adapter-onebot \
    -i https://pypi.tuna.tsinghua.edu.cn/simple 

RUN nb plugin install nonebot-plugin-gocqhttp \
    && nb generate