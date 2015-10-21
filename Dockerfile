
FROM bsmithyman/jupyterhub-ldap:latest
MAINTAINER Brendan Smithyman <brendan@bitsmithy.net>

RUN apt-get -y install libopenmpi-dev openmpi-bin gfortran screen vim libblas-dev libmumps-seq-dev subversion git curl
RUN apt-get -y install cython python-numpy python-scipy python-matplotlib python-mpi4py python-h5py python-tables
RUN apt-get -y install cython3 python3-numpy python3-scipy python3-matplotlib python3-mpi4py python-h5py python3-tables

ADD requirements3.txt /requirements3.txt
RUN /usr/local/bin/pip3 install -r /requirements3.txt

ADD requirements.txt /requirements.txt
RUN /usr/local/bin/pip install -r /requirements.txt

ADD skel/jupyter /etc/skel/.jupyter
ADD skel/ipython /etc/skel/.ipython

ADD scripts/* /usr/local/bin/

CMD ["/srv/jupyterhub/startup.sh"]
