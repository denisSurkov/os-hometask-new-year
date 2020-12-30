FROM centos/systemd
MAINTAINER "Denis Surkov" <surkov0denis@yandex.ru>

RUN yum -y install epel-release
RUN yum -y install python3 python3-pip

COPY . .

RUN cp ./logger-task.service /etc/systemd/system/; cp ./logs_generator.py /usr/bin/; systemctl enable logger-task;
