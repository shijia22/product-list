#!/usr/bin/env sh

# abort on errors
set -e

originUrl=$(git config --get remote.origin.url)

nowStatus=${originUrl:0:5}
echo $nowStatus
if [ $nowStatus = 'https' ]
then
  echo '傳輸方式採用 HTTPs 模式'
  echo '目前遠端分支 URL：'$originUrl
else
  echo '傳輸方式採用 SSH 模式'
  echo '目前遠端分支 URL：'$originUrl
fi

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git checkout -b main
git add -A
git commit -m 'deploy'

git push -f $originUrl main:gh-pages
# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git main

# if you are deploying to https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git main:gh-pages

cd -