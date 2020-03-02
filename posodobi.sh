#/bin/bash
set -e -x
pwd

git add .
git commit -a -m "auto push" || true # can fail on no changes
git push
