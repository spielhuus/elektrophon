FROM ubuntu:rolling

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y curl apt-transport-https sudo\
    python3 python3-pip build-essential ngspice libngspice0 git software-properties-common\
    ruby-full zlib1g-dev git neovim\
    nodejs libxml2-dev libxslt-dev pkg-config\
    texlive texlive-latex-extra texlive-pictures texlive-science imagemagick pdf2svg\
    libsndfile1 

# Fix ruby and unset locale
# http://jaredmarkell.com/docker-and-locales/
RUN apt-get install -y \
        locales \
        &&\
    locale-gen en_US.UTF-8
ENV LANG="en_US.UTF-8" LANGUAGE="en_US:en" LC_ALL="en_US.UTF-8"

RUN gem install jekyll bundler

RUN pip3 install --upgrade setuptools
#install kibot
RUN apt-get install -y kicad xvfb xdotool xclip xsltproc
RUN pip3 install jupyter matplotlib pyspice sympy itikz
RUN pip3 install kiauto pcbdraw kibom kibot

#RUN pip3 install jupyter matplotlib pyspice sympy librosa kibot itikz
#RUN pip3 install git+git://github.com/mkrphys/ipython-tikzmagic.git

RUN ln -s /usr/lib/x86_64-linux-gnu/libngspice.so.0 /usr/lib/x86_64-linux-gnu/libngspice.so

RUN rm -rf /var/lib/apt/lists/*

EXPOSE 4000

# Setup an entrypoint script
COPY entrypoint.sh /entrypoint.sh
COPY entrypoint-user.sh /entrypoint-user.sh
RUN chmod 755 /entrypoint.sh
RUN chmod 755 /entrypoint-user.sh
ENTRYPOINT ["/entrypoint.sh"]

ENV JEKYLL_DIR="/srv/jekyll"
ENV WWW_DIR="/srv/jekyll/www"
WORKDIR $JEKYLL_DIR
ENV GEM_HOME /var/lib/gems

CMD ["/bin/bash"]
