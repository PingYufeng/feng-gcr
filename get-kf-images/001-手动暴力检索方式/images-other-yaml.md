
## [Kubeflow的manifests-1.6.1的镜像源列表](https://github.com/kubeflow/manifests/)

> 除了kustomization.yaml文件的其他文件中涉及的镜像源

### APP
#### **Admission-Webhook**
```yaml
# apps\admission-webhook\upstream\base\deployment.yaml
## admission-webhook
docker.io/kubeflownotebookswg/poddefaults-webhook:v1.6.1

```

#### **Central Dashboard**
```yaml
# apps\centraldashboard\upstream\base\deployment.yaml
## centraldashboard
docker.io/kubeflownotebookswg/centraldashboard:v1.6.1
```

#### **Jupyter Web App**
```yaml
# apps\jupyter\jupyter-web-app\upstream\base\deployment.yaml
## jupyter-web-app
docker.io/kubeflownotebookswg/jupyter-web-app:v1.6.1


# apps\jupyter\jupyter-web-app\upstream\base\configs\spawner_ui_config.yaml
kubeflownotebookswg/jupyter-scipy:v1.6.1
kubeflownotebookswg/jupyter-pytorch-full:v1.6.1
kubeflownotebookswg/jupyter-pytorch-cuda-full:v1.6.1
kubeflownotebookswg/jupyter-tensorflow-full:v1.6.1
kubeflownotebookswg/jupyter-tensorflow-cuda-full:v1.6.1

kubeflownotebookswg/codeserver-python:v1.6.1

kubeflownotebookswg/rstudio-tidyverse:v1.6.1
```

#### **Notebook Controller**
```yaml
# apps\jupyter\notebook-controller\upstream\default\manager_auth_proxy_patch.yaml
## kube-rbac-proxy
gcr.io/kubebuilder/kube-rbac-proxy:v0.4.0


# apps\jupyter\notebook-controller\upstream\manager\manager.yaml
docker.io/kubeflownotebookswg/notebook-controller:v1.6.1

# apps\jupyter\notebook-controller\upstream\samples\_v1_notebook.yaml
## notebook-sample-v1
kubeflownotebookswg/jupyter:v1.6.0-rc.0


```

#### **Katib**
```yaml
# apps\katib\upstream\components\cert-generator\cert-generator.yaml
## cert-generator
docker.io/kubeflowkatib/cert-generator

# apps\katib\upstream\components\controller\controller.yaml
## apps\katib-controller
docker.io/kubeflowkatib/katib-controller:v0.14.0


# apps\katib\upstream\components\controller\katib-config.yaml
> metrics-collector-sidecar
## StdOut、File、TensorFlowEvent
docker.io/kubeflowkatib/file-metrics-collector:v0.14.0

> suggestion
## random、tpe、hyperband
docker.io/kubeflowkatib/suggestion-hyperopt:v0.14.0
## grid
docker.io/kubeflowkatib/suggestion-chocolate:v0.14.0
## bayesianoptimization
docker.io/kubeflowkatib/suggestion-skopt:v0.14.0
## cmaes、sobol
docker.io/kubeflowkatib/suggestion-goptuna:v0.14.0
## multivariate-tpe
docker.io/kubeflowkatib/suggestion-optuna:v0.14.0
## enas
docker.io/kubeflowkatib/suggestion-enas:v0.14.0
## darts
docker.io/kubeflowkatib/suggestion-darts:v0.14.0
## pbt
docker.io/kubeflowkatib/suggestion-pbt:v0.14.0

> early-stopping
## medianstop
docker.io/kubeflowkatib/earlystopping-medianstop:v0.14.0


# apps\katib\upstream\components\controller\trial-templates.yaml
## training-container
### defaultTrialTemplate
docker.io/kubeflowkatib/mxnet-mnist:v0.14.0

### enasCPUTemplate
docker.io/kubeflowkatib/enas-cnn-cifar10-cpu:v0.14.0

### pytorchJobTemplate
docker.io/kubeflowkatib/pytorch-mnist-cpu:v0.14.0


# apps\katib\upstream\components\db-manager\db-manager.yaml
## apps\katib-db-manager
docker.io/kubeflowkatib/katib-db-manager:v0.14.0

# apps\katib\upstream\components\mysql\mysql.yaml
## apps\katib-mysql
mysql:8.0.29

# apps\katib\upstream\components\ui\ui.yaml
## apps\katib-ui
docker.io/kubeflowkatib/katib-ui:v0.14.0

```

