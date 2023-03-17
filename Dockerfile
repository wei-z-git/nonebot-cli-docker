FROM python:3.10
RUN pip install nb-cli nonebot-plugin-gocqhttp \
    -i https://pypi.tuna.tsinghua.edu.cn/simple 
