FROM centos:7

MAINTAINER christophe.larsonneur@hpe.com

COPY files/yum_proxy.sh /tmp/yum_proxy.sh
RUN /tmp/yum_proxy.sh

RUN yum install libffi-devel \
                libxml2-devel \
                libxslt-devel \
                perl \
                ruby \
                rubygems \
                ruby-devel \
                git gcc make -y && \
    yum clean all

RUN gem install --no-rdoc --no-ri bundler && \
    rm -fr /root/.gem