#### kfp-tekton
```yaml
# apps\kfp-tekton\upstream\base\cache\cache-deployment.yaml
## server
gcr.io/ml-pipeline/cache-server:dummy


# apps\kfp-tekton\upstream\base\cache-deployer\cache-deployer-deployment.yaml
## main
gcr.io/ml-pipeline/cache-deployer:dummy


# apps\kfp-tekton\upstream\base\installs\multi-user\pipelines-profile-controller\deployment.yaml
## profile-controller
python:3.7


# apps\kfp-tekton\upstream\base\installs\multi-user\pipelines-profile-controller\sync.py
## visualization_server_image
gcr.io/ml-pipeline/visualization-server:somenumber.1.2.3

## frontend_image
gcr.io/ml-pipeline/frontend:somehash


# apps\kfp-tekton\upstream\base\metadata\base\metadata-envoy-deployment.yaml
## container
gcr.io/ml-pipeline/metadata-envoy:dummy


# apps\kfp-tekton\upstream\base\metadata\base\metadata-grpc-deployment.yaml
## container
gcr.io/tfx-oss-public/ml_metadata_store_server:1.5.0

# apps\kfp-tekton\upstream\base\metadata\overlays\db\metadata-db-deployment.yaml
## db-container
mysql:8.0.3


# apps\kfp-tekton\upstream\base\pipeline\apiserver-deployment.yaml

......



# apps\kfp-tekton\upstream\base\pipeline\ml-pipeline-apiserver-deployment.yaml
## ml-pipeline-api-server
gcr.io/ml-pipeline/api-server:dummy


# apps\kfp-tekton\upstream\base\pipeline\ml-pipeline-persistenceagent-deployment.yaml
## ml-pipeline-persistenceagent
gcr.io/ml-pipeline/persistenceagent:dummy

# apps\kfp-tekton\upstream\base\pipeline\ml-pipeline-scheduledworkflow-deployment.yaml
## ml-pipeline-scheduledworkflow
gcr.io/ml-pipeline/scheduledworkflow:dummy

# apps\kfp-tekton\upstream\base\pipeline\ml-pipeline-ui-deployment.yaml
## ml-pipeline-ui
gcr.io/ml-pipeline/frontend:dummy


# apps\kfp-tekton\upstream\base\pipeline\ml-pipeline-viewer-crd-deployment.yaml
## ml-pipeline-viewer-crd
gcr.io/ml-pipeline/viewer-crd-controller:dummy

# apps\kfp-tekton\upstream\base\pipeline\ml-pipeline-visualization-deployment.yaml
## ml-pipeline-visualizationserver
gcr.io/ml-pipeline/visualization-server:dummy


# apps\kfp-tekton\upstream\base\pipeline\metadata-writer\metadata-writer-deployment.yaml
## main
gcr.io/ml-pipeline/metadata-writer:dummy


# apps\kfp-tekton\upstream\env\azure\minio-azure-gateway\minio-azure-gateway-deployment.yaml
## minio
gcr.io/ml-pipeline/minio:RELEASE.2019-08-14T20-37-41Z-license-compliance


# apps\kfp-tekton\upstream\env\gcp\cloudsql-proxy\cloudsql-proxy-deployment.yaml
##  cloudsqlproxy
gcr.io/cloudsql-docker/gce-proxy:1.25.0       


# apps\kfp-tekton\upstream\env\gcp\inverse-proxy\proxy-deployment.yaml
##proxy-agent
gcr.io/ml-pipeline/inverse-proxy-agent:dummy

# apps\kfp-tekton\upstream\env\gcp\minio-gcs-gateway\minio-gcs-gateway-deployment.yaml
## minio
gcr.io/ml-pipeline/minio:RELEASE.2019-08-14T20-37-41Z-license-compliance


# apps\kfp-tekton\upstream\third-party\application\application-controller-deployment.yaml
## manager
image: gcr.io/ml-pipeline/application-crd-controller:1.0-beta-non-cluster-role


# apps\kfp-tekton\upstream\third-party\argo\base\workflow-controller-deployment-patch.yaml
## workflow-controller
gcr.io/ml-pipeline/workflow-controller:v3.2.3-license-compliance


# apps\kfp-tekton\upstream\third-party\argo\upstream\manifests\base\argo-server\argo-server-deployment.yaml
## argo-server
quay.io/argoproj/argocli:latest


# apps\kfp-tekton\upstream\third-party\argo\upstream\manifests\base\crds\full\argoproj.io_clusterworkflowtemplates.yaml

......

# apps\kfp-tekton\upstream\third-party\argo\upstream\manifests\base\crds\full\argoproj.io_cronworkflows.yaml
......
# apps\kfp-tekton\upstream\third-party\argo\upstream\manifests\base\crds\full\argoproj.io_workflows.yaml
......
# apps\kfp-tekton\upstream\third-party\argo\upstream\manifests\base\crds\full\argoproj.io_workflowtasksets.yaml
# apps\kfp-tekton\upstream\third-party\argo\upstream\manifests\base\crds\full\argoproj.io_workflowtemplates.yaml

# apps\kfp-tekton\upstream\third-party\argo\upstream\manifests\base\workflow-controller\workflow-controller-deployment.yaml
## workflow-controller
quay.io/argoproj/workflow-controller:latest

# apps\kfp-tekton\upstream\third-party\argo\upstream\manifests\quick-start\base\minio\minio-deploy.yaml
## main
minio/minio:RELEASE.2019-12-17T23-16-33Z

# apps\kfp-tekton\upstream\third-party\argo\upstream\manifests\quick-start\base\minio\minio-pod.yaml
## main
minio/minio:RELEASE.2019-12-17T23-16-33Z

# apps\kfp-tekton\upstream\third-party\argo\upstream\manifests\quick-start\base\overlays\workflow-controller-configmap.yaml

  images: |
    argoproj/argosay:v1:
      command: [cowsay]
    argoproj/argosay:v2:
      command: [/argosay]
    docker/whalesay:latest:
       command: [cowsay]
    python:alpine3.6:
       command: [python3]

# apps\kfp-tekton\upstream\third-party\argo\upstream\manifests\quick-start\base\prometheus\prometheus-deployment.yaml
## prometheus
prom/prometheus

# apps\kfp-tekton\upstream\third-party\argo\upstream\manifests\quick-start\mysql\mysql-deployment.yaml
## main
mysql:8

# apps\kfp-tekton\upstream\third-party\argo\upstream\manifests\quick-start\postgres\postgres-deployment.yaml
## main
postgres:12-alpine

# apps\kfp-tekton\upstream\third-party\argo\upstream\manifests\quick-start\sso\dex\dex-deploy.yaml
## dex
quay.io/dexidp/dex:v2.23.0

# apps\kfp-tekton\upstream\third-party\grafana\grafana-deployment.yaml
## grafana
grafana/grafana:5.3.4

# apps\kfp-tekton\upstream\third-party\kfp-csi-s3\csi-s3-deployment.yaml
## driver-registrar
quay.io/k8scsi/csi-node-driver-registrar:v1.2.0

## kfp-csi-s3
quay.io/datashim/csi-s3:latest-amd64

## csi-attacher
quay.io/k8scsi/csi-attacher:v2.2.0

## csi-provisioner
quay.io/k8scsi/csi-provisioner:v2.0.2

# apps\kfp-tekton\upstream\third-party\metacontroller\base\stateful-set.yaml
## metacontroller
docker.io/metacontrollerio/metacontroller:v2.0.4

# apps\kfp-tekton\upstream\third-party\minio\base\minio-deployment.yaml
## minio
gcr.io/ml-pipeline/minio:RELEASE.2019-08-14T20-37-41Z-license-compliance

# apps\kfp-tekton\upstream\third-party\mysql\base\mysql-deployment.yaml
## mysql
gcr.io/ml-pipeline/mysql:5.7

# apps\kfp-tekton\upstream\third-party\prometheus\prometheus-deployment.yaml
## prometheus
prom/prometheus


# apps\kfp-tekton\upstream\third-party\tekton\upstream\manifests\base\tektoncd-dashboard\tekton-dashboard-release.yaml
## tekton-dashboard
gcr.io/tekton-releases/github.com/tektoncd/dashboard/cmd/dashboard:v0.24.1@sha256:fe4febbb74ca3e7027c29719e32e38074b3af6be588ee08cca5826f21fa003a1


# apps\kfp-tekton\upstream\third-party\tekton\upstream\manifests\base\tektoncd-install\tekton-release.yaml
## tekton-pipelines-controller
gcr.io/tekton-releases/github.com/tektoncd/pipeline/cmd/controller:v0.31.4@sha256:bd9dc22532c8e1bd9b253775734c0b2464d62065b39d6b552d3c52bb6d33e20f

## webhook
gcr.io/tekton-releases/github.com/tektoncd/pipeline/cmd/webhook:v0.31.4@sha256:915029563a15cc8ca6491cd253f2ed8f8ad5f9824650899503b8a8a1f25d3c12

# apps\kfp-tekton\upstream\third-party\tekton-custom-task\pipeline-loops\500-controller.yaml
## tekton-pipelineloop-controller
docker.io/aipipeline/pipelineloop-controller:nightly

# apps\kfp-tekton\upstream\third-party\tekton-custom-task\pipeline-loops\500-webhook.yaml
## webhook
docker.io/aipipeline/pipelineloop-webhook:nightly

```

#### kubebench
```yaml
# apps\kubebench\upstream\base\config-map.yaml
## kubebench-workflow-agent
gcr.io/kubeflow-images-public/kubebench/workflow-agent:bc682c1

# apps\kubebench\upstream\base\deployment.yaml
## kubebench-operator
gcr.io/kubeflow-images-public/kubebench/kubebench-operator-v1alpha2

```

####  **Kubeflow Pipeline**
```yaml
# apps\pipeline\upstream\wi-utils.sh
google/cloud-sdk:slim

# apps\pipeline\upstream\base\cache\cache-deployment.yaml
## server
gcr.io/ml-pipeline/cache-server:dummy

# apps\pipeline\upstream\base\cache-deployer\cache-deployer-deployment.yaml
## main
gcr.io/ml-pipeline/cache-deployer:dummy

# apps\pipeline\upstream\base\installs\generic\pipeline-install-config.yaml
gcr.io/google-containers/busybox

# apps\pipeline\upstream\base\installs\multi-user\pipelines-profile-controller\deployment.yaml
## profile-controller
python:3.7

# apps\pipeline\upstream\base\installs\multi-user\pipelines-profile-controller\sync.py
## visualization_server_image
gcr.io/ml-pipeline/visualization-server:somenumber.1.2.3
## frontend_image
gcr.io/ml-pipeline/frontend:somehash

# apps\pipeline\upstream\base\metadata\base\metadata-envoy-deployment.yaml
## container
gcr.io/ml-pipeline/metadata-envoy:dummy

# apps\pipeline\upstream\base\metadata\base\metadata-grpc-deployment.yaml
## container
gcr.io/tfx-oss-public/ml_metadata_store_server:1.5.0

# apps\pipeline\upstream\base\metadata\overlays\db\metadata-db-deployment.yaml
## db-container
mysql:8.0.3

# apps\pipeline\upstream\base\pipeline\ml-pipeline-apiserver-deployment.yaml
## ml-pipeline-api-server
gcr.io/ml-pipeline/api-server:dummy

# apps\pipeline\upstream\base\pipeline\ml-pipeline-persistenceagent-deployment.yaml
## ml-pipeline-persistenceagent
gcr.io/ml-pipeline/persistenceagent:dummy

# apps\pipeline\upstream\base\pipeline\ml-pipeline-scheduledworkflow-deployment.yaml
## ml-pipeline-scheduledworkflow
gcr.io/ml-pipeline/scheduledworkflow:dummy

# apps\pipeline\upstream\base\pipeline\ml-pipeline-ui-deployment.yaml
## ml-pipeline-ui
gcr.io/ml-pipeline/frontend:dummy

# apps\pipeline\upstream\base\pipeline\ml-pipeline-viewer-crd-deployment.yaml
## ml-pipeline-viewer-crd
gcr.io/ml-pipeline/viewer-crd-controller:dummy

# apps\pipeline\upstream\base\pipeline\ml-pipeline-visualization-deployment.yaml
## ml-pipeline-visualizationserver
gcr.io/ml-pipeline/visualization-server:dummy

# apps\pipeline\upstream\base\pipeline\metadata-writer\metadata-writer-deployment.yaml
## main
gcr.io/ml-pipeline/metadata-writer:dummy

# apps\pipeline\upstream\env\azure\minio-azure-gateway\minio-azure-gateway-deployment.yaml
## minio
gcr.io/ml-pipeline/minio:RELEASE.2019-08-14T20-37-41Z-license-compliance

# apps\pipeline\upstream\env\gcp\cloudsql-proxy\cloudsql-proxy-deployment.yaml
## cloudsqlproxy
gcr.io/cloudsql-docker/gce-proxy:1.25.0

# apps\pipeline\upstream\env\gcp\inverse-proxy\proxy-deployment.yaml
##  proxy-agent
gcr.io/ml-pipeline/inverse-proxy-agent:dummy

# apps\pipeline\upstream\env\gcp\minio-gcs-gateway\minio-gcs-gateway-deployment.yaml
## minio
gcr.io/ml-pipeline/minio:RELEASE.2019-08-14T20-37-41Z-license-compliance

# apps\pipeline\upstream\hack\format.sh
......
# apps\pipeline\upstream\hack\release.sh
.....

# apps\pipeline\upstream\third-party\application\application-controller-deployment.yaml
##  manager
gcr.io/ml-pipeline/application-crd-controller:1.0-beta-non-cluster-role

# apps\pipeline\upstream\third-party\application\cluster-scoped\application-crd.yaml
.....

# apps\pipeline\upstream\third-party\argo\base\workflow-controller-deployment-patch.yaml
## workflow-controller
gcr.io/ml-pipeline/workflow-controller:v3.3.8-license-compliance

# apps\pipeline\upstream\third-party\argo\upstream\manifests\base\argo-server\argo-server-deployment.yaml
## argo-server
quay.io/argoproj/argocli:latest

# apps\pipeline\upstream\third-party\argo\upstream\manifests\base\crds\full\argoproj.io_clusterworkflowtemplates.yaml
......

# apps\pipeline\upstream\third-party\argo\upstream\manifests\base\crds\full\argoproj.io_cronworkflows.yaml
......

# apps\pipeline\upstream\third-party\argo\upstream\manifests\base\crds\full\argoproj.io_workflows.yaml
......

# apps\pipeline\upstream\third-party\argo\upstream\manifests\base\crds\full\argoproj.io_workflowtasksets.yaml

# apps\pipeline\upstream\third-party\argo\upstream\manifests\base\crds\full\argoproj.io_workflowtemplates.yaml

# apps\pipeline\upstream\third-party\argo\upstream\manifests\base\crds\full\argoproj.io_workflowtemplates.yaml
## workflow-controller
quay.io/argoproj/workflow-controller:latest

# apps\pipeline\upstream\third-party\argo\upstream\manifests\quick-start\base\minio\minio-deploy.yaml
## main
minio/minio

# apps\pipeline\upstream\third-party\argo\upstream\manifests\quick-start\base\overlays\workflow-controller-configmap.yaml
  images: |
    argoproj/argosay:v1:
      command: [cowsay]
    argoproj/argosay:v2:
      command: [/argosay]
    docker/whalesay:latest:
       command: [cowsay]
    python:alpine3.6:
       command: [python3]

# apps\pipeline\upstream\third-party\argo\upstream\manifests\quick-start\base\prometheus\prometheus-deployment.yaml
## prometheus
prom/prometheus

# apps\pipeline\upstream\third-party\argo\upstream\manifests\quick-start\mysql\mysql-deployment.yaml
## main
mysql:8

# apps\pipeline\upstream\third-party\argo\upstream\manifests\quick-start\postgres\postgres-deployment.yaml
## main
postgres:12-alpine

# apps\pipeline\upstream\third-party\argo\upstream\manifests\quick-start\sso\dex\dex-deploy.yaml
## dex
quay.io/dexidp/dex:v2.23.0

# apps\pipeline\upstream\third-party\grafana\grafana-deployment.yaml
## grafana
grafana/grafana:5.3.4


# apps\pipeline\upstream\third-party\metacontroller\base\stateful-set.yaml
## metacontroller
docker.io/metacontrollerio/metacontroller:v2.0.4

# apps\pipeline\upstream\third-party\minio\base\minio-deployment.yaml
## minio
gcr.io/ml-pipeline/minio:RELEASE.2019-08-14T20-37-41Z-license-compliance

# apps\pipeline\upstream\third-party\mysql\base\mysql-deployment.yaml
## mysql
gcr.io/ml-pipeline/mysql:5.7-debian

# apps\pipeline\upstream\third-party\prometheus\prometheus-deployment.yaml
## prometheus
prom/prometheus

# apps\profiles\upstream\default\manager_auth_proxy_patch.yaml
## kube-rbac-proxy
gcr.io/kubebuilder/kube-rbac-proxy:v0.11.0

# apps\profiles\upstream\manager\manager.yaml
## manager
docker.io/kubeflownotebookswg/profile-controller

# apps\profiles\upstream\overlays\kubeflow\patches\kfam.yaml
## kfam
docker.io/kubeflownotebookswg/kfam

```

