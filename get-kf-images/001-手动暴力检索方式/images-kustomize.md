
## [Kubeflow的manifests-1.6.1的镜像源列表](https://github.com/kubeflow/manifests/)

> 仅仅为kustomization.yaml文件的镜像源
### APP
#### **Jupyter**
```yaml
# apps\jupyter\notebook-controller\upstream\base\kustomization.yaml
images:
- name: docker.io/kubeflownotebookswg/notebook-controller
  newTag: v1.6.1

```

#### **Katib**
```yaml
# apps\katib\upstream\installs\katib-cert-manager\kustomization.yaml
images:
  - name: docker.io/kubeflowkatib/katib-controller
    newName: docker.io/kubeflowkatib/katib-controller
    newTag: v0.14.0
  - name: docker.io/kubeflowkatib/katib-db-manager
    newName: docker.io/kubeflowkatib/katib-db-manager
    newTag: v0.14.0
  - name: docker.io/kubeflowkatib/katib-ui
    newName: docker.io/kubeflowkatib/katib-ui
    newTag: v0.14.0
    
# apps\katib\upstream\installs\katib-external-db\kustomization.yaml
images:
  - name: docker.io/kubeflowkatib/katib-controller
    newName: docker.io/kubeflowkatib/katib-controller
    newTag: v0.14.0
  - name: docker.io/kubeflowkatib/katib-db-manager
    newName: docker.io/kubeflowkatib/katib-db-manager
    newTag: v0.14.0
  - name: docker.io/kubeflowkatib/katib-ui
    newName: docker.io/kubeflowkatib/katib-ui
    newTag: v0.14.0
  - name: docker.io/kubeflowkatib/cert-generator
    newName: docker.io/kubeflowkatib/cert-generator
    newTag: v0.14.0
    
    
# apps\katib\upstream\installs\katib-openshift\kustomization.yaml
images:
  - name: docker.io/kubeflowkatib/katib-controller
    newName: docker.io/kubeflowkatib/katib-controller
    newTag: v0.14.0
  - name: docker.io/kubeflowkatib/katib-db-manager
    newName: docker.io/kubeflowkatib/katib-db-manager
    newTag: v0.14.0
  - name: docker.io/kubeflowkatib/katib-ui
    newName: docker.io/kubeflowkatib/katib-ui
    newTag: v0.14.0

# apps\katib\upstream\installs\katib-standalone\kustomization.yaml
images:
  - name: docker.io/kubeflowkatib/katib-controller
    newName: docker.io/kubeflowkatib/katib-controller
    newTag: v0.14.0
  - name: docker.io/kubeflowkatib/katib-db-manager
    newName: docker.io/kubeflowkatib/katib-db-manager
    newTag: v0.14.0
  - name: docker.io/kubeflowkatib/katib-ui
    newName: docker.io/kubeflowkatib/katib-ui
    newTag: v0.14.0
  - name: docker.io/kubeflowkatib/cert-generator
    newName: docker.io/kubeflowkatib/cert-generator
    newTag: v0.14.0

# apps\katib\upstream\installs\katib-with-kubeflow\kustomization.yaml
images:
  - name: docker.io/kubeflowkatib/katib-controller
    newName: docker.io/kubeflowkatib/katib-controller
    newTag: v0.14.0
  - name: docker.io/kubeflowkatib/katib-db-manager
    newName: docker.io/kubeflowkatib/katib-db-manager
    newTag: v0.14.0
  - name: docker.io/kubeflowkatib/katib-ui
    newName: docker.io/kubeflowkatib/katib-ui
    newTag: v0.14.0

```

