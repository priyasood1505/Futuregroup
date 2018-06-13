#!/bin/sh

#  establish_connection.sh
#  

#  
#node Temperature\ sensor/establish_connection_temperature.js "HostName=Ignitedevices.azure-devices.net;DeviceId=temperaturesensor;SharedAccessKey=YXGs3doK4s1lyuwfk8F912bCJrqaUPkQX6RSMdtm/kA=" & node Vibration\ sensor/establish_connection_vibration.js "HostName=Ignitedevices.azure-devices.net;DeviceId=vibrationsensor;SharedAccessKey=JTHvEav/XjmRh/qkK6oMspKx0UX+1OUBkbgSfRAkK48=" & node Electricity\ current\ sensor/establish_connection_current.js "HostName=Ignitedevices.azure-devices.net;DeviceId=currentsensor;SharedAccessKey=JUk5DSRHZjH+ukX2eFmgw+qJGx0EA9vg1kdtB458oF8="

#node Temperature\ sensor/establish_connection_temperature.js "HostName=IgniteDemosIotHub.azure-devices.net;DeviceId=temperaturesensor;SharedAccessKey=uspH/YuPbri/l9Q2Bv23G0CQQo2E+D3Ld+cwCg7rQoo=" & node Vibration\ sensor/establish_connection_vibration.js "HostName=IgniteDemosIotHub.azure-devices.net;DeviceId=vibrationsensor;SharedAccessKey=BmWqIRcKdEmZPpXPoAa1rJQa0CozaHE4NFWQlKLsN20=" & node Electricity\ current\ sensor/establish_connection_current.js "HostName=IgniteDemosIotHub.azure-devices.net;DeviceId=currentsensor;SharedAccessKey=4pApZqt2qYoD7nHnZ2J4sFjx9klMb7va4oK3STnf23w="

node Temperature\ sensor/establish_connection_temperature.js "HostName=futuregroup.azure-devices.net;DeviceId=Temperature;SharedAccessKey=uIsXHSSva9PwVmp58P0Sa83zSsCcGspYTzmTwFPM0/Q="

