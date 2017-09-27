FROM ubuntu 
RUN apt-get update 
RUN apt-get install -y git python-virtualenv openssh-server 

RUN mkdir /root/.ssh/
RUN mkdir /home/git_workspace
#ADD id_rsa /root/.ssh/id_rsa

RUN useradd jenkins -m -s /bin/bash

RUN chmod 700 /root/.ssh/id_rsa
RUN chown -R root:root /root/.ssh
RUN touch /root/.ssh/known_hosts

RUN git clone https://github.com/ksuresh123/Project1.git /home/git_workspace 