# 通过 Dokcer 跨平台编译 Python 程序

## 示例

**linux/amd64**

```
docker run -i --rm -v "$PWD":/usr/src/build -w /usr/src/build python:3.10@sha256:76f9e442fdf5c12efb5949407b0bb7ad28a413b8a5387a4243b1d43a14654060 /bin/bash -c "make dep; make build"
```

**linux/armv7**

```
docker run -i --rm -v "$PWD":/usr/src/build -w /usr/src/build python:3.10@sha256:6d087712b51fd963839de1966392e269aea22ef6e6b518b4fb450b12071d75a1 /bin/bash -c "make dep; make build"
```

**linux/armv8**

```
docker run -i --rm -v "$PWD":/usr/src/build -w /usr/src/build python:3.10@sha256:04c13ef2cc265f31aa90decf9ba111f715b82d8c80dc2f84b13b1bce31b22f77 /bin/bash -c "make dep; make build"
```

**linux/armv8/python:3.6.9**

```
docker run -i --rm -v "$PWD":/usr/src/build -w /usr/src/build python:3.6.9@sha256:43aff6ab6c42f423e4d92041204fa533549c8e7bfe42b9929e541364c23a1e0c /bin/bash -c "make dep; make build"
```
