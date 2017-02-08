#!/bin/sh
rm -rf cscope.files cscope.out tags

#ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .

find $* $PWD \( -name "*.c" -o -name "*.cpp" -o -name "*.C"  -o -name "*.java" -o -name "*.rs" -o -name "*.aidl" -o -name "*.h" -o -name "*.cc" -o -name "*.s" -o -name "*.S" -o -name "*.hpp" -o -name "*.v" \) -print > cscope.files

cscope -b -k -i cscope.files
