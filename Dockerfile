FROM centos:7

# Supervisor
RUN yum install -y epel-release
RUN yum install -y python-pip
RUN pip install --upgrade pip
RUN pip install supervisor
RUN mkdir -p /var/log/supervisor

# Additional tools
RUN yum install -y net-tools nmap git

# Maya, CentOS 7
# RUN yum install -y mesa-libGLw
# RUN yum install -y libXp
# RUN yum install -y gamin audiofile audiofile-devel e2fsprogs-libs

# Salt minion, CentOS 7
# RUN rpm --import https://repo.saltstack.com/yum/redhat/7/x86_64/latest/SALTSTACK-GPG-KEY.pub
# RUN touch /etc/yum.repos.d/saltstack.repo
# RUN echo "[saltstack-repo]" >> /etc/yum.repos.d/saltstack.repo
# RUN echo "name=SaltStack repo for RHEL/CentOS \$releasever" >> /etc/yum.repos.d/saltstack.repo
# RUN echo "baseurl=https://repo.saltstack.com/yum/redhat/\$releasever/\$basearch/latest" >> /etc/yum.repos.d/saltstack.repo
# RUN echo "enabled=1" >> /etc/yum.repos.d/saltstack.repo
# RUN echo "gpgcheck=1" >> /etc/yum.repos.d/saltstack.repo
# RUN echo "gpgkey=https://repo.saltstack.com/yum/redhat/\$releasever/\$basearch/latest/SALTSTACK-GPG-KEY.pub" >> /etc/yum.repos.d/saltstack.repo
# RUN yum clean expire-cache
# RUN yum update -y
# RUN yum install -y salt-minion \
#                    salt-ssh    \
#                    salt-syndic \
#                    salt-cloud  \
#                    virt-what
# RUN pip install GitPython