#### **Tensorboard**
```yaml
# apps\tensorboard\tensorboard-controller\upstream\default\manager_auth_proxy_patch.yaml
## kube-rbac-proxy
gcr.io/kubebuilder/kube-rbac-proxy:v0.8.0

# apps\tensorboard\tensorboard-controller\upstream\manager\manager.yaml
## manager
docker.io/kubeflownotebookswg/tensorboard-controller

# apps\tensorboard\tensorboards-web-app\upstream\base\deployment.yaml
## tensorboards-web-app
docker.io/kubeflownotebookswg/tensorboards-web-app
```

#### **Training-Operator**
```yaml
# apps\training-operator\upstream\base\deployment.yaml
## training-operator
kubeflow/training-operator

# apps\training-operator\upstream\base\crds\kubeflow.org_mpijobs.yaml

# apps\training-operator\upstream\base\crds\kubeflow.org_mxjobs.yaml

# apps\training-operator\upstream\base\crds\kubeflow.org_pytorchjobs.yaml

# apps\training-operator\upstream\base\crds\kubeflow.org_tfjobs.yaml

# apps\training-operator\upstream\base\crds\kubeflow.org_xgboostjobs.yaml
```

#### **Volumes-Web-App**
```yaml
# apps\volumes-web-app\upstream\base\deployment.yaml
## volumes-web-app
docker.io/kubeflownotebookswg/volumes-web-app











```



