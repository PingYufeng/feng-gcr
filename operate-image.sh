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


docker pull registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:persistenceagent-2.0.0-alpha.5
docker pull registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:scheduledworkflow-2.0.0-alpha.5
docker pull registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:frontend-2.0.0-alpha.5
docker pull registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:viewer-crd-controller-2.0.0-alpha.5
docker pull registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:visualization-server-2.0.0-alpha.5
docker pull registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:mysql-5.7-debian
docker pull registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:workflow-controller-v3.3.8-license-compliance
docker pull registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:serving-cmd-activator-sha256-93ff6e693577
docker pull registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:serving-cmd-autoscaler-sha256-007820fdb75b
docker pull registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:serving-cmd-domain-mapping-sha256-23baa1932232


docker pull registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:serving-cmd-domain-mapping-webhook-sha256-847bb97e3844
docker pull registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:serving-cmd-webhook-sha256-9084ea8498ea
docker pull registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:serving-cmd-controller-sha256-75cfdcfa050a
docker pull registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:serving-cmd-queue-sha256-14415b204ea8
docker pull registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:eventing-cmd-controller-sha256-dc0ac2d8f235
docker pull registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:eventing-cmd-webhook-sha256-b7faf7d253bd
docker pull registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:eventing-cmd-mtping-sha256-632d9d710d07
docker pull registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:net-istio-cmd-controller-sha256-f253b82941c2
docker pull registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:net-istio-cmd-webhook-sha256-a705c1ea8e9e


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

docker tag registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:persistenceagent-2.0.0-alpha.5 gcr.io/ml-pipeline/persistenceagent:2.0.0-alpha.5
docker tag registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:scheduledworkflow-2.0.0-alpha.5 gcr.io/ml-pipeline/scheduledworkflow:2.0.0-alpha.5
docker tag registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:frontend-2.0.0-alpha.5 gcr.io/ml-pipeline/frontend:2.0.0-alpha.5
docker tag registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:viewer-crd-controller-2.0.0-alpha.5 gcr.io/ml-pipeline/viewer-crd-controller:2.0.0-alpha.5
docker tag registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:visualization-server-2.0.0-alpha.5 gcr.io/ml-pipeline/visualization-server:2.0.0-alpha.5
docker tag registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:mysql-5.7-debian gcr.io/ml-pipeline/mysql:5.7-debian
docker tag registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:workflow-controller-v3.3.8-license-compliance gcr.io/ml-pipeline/workflow-controller:v3.3.8-license-compliance


# 由于refusing to create a tag with a digest reference，只能修改名称
docker tag registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:serving-cmd-activator-sha256-93ff6e693577 gcr.io/knative-releases/knative.dev/serving/cmd/activator:sha256-93ff6e693577
docker tag registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:serving-cmd-autoscaler-sha256-007820fdb75b gcr.io/knative-releases/knative.dev/serving/cmd/autoscaler:sha256-007820fdb75b
docker tag registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:serving-cmd-domain-mapping-sha256-23baa1932232 gcr.io/knative-releases/knative.dev/serving/cmd/domain-mapping:sha256-23baa1932232
docker tag registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:serving-cmd-domain-mapping-webhook-sha256-847bb97e3844 gcr.io/knative-releases/knative.dev/serving/cmd/domain-mapping-webhook:sha256-847bb97e3844
docker tag registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:serving-cmd-webhook-sha256-9084ea8498ea gcr.io/knative-releases/knative.dev/serving/cmd/webhook:sha256-9084ea8498ea
docker tag registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:serving-cmd-controller-sha256-75cfdcfa050a gcr.io/knative-releases/knative.dev/serving/cmd/controller:sha256-75cfdcfa050a
docker tag registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:serving-cmd-queue-sha256-14415b204ea8 gcr.io/knative-releases/knative.dev/serving/cmd/queue:sha256-14415b204ea8
docker tag registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:eventing-cmd-controller-sha256-dc0ac2d8f235 gcr.io/knative-releases/knative.dev/eventing/cmd/controller:sha256-dc0ac2d8f235
docker tag registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:eventing-cmd-webhook-sha256-b7faf7d253bd gcr.io/knative-releases/knative.dev/eventing/cmd/webhook:sha256-b7faf7d253bd
docker tag registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:eventing-cmd-mtping-sha256-632d9d710d07 gcr.io/knative-releases/knative.dev/eventing/cmd/mtping:sha256-632d9d710d07     
docker tag registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:net-istio-cmd-controller-sha256-f253b82941c2 gcr.io/knative-releases/knative.dev/net-istio/cmd/controller:sha256-f253b82941c2
docker tag registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:net-istio-cmd-webhook-sha256-a705c1ea8e9e gcr.io/knative-releases/knative.dev/net-istio/cmd/webhook:sha256-a705c1ea8e9e   



