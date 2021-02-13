[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls11 -bor [Net.SecurityProtocolType]::Tls12
[Net.ServicePointManager]::SecurityProtocol
# TypeScriptの動作テストを行う
mkdir c:\typeScript_210213\
cd c:\typeScript_210213\
git init

git config --global user.email "waka_taka@wakataka.mixh.jp"
git config --global user.name "waka_prings"

git config --global alias.ci commit
git config --global alias.st status
git config --global alias.br branch
git config --global alias.co checkout

git commit -m git commit -m "ansible test 2021-02-13 009"
git branch -M main
git remote add origin https://github.com/wakaprings/TypeScriptTraining.git
