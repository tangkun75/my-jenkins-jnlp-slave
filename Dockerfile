FROM jenkinsci/jnlp-slave:latest
USER root
RUN apt-get update && apt-get install -y net-tools tree vim
RUN echo "alias ll='ls -la'" >> ~/.bashrc && \
    echo "syntax on" > ~/.vimrc
USER jenkins
