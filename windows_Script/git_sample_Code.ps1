[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls11 -bor [Net.SecurityProtocolType]::Tls12
[Net.ServicePointManager]::SecurityProtocol
# 既存ディレクトリの削除
Remove-Item -Path c:\git_test -Recurse -Force

# git cloneを行う
mkdir c:\git_test\
cd c:\git_test\
git clone https://github.com/wakaprings/WindowsAnsible.git

# git TypeScript動作確認を行う
# Remove-Item -Path c:\TypeScriptSample -Recurse -Force
mkdir c:\IISTest\
cd c:\IISTest\
git init
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.br branch
git config --global alias.co checkout

# "Default Web Site"Webサイトの起動状態を確認する
Get-WebsiteState -Name "Default Web Site"