#### ~~Profiles + KFAM~~

~~**User namespace**~~



> 临时

#### kfp-tekton
```yaml

# apps\kfp-tekton\upstream\hack\format.sh
# apps\kfp-tekton\upstream\hack\release.sh
This release script uses yq, it can be downloaded at https://github.com/mikefarah/yq/releases/tag/3.3.0
```



### Common

> common

#### **Cert-manager**
```yaml


# common\cert-manager\cert-manager\base\cert-manager.yaml
## cert-manager
quay.io/jetstack/cert-manager-cainjector:v1.5.0

## cert-manager
quay.io/jetstack/cert-manager-controller:v1.5.0

## cert-manager
quay.io/jetstack/cert-manager-webhook:v1.5.0
          

```

#### **Dex**
```yaml
# common\dex\base\deployment.yaml
## dex
ghcr.io/dexidp/dex:v2.31.2

```

#### **Istio-1-14**
```yaml
# common\istio-1-14\profile.yaml
proxyv2

pilot

# common\istio-1-14\cluster-local-gateway\base\cluster-local-gateway.yaml
## istio-proxy
docker.io/istio/proxyv2:1.14.1

# common\istio-1-14\istio-crds\base\crd.yaml
......

# common\istio-1-14\istio-install\base\install.yaml
......

```

#### **Knative**

