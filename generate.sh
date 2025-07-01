#!/usr/bin/sh
echo Generating dummy dtbo image for mobvoi-rover
echo Compiling stub dtb
dtc -I dts -o dtbo.dtb dtbo.dts
echo Squashing dtb with header
cat header.img dtbo.dtb > dtbo.img
echo Complete. Now you can flash dtbo.img to dtbo and dtbobak partitions
