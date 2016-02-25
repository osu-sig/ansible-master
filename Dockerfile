FROM centos:latest
MAINTAINER Cody Welch

RUN yum -y install epel-release
RUN yum -y install ansible
RUN yum -y install python-pip
RUN pip install https://github.com/willthames/ansible-lint/archive/master.zip

# install rspec/serverspec
#RUN yum -y install rubygems-devel
#RUN gem install rspec
#RUN gem install serverspec
#RUN gem install rake

# Required for Docker jenkins plugin
RUN yum -y install openssh-server
RUN mkdir /var/run/sshd
EXPOSE 22
RUN yum -y install java-1.6.0-openjdk
RUN useradd jenkins

# This is not safe, this is a test
RUN echo "jenkins:xt4dFV4WdkURU3v8TRWu" | chpasswd
RUN echo "jenkins    ALL=NOPASSWD: ALL" >> /etc/sudoers
