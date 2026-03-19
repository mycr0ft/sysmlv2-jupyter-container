# OCI Container image for running SysML v2 (podman-based)

Create a podman image for running [SysML v2 Release](https://github.com/Systems-Modeling/SysML-v2-Release) in Jupyter.

The setup is similar to [Jupyter installation](https://github.com/Systems-Modeling/SysML-v2-Release/tree/master/install/jupyter) but using miniforge rather than the Anaconda distribution.

In this project Jupyter runs as root in the container but when one uses podman the process runs as the user that spawns the container process.

## SysMLv2 API Services 

I am working on compiling and running the SysML-v2 API services. 

In addition, an [API Server](https://github.com/Systems-Modeling/SysML-v2-API-Services) can optionally run in another container image and a Compose script can be used to link the two. 


### Prerequistes

- [podman](https://www.podman.io/)

Everything else is installed by the build process.

## Example Notebooks

There are a few example notebooks included in the image, their
usefulness might vary according to your experience level.

## Licensing

Both [SysMLv2 API Server](https://github.com/Systems-Modeling/SysML-v2-API-Services/blob/master/LICENSE) and [SysMLv2 Release](https://github.com/Systems-Modeling/SysML-v2-Release/blob/master/LICENSE) are licensed under the LGPL and this continues to be the case.

**This project does not make any changes to the existing licensing of the
referenced projects.**

This project is also licensed under the [LGPL](/LICENSE).
