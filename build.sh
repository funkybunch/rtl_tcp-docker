#!/bin/sh

sudo /usr/local/bin/docker build . -t reg.stark.ninja/stark/sdr
sudo /usr/local/bin/docker push reg.stark.ninja/stark/sdr