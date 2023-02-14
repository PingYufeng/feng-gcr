#!/bin/bash

# 拉取
docker pull registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:dex-v2.31.2
docker pull registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:ml_metadata_store_server-1.5.0
docker pull registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:kube-rbac-proxy-v0.8.0
docker pull registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:pilot-1.14.1-1-g19df463bb
docker pull registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:oidc-authservice-28c59ef
docker pull registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:cache-server-2.0.0-alpha.5
docker pull registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:metadata-envoy-2.0.0-alpha.5
docker pull registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:metadata-writer-2.0.0-alpha.5
docker pull registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:minio-RELEASE.2019-08-14T20-37-41Z-license-compliance
docker pull registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:api-server-2.0.0-alpha.5

# 修改标签
docker tag registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:dex-v2.31.2 ghcr.io/dexidp/dex:v2.31.2
docker tag registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:ml_metadata_store_server-1.5.0 gcr.io/tfx-oss-public/ml_metadata_store_server:1.5.0
docker tag registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:kube-rbac-proxy-v0.8.0 gcr.io/kubebuilder/kube-rbac-proxy:v0.8.0
docker tag registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:pilot-1.14.1-1-g19df463bb gcr.io/arrikto/istio/pilot:1.14.1-1-g19df463bb
docker tag registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:oidc-authservice-28c59ef gcr.io/arrikto/kubeflow/oidc-authservice:28c59ef
docker tag registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:cache-server-2.0.0-alpha.5 gcr.io/ml-pipeline/cache-server:2.0.0-alpha.5
docker tag registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:metadata-envoy-2.0.0-alpha.5 gcr.io/ml-pipeline/metadata-envoy:2.0.0-alpha.5
docker tag registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:metadata-writer-2.0.0-alpha.5 gcr.io/ml-pipeline/metadata-writer:2.0.0-alpha.5
docker tag registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:minio-RELEASE.2019-08-14T20-37-41Z-license-compliance gcr.io/ml-pipeline/minio:RELEASE.2019-08-14T20-37-41Z-license-compliance
docker tag registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:api-server-2.0.0-alpha.5 gcr.io/ml-pipeline/api-server:2.0.0-alpha.5

# 一次性导出
docker save -o ./kf-images.tar ghcr.io/dexidp/dex:v2.31.2 \
gcr.io/tfx-oss-public/ml_metadata_store_server:1.5.0 \
gcr.io/kubebuilder/kube-rbac-proxy:v0.8.0 \
gcr.io/arrikto/istio/pilot:1.14.1-1-g19df463bb \
gcr.io/arrikto/kubeflow/oidc-authservice:28c59ef \
gcr.io/ml-pipeline/cache-server:2.0.0-alpha.5 \
gcr.io/ml-pipeline/metadata-envoy:2.0.0-alpha.5 \
gcr.io/ml-pipeline/metadata-writer:2.0.0-alpha.5 \
gcr.io/ml-pipeline/minio:RELEASE.2019-08-14T20-37-41Z-license-compliance \
gcr.io/ml-pipeline/api-server:2.0.0-alpha.5 \





# 删除
docker rmi ghcr.io/dexidp/dex:v2.31.2 \
gcr.io/tfx-oss-public/ml_metadata_store_server:1.5.0 \
gcr.io/kubebuilder/kube-rbac-proxy:v0.8.0 \
gcr.io/arrikto/istio/pilot:1.14.1-1-g19df463bb \
gcr.io/arrikto/kubeflow/oidc-authservice:28c59ef \
gcr.io/ml-pipeline/cache-server:2.0.0-alpha.5 \
gcr.io/ml-pipeline/metadata-envoy:2.0.0-alpha.5 \
gcr.io/ml-pipeline/metadata-writer:2.0.0-alpha.5 \
gcr.io/ml-pipeline/minio:RELEASE.2019-08-14T20-37-41Z-license-compliance \
gcr.io/ml-pipeline/api-server:2.0.0-alpha.5 \


# 一次性导入
docker load -i ./kf-images.tar




