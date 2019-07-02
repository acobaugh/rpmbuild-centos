FROM rpmbuild/centos6:latest

USER root
RUN yum update -y \
 && yum install -y rpmdevtools epel-release rpmlint \
 && rm -f /home/builder/.rpmmacros

USER builder
CMD /bin/bash
