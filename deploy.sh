#!/bin/bash
VERSION=$1

rm temp -rf
mkdir temp && cd temp 
wget https://github.com/crossuo/crossuo/releases/download/$VERSION/crossuo-linux-v$VERSION.tgz
tar -zxvf crossuo-linux-v$VERSION.tgz
cp crossuo-linux-v$VERSION/* ../release/linux/crossuo/

wget https://github.com/crossuo/crossuo/releases/download/$VERSION/crossuo-win64-v$VERSION.zip
mkdir crossuo-win64-v$VERSION/ && cd crossuo-win64-v$VERSION/
unzip ../crossuo-win64-v$VERSION.zip
cd ..
cp crossuo-win64-v$VERSION/* ../release/win64/crossuo/

wget https://github.com/crossuo/crossuo/releases/download/$VERSION/crossuo-osx-v$VERSION.zip
unzip crossuo-osx-v$VERSION.zip
cp CrossUO.app/Contents/MacOS/* ../release/osx/crossuo/

cd ..

./xuomanager