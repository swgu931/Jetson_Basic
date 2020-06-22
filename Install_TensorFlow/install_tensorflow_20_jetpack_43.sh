#!/bin/bash
cd 
python3 -m venv .venv_tensorflow_20
echo "alias TF20='source ~/.venv_tensorflow_20/bin/activate'" >> ~/.bashrc
source ~/.venv_tensorflow_20/bin/activate
sudo apt-get update
sudo apt-get install libhdf5-serial-dev hdf5-tools libhdf5-dev zlib1g-dev zip libjpeg8-dev liblapack-dev libblas-dev gfortran

ln -s /usr/local/lib/python3.6/dist-packages/cv2.cpython-36m-aarch64-linux-gnu.so ~/.venv_tensorflow_1x/lib/python3.6/site-packages/cv2.so

sudo pip3 install -U pip testresources setuptools wheel
sudo pip3 install -U numpy==1.16.1 future==0.17.1 mock==3.0.5 h5py==2.9.0 keras_preprocessing==1.0.5 keras_applications==1.0.8 gast==0.2.2 futures protobuf pybind11
sudo pip3 install --extra-index-url https://developer.download.nvidia.com/compute/redist/jp/v43 tensorflow