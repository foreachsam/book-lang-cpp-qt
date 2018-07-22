

## Howto Build

執行

``` sh
$ ./build.sh
```

會產生一個提示訊息如下


```
In file included from /usr/include/x86_64-linux-gnu/qt5/QtCore/QtCore:4:0,
                 from main.cpp:1:
/usr/include/x86_64-linux-gnu/qt5/QtCore/qglobal.h:1135:4: error: #error "You must build your code with position independent code if Qt was built with -reduce-relocations. " "Compile your code with -fPIC (-fPIE is not enough)."
 #  error "You must build your code with position independent code if Qt was built with -reduce-relocations. "\
```

所以編譯指令要加上「-fPIC」，請參考另一個成功編譯的[專案](../demo)。

原本是

``` sh
$ g++ -o app main.cpp $(pkg-config --libs --cflags Qt5Core)
```

要改成

``` sh
$ g++ -o app main.cpp -fPIC $(pkg-config --libs --cflags Qt5Core)
```

## Note

* https://foreachsam.github.io/book-lang-cpp-qt//read/subject/build-essential/pkg-config
