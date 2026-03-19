FROM debian:trixie
RUN apt -y update && apt install -y curl

WORKDIR /miniforge-install
ARG HOME="/"
RUN curl -L -O "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"
RUN sh Miniforge3-$(uname)-$(uname -m).sh -b

WORKDIR /miniforge3
ENV PATH=/miniforge3/bin/:/miniforge3/condabin/:$PATH
RUN conda install -y jupyter -c conda-forge
RUN conda install -y jupyter-sysml-kernel=0.57.0 nodejs=20.* 
RUN jupyter labextension install "@systems-modeling/jupyterlab-sysml@0.57.0"

WORKDIR /jupyter
CMD ["jupyter-lab","--allow-root", "--ip", "0.0.0.0", "--NotebookApp.token='systems.engineering'"]

EXPOSE 8888
