FROM sarusso/timeseria:v0.1.1
MAINTAINER Stefano Alberto Russo <stefano.russo@gmail.com>

# Install Timeseria
#RUN pip3 install git+https://github.com/sarusso/Timeseria.git@v0.1.1
RUN cd /opt/Timeseria && pip3 --use-feature=in-tree-build install . 

# Prepare notebook user for Binder
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

# Entrypoint for Binder
COPY entrypoint.sh /
RUN chmod 755 /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

# User & workdir
USER ${NB_USER}
WORKDIR /home/jovyan/notebooks
