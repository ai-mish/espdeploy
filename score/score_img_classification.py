import os
import re
import sys
import time
import json
import errno
import socket
import signal
import logging
import argparse
#import modelingApi
import csv
sys.path.append("/app/python-esppy")
import esppy
from esppy.plotting import StreamingImages

ESP_HOST='127.0.0.1'
ESP_PORT=30003

def score():


    imgpath=args.imgpath

    #imageBufferBase64 = data['events'][0]['event']['_image_']['_image_']
    #nparr = np.frombuffer(base64.b64decode(imageBufferBase64), dtype=np.uint8)

    # connect to the esp server
    try:
        esp = esppy.ESP(ESP_HOST, ESP_PORT)
    except Exception as e:
        print("Can't connect to ESP server: ")
        print(e)

    print(esp.server_info)

    out=esp.get_windows()

    print(out)




if __name__ == '__main__':
    argparser = argparse.ArgumentParser(description='Object Detection')
    argparser.add_argument('-i', dest='imgpath', help='Input Image full path', required=False)
    argparser.add_argument('-d', dest='debug', help='enable debug', action="store_true")

    args = argparser.parse_args()
    try:
        score()
    # Clean up any child processes before exit
    except KeyboardInterrupt:
        sys.exit(0)
    except SystemExit:
        raise
