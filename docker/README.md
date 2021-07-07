## This repository holds a docker recipe for the jekyll content generator.

[![Build Status](https://img.shields.io/docker/cloud/build/spielhuus/elektrophon)](https://hub.docker.com/repository/docker/spielhuus/elektrophon)
[![GitHub version](https://img.shields.io/docker/pulls/spielhuus/elektrophon.svg)](https://hub.docker.com/repository/docker/spielhuus/elektrophon)

### download the docker image from dockerhub

```
docker pull spielhuus/elektrophon
```

#### create a new blank blog

```
docker run -v {PATH TO CONTENT}:/github/workspace -p 4000:4000 -ti --rm spielhuus/elektrophon new
```

#### generate the blog

```
docker run -v {PATH TO CONTENT}:/github/workspace -p 4000:4000 -ti --rm spielhuus/elektrophon build
```

#### serve the blog locally

```
docker run -v {PATH TO CONTENT}:/github/workspace -p 4000:4000 -ti --rm spielhuus/elektrophon serve
```

#### clean the local repository

```
docker run -v {PATH TO CONTENT}:/github/workspace -p 4000:4000 -ti --rm spielhuus/elektrophon clean
```

#### run jupyterlab

```
docker run -v {PATH TO CONTENT}:/github/workspace -p 8888:8888 -ti --rm spielhuus/elektrophon notebook
```

### Credits:

* https://docker.io
* https://jekyllrb.com/


### License

[Boost Software License](http://www.boost.org/LICENSE_1_0.txt) - Version 1.0 - August 17th, 2003
