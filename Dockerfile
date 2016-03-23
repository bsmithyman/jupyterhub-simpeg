
FROM bsmithyman/jupyterhub-ldap:latest
MAINTAINER Brendan Smithyman <brendan@bitsmithy.net>

RUN apt-get -y install libopenmpi-dev openmpi-bin gfortran screen vim libblas-dev libmumps-seq-dev liblapack-dev subversion git curl libhdf5-dev zip unzip ssh man
RUN apt-get -y install cython python-numpy python-scipy python-matplotlib python-mpi4py python-tables python-openssl python-pyasn1 python-pyasn1-modules python-nose python-h5py python-sphinx pylint python-pydot python-pygraphviz
RUN apt-get -y install cython3 python3-numpy python3-scipy python3-matplotlib python3-mpi4py python3-tables python3-openssl python3-pyasn1 python3-h5py

ADD requirements3.txt /requirements3.txt
RUN pip install -r /requirements3.txt

RUN curl -sS https://bootstrap.pypa.io/get-pip.py | python2

ADD requirements.txt /requirements.txt
RUN python2 -m pip install -r /requirements.txt

ADD skel/jupyter /etc/skel/.jupyter
ADD skel/ipython /etc/skel/.ipython

ADD scripts/* /usr/local/bin/

CMD ["/srv/jupyterhub/startup.sh"]
