#! /bin/sh

# A useful script to download the latest version of bootstrap and jquery

rm -rf node_modules package.json package-lock.json
npm install mdb-ui-kit 

rm -rf _sass/mdb
mkdir -p _sass/mdb
cp -r node_modules/mdb-ui-kit/src/scss/* _sass/mdb
touch _sass/mdb/__DO_NOT_MODIFY

rm -rf node_modules
