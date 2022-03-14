set GOOS=darwin
set GOARCH=amd64
go build -o ./bin/colab-stockfish-gd-for-mac 

set GOOS=linux
set GOARCH=amd64
go build -o ./bin/colab-stockfish-gd-for-linux

set GOOS=windows
set GOARCH=amd64
go build -o ./bin/colab-stockfish-gd-for-windows

pushd bin
del /q *.zip
copy /y colab-stockfish-gd-for-mac colab-stockfish-gd
tar -a -c -f colab-stockfish-gd.mac.zip colab-stockfish-gd
copy /y colab-stockfish-gd-for-linux colab-stockfish-gd
tar -a -c -f colab-stockfish-gd.linux.zip colab-stockfish-gd
copy /y colab-stockfish-gd-for-windows colab-stockfish-gd.exe
tar -a -c -f colab-stockfish-gd.windows.zip colab-stockfish-gd.exe
del /q colab-stockfish-gd colab-stockfish-gd.exe
popd
