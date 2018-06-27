#!/usr/bin/bash

stty -opost -onlcr -isig -icanon -iexten -echo -echoe -echok -echoctl -echoke ospeed 115200 ispeed 115200 -F $1
