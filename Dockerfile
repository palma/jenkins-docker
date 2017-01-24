FROM jenkins:2.32.1
USER root
RUN apt-get update && apt-get install -y httping

COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt

