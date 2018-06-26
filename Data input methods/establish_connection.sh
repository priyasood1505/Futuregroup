#!/bin/sh
 
#node Temperature\ sensor/establish_connection_temperature.js "HostName=Ignitedevices.azure-devices.net;DeviceId=temperaturesensor;SharedAccessKey=YXGs3doK4s1lyuwfk8F912bCJrqaUPkQX6RSMdtm/kA=" & node Vibration\ sensor/establish_connection_vibration.js "HostName=Ignitedevices.azure-devices.net;DeviceId=vibrationsensor;SharedAccessKey=JTHvEav/XjmRh/qkK6oMspKx0UX+1OUBkbgSfRAkK48=" & node Electricity\ current\ sensor/establish_connection_current.js "HostName=Ignitedevices.azure-devices.net;DeviceId=currentsensor;SharedAccessKey=JUk5DSRHZjH+ukX2eFmgw+qJGx0EA9vg1kdtB458oF8="

 
node Temperature\ sensor/establish_connection_temperature.js "HostName=futuregroup.azure-devices.net;DeviceId=Temperature;SharedAccessKey=uIsXHSSva9PwVmp58P0Sa83zSsCcGspYTzmTwFPM0/Q=" & node Power\ sensor/establish_connection_power.js "HostName=futuregroup.azure-devices.net;DeviceId=Power;SharedAccessKey=vMOBG/7JBmXD/JIrM3wY9yABUu0Hg4GH+u30+BkqtYs="
