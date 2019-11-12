# iotdemo

The aim of this project is to deploy Yolov2 Model and provide API interface to interact.

#Setup Environment
```
sudo bash install.sh
```

#Start ESP
```
conda activate iotdemo
bash iotdemo/esp/server/deploy.sh -a 30003 -p 30004 -m astore/resnet50_caffe.astore -s astore/schema.txt -d
```
