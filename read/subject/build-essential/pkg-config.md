---
layout: page
title: Build with pkg-config
description: >
  Build with pkg-config
date: 2018-07-22 18:43:35 +0800
source_url: '/read/subject/build-essential/pkg-config.md'
---


延續上一篇「[Build Essential](/book-lang-cpp-qt/read/subject/build-essential)」，


## qt5-default

執行

``` sh
$ apt-cache show qt5-default | grep Depends
```

顯示

```
Depends: qtbase5-dev, qtchooser (>= 55-gc9562a1-1~)
```

## qtbase5-dev

執行

``` sh
$ dpkg -L qtbase5-dev | grep pc
```

顯示

```
/usr/include/x86_64-linux-gnu/qt5/QtGui/qpixmapcache.h
/usr/lib/x86_64-linux-gnu/pkgconfig/Qt5Concurrent.pc
/usr/lib/x86_64-linux-gnu/pkgconfig/Qt5Core.pc
/usr/lib/x86_64-linux-gnu/pkgconfig/Qt5DBus.pc
/usr/lib/x86_64-linux-gnu/pkgconfig/Qt5Gui.pc
/usr/lib/x86_64-linux-gnu/pkgconfig/Qt5Network.pc
/usr/lib/x86_64-linux-gnu/pkgconfig/Qt5OpenGLExtensions.pc
/usr/lib/x86_64-linux-gnu/pkgconfig/Qt5PrintSupport.pc
/usr/lib/x86_64-linux-gnu/pkgconfig/Qt5Sql.pc
/usr/lib/x86_64-linux-gnu/pkgconfig/Qt5Test.pc
/usr/lib/x86_64-linux-gnu/pkgconfig/Qt5Widgets.pc
/usr/lib/x86_64-linux-gnu/pkgconfig/Qt5Xml.pc
```

## /usr/lib/x86_64-linux-gnu/pkgconfig/Qt5Core.pc

執行

``` sh
$ cat /usr/lib/x86_64-linux-gnu/pkgconfig/Qt5Core.pc
```

顯示

```
prefix=/usr
exec_prefix=${prefix}
libdir=${prefix}/lib/x86_64-linux-gnu
includedir=${prefix}/include/x86_64-linux-gnu/qt5

host_bins=${prefix}/lib/qt5/bin
qt_config=shared release c++11 c++14 c++1z concurrent dbus reduce_exports reduce_relocations release_tools stl properties animation textcodec big_codecs clock-monotonic codecs textdate datestring doubleconversion eventfd filesystemiterator filesystemwatcher gestures glib itemmodel proxymodel identityproxymodel inotify library mimetype process statemachine regularexpression settings sharedmemory sortfilterproxymodel stringlistmodel systemsemaphore temporaryfile threadsafe-cloexec translation xmlstream xmlstreamreader xmlstreamwriter

Name: Qt5 Core
Description: Qt Core module
Version: 5.9.5
Libs: -lQt5Core
Cflags: -I${includedir}/QtCore -I${includedir}
```

## pkg-config

執行

``` sh
$ pkg-config --libs Qt5Core
```

顯示

```
-lQt5Core
```

執行

``` sh
$ pkg-config --cflags Qt5Core
```

顯示

```
-I/usr/include/x86_64-linux-gnu/qt5/QtCore -I/usr/include/x86_64-linux-gnu/qt5
```

執行

``` sh
$ pkg-config --libs --cflags Qt5Core
```

顯示

```
-I/usr/include/x86_64-linux-gnu/qt5/QtCore -I/usr/include/x86_64-linux-gnu/qt5 -lQt5Core
```

## Howto build

### Create main.cpp

執行下面指令，產生一個檔案「main.cpp」。

``` sh
cat > main.cpp << EOF
#include <QtCore>

int main(int argc, char *argv[])
{
	return 0;
}

EOF
```

也就是「main.cpp」的內容如下

```
#include <QtCore>

int main(int argc, char *argv[])
{
	return 0;
}
```

### Compile

執行下面指令編譯

``` sh
$ g++ -o app main.cpp -fPIC $(pkg-config --libs --cflags Qt5Core)
```

## 範例

* [example/build-howto/pkg-config/QtCore/demo](/book-lang-cpp-qt/example/build-howto/pkg-config/QtCore/demo)


## 相關參考

* [https://developer.gnome.org/glib/stable/glib-compiling.html](https://developer.gnome.org/glib/stable/glib-compiling.html)
* [https://developer.gnome.org/gtk3/stable/gtk-compiling.html](https://developer.gnome.org/gtk3/stable/gtk-compiling.html)
* [http://zetcode.com/gui/qt5/introduction/](http://zetcode.com/gui/qt5/introduction/)
