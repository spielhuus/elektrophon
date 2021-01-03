## This repository holds a docker recipe for the jekyll content generator.

[![Build Status](https://travis-ci.org/spielhuus/docker-toolchain.svg?branch=master)](https://travis-ci.org/spielhuus/docker-toolchain)
[![GitHub version](https://badge.fury.io/gh/spielhuus%2Fdocker-toolchain.svg)](https://hub.docker.com/r/spielhuus/docker-toolchain)

[Docker](https://docker.io) recipe for [jekyll](https://jekyllrb.com/) project

### Create and start the image.

```
docker pull spielhuus/jekyll
```

#### create a new blank blog

```
docker run -v {PATH TO CONTENT}:/srv/jekyll -p 4000:4000 -ti --rm spielhuus/jekyll new
```

#### generate the blog

```
docker run -v {PATH TO CONTENT}:/srv/jekyll -p 4000:4000 -ti --rm jekyll spielhuus/jekyll build
```

#### serve the blog locally

```
docker run -v {PATH TO CONTENT}:/srv/jekyll -p 4000:4000 -ti --rm jekyll spielhuus/jekyll serve
```

#### serve the blog locally

```
docker run -v {PATH TO CONTENT}:/srv/jekyll -p 4000:4000 -ti --rm jekyll spielhuus/jekyll clean
```

### Credits:

* https://docker.io
* https://jekyllrb.com/


### License

[Boost Software License](http://www.boost.org/LICENSE_1_0.txt) - Version 1.0 - August 17th, 2003
