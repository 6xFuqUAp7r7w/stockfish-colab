set GOOS=darwin
set GOARCH=amd64
go build -o ./bin/colab-dlshogi-gd-for-mac 

set GOOS=linux
set GOARCH=amd64
go build -o ./bin/colab-dlshogi-gd-for-linux

set GOOS=windows
set GOARCH=amd64
go build -o ./bin/colab-dlshogi-gd-for-windows

pushd bin
del /q *.zip
copy /y colab-dlshogi-gd-for-mac colab-dlshogi-gd
tar -a -c -f colab-dlshogi-gd.mac.zip colab-dlshogi-gd
copy /y colab-dlshogi-gd-for-linux colab-dlshogi-gd
tar -a -c -f colab-dlshogi-gd.linux.zip colab-dlshogi-gd
copy /y colab-dlshogi-gd-for-windows colab-dlshogi-gd.exe
tar -a -c -f colab-dlshogi-gd.windows.zip colab-dlshogi-gd.exe
del /q colab-dlshogi-gd colab-dlshogi-gd.exe
popd
