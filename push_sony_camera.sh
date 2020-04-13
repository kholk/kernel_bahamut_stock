#!/bin/bash

adb push drivers/misc/sony_camera/sony_camera.ko /sdcard/sony_camera.ko && adb shell "su -c mount -o rw,remount /vendor" && adb shell "su -c cp /sdcard/sony_camera.ko /vendor/lib/modules/sony_camera.ko"
