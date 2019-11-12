# Deploy Models in ESP

The aim of this project is to deploy Deep Neural Network Model and serve it using API.

# Setup Environment

1. Install SAS ESP

2. Update image size as required by Model in server.py

  ```
  resize = esp.calculate.ImageProcessing(schema=('id*:int64', '_image_:blob'), function="resize", width=224, height=224)
  ```

3. Setup python and install this application using the following script

  ```
  sudo bash install.sh
  ```

4. Schema for model in repository is already created. Create new Schema file for new model using the following tool.

  ```
  bash util/read_astore_schema astore/new_model.astore
  ```
  
# Deploy and Start ESP
```
bash deploy.sh -a 30003 -p 30004 -m astore/resnet50_caffe.astore -s astore/schema.txt -d
```
