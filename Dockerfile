FROM scratch
RUN git clone https://github.com/nanjiyueguang/debian-binlog2sql.git && cd binlog2sql
RUN pip install -r requirements.txt
ADD rootfs.tar.xz /
CMD ["bash"]