#### kfp-tekton
```yaml
# apps\kfp-tekton\upstream\base\cache\kustomization.yaml
images:
  - name: gcr.io/ml-pipeline/cache-server
    newName: docker.io/aipipeline/cache-server
    newTag: 1.2.1
# apps\kfp-tekton\upstream\base\cache-deployer\kustomization.yaml
images:
  - name: gcr.io/ml-pipeline/cache-deployer
    newTag: 1.8.1

# apps\kfp-tekton\upstream\base\metadata\base\kustomization.yaml
images:
  - name: gcr.io/ml-pipeline/metadata-envoy
    newTag: 1.8.1

# apps\kfp-tekton\upstream\base\metadata\overlays\db\kustomization.yaml
images:
- name: mysql
  newName: mysql
  newTag: 8.0.3

# apps\kfp-tekton\upstream\base\pipeline\kustomization.yaml
images:
  - name: gcr.io/ml-pipeline/api-server
    newName: docker.io/aipipeline/api-server
    newTag: 1.2.1
  - name: gcr.io/ml-pipeline/persistenceagent
    newName: docker.io/aipipeline/persistenceagent
    newTag: 1.2.1
  - name: gcr.io/ml-pipeline/scheduledworkflow
    newName: docker.io/aipipeline/scheduledworkflow
    newTag: 1.2.1
  - name: gcr.io/ml-pipeline/frontend
    newName: docker.io/aipipeline/frontend
    newTag: 1.2.1
  - name: gcr.io/ml-pipeline/viewer-crd-controller
    newTag: 1.8.1
  - name: gcr.io/ml-pipeline/visualization-server
    newTag: 1.8.1
  - name: gcr.io/ml-pipeline/metadata-writer
    newName: docker.io/aipipeline/metadata-writer
    newTag: 1.2.1
    
    
# apps\kfp-tekton\upstream\base\pipeline\metadata-writer\kustomization.yaml
images:
  - name: gcr.io/ml-pipeline/metadata-writer
    newTag: 1.8.1


# apps\kfp-tekton\upstream\env\gcp\inverse-proxy\kustomization.yaml
images:
  - name: gcr.io/ml-pipeline/inverse-proxy-agent
    newTag: 1.8.1

# apps\kfp-tekton\upstream\third-party\grafana\kustomization.yaml
images:
  - name: grafana/grafana
    newTag: 5.3.4

# apps\kfp-tekton\upstream\third-party\prometheus\kustomization.yaml
images:
  - name: prom/prometheus

# apps\kfp-tekton\upstream\third-party\tekton\upstream\manifests\base\tektoncd-install\kustomization.yaml
images:
- name: $(registry)/$(controller)
  newName: $(registry)/$(controller)
  newTag: latest
- name: $(registry)/$(webhook)
  newName: $(registry)/$(webhook)
  newTag: latest


# apps\kfp-tekton\upstream\third-party\tekton-custom-task\kustomization.yaml
images:
  - name: docker.io/aipipeline/pipelineloop-controller
    newTag: 1.2.1
  - name: docker.io/aipipeline/pipelineloop-webhook
    newTag: 1.2.1
```

#### kubebench
```yaml
# apps\kubebench\upstream\base\kustomization.yaml
images:
  - name:  gcr.io/kubeflow-images-public/kubebench/kubebench-operator-v1alpha2
    newName: gcr.io/kubeflow-images-public/kubebench/kubebench-operator-v1alpha2
    newTag: bc682c1
```

#### **Pipeline**
```yaml
# apps\pipeline\upstream\base\cache\kustomization.yaml
images:
  - name: gcr.io/ml-pipeline/cache-server
    newTag: 2.0.0-alpha.5

# apps\pipeline\upstream\base\cache-deployer\kustomization.yaml
images:
  - name: gcr.io/ml-pipeline/cache-deployer
    newTag: 2.0.0-alpha.5

# apps\pipeline\upstream\base\metadata\base\kustomization.yaml
images:
  - name: gcr.io/ml-pipeline/metadata-envoy
    newTag: 2.0.0-alpha.5

# apps\pipeline\upstream\base\metadata\overlays\db\kustomization.yaml
images:
- name: mysql
  newName: mysql
  newTag: 8.0.3

# apps\pipeline\upstream\base\pipeline\kustomization.yaml
images:
  - name: gcr.io/ml-pipeline/api-server
    newTag: 2.0.0-alpha.5
  - name: gcr.io/ml-pipeline/persistenceagent
    newTag: 2.0.0-alpha.5
  - name: gcr.io/ml-pipeline/scheduledworkflow
    newTag: 2.0.0-alpha.5
  - name: gcr.io/ml-pipeline/frontend
    newTag: 2.0.0-alpha.5
  - name: gcr.io/ml-pipeline/viewer-crd-controller
    newTag: 2.0.0-alpha.5
  - name: gcr.io/ml-pipeline/visualization-server
    newTag: 2.0.0-alpha.5

# apps\pipeline\upstream\base\pipeline\metadata-writer\kustomization.yaml
images:
  - name: gcr.io/ml-pipeline/metadata-writer
    newTag: 2.0.0-alpha.5

# apps\pipeline\upstream\env\gcp\inverse-proxy\kustomization.yaml
images:
  - name: gcr.io/ml-pipeline/inverse-proxy-agent
    newTag: 2.0.0-alpha.5

# apps\pipeline\upstream\third-party\grafana\kustomization.yaml
images:
  - name: grafana/grafana
    newTag: 5.3.4

# apps\pipeline\upstream\third-party\prometheus\kustomization.yaml
images:
  - name: prom/prometheus
```

