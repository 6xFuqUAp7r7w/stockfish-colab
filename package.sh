#!/bin/bash
GOOS=darwin GOARCH=amd64 go build -o ./bin/colab-stockfish-gd-for-mac 
GOOS=linux GOARCH=amd64 go build -o ./bin/colab-stockfish-gd-for-linux
GOOS=windows GOARCH=amd64 go build -o ./bin/colab-stockfish-gd-for-windows

cd bin
rm -rf *.zip
cp colab-stockfish-gd-for-mac colab-stockfish-gd
zip colab-stockfish-gd.mac.zip colab-stockfish-gd
cp colab-stockfish-gd-for-linux colab-stockfish-gd
zip colab-stockfish-gd.linux.zip colab-stockfish-gd
cp colab-stockfish-gd-for-windows colab-stockfish-gd.exe
zip colab-stockfish-gd.windows.zip colab-stockfish-gd.exe
rm colab-stockfish-gd colab-stockfish-gd.exe
cd -
