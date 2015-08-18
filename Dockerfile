
FROM bsmithyman/jupyterhub-ldap:latest
MAINTAINER Brendan Smithyman <brendan@bitsmithy.net>

RUN apt-get -y install cython python-numpy python-scipy python-matplotlib

ADD requirements.txt /requirements.txt
RUN /usr/local/bin/pip install -r /requirements.txt

CMD ["/srv/jupyterhub/startup.sh"]
