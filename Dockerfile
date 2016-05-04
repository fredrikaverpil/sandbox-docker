FROM centos:7

# Additional tools
RUN yum install -y epel-release
RUN yum install -y python-pip net-tools nmap git
RUN pip install --upgrade pip

# Supervisor
RUN pip install supervisor
RUN mkdir -p /var/log/supervisor
