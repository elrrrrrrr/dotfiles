FROM ubuntu:16.04

ENV LANG=C.UTF-8

ADD ./** /root/
ADD ~/.ssh /root/.ssh/

RUN apt-get update && apt-get install -y \
  git \
  zsh \
  curl \
  tmux \
  vim && \
  chsh -s /bin/zsh root && \
  zsh

RUN zsh /root/init.sh

