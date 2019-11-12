# Deploy Models in ESP

The aim of this project is to deploy Deep Neural Network Model and serve it using API.

# Setup Environment

1. Install SAS ESP
2. Setup python and install this application using the following script

```
sudo bash install.sh
```

# Deploy and Start ESP
```
bash deploy.sh -a 30003 -p 30004 -m astore/resnet50_caffe.astore -s astore/schema.txt -d
```
