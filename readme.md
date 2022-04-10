# FENICS_HEAT

Repository for heat transport equation solution using fenics and some variations around it.

Clone the repo and navigate to the folder

```bash
git clone https://github.com/hax-l/fenics_heat.git && cd fenics_heat
```

## Instructions

Start a docker container (as indicated in [fenics doc](https://fenics.readthedocs.io/projects/containers/en/latest/jupyter.html) and [dolfinx doc](https://github.com/FEniCS/dolfinx))

```bash
docker run --name notebook -w /home/fenics -v $(pwd):/home/fenics/shared -d -p 127.0.0.1:8888:8888 dolfinx/lab:latest 'jupyter-notebook --ip=0.0.0.0'
```

On your browser, navigate to http://127.0.0.1:8888/ and open the jupyter notebook `Heat-Demo.ipynb`

### Problems with pyvista

Follow the instructions on https://github.com/pyvista/pyvista-support/issues/432#issuecomment-848598723 to compile and install vtk manually. (this worked for me arm64v8 docker image dolfinx/lab:latest-arm64)


## Useful links

- Dolfinx repository https://github.com/FEniCS/dolfinx
- Heat transport fenics example https://jorgensd.github.io/dolfinx-tutorial/chapter2/heat_equation.html
- Heat equation wikipedia https://en.wikipedia.org/wiki/Heat_equation
