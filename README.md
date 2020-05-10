# docker-latex

![mit license](https://img.shields.io/github/license/p3t3r67x0/docker-latex)
![docker build](https://img.shields.io/docker/cloud/build/opendatacoder/latex)
![docker pulls](https://img.shields.io/docker/pulls/opendatacoder/latex)
![docker version](https://img.shields.io/docker/v/opendatacoder/latex)

> A Dockerfile for your LaTeX projects based on Ubuntu rolling releases

![Docker logo](https://github.com/p3t3r67x0/docker-latex/raw/master/docs/docker.svg)

This image helps compiling latex sources without the need to install all latex packages on your system.


## Why should I use this container?

-   Easy setup, compile immediately after image download


## Docker Hub

Make use of the pre build docker image

```bash
docker pull opendatacoder/latex
```


## Requirements

Add your local user to docker group if this is not yet the case

```bash
sudo usermod -aG docker $(whoami)
```


## Docker Usage

**Quick Setup**

Compile latex sources using docker, run this command

```bash
docker run --rm -i -v $PWD:/home/latex/data opendatacoder/latex:latest pdflatex main.tex
```

**Daemon setup**

If you're working on source in latex, you might want to compile it multiple times and don't want to start a container each time.

```bash
docker run -d --rm -i -t -v $PWD:/home/latex/data opendatacoder/latex:latest /bin/bash -c "sleep forever"
```
