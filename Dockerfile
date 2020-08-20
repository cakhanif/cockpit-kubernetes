FROM centos

LABEL Maintainer="Mohamamd Hanif <surat@cakhanif.com>"

RUN yum update -y && yum clean all
ADD . /container
RUN chmod +x /container/install.sh && \
    /container/install.sh

CMD ["/usr/libexec/cockpit-kube-launch"]
