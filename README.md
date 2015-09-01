# jupyterhub-simpeg
SimPEG-enabled JupyterHub (w/ LDAP support from bsmithyman/jupyterhub-ldap)

This project builds a Docker container for deploying JupyterHub, optionally in an environment with simple LDAP authentication. The environment is preconfigured to include packages useful for working with SimPEG and related projects in Python 2.x. These mainly consist of numerical- and parallel-computing dependencies, as well as scripts to preconfigure local copies of SimPEG and/or related projects.