```yaml
# common\knative\knative-eventing\base\upstream\eventing-core.yaml
## eventing-controller
gcr.io/knative-releases/knative.dev/eventing/cmd/controller@sha256:dc0ac2d8f235edb04ec1290721f389d2bc719ab8b6222ee86f17af8d7d2a160f

## dispatcher
gcr.io/knative-releases/knative.dev/eventing/cmd/mtping@sha256:632d9d710d070efed2563f6125a87993e825e8e36562ec3da0366e2a897406c0

## eventing-webhook
gcr.io/knative-releases/knative.dev/eventing/cmd/webhook@sha256:b7faf7d253bd256dbe08f1cac084469128989cf39abbe256ecb4e1d4eb085a31


# common\knative\knative-eventing\base\upstream\in-memory-channel.yaml
## controller
gcr.io/knative-releases/knative.dev/eventing/cmd/in_memory/channel_controller@sha256:a602de59eab2140a9a7639e221b777aa1bd5b9b4203e09dacdc32850f4414e4f

## dispatcher
gcr.io/knative-releases/knative.dev/eventing/cmd/in_memory/channel_dispatcher@sha256:cd4502677aedc0779be980c5e7186cdc8e7557a036048480f8a3431ec1b3b873

# common\knative\knative-eventing\base\upstream\mt-channel-broker.yaml
## filter
gcr.io/knative-releases/knative.dev/eventing/cmd/in_memory/channel_dispatcher@sha256:cd4502677aedc0779be980c5e7186cdc8e7557a036048480f8a3431ec1b3b873

## ingress
gcr.io/knative-releases/knative.dev/eventing/cmd/broker/ingress@sha256:1bbbdea02b6fc01f316addefe56fa33f583cd332d7213cbc2e4937234bfc3d1b

## mt-broker-controller
gcr.io/knative-releases/knative.dev/eventing/cmd/mtchannel_broker@sha256:90e2b9413519d0634508ff848180fb50a341da09e53ac0408848f0663c7c8c3b

# common\knative\knative-eventing-post-install-jobs\base\eventing-post-install-jobs.yaml
## migrate
gcr.io/knative-releases/knative.dev/eventing/vendor/knative.dev/pkg/apiextensions/storageversion/cmd/migrate@sha256:ce1cf40c3e58fb437bac1731aa4dd3bda63bcedeaaf303b928963071192f82bf

# common\knative\knative-serving\base\upstream\net-istio.yaml
## controller
gcr.io/knative-releases/knative.dev/net-istio/cmd/controller@sha256:f253b82941c2220181cee80d7488fe1cefce9d49ab30bdb54bcb8c76515f7a26

## webhook
gcr.io/knative-releases/knative.dev/net-istio/cmd/webhook@sha256:a705c1ea8e9e556f860314fe055082fbe3cde6a924c29291955f98d979f8185e

# common\knative\knative-serving\base\upstream\serving-core.yaml
## activator
gcr.io/knative-releases/knative.dev/serving/cmd/activator@sha256:93ff6e69357785ff97806945b284cbd1d37e50402b876a320645be8877c0d7b7

## autoscaler
gcr.io/knative-releases/knative.dev/serving/cmd/autoscaler@sha256:007820fdb75b60e6fd5a25e65fd6ad9744082a6bf195d72795561c91b425d016

## controller
gcr.io/knative-releases/knative.dev/serving/cmd/controller@sha256:75cfdcfa050af9522e798e820ba5483b9093de1ce520207a3fedf112d73a4686

## domain-mapping
gcr.io/knative-releases/knative.dev/serving/cmd/domain-mapping@sha256:23baa19322320f25a462568eded1276601ef67194883db9211e1ea24f21a0beb

## domainmapping-webhook
gcr.io/knative-releases/knative.dev/serving/cmd/domain-mapping-webhook@sha256:847bb97e38440c71cb4bcc3e430743e18b328ad1e168b6fca35b10353b9a2c22

## webhook
gcr.io/knative-releases/knative.dev/serving/cmd/webhook@sha256:9084ea8498eae3c6c4364a397d66516a25e48488f4a9871ef765fa554ba483f0

# common\knative\knative-serving-post-install-jobs\base\serving-post-install-jobs.yaml
## migrate
gcr.io/knative-releases/knative.dev/pkg/apiextensions/storageversion/cmd/migrate@sha256:bf8ef91c3caccfcde8aa59d15f9fe9a06053134a0172cc7c18c4787fdcfbc77e

```

#### **OIDC-Authservice**
```yaml
# common\oidc-authservice\base\statefulset.yaml
## authservice
gcr.io/arrikto/kubeflow/oidc-authservice:6ac9400

# common\oidc-authservice\overlays\ibm-storage-config\statefulset.yaml
## fix-permission
busybox

```



#### ~~Kubeflow namespace~~

#### ~~Kubeflow Roles~~

#### ~~Kubeflow Istio Resources~~

### contrib

> contrib

#### application
```yaml

# contrib\application\application\base\stateful-set.yaml
## manager
gcr.io/kubeflow-images-public/kubernetes-sigs/application

# contrib\application\application\overlays\debug\stateful-set.yaml
## manager
gcr.io/$(project)/application-controller:latest

```

#### basic-auth
```yaml
# contrib\basic-auth\base\gatekeeper-deployment.yaml
## app
gcr.io/kubeflow-images-public/gatekeeper:v0.5.0

# contrib\basic-auth\base\kflogin-deployment.yaml
## app
gcr.io/kubeflow-images-public/kflogin-ui:v0.5.0

```

#### dex-auth
```yaml
# contrib\dex-auth\dex-authenticator\base\deployment.yaml
## dex-k8s-authenticator
mintel/dex-k8s-authenticator:1.2.0
        
# contrib\dex-auth\dex-ldap\base\deployment.yaml
## openldap
osixia/openldap

## phpldapadmin
osixia/phpldapadmin

# contrib\dex-auth\keycloak-gatekeeper\base\deployment.yaml
## main
keycloak/keycloak-gatekeeper:5.0.0
        
```

