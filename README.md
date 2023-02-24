


# 我的谷歌容器镜像仓库[gcr.io](https://github.com/PingYufeng/gcr.io)
>具体参考完整如下:
[【云原生 | 阿里云容器镜像构建】解决kubeflow的镜像源问题](https://blog.csdn.net/pingyufeng/article/details/129009484)


## 步骤简介


### 构建阿里云镜像后，进行拉取

1. 登录阿里云Docker Registry
```bash
$ docker login --username=13542022853 registry.cn-hangzhou.aliyuncs.com
```

用于登录的用户名为阿里云账号全名，密码为开通服务时设置的密码。

您可以在访问凭证页面修改凭证密码。

2. 从Registry中拉取镜像
```bash
$ docker pull registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:[镜像版本号]
```

### 由于refusing to create a tag with a digest reference，部分镜像标签需要需改变动。
./kf-image-list/kf-ex-files的文件需要修改变动的镜像源

### 修改写yaml的小问题

### 删除污点
```bash
root@k8s-master:/home/feng/work/kubeflow# kubectl taint nodes --all node-role.kubernetes.io/master-
node/k8s-master untainted
# 查看所有污点
root@k8s-master:/home/feng/work/kubeflow# kubectl describe nodes k8s-master | grep Taints
Taints:             node.kubernetes.io/not-ready:NoSchedule

root@k8s-master:/home/feng/work/kubeflow# kubectl taint nodes --all node.kubernetes.io/not-ready:NoSchedule-
node/k8s-master untainted


```

### 安装calico.yaml和nfs-storage.yaml

[官网](https://projectcalico.docs.tigera.io/getting-started/kubernetes/self-managed-onprem/onpremises#install-calico-with-kubernetes-api-datastore-more-than-50-nodes)
```bash
# 拉取两个镜像源
docker.io/calico/node:v3.25.0
docker.io/calico/node:v3.25.0



curl https://raw.githubusercontent.com/projectcalico/calico/v3.25.0/manifests/calico.yaml -O

kubectl apply -f calico.yaml
```


## 参考
> 借用阿里云拉取镜像
[【最新】k8s中kubeflow(v1.0)部署全过程+踩坑全集（图文）](https://blog.csdn.net/qq_46595591/article/details/107765833) 

> 受启发kustomize生成yaml后，找出镜像源，汇总列表
[带你玩转kubeflow on Kind：使用安装教程](https://zhuanlan.zhihu.com/p/372382169)


### 20230224 没修改的几个dockerfile导致拉取镜像出错，排查了一个多星期~~~血的教训

