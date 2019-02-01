# KubernetesImage
KubernetesImage Proxy

kubernetes v1.11.1 install

Master:

1.添加国内镜像：

]# mkdir -p /etc/docker

]# vim /etc/docker/daemon.json

{
"registry-mirrors": ["https://registry.docker-cn.com"]
}

2.pull kubernetes所需镜像

mirrorgooglecontainers/kube-proxy-amd64:v1.11.1

mirrorgooglecontainers/kube-scheduler-amd64:v1.11.1

mirrorgooglecontainers/kube-controller-manager-amd64:v1.11.1

mirrorgooglecontainers/kube-apiserver-amd64:v1.11.1

coredns/coredns:1.1.3

mirrorgooglecontainers/etcd-amd64:3.2.18

mirrorgooglecontainers/pause:3.1

registry.cn-hangzhou.aliyuncs.com/readygood/flannel:v0.10.0-amd64

3.运行tag修改脚本image.sh

]# image.sh

4.Kubernetes初始化

关闭或修改Swap参数

vim /etc/sysconfig/kubelet

KUBELET_EXTRA_ARGS="--fail-swap-on=false"

]# kubeadm init --kubernetes-version=1.11.1 --pod-network-cidr=10.244.0.0/16 --service-cidr=10.96.0.0/12 --ignore-preflight-errors=Swap

如果不修改swap参数可能会报错：" [kubelet-check] It seems like the kubelet isn't running or healthy. "

Nodes:
1.添加国内镜像：

]# mkdir -p /etc/docker

]# vim /etc/docker/daemon.json

{
"registry-mirrors": ["https://registry.docker-cn.com"]
}

2.pull kubernetes所需镜像

mirrorgooglecontainers/pause:3.1

registry.cn-hangzhou.aliyuncs.com/readygood/flannel:v0.10.0-amd64

mirrorgooglecontainers/kube-proxy-amd64:v1.11.1

kubeadm join <masterIP:port> --token 4qswp9.rxgwhn0vqp4c9npl --discovery-token-ca-cert-hash sha256:2d9bc0bd6b1eb12dcb8695f17191b243ecf3ed169d4aafaacc5c5c1272a85f07
