#!/bin/bash

#clone the repo
git clone https://github.com/kesara/deepdreamer.git deepdreamer
cd deepdreamer

#install basic deps

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install python
curl -O http://python-distribute.org/distribute_setup.py
python distribute_setup.py
curl -O https://raw.github.com/pypa/pip/master/contrib/get-pip.py
python get-pip.py

#install numpy scipy Pillow
pip install numpy scipy Pillow

#download the prototxt file
curl -O https://github.com/BVLC/caffe/blob/master/models/bvlc_googlenet/deploy.prototxt

#add the line
echo "force_backward: true">>deploy.prototxt

#download the caffemodel
curl -O http://dl.caffe.berkeleyvision.org/bvlc_googlenet.caffemodel