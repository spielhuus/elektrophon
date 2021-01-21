## This repository holds a docker recipe for the jekyll content generator.

[![Build Status](https://hub.docker.com/repository/docker/spielhuus/elektrophon-jekyll)](https://img.shields.io/docker/cloud/build/spielhuus/elektrophon-jekyll)
[![GitHub version](https://hub.docker.com/repository/docker/spielhuus/elektrophon-jekyll)](https://img.shields.io/docker/pulls/spielhuus/elektrophon-jekyll.svg)

### Create and start the image.

```
docker pull spielhuus/elektrophon-jekyll
```

#### create a new blank blog

```
docker run -v {PATH TO CONTENT}:/srv/jekyll -p 4000:4000 -ti --rm spielhuus/elektrophon-jekyll new
```

#### generate the blog

```
docker run -v {PATH TO CONTENT}:/srv/jekyll -p 4000:4000 -ti --rm spielhuus/elektrophon-jekyll build
```

#### serve the blog locally

```
docker run -v {PATH TO CONTENT}:/srv/jekyll -p 4000:4000 -ti --rm spielhuus/elektrophon-jekyll serve
```

#### serve the blog locally

```
docker run -v {PATH TO CONTENT}:/srv/jekyll -p 4000:4000 -ti --rm spielhuus/elektrophon-jekyll clean
```

### Credits:

* https://docker.io
* https://jekyllrb.com/


### License

[Boost Software License](http://www.boost.org/LICENSE_1_0.txt) - Version 1.0 - August 17th, 2003
