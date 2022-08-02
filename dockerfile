FROM ubuntu:18.04
MAINTAINER tsvyake@gmail.com
RUN apt update && apt upgrade -y
RUN apt install -y default-jdk
RUN apt install -y mc
RUN apt install -y htop
RUN apt install -y wget
RUN apt install -y maven
RUN apt install -y git
RUN apt install -y python
RUN apt install -y python-pip
WORKDIR /tmp
ADD requirements.txt /tmp/
WORKDIR /tmp
RUN pip install -qr requirements.txt
WORKDIR /opt/webapp
ADD app.py /opt/webapp
ADD requirements.txt /opt/webapp
EXPOSE 5000
CMD ["python", "app.py"]