#!/bin/bash

docker pull quay.io/jetstack/cert-manager-controller:v1.5.0
docker pull quay.io/jetstack/cert-manager-cainjector:v1.5.0
docker pull quay.io/jetstack/cert-manager-webhook:v1.5.0

docker pull docker.io/istio/proxyv2:1.14.1
docker pull docker.io/metacontrollerio/metacontroller:v2.0.4
docker pull docker.io/kubeflowkatib/katib-controller:v0.14.0
docker pull docker.io/kubeflowkatib/katib-db-manager:v0.14.0
docker pull docker.io/kubeflowkatib/katib-ui:v0.14.0

docker pull docker.io/kubeflowkatib/earlystopping-medianstop:v0.14.0
docker pull docker.io/kubeflowkatib/file-metrics-collector:v0.14.0
docker pull docker.io/kubeflowkatib/tfevent-metrics-collector:v0.14.0
docker pull docker.io/kubeflowkatib/suggestion-hyperopt:v0.14.0
docker pull docker.io/kubeflowkatib/suggestion-chocolate:v0.14.0
docker pull docker.io/kubeflowkatib/suggestion-hyperband:v0.14.0
docker pull docker.io/kubeflowkatib/suggestion-skopt:v0.14.0
docker pull docker.io/kubeflowkatib/suggestion-goptuna:v0.14.0
docker pull docker.io/kubeflowkatib/suggestion-optuna:v0.14.0
docker pull docker.io/kubeflowkatib/suggestion-enas:v0.14.0
docker pull docker.io/kubeflowkatib/suggestion-darts:v0.14.0
docker pull docker.io/kubeflowkatib/suggestion-pbt:v0.14.0

docker pull docker.io/kubeflownotebookswg/centraldashboard:v1.6.1
docker pull docker.io/kubeflownotebookswg/poddefaults-webhook:v1.6.1
docker pull docker.io/kubeflownotebookswg/jupyter-web-app:v1.6.1
docker pull docker.io/kubeflownotebookswg/notebook-controller:v1.6.1
docker pull docker.io/kubeflownotebookswg/kfam:v1.6.1
docker pull docker.io/kubeflownotebookswg/profile-controller:v1.6.1
docker pull docker.io/kubeflownotebookswg/volumes-web-app:v1.6.1
docker pull docker.io/kubeflownotebookswg/tensorboard-controller:v1.6.1
docker pull docker.io/kubeflownotebookswg/tensorboards-web-app:v1.6.1
docker pull docker.io/seldonio/mlserver:0.5.3

docker pull kubeflownotebookswg/jupyter-scipy:v1.6.1
docker pull kubeflownotebookswg/jupyter-pytorch-full:v1.6.1
docker pull kubeflownotebookswg/jupyter-pytorch-cuda-full:v1.6.1
docker pull kubeflownotebookswg/jupyter-tensorflow-full:v1.6.1
docker pull kubeflownotebookswg/jupyter-tensorflow-cuda-full:v1.6.1
docker pull kubeflownotebookswg/codeserver-python:v1.6.1
docker pull kubeflownotebookswg/rstudio-tidyverse:v1.6.1

docker pull kserve/kserve-controller:v0.8.0
docker pull kserve/lgbserver:v0.8.0
docker pull kserve/paddleserver:v0.8.0
docker pull kserve/pmmlserver:v0.8.0
docker pull kserve/sklearnserver:v0.8.0
docker pull kserve/torchserve-kfs:0.5.3
docker pull kserve/xgbserver:v0.8.0
docker pull kserve/models-web-app:v0.8.0

docker pull kserve/agent:v0.8.0
docker pull kserve/alibi-explainer
docker pull kserve/storage-initializer:v0.8.0

docker pull mcr.microsoft.com/onnxruntime/server:v1.0.0

docker pull kubeflow/training-operator:v1-e1434f6
docker pull nvcr.io/nvidia/tritonserver:21.09-py3
docker pull tensorflow/serving:2.6.2
docker pull tensorflow/tensorflow:2.1.0
docker pull mysql:8.0.29
docker pull python:3.7