FROM centos:7

MAINTAINER christophe.larsonneur@hpe.com

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

RUN useradd -d /src -u 1000 develop

COPY *.sh /usr/local/bin/

USER develop

WORKDIR /src

ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]

CMD [ "-T" ]