#### **Profiles**
```yaml
# apps\profiles\upstream\base\kustomization.yaml
images:
- name: docker.io/kubeflownotebookswg/profile-controller
  newTag: v1.6.1

# apps\profiles\upstream\overlays\kubeflow\kustomization.yaml
images:
- name: docker.io/kubeflownotebookswg/kfam
  newTag: v1.6.1
```

#### **Tensorboard**
```yaml
# apps\tensorboard\tensorboard-controller\upstream\base\kustomization.yaml
images:
- name: docker.io/kubeflownotebookswg/tensorboard-controller
  newTag: v1.6.1

# apps\tensorboard\tensorboards-web-app\upstream\base\kustomization.yaml
images:
- name: docker.io/kubeflownotebookswg/tensorboards-web-app
  newTag: v1.6.1
```

#### **Training-Operator**
```yaml
# apps\training-operator\upstream\overlays\kubeflow\kustomization.yaml
images:
  - name: kubeflow/training-operator
    newTag: "v1-e1434f6"

# apps\training-operator\upstream\overlays\standalone\kustomization.yaml
images:
  - name: kubeflow/training-operator
    newTag: "v1-e1434f6"
```

#### **Volumes-Web-App**
```yaml
# apps\volumes-web-app\upstream\base\kustomization.yaml
images:
- name: docker.io/kubeflownotebookswg/volumes-web-app
  newTag: v1.6.1








```



### Common

> common
#### **Dex**
```yaml

# common\dex\base\kustomization.yaml
images:
- name: quay.io/dexidp/dex
  newName: quay.io/dexidp/dex
  newTag: v2.24.0
```

#### **OIDC-Authservice**
```yaml
# common\oidc-authservice\base\kustomization.yaml
images:
- name: gcr.io/arrikto/kubeflow/oidc-authservice
  newName: gcr.io/arrikto/kubeflow/oidc-authservice
  newTag: 28c59ef

# common\oidc-authservice\overlays\ibm-storage-config\kustomization.yaml
images:
  - name: busybox
    newTag: "latest"
    newName: busybox

```



### contrib

> contrib
#### application
```yaml

# contrib\application\application\base\kustomization.yaml
images:
- name: gcr.io/kubeflow-images-public/kubernetes-sigs/application
  newName: gcr.io/kubeflow-images-public/kubernetes-sigs/application
  newTag: 1.0-beta

# contrib\application\application\overlays\debug\kustomization.yaml
images:
- name: gcr.io/$(project)/application-controller
  newName: gcr.io/$(project)/application-controller
  newTag: latest

# contrib\application\v3\kustomization.yaml
images:
- name: gcr.io/kubeflow-images-public/kubernetes-sigs/application
  newName: gcr.io/kubeflow-images-public/kubernetes-sigs/application
  newTag: 1.0-beta
```