#### experimental
```yaml
# contrib\experimental\mirror-images\mirror_task.yaml
## build-push
gcr.io/kaniko-project/executor:v0.11.0
```

#### feast
```yaml
# contrib\feast\values.yaml
gcr.io/kf-feast/feast-core
    tag: develop
    
gcr.io/kf-feast/feast-serving
    tag: develop

gcr.io/kf-feast/feast-jobservice

# contrib\feast\feast\base\resources.yaml
## feast-core
gcr.io/kf-feast/feast-core:develop

## feast-jobservice
gcr.io/kf-feast/feast-jobservice:develop

## feast-serving
gcr.io/kf-feast/feast-serving:develop

## kf-feast-postgresql
docker.io/bitnami/postgresql:11.7.0-debian-10-r9

## kf-feast-redis
docker.io/bitnami/redis:5.0.7-debian-10-r32
```

#### flink
```yaml
# contrib\flink\flink-operator\base\deployment.yaml
## kube-rbac-proxy
gcr.io/kubebuilder/kube-rbac-proxy:v0.4.0

## flink-operator
gcr.io/flink-operator/flink-operator:latest

# contrib\flink\flink-operator\base\setup-job.yaml
## create-cert
gcr.io/flink-operator/deployer:webhook-cert
```

#### **KServe**
```yaml
# contrib\kserve\kserve\kserve_kubeflow.yaml
## agent、batcher、 logger
kserve/agent:v0.8.0

## explainers：alibi、aix、art
kserve/alibi-explainer:latest

## predictors：
### tensorflow
tensorflow/serving:2.6.2
tensorflow/serving:2.6.2-gpu

### onnx
mcr.microsoft.com/onnxruntime/server:v1.0.0

### sklearn
#### v1
kserve/sklearnserver:v0.8.0
#### v2
docker.io/seldonio/mlserver:0.5.3

### xgboost
#### v1
kserve/xgbserver:v0.8.0
#### v2
docker.io/seldonio/mlserver:0.5.3

### pytorch
#### v1
kserve/torchserve-kfs:0.5.3
kserve/torchserve-kfs:0.5.3-gpu
#### v2
kserve/torchserve-kfs:0.5.3
kserve/torchserve-kfs:0.5.3-gpu

### triton
nvcr.io/nvidia/tritonserver:21.09-py3

### pmml
kserve/pmmlserver:v0.8.0

### lightgbm
kserve/lgbserver:v0.8.0

### paddle
kserve/paddleserver:v0.8.0

## storageInitializer
kserve/storage-initializer:v0.8.0

---
## manager
kserve/kserve-controller:v0.8.0
## kube-rbac-proxy
gcr.io/kubebuilder/kube-rbac-proxy:v0.8.0
## kserve-container
kserve/lgbserver:v0.8.0
## kserve-container
docker.io/seldonio/mlserver:0.5.3
kserve/paddleserver:v0.8.0
kserve/pmmlserver:v0.8.0
kserve/sklearnserver:v0.8.0
tensorflow/serving:2.6.2
kserve/torchserve-kfs:0.5.3
nvcr.io/nvidia/tritonserver:21.09-py3
kserve/xgbserver:v0.8.0

# contrib\kserve\kserve\kserve-runtimes.yaml
## kserve-container
kserve/lgbserver:v0.8.0
docker.io/seldonio/mlserver:0.5.3
kserve/paddleserver:v0.8.0
kserve/pmmlserver:v0.8.0
kserve/sklearnserver:v0.8.0
tensorflow/serving:2.6.2
kserve/torchserve-kfs:0.5.3
nvcr.io/nvidia/tritonserver:21.09-py3
kserve/xgbserver:v0.8.0

# contrib\kserve\kserve\kserve.yaml
## agent、batcher、 logger
kserve/agent:v0.8.0

## explainers：alibi、aix、art
kserve/alibi-explainer:latest

## predictors：
### tensorflow
tensorflow/serving:2.6.2
tensorflow/serving:2.6.2-gpu

### onnx
mcr.microsoft.com/onnxruntime/server:v1.0.0

### sklearn
#### v1
kserve/sklearnserver:v0.8.0
#### v2
docker.io/seldonio/mlserver:0.5.3

### xgboost
#### v1
kserve/xgbserver:v0.8.0
#### v2
docker.io/seldonio/mlserver:0.5.3

### pytorch
#### v1
kserve/torchserve-kfs:0.5.3
kserve/torchserve-kfs:0.5.3-gpu
#### v2
kserve/torchserve-kfs:0.5.3
kserve/torchserve-kfs:0.5.3-gpu

### triton
nvcr.io/nvidia/tritonserver:21.09-py3

### pmml
kserve/pmmlserver:v0.8.0

### lightgbm
kserve/lgbserver:v0.8.0

### paddle
kserve/paddleserver:v0.8.0

## storageInitializer
kserve/storage-initializer:v0.8.0

---
## manager
kserve/kserve-controller:v0.8.0
## kube-rbac-proxy
gcr.io/kubebuilder/kube-rbac-proxy:v0.8.0

# contrib\kserve\models-web-app\base\deployment.yaml
## kserve-models-web-app
kserve/models-web-app:v0.8.0

# contrib\metacontroller\base\stateful-set.yaml
## metacontroller
metacontroller/metacontroller:v0.3.0

# contrib\modeldb\base\artifact-store-deployment.yaml
## modeldb-artifact-store
vertaaiofficial/modeldb-artifact-store:kubeflow

# contrib\modeldb\base\backend-deployment.yaml
## modeldb-backend
vertaaiofficial/modeldb-backend:kubeflow

# contrib\modeldb\base\mysql-backend-deployment.yaml
## modeldb-mysql-backend
mysql:5.7

# contrib\modeldb\base\proxy-deployment.yaml
## modeldb-backend-proxy
vertaaiofficial/modeldb-backend-proxy:kubeflow

# contrib\modeldb\base\webapp-deplyment.yaml
## modeldb-webapp
vertaaiofficial/modeldb-frontend:kubeflow

# contrib\seldon\values.yaml
## executor
registry: docker.io
    repository: seldonio/seldon-core-executor
    tag: 1.9.0

## storageInitializer
seldonio/rclone-storage-initializer:1.9.0

## predictor_servers
predictor_servers:
  MLFLOW_SERVER:
    protocols:
      seldon:
        defaultImageVersion: "1.9.0"
        image: seldonio/mlflowserver
  SKLEARN_SERVER:
    protocols:
      seldon:
        defaultImageVersion: "1.9.0"
        image: seldonio/sklearnserver
      kfserving:
        defaultImageVersion: "0.3.2"
        image: seldonio/mlserver
  TENSORFLOW_SERVER:
    protocols:
      seldon:
        defaultImageVersion: "1.9.0"
        image: seldonio/tfserving-proxy
      tensorflow: 
        defaultImageVersion: 2.1.0
        image:  tensorflow/serving
  XGBOOST_SERVER:
    protocols:
      seldon:
        defaultImageVersion: "1.9.0"
        image: seldonio/xgboostserver
      kfserving:
        defaultImageVersion: "0.3.2"
        image: seldonio/mlserver
  TRITON_SERVER:
    protocols:
      kfserving:
        defaultImageVersion: "20.08-py3"
        image: nvcr.io/nvidia/tritonserver
  TEMPO_SERVER:
    protocols:
      kfserving:
        defaultImageVersion: "0.3.2"
        image: seldonio/mlserver
        
## engine
registry: docker.io
    repository: seldonio/engine
    tag: 1.9.0
    
## explainer:
seldonio/alibiexplainer:1.9.0
```

