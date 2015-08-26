
FROM bsmithyman/jupyterhub-ldap:latest
MAINTAINER Brendan Smithyman <brendan@bitsmithy.net>

RUN apt-get -y install cython python-numpy python-scipy python-matplotlib
RUN apt-get -y install cython3 python3-numpy python3-scipy python3-matplotlib
RUN apt-get -y install libopenmpi-dev openmpi-bin gfortran

ADD requirements3.txt /requirements3.txt
ADD requirements.txt /requirements.txt
RUN /usr/local/bin/pip3 install -r /requirements3.txt
RUN /usr/local/bin/pip install -r /requirements.txt

ADD skel/* /etc/skel/.jupyter

CMD ["/srv/jupyterhub/startup.sh"]
