FROM centos:latest
LABEL AUTHER="AM"
ENV NGX_VERSION="nginx-1.14.2"
ADD $NGX_VERSION.tar.gz /tmp/nginx/
RUN yum makecache \
    && yum install -y gcc gcc-c++ make openssl-devel pcre-devel \
    && mkdir -p /data/nginx/ \
    && cd /tmp/nginx/$NGX_VERSION/ \
    && ./configure --prefix=/data/nginx/ \
    && make \
    && make install \
    && yum remove -y gcc gcc-c++ make \
    && rm -rf /data/nginx/conf/nginx.conf \
    && rm -rf /data/nginx/html/index.html \
    && yum clean all \
    && rm -rf /tmp/nginx/
COPY nginx.conf /data/nginx/conf/
COPY index.html /data/nginx/html/
WORKDIR /data/nginx
EXPOSE 80
CMD ["./sbin/nginx","-g","daemon off;"]
