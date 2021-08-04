FROM ubuntu:20.10
#FROM ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive

# install ubuntu packages
RUN apt-get update &&\
    apt-get -y upgrade &&\
    apt-get install -y curl apt-transport-https sudo ruby-full zlib1g-dev apt-utils build-essential \
                       texlive texlive-latex-extra texlive-pictures texlive-science imagemagick dvisvgm \
                       librsvg2-bin kicad xvfb xdotool xclip xsltproc python3-pip locales sudo &&\
    apt-get clean && rm -rf /var/lib/apt/lists/*

# install jupyter and required packages
ENV PATH /opt/conda/bin:$PATH
RUN curl https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh --output Miniconda3-latest-Linux-x86_64.sh
RUN /bin/bash Miniconda3-latest-Linux-x86_64.sh -b -p /opt/conda
RUN /opt/conda/bin/conda update conda

COPY environment.yml /environment.yml
RUN conda env create -f environment.yml
RUN rm Miniconda3-latest-Linux-x86_64.sh

# sst locale
RUN locale-gen en_US.UTF-8
ENV LANG="en_US.UTF-8" LANGUAGE="en_US:en" LC_ALL="en_US.UTF-8"

# install bundler and jekyll
RUN gem install jekyll bundler

#install kibot in system python env
RUN /usr/bin/pip3 install --no-compile kiauto pcbdraw kibom kibot

EXPOSE 4000

# Setup an entrypoint script
COPY docker/entrypoint.sh /entrypoint.sh
COPY docker/entrypoint-user.sh /entrypoint-user.sh
COPY docker/pdf2svg /usr/bin/pdf2svg

RUN chmod 755 /entrypoint.sh
RUN chmod 755 /entrypoint-user.sh
RUN chmod 755 /usr/bin/pdf2svg
ENTRYPOINT ["/entrypoint.sh"]

ENV JEKYLL_DIR="/github/workspace"
ENV WWW_DIR="/github/workspace/www"
WORKDIR $JEKYLL_DIR
ENV GEM_HOME /var/lib/gems
ENV DRAFT=""

CMD ["/bin/bash"]
