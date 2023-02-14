


# gcr.io
谷歌容器

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

### 由于refusing to create a tag with a digest reference，部分