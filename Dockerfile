
FROM bsmithyman/jupyterhub-ldap:latest
MAINTAINER Brendan Smithyman <brendan@bitsmithy.net>

RUN apt-get -y install libopenmpi-dev openmpi-bin gfortran screen vim libblas-dev libmumps-seq-dev subversion git curl libhdf5-dev zip unzip ssh man
RUN apt-get -y install cython python-numpy python-scipy python-matplotlib python-mpi4py python-tables python-openssl python-pyasn1 python-pyasn1-modules python-nose python-h5py
RUN apt-get -y install cython3 python3-numpy python3-scipy python3-matplotlib python3-mpi4py python3-tables python3-openssl python3-pyasn1 python3-h5py

RUN /usr/local/bin/pip install ndg-httpsclient

ADD requirements3.txt /requirements3.txt
RUN /usr/local/bin/pip3 install -r /requirements3.txt

ADD requirements.txt /requirements.txt
RUN /usr/local/bin/pip2 install -r /requirements.txt

ADD skel/jupyter /etc/skel/.jupyter
ADD skel/ipython /etc/skel/.ipython

ADD scripts/* /usr/local/bin/

CMD ["/srv/jupyterhub/startup.sh"]
