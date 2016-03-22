FROM fedora:22

MAINTAINER christophe.larsonneur@hpe.com

RUN dnf install libffi-devel \
                libxml2-devel \
                libxslt-devel \
                perl \
                ruby \
                rubygems \
                ruby-devel \
                git gcc make -y && \
    dnf clean all

RUN gem install --no-rdoc --no-ri bundler && \
    rm -fr /root/.gem

