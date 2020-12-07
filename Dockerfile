FROM python:3.7.9-slim-stretch
RUN git clone https://github.com/nanjiyueguang/debian-binlog2sql.git && cd binlog2sql
RUN pip install -r requirements.txt
CMD ["bash"]