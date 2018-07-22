---
layout: page
title: Build with qmake
description: >
  Build with qmake
date: 2018-07-22 19:56:08 +0800
source_url: '/read/subject/build-essential/pkg-config.md'
---


延續上一篇「[Build with pkg-config](/book-lang-cpp-qt/read/subject/build-essential/pkg-config)」，

接下來，了解如何搭配「qmake」來編譯。


## 執行步驟


### step-00

執行下面指令，建立資料夾「demo」，並且切換到資料夾「demo」。

``` sh
mkdir -p demo

cd demo
```


### step-01

執行下面指令，產生檔案「main.cpp」。

``` sh
cat > main.cpp << EOF
#include <QtCore>

int main(int argc, char *argv[])
{
	return 0;
}

EOF
```

也就是檔案「main.cpp」的內容如下

``` cpp
#include <QtCore>

int main(int argc, char *argv[])
{
	return 0;
}
```


### step-02

執行下面指令，產生檔案「demo.pro」。

``` sh
qmake -project
```


### step-03

執行下面指令，產生檔案「Makefile」。

``` sh
qmake
```


## step-04

執行下面指令，進行「編譯」。

``` sh
make
```


## step-05

執行編譯好的執行檔「demo」。

``` sh
./demo
```
