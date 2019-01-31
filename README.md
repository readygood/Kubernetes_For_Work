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

mirrorgooglecontainers/kube-proxy-amd64                :v1.11.1

mirrorgooglecontainers/kube-scheduler-amd64            :v1.11.1

mirrorgooglecontainers/kube-controller-manager-amd64   :v1.11.1

mirrorgooglecontainers/kube-apiserver-amd64            :v1.11.1

coredns/coredns                                        :1.1.3

mirrorgooglecontainers/etcd-amd64                      :3.2.18

mirrorgooglecontainers/pause                           :3.1

3.运行tag修改脚本image.sh

]# image.sh
