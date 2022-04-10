# FENICS_HEAT

Repository for heat transport equation solution using fenics and some variations around it.

## Instructions

Start a docker container (as indicated in [fenics doc](https://fenics.readthedocs.io/projects/containers/en/latest/jupyter.html))

```bash
docker run --name notebook -w /home/fenics -v $(pwd):/home/fenics/shared -d -p 127.0.0.1:8888:8888 quay.io/fenicsproject/stable 'jupyter-notebook --ip=0.0.0.0'
```

On your browser, navigate to http://127.0.0.1:8888/ and open the jupyter notebook `Heat-Demo.ipynb`


