FROM ubuntu:rolling

ENV LANG C.UTF-8

ARG USER_NAME=latex
ARG USER_HOME=/home/latex
ARG USER_GECOS=LaTeX
ARG USER_ID=1000

RUN adduser \
  --uid $USER_ID \
  --home "$USER_HOME" \
  --gecos "$USER_GECOS" \
  --disabled-password \
  "$USER_NAME"

RUN apt update
RUN apt upgrade
RUN apt install -y texlive-full pandoc pandoc-citeproc fig2dev make wget git
RUN apt-get clean -y

WORKDIR /data
VOLUME ["/data"]