#### basic-auth
```yaml
# contrib\basic-auth\base\kustomization.yaml
images:
- name: gcr.io/kubeflow-images-public/kflogin-ui
  newName: gcr.io/kubeflow-images-public/kflogin-ui
  newTag: v0.5.0
- name: gcr.io/kubeflow-images-public/gatekeeper
  newName: gcr.io/kubeflow-images-public/gatekeeper
  newTag: v0.5.0
```

#### dex-auth
```yaml
# contrib\dex-auth\dex-authenticator\base\kustomization.yaml
images:
- name: mintel/dex-k8s-authenticator
  newName: mintel/dex-k8s-authenticator
  newTag: 1.2.0

# contrib\dex-auth\dex-authenticator\base_v3\kustomization.yaml
images:
- name: mintel/dex-k8s-authenticator
  newName: mintel/dex-k8s-authenticator
  newTag: 1.2.0

# contrib\dex-auth\dex-ldap\base\kustomization.yaml
images:
- name: osixia/openldap
  newName: osixia/openldap
  newTag: latest
- name: osixia/phpldapadmin
  newName: osixia/phpldapadmin
  newTag: latest

# contrib\dex-auth\keycloak-gatekeeper\base\kustomization.yaml
images:
- name: keycloak/keycloak-gatekeeper
  newName: keycloak/keycloak-gatekeeper
  newTag: 5.0.0

# contrib\dex-auth\keycloak-gatekeeper\base_v3\kustomization.yaml
images:
- name: keycloak/keycloak-gatekeeper
  newName: keycloak/keycloak-gatekeeper
  newTag: 5.0.0
```

#### flink
```yaml
# contrib\flink\flink-operator\base\kustomization.yaml
images:
- name: gcr.io/flink-operator/flink-operator
  newName: gcr.io/flink-operator/flink-operator
  newTag: v1beta1-6

```

#### **Kserve**
```yaml
# contrib\kserve\models-web-app\base\kustomization.yaml
images:
- name: kserve/models-web-app
  newName: kserve/models-web-app
  newTag: v0.8.0
```

#### metacontroller
```yaml
# contrib\metacontroller\base\kustomization.yaml
images:
- name: metacontroller/metacontroller
  newName: metacontroller/metacontroller
  newTag: v0.3.0
```

#### modeldb
```yaml
# contrib\modeldb\base\kustomization.yaml
images:
- name: vertaaiofficial/modeldb-frontend
  newName: vertaaiofficial/modeldb-frontend
  newTag: kubeflow
- name: vertaaiofficial/modeldb-backend
  newName: vertaaiofficial/modeldb-backend
  newTag: kubeflow
- name: vertaaiofficial/modeldb-artifact-store
  newName: vertaaiofficial/modeldb-artifact-store
  newTag: kubeflow
- name: mysql
  newName: mysql
  newTag: '5.7'
- name: vertaaiofficial/modeldb-backend-proxy
  newName: vertaaiofficial/modeldb-backend-proxy
  newTag: kubeflow
```

#### spark
```yaml
# contrib\spark\spark-operator\base\kustomization.yaml
images:
- name: gcr.io/spark-operator/spark-operator
  newName: gcr.io/spark-operator/spark-operator
  newTag: v1beta2-1.1.0-2.4.5
```

#### spartakus
```yaml
# contrib\spartakus\base\kustomization.yaml
images:
- name: gcr.io/google_containers/spartakus-amd64
  newName: gcr.io/google_containers/spartakus-amd64
  newTag: v1.1.0
```

#### tektoncd
```yaml
# contrib\tektoncd\tektoncd-dashboard\base\kustomization.yaml
images:
- name: gcr.io/tekton-releases/github.com/tektoncd/dashboard/cmd/dashboard
  newName: gcr.io/tekton-releases/github.com/tektoncd/dashboard/cmd/dashboard
  digest: sha256:e36ec9efe78b4bb56a4b1c24d8241bee3a2b477aeef20ff864d1edef31953cd8

# contrib\tektoncd\tektoncd-install\base\kustomization.yaml
images:
- name: $(registry)/$(controller)
  newName: $(registry)/$(controller)
  newTag: latest
- name: $(registry)/$(webhook)
  newName: $(registry)/$(webhook)
  newTag: latest
  
  


```























