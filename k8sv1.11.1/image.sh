#!/bin/bash
images=("kube-proxy-amd64" "kube-scheduler-amd64" "kube-controller-manager-amd64" "kube-apiserver-amd64")
vers="v1.11.1"
for i in ${images[@]};do
docker tag mirrorgooglecontainers/$i:$vers k8s.gcr.io/$i:$vers
done
image2=("etcd-amd64:3.2.18" "pause:3.1")
for j in ${image2[@]};do
docker tag mirrorgooglecontainers/$j k8s.gcr.io/$j
done
docker tag coredns/coredns:1.1.3 k8s.gcr.io/coredns:1.1.3
