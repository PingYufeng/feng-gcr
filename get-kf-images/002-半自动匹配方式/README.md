
#
## [Kubeflow的manifests-1.6.1的example镜像源列表](https://github.com/kubeflow/manifests/)

### 1. 通过脚本生成k8s 的yaml 文件
./002-半自动匹配方式\manifests-1.6.1\example\kf-pre-install.py

### 2. 得到example中所有组件的yaml文件
./kf-ex-files/

### 3. 通过脚本获取kf-ex-files中的镜像源，
./002-半自动匹配方式\get-images\replace.py
images.txt     每个组件的镜像列表
images-all.txt  汇总所有镜像
images-sort.txt  对所有镜像进行排序整理

### 4. 其中步骤3使用脚本时，需要注意008的文件yaml加载出错，需注释这部分
```text
Garbage Collector Settings
``` 

### 5. 手动获取其他特殊镜像
由于yaml中存在些特殊的情况，无法根据kind:Deployment or kind:StatefulSet的规则化拿到镜像，需自行手动检索

最终整理在下面的文档里
./002-半自动匹配方式\get-images\整理镜像源过程.md



### 遗漏-20230216
gcr.io/knative-releases/knative.dev/eventing/cmd/apiserver_receive_adapter@sha256:5b672eedd343bcf9496c2070479f9d8f29231069148bf2aa7991bd5ca5a7562a

docker pull registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:eventing-cmd-apiserver_receive_adapter-sha256-5b672eedd343   
docker tag registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:eventing-cmd-apiserver_receive_adapter-sha256-5b672eedd343 gcr.io/knative-releases/knative.dev/eventing/cmd/apiserver_receive_adapter:sha256-5b672eedd343
docker rmi registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:eventing-cmd-apiserver_receive_adapter-sha256-5b672eedd343
















