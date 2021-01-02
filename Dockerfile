FROM ubuntu:18.04
MAINTAINER Stefano Alberto Russo <stefano.russo@gmail.com>

# Set non-interactive
ENV DEBIAN_FRONTEND noninteractive

# Update apt cache
RUN apt-get update

# Install Curl
RUN apt-get install curl -y

# Install get-pip script
RUN curl -O https://bootstrap.pypa.io/get-pip.py

# Install Python3 and Pip3, anf Git
RUN apt-get install python3 python3-distutils git -y 
RUN python3 get-pip.py #-c <(echo 'pip==20.2')

# Python-tk required by matplotlib/six
RUN apt-get install python-tk python3-tk python3-dev build-essential -y

# Install Python requirements
COPY requirements.txt /tmp
RUN pip3 install -r /tmp/requirements.txt

# Install Jupyter
RUN pip3 install notebook==5.7.10

# Install Timeseria
RUN pip3 install git+https://github.com/sarusso/Timeseria.git@299c296

# Prepare notebook user
ARG NB_USER=jovyan
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}

RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid ${NB_UID} \
    ${NB_USER}

# Copy contents to user home
COPY . ${HOME}
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}
