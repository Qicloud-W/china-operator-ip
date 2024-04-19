#!/usr/bin/env bash

rm ip-lists/*.txt
mv result/* ip-lists
cd ip-lists
tree -H . -P "*.txt|stat" -T "China 运营商IP段分类" > index.html
git config user.name GitHub Actions
git config user.email github-actions@github.com
git add .
git commit -m "update $(date +%Y-%m-%d)"
git push -q

