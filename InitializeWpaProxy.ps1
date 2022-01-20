# Clock down
echo starting...
echo 'Please close manually if the windows no response.'
# Boot app
# Please paste the path that app you want to run down blow the example
# For example:
# C:\Users\IamUsername\AppData\Local\Microsoft\WindowsApps\MicrosoftCorporationII.WindowsSubsystemForAndroid_8wekyb3d8bbwe\WsaClient.exe /launch wsa://eu.kanade.tachiyomi.sy



# Connect to the wpa
echo 'App started'
adb connect 127.0.0.1:58526

# Get host ip
# Choose the interface and ip version your host using
# As my machine is using wifi and ipv4, comment the other type you don't need
# For example:
$interfaceType = Wi-Fi
#$interfaceType = Ethernet
$ipv = IPv4
#$ipv = IPv6

echo 'getting host ip...'
$myIp = Get-netipAddress | Where-Object {
  $_.InterfaceAlias -eq $interfaceType -and $_.AddressFamily -eq $ipv
} | Select-Object IPAddress | Format-Table -HideTableHeaders | Out-String
$myIp = $myIp.Trim()

# Set port
# Please change the port number that match your host http proxy port
# For example:
# $myPort = 1234
$myPort = yourport

# Set porxyAddr
$porxyAddr = $myIp+':'+$myPort

# Set following proxy 
adb shell settings put global http_proxy $porxyAddr

echo 'The following proxy is'
adb shell settings get global http_proxy

Timeout /T 3
exit