#!/bin/sh
set -e
set -x

rm -rf .git .git* projects

git init

git external

git external list

git external add git://github.com/obazoud/statusdashboard.git projects/statusdashboard origin/master
cat .gitignore
cat .gitexternals
git external add git://github.com/obazoud/statusdashboard-client.git projects/statusdashboard-client origin/master
cat .gitignore
cat .gitexternals
git external add git://github.com/obazoud/statusdashboard-chrome.git projects/statusdashboard-chrome origin/master
cat .gitignore
cat .gitexternals

git external list

git external init
git external update
git external status

git external cmd 'git fetch'

git external rm projects/statusdashboard
cat .gitignore
cat .gitexternals
git external rm projects/statusdashboard-client
cat .gitignore
cat .gitexternals
git external rm projects/statusdashboard-chrome
cat .gitignore
cat .gitexternals

git external list

#rm -rf .git .git*