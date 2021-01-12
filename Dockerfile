FROM python:3.7.9-slim-stretch

WORKDIR binlog2sql
# RUN apt-get update && apt-get install git -y 
RUN apt-get update
# RUN git clone https://github.com/nanjiyueguang/debian-binlog2sql.git
COPY . .
RUN pip install -r requirements.txt
# ENTRYPOINT ["sh" ,"-c", "python3 /debian-binlog2sql/binlog2sql/binlog2sql.py"] 
ENTRYPOINT ["/run.sh"] 
CMD [""]


# docker build -t debian-binlog2sql:v1 .
# docker run --name binlog2sql --rm --entrypoint='/bin/bash' -it harbor.cloudminds.com/mysql/debian-binlog2sql:latest

# FROM centos/python-36-centos7
# LABEL MAINTAINER="Link Ma"
# USER root
# WORKDIR /usr/src/app

# RUN echo 'LANG="en_US.UTF-8"'>>/etc/locale.conf  && \
#     /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
#     echo 'Asia/Shanghai' >/etc/timezone && \
#     yum update -y && \
#     yum install mysql-devel -y && \
#     rpm -Uvh http://dev.mysql.com/get/mysql-community-release-el7-5.noarch.rpm && \
#     yum install mysql-community-client.x86_64 -y && \
#     pip3 install requests && \
#     pip3 install mysqlclient==1.4.6 && \
#     pip3 install sqlparse && \
#     pip3 install python-dateutil && \
#     yum clean all

# COPY rootfs /
# ENTRYPOINT ["python3", "./cold_bak.py"]
