#! /bin/sh

# A useful script to download the latest version of bootstrap and jquery

rm -rf node_modules package.json package-lock.json
npm install bootstrap@5.3.3

rm -rf _sass/bootstrap
mkdir -p _sass/bootstrap
cp -r node_modules/bootstrap/scss/* _sass/bootstrap
touch _sass/bootstrap/__DO_NOT_MODIFY

rm -rf node_modules
