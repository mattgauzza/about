#! /bin/sh

# A useful script to download the latest version of font-awesome

rm -rf node_modules package.json package-lock.json
npm install font-awesome

rm -rf _sass/font-awesome
mkdir -p _sass/font-awesome
cp -r node_modules/font-awesome/scss/* _sass/font-awesome
touch _sass/font-awesome/__DO_NOT_MODIFY

rm -rf node_modules