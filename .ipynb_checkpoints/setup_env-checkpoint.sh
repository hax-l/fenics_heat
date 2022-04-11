#!/bin/bash
apt-get update
apt-get -y install aptitude
aptitude install python3-getfem++

apt install -y build-essential mesa-common-dev mesa-utils freeglut3-dev ninja-build git cmake
git clone --recursive https://gitlab.kitware.com/vtk/vtk.git

mkdir build && cd build
cmake -GNinja -DVTK_WHEEL_BUILD=ON -DVTK_WRAP_PYTHON=ON ../vtk/
ninja
python3 setup.py bdist_wheel
pip3 -y install /home/*name*/build/dist/vtk-9.0.20210525-cp38-cp38-linux_aarch64.whl


pip3 -y install pyvista --no-dependencies
pip3 -y install imageio 
pip3 install --no-input appdirs
pip3 install --no-input image.io
pip3 install --no-input scooby
pip3 install --no-input transforms3d
pip3 install --no-input ipygany

pip install PyVirtualDisplay
pip install EasyProcess
apt-get install xvfb