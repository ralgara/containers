FROM jupyter/scipy-notebook
USER root
RUN apt-get update
RUN apt-get -y install graphviz
USER jovyan
RUN pip install --upgrade pip
RUN pip install --upgrade tensorflow nltk pydot