#### seldon
```yaml
# contrib\seldon\seldon-core-operator\base\resources.yaml

explainer: '{"image":"seldonio/alibiexplainer:1.9.0"}'
predictor_servers: '{"MLFLOW_SERVER":{"protocols":{"seldon":{"defaultImageVersion":"1.9.0","image":"seldonio/mlflowserver"}}},"SKLEARN_SERVER":{"protocols":{"kfserving":{"defaultImageVersion":"0.3.2","image":"seldonio/mlserver"},"seldon":{"defaultImageVersion":"1.9.0","image":"seldonio/sklearnserver"}}},"TEMPO_SERVER":{"protocols":{"kfserving":{"defaultImageVersion":"0.3.2","image":"seldonio/mlserver"}}},"TENSORFLOW_SERVER":{"protocols":{"seldon":{"defaultImageVersion":"1.9.0","image":"seldonio/tfserving-proxy"},"tensorflow":{"defaultImageVersion":"2.1.0","image":"tensorflow/serving"}}},"TRITON_SERVER":{"protocols":{"kfserving":{"defaultImageVersion":"20.08-py3","image":"nvcr.io/nvidia/tritonserver"}}},"XGBOOST_SERVER":{"protocols":{"kfserving":{"defaultImageVersion":"0.3.2","image":"seldonio/mlserver"},"seldon":{"defaultImageVersion":"1.9.0","image":"seldonio/xgboostserver"}}}}'

## manager
docker.io/seldonio/seldon-core-operator:1.9.0
```

#### spark
```yaml
# contrib\spark\spark-operator\base\deploy.yaml
## sparkoperator
gcr.io/spark-operator/spark-operator:v1beta2-1.1.0-2.4.5

```

#### spartakus
```yaml
# contrib\spartakus\base\deployment.yaml
## volunteer
gcr.io/google_containers/spartakus-amd64:v1.1.0
```

#### tektoncd
```yaml
# contrib\tektoncd\tektoncd-dashboard\base\deployment.yaml
## tekton-dashboard
gcr.io/tekton-releases/github.com/tektoncd/dashboard/cmd/dashboard@sha256:e36ec9efe78b4bb56a4b1c24d8241bee3a2b477aeef20ff864d1edef31953cd8

# contrib\tektoncd\tektoncd-install\base\deployment.yaml
## tekton-pipelines-controller
image: $(tekton-registry)/$(controller)

## webhook
 image: $(tekton-registry)/$(webhook)
 
 
 
 
 
 
```

