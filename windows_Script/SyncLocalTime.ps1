[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls11 -bor [Net.SecurityProtocolType]::Tls12
[Net.ServicePointManager]::SecurityProtocol
Get-Date
#Invoke-WebRequest -Uri https://ntp-a1.nict.go.jp/cgi-bin/time
#Set-Date (Invoke-WebRequest -Uri https://ntp-a1.nict.go.jp/cgi-bin/time).Headers.Date
