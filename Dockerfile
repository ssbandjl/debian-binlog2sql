FROM python:3.7.9-slim-stretch
RUN apt-get update && apt-get install git -y 
RUN git clone https://github.com/nanjiyueguang/debian-binlog2sql.git
RUN cd debian-binlog2sql && pip install -r requirements.txt
ENTRYPOINT  ["python3"]