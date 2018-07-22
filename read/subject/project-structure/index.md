---
layout: page
title: Project Structure
description: >
  Project Structure
date: 2018-07-22 16:42:49 +0800
source_url: '/read/subject/project-structure/index.md'
---


## 範例說明


透過「[qtcreator](http://doc.qt.io/qtcreator/)」產生一個專案，例如「[base-widgets](https://github.com/foreachsam/book-lang-cpp-qt/tree/gh-pages/example/project-structure/base-widgets)」。

接著修改這個專案的資料夾組織架構，修改成新的專案「[demo-widgets](https://github.com/foreachsam/book-lang-cpp-qt/tree/gh-pages/example/project-structure/demo-widgets)」。

請對照「[base-widgets/base-widgets.pro](https://github.com/foreachsam/book-lang-cpp-qt/blob/gh-pages/example/project-structure/base-widgets/base-widgets.pro)」和「[demo-widgets/build.pro](https://github.com/foreachsam/book-lang-cpp-qt/blob/gh-pages/example/project-structure/demo-widgets/build.pro)」。


## 關於「[base-widgets](https://github.com/foreachsam/book-lang-cpp-qt/tree/gh-pages/example/project-structure/base-widgets)」 原先的資料夾結構

執行

``` sh
tree base-widgets/
```

顯示

```
base-widgets/
├── base-widgets.pro
├── main.cpp
├── mainwindow.cpp
├── mainwindow.h
└── mainwindow.ui

0 directories, 5 files
```


## 關於「[demo-widgets](https://github.com/foreachsam/book-lang-cpp-qt/tree/gh-pages/example/project-structure/demo-widgets)」 原先的資料夾結構

執行

``` sh
$ tree demo-widgets/ -a
```

顯示

```
demo-widgets/
├── asset
│   └── mainwindow.ui
├── build.pro
├── .gitignore
├── include
│   └── mainwindow.h
├── README.md
└── source
    ├── main.cpp
    └── mainwindow.cpp

3 directories, 7 files
```


## 關於「demo-widgets」 build後的資料夾結構


執行

``` sh
$ tree demo-widgets/ -a
```

執行

```
demo-widgets/
├── asset
│   └── mainwindow.ui
├── build
│   ├── bin
│   │   └── demo
│   ├── moc
│   │   ├── moc_mainwindow.cpp
│   │   └── moc_predefs.h
│   ├── obj
│   │   ├── main.o
│   │   ├── mainwindow.o
│   │   └── moc_mainwindow.o
│   └── ui
│       └── ui_mainwindow.h
├── build.pro
├── .gitignore
├── include
│   └── mainwindow.h
├── Makefile
├── .qmake.stash
├── README.md
└── source
    ├── main.cpp
    └── mainwindow.cpp

8 directories, 16 files

```


## 主要修改的 「[qmake Manual Variables](http://doc.qt.io/qt-5/qmake-variable-reference.html)」

### [SOURCES](http://doc.qt.io/qt-5/qmake-variable-reference.html#sources)

```
SOURCES += \
	source/main.cpp \
	source/mainwindow.cpp
```

### [HEADERS](http://doc.qt.io/qt-5/qmake-variable-reference.html#headers)

```
HEADERS += \
	include/mainwindow.h
```

### [FORMS](http://doc.qt.io/qt-5/qmake-variable-reference.html#forms)

```
FORMS += \
	asset/mainwindow.ui
```

### [INCLUDEPATH](http://doc.qt.io/qt-5/qmake-variable-reference.html#includepath)

```
INCLUDEPATH += \
	include
```

### [DESTDIR](http://doc.qt.io/qt-5/qmake-variable-reference.html#destdir)

```
DESTDIR = \
	build/bin
```

### [OBJECTS_DIR](http://doc.qt.io/qt-5/qmake-variable-reference.html#objects-dir)

```
OBJECTS_DIR = \
	build/obj
```

### [MOC_DIR](http://doc.qt.io/qt-5/qmake-variable-reference.html#moc-dir)

```
MOC_DIR = \
	build/moc
```

### [UI_DIR](http://doc.qt.io/qt-5/qmake-variable-reference.html#ui-dir)

```
UI_DIR = \
build/ui
```
