#!/bin/bash

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
gcr.io/knative-releases/knative.dev/serving/cmd/webhook:sha256-9084ea8498ea \
gcr.io/knative-releases/knative.dev/serving/cmd/controller:sha256-75cfdcfa050a \
gcr.io/knative-releases/knative.dev/serving/cmd/queue:sha256-14415b204ea8 \
gcr.io/knative-releases/knative.dev/eventing/cmd/controller:sha256-dc0ac2d8f235 \
gcr.io/knative-releases/knative.dev/eventing/cmd/webhook:sha256-b7faf7d253bd \
gcr.io/knative-releases/knative.dev/eventing/cmd/mtping:sha256-632d9d710d07 \
gcr.io/knative-releases/knative.dev/eventing/cmd/apiserver_receive_adapter:sha256-5b672eedd343 \
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
gcr.io/knative-releases/knative.dev/serving/cmd/webhook:sha256-9084ea8498ea \
gcr.io/knative-releases/knative.dev/serving/cmd/controller:sha256-75cfdcfa050a \
gcr.io/knative-releases/knative.dev/serving/cmd/queue:sha256-14415b204ea8 \
gcr.io/knative-releases/knative.dev/eventing/cmd/controller:sha256-dc0ac2d8f235 \
gcr.io/knative-releases/knative.dev/eventing/cmd/webhook:sha256-b7faf7d253bd \
gcr.io/knative-releases/knative.dev/eventing/cmd/mtping:sha256-632d9d710d07 \
gcr.io/knative-releases/knative.dev/eventing/cmd/apiserver_receive_adapter:sha256-5b672eedd343 \
gcr.io/knative-releases/knative.dev/net-istio/cmd/controller:sha256-f253b82941c2 \
gcr.io/knative-releases/knative.dev/net-istio/cmd/webhook:sha256-a705c1ea8e9e


# 一次性导入
docker load -i ./kf-manifests-1.6.1-gcrio.tar



