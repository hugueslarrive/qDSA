#!/bin/sh
DEVICE=/dev/ttyUSB0
DIR=`dirname $0`

stty -F $DEVICE raw icanon eof \^d 9600
st-flash write $DIR/stack.bin 0x8000000
cat < $DEVICE
