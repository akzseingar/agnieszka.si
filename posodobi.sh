#/bin/bash
set -e -x
pwd

# make a new version of the homepage
hugo

# go to publish folder
cd ../akzseingar.github.io
ls

# delete old files
rm -r about categories contact css img js portfolio sitemap.xml tags || true
cp -r ../agnieszka2017/public/* .

# comming and update
git add .
git commit -a -m "auto push" || true # can fail on no changes
git push