# 一次性导出
docker save -o ./kf-manifests-1.6.1-gcrio.tar ghcr.io/dexidp/dex:v2.31.2 \
gcr.io/tfx-oss-public/ml_metadata_store_server:1.5.0 \
gcr.io/kubebuilder/kube-rbac-proxy:v0.8.0 \
gcr.io/arrikto/istio/pilot:1.14.1-1-g19df463bb \
gcr.io/arrikto/kubeflow/oidc-authservice:28c59ef \
gcr.io/ml-pipeline/cache-server:2.0.0-alpha.5 \
gcr.io/ml-pipeline/metadata-envoy:2.0.0-alpha.5 \
gcr.io/ml-pipeline/metadata-writer:2.0.0-alpha.5 \
gcr.io/ml-pipeline/minio:RELEASE.2019-08-14T20-37-41Z-license-compliance \
gcr.io/ml-pipeline/api-server:2.0.0-alpha.5 \
gcr.io/ml-pipeline/persistenceagent:2.0.0-alpha.5 \
gcr.io/ml-pipeline/scheduledworkflow:2.0.0-alpha.5 \
gcr.io/ml-pipeline/frontend:2.0.0-alpha.5 \
gcr.io/ml-pipeline/viewer-crd-controller:2.0.0-alpha.5 \
gcr.io/ml-pipeline/visualization-server:2.0.0-alpha.5 \
gcr.io/ml-pipeline/mysql:5.7-debian \
gcr.io/ml-pipeline/workflow-controller:v3.3.8-license-compliance \
gcr.io/knative-releases/knative.dev/serving/cmd/activator:sha256-93ff6e693577 \
gcr.io/knative-releases/knative.dev/serving/cmd/autoscaler:sha256-007820fdb75b \
gcr.io/knative-releases/knative.dev/serving/cmd/domain-mapping:sha256-23baa1932232 \
gcr.io/knative-releases/knative.dev/serving/cmd/domain-mapping-webhook:sha256-847bb97e3844 \
gcr.io/knative-releases/knative.dev/serving/cmd/webhook:sha256-9084ea8498eae \
gcr.io/knative-releases/knative.dev/serving/cmd/controller:sha256-75cfdcfa050a \
gcr.io/knative-releases/knative.dev/serving/cmd/queue:sha256-14415b204ea8 \
gcr.io/knative-releases/knative.dev/eventing/cmd/controller:sha256-dc0ac2d8f235 \
gcr.io/knative-releases/knative.dev/eventing/cmd/webhook:sha256-b7faf7d253bd \
gcr.io/knative-releases/knative.dev/eventing/cmd/mtping:sha256-632d9d710d07 \
gcr.io/knative-releases/knative.dev/net-istio/cmd/controller:sha256-f253b82941c2 \
gcr.io/knative-releases/knative.dev/net-istio/cmd/webhook:sha256-a705c1ea8e9e




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
gcr.io/ml-pipeline/persistenceagent:2.0.0-alpha.5 \
gcr.io/ml-pipeline/scheduledworkflow:2.0.0-alpha.5 \
gcr.io/ml-pipeline/frontend:2.0.0-alpha.5 \
gcr.io/ml-pipeline/viewer-crd-controller:2.0.0-alpha.5 \
gcr.io/ml-pipeline/visualization-server:2.0.0-alpha.5 \
gcr.io/ml-pipeline/mysql:5.7-debian \
gcr.io/ml-pipeline/workflow-controller:v3.3.8-license-compliance \
gcr.io/knative-releases/knative.dev/serving/cmd/activator:sha256-93ff6e693577 \
gcr.io/knative-releases/knative.dev/serving/cmd/autoscaler:sha256-007820fdb75b \
gcr.io/knative-releases/knative.dev/serving/cmd/domain-mapping:sha256-23baa1932232 \
gcr.io/knative-releases/knative.dev/serving/cmd/domain-mapping-webhook:sha256-847bb97e3844 \
gcr.io/knative-releases/knative.dev/serving/cmd/webhook:sha256-9084ea8498eae \
gcr.io/knative-releases/knative.dev/serving/cmd/controller:sha256-75cfdcfa050a \
gcr.io/knative-releases/knative.dev/serving/cmd/queue:sha256-14415b204ea8 \
gcr.io/knative-releases/knative.dev/eventing/cmd/controller:sha256-dc0ac2d8f235 \
gcr.io/knative-releases/knative.dev/eventing/cmd/webhook:sha256-b7faf7d253bd \
gcr.io/knative-releases/knative.dev/eventing/cmd/mtping:sha256-632d9d710d07 \
gcr.io/knative-releases/knative.dev/net-istio/cmd/controller:sha256-f253b82941c2 \
gcr.io/knative-releases/knative.dev/net-istio/cmd/webhook:sha256-a705c1ea8e9e

