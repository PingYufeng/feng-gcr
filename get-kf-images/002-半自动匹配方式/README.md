
# 步骤
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



### 遗漏-20230216，已更新补充完善
gcr.io/knative-releases/knative.dev/eventing/cmd/apiserver_receive_adapter@sha256:5b672eedd343bcf9496c2070479f9d8f29231069148bf2aa7991bd5ca5a7562a

docker pull registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:eventing-cmd-apiserver_receive_adapter-sha256-5b672eedd343   
docker tag registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:eventing-cmd-apiserver_receive_adapter-sha256-5b672eedd343 gcr.io/knative-releases/knative.dev/eventing/cmd/apiserver_receive_adapter:sha256-5b672eedd343
docker rmi registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:eventing-cmd-apiserver_receive_adapter-sha256-5b672eedd343


### 遗漏补充-20230220
修改006_yaml的imagePullPolicy: IfNotPresent

修改014_yaml的imagePullPolicy: IfNotPresent

gcr.io/ml-pipeline/cache-server:2.0.0-alpha.5
gcr.io/ml-pipeline/viewer-crd-controller:2.0.0-alpha.5

### 版本修改
#### 008 报错2-1 Warning: autoscaling/v2beta2 HorizontalPodAutoscaler is deprecated in v1.23+, unavailable in v1.26+; use autoscaling/v2 
https://kubernetes.io/docs/reference/using-api/deprecation-guide/#horizontalpodautoscaler-v126

HorizontalPodAutoscaler
从 v1.26 开始不再提供 HorizontalPodAutoscaler 的 autoscaling/v2beta2 API版本。

迁移清单和 API 客户端以使用自 v1.23 起可用的autoscaling/v2 API 版本。
所有现有的持久对象都可以通过新的 API 访问


#### 报错3-1： Warning: policy/v1beta1 PodDisruptionBudget is deprecated in v1.21+, unavailable in v1.25+; use policy/v1 PodDisruptionBudget    
解决：修改版本
####  报错3-2： Warning: autoscaling/v2beta2 HorizontalPodAutoscaler is deprecated in v1.23+, unavailable in v1.26+; use autoscaling/v2 
解决：修改版本

### 008 的CRD未启动导致其他组件报错
####报错2-2 error: unable to recognize "kf-ex-files-modify/008_common_knative_knative-serving_overlays_gateways.yaml": no matches for kind "Image" in version "caching.internal.knative.dev/v1alpha1"
解决：这是由于CRD没启动那么快，导致后面资源没满足条件报错的
##### 方式一：
https://github.com/knative/serving/releases?page=2
下载crd文件，先执行kubectl apply -f serving-crds.yaml，后执行

参看官方的单独安装和issue
https://knative.dev/docs/install/yaml-install/serving/install-serving-with-yaml/#install-a-networking-layer
https://github.com/knative/serving/issues/13449
https://github.com/kubeflow/manifests/issues/2360

[kubeflow初探（二）：kubeflow安装](https://blog.csdn.net/jiaozhentian/article/details/123116311)

##### 方式二：
先执行CRD部分
https://github.com/kubernetes/kubectl/issues/1117

```text
Troubleshooting note
We've seen errors like the following when applying the kustomizations of different components:
error: resource mapping not found for name: "<RESOURCE_NAME>" namespace: "<SOME_NAMESPACE>" from "STDIN": no matches for kind "<CRD_NAME>" in version "<CRD_FULL_NAME>"
ensure CRDs are installed first
This is because a kustomization applies both a CRD and a CR very quickly, and the CRD hasn't become Established yet. 
```

kustomize build somedir | kfilt -i kind=CustomResourceDefinition | kubectl apply -f -
kustomize build somedir | kfilt -i kind=CustomResourceDefinition | kubectl wait --for condition=established --timeout=60s -f -
kustomize build somedir | kubectl apply -f - 


kfilt -i kind=CustomResourceDefinition myconfig.yaml | kubectl apply -f -
kfilt -i kind=CustomResourceDefinition myconfig.yaml | kubectl wait --for condition=established --timeout=60s -f -
kfilt -i kind=Namespace myconfig.yaml | kubectl apply -f -
kfilt -i kind=Namespace myconfig.yaml | kubectl wait --for condition=established --timeout=60s -f -
kubectl apply -f myconfig.yaml


