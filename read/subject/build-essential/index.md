---
layout: page
title: Build Essential
description: >
  Build Essential
date: 2018-07-22 18:24:33 +0800
source_url: '/read/subject/build-essential/index.md'
---


## Ubuntu 18.04


### build-essential

``` sh
$ sudo apt-get install build-essential
```


* [https://help.ubuntu.com/community/CompilingEasyHowTo](https://help.ubuntu.com/community/CompilingEasyHowTo)
* [https://help.ubuntu.com/community/MetaPackages](https://help.ubuntu.com/community/MetaPackages)
* [https://wiki.debian.org/BuildingTutorial](https://wiki.debian.org/BuildingTutorial)


### qt5-default

``` sh
$ sudo apt-get install qt5-default
```

* [http://zetcode.com/gui/qt5/introduction/](http://zetcode.com/gui/qt5/introduction/)


## explore package

執行

``` sh
$ apt-cache show qt5-default
```

執行

``` sh
$ apt-cache showsrc qt5-default
```

## pkg-config

接下來，了解如何搭配「[pkg-config](pkg-config)」來編譯。