# 
docker rmi registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:dex-v2.31.2 \
registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:ml_metadata_store_server-1.5.0 \
registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:kube-rbac-proxy-v0.8.0 \
registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:pilot-1.14.1-1-g19df463bb \
registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:oidc-authservice-28c59ef \
registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:cache-server-2.0.0-alpha.5 \
registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:metadata-envoy-2.0.0-alpha.5 \
registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:metadata-writer-2.0.0-alpha.5 \
registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:minio-RELEASE.2019-08-14T20-37-41Z-license-compliance \
registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:api-server-2.0.0-alpha.5 \
registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:persistenceagent-2.0.0-alpha.5 \
registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:scheduledworkflow-2.0.0-alpha.5 \
registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:frontend-2.0.0-alpha.5 \
registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:viewer-crd-controller-2.0.0-alpha.5 \
registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:visualization-server-2.0.0-alpha.5 \
registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:mysql-5.7-debian \
registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:workflow-controller-v3.3.8-license-compliance \
registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:serving-cmd-activator-sha256-93ff6e693577 \
registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:serving-cmd-autoscaler-sha256-007820fdb75b \
registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:serving-cmd-domain-mapping-sha256-23baa1932232 \
registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:serving-cmd-domain-mapping-webhook-sha256-847bb97e3844 \
registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:serving-cmd-webhook-sha256-9084ea8498ea \
registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:serving-cmd-controller-sha256-75cfdcfa050a \
registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:serving-cmd-queue-sha256-14415b204ea8 \
registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:eventing-cmd-controller-sha256-dc0ac2d8f235 \
registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:eventing-cmd-webhook-sha256-b7faf7d253bd \
registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:eventing-cmd-mtping-sha256-632d9d710d07 \
registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:net-istio-cmd-controller-sha256-f253b82941c2 \
registry.cn-hangzhou.aliyuncs.com/feng888/gcr.io:net-istio-cmd-webhook-sha256-a705c1ea8e9e


# 一次性导入
docker load -i ./kf-manifests-1.6.1-gcrio.tar



