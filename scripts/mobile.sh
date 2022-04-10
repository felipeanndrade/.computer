adb shell ip route | awk '{print $9}'
adb tcpip 5555
adb connect DEVICE_IP:5555
scrcpy
