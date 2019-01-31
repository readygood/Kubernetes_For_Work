# KubernetesImage
KubernetesImage Proxy
kubernetes v1.11.1 install

1.添加国内镜像：
]# mkdir -p /etc/docker
]# vim /etc/docker/daemon.json
{
"registry-mirrors": ["https://registry.docker-cn.com"]
}

2.pull kubernetes所需镜像
mirrorgooglecontainers/kube-proxy-amd64                v1.11.1             d5c25579d0ff        6 months ago        97.8 MB
mirrorgooglecontainers/kube-scheduler-amd64            v1.11.1             272b3a60cd68        6 months ago        56.8 MB
mirrorgooglecontainers/kube-controller-manager-amd64   v1.11.1             52096ee87d0e        6 months ago        155 MB
mirrorgooglecontainers/kube-apiserver-amd64            v1.11.1             816332bd9d11        6 months ago        187 MB
coredns/coredns                                        1.1.3               b3b94275d97c        8 months ago        45.6 MB
mirrorgooglecontainers/etcd-amd64                      3.2.18              b8df3b177be2        9 months ago        219 MB
mirrorgooglecontainers/pause                           3.1                 da86e6ba6ca1        13 months ago       742 kB

3.运行tag修改脚本image.sh
]# image.sh
