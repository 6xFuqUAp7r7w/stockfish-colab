#!/bin/bash
GOOS=darwin GOARCH=amd64 go build -o ./bin/colab-dlshogi-gd-for-mac 
GOOS=linux GOARCH=amd64 go build -o ./bin/colab-dlshogi-gd-for-linux
GOOS=windows GOARCH=amd64 go build -o ./bin/colab-dlshogi-gd-for-windows

cd bin
rm -rf *.zip
cp colab-dlshogi-gd-for-mac colab-dlshogi-gd
zip colab-dlshogi-gd.mac.zip colab-dlshogi-gd
cp colab-dlshogi-gd-for-linux colab-dlshogi-gd
zip colab-dlshogi-gd.linux.zip colab-dlshogi-gd
cp colab-dlshogi-gd-for-windows colab-dlshogi-gd.exe
zip colab-dlshogi-gd.windows.zip colab-dlshogi-gd.exe
rm colab-dlshogi-gd colab-dlshogi-gd.exe
cd -
