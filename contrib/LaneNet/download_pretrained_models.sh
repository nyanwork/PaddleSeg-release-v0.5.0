#!/bin/bash

CURRENT_DIR=$(pwd)

if [ ! -d $CURRENT_DIR/pretrained_model ]; then
    mkdir $CURRENT_DIR/pretrained_model
fi

cd $CURRENT_DIR/pretrained_model/

BASE_URL="https://paddleseg.bj.bcebos.com/models/"


# Download initialize model

if [ "$1"x = "mobilenet_cityscapes"x ]; then

    echo "Download deeplabv3+ mobilenetv2 batch norm initialize model on cityscapes dataset"
    wget $BASE_URL/mobilenet_cityscapes.tgz --no-check-certificate
    echo "Uncompressing..."
    tar -xzf mobilenet_cityscapes.tgz

elif [ "$1"x = "deeplabv3p_xception65_cityscapes"x ]; then
    echo "Download deeplabv3+ Xception65 group norm initialize model on cityscapes dataset"
    wget $BASE_URL/deeplabv3p_xception65_cityscapes.tgz --no-check-certificate
    echo "Uncompressing..."
    tar -xzf deeplabv3p_xception65_cityscapes.tgz

elif [ "$1"x = "Xception65_deeplab_cityscapes"x ]; then
    BASE_URL="https://paddleseg.bj.bcebos.com/models/"
    echo "Download deeplabv3+ Xception65 batch norm initialize model on cityscapes dataset"
    wget $BASE_URL/Xception65_deeplab_cityscapes.tgz --no-check-certificate
    echo "Uncompressing..."
    tar -xzf Xception65_deeplab_cityscapes.tgz

else
    echo "no find initialize model your need: "$1
fi
