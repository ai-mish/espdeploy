#!/bin/bash

# Download the Linux Anaconda Distribution
#Use curl
curl -o ~/anaconda3.sh https://repo.anaconda.com/archive/Anaconda3-2019.10-Linux-x86_64.sh
#wget https://repo.anaconda.com/archive/Anaconda3-2019.10-Linux-x86_64.sh -O ~/anaconda3.sh

# Run the installer
bash ~/anaconda3.sh -b -p $HOME/anaconda3

### Run the conda init script to setup the shell
echo ". $HOME/anaconda3/etc/profile.d/conda.sh" >> $HOME/.bashrc
. $HOME/anaconda3/etc/profile.d/conda.sh
source $HOME/.bashrc

# Create a base Python3 environment separate from the base env
#conda create -y --name python3

# Install necessary Python packages
#conda activate python3
sudo mkdir /app
sudo chown $USER /app
cd /app
git clone https://github.com/sassoftware/python-esppy.git
git clone https://github.com/sukmmi/espdeploy.git
conda env create --file espdeploy/conda/conda.yaml

#conda env create --file conda2.yaml
#conda env update --file iotdemo/conda/iotdemo.yaml
conda activate iotdemo
echo "conda activate iotdemo" >> ~/.bashrc

echo "Installation completed - App files copied into /app"
