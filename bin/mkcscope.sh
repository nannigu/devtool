#!/bin/sh
rm -rf cscope.files cscope.out
find . \( -name '*.c' -o -name '*.cpp' -o -name '*.cc' -o -name '*.h' -o -name '*.s' -o -name '*.S' -o -name '*.py' -o -name 'SConstruct' -o -name '*.sh' -o -name '*.java' -o -name '*.qml' \) -print > cscope.files
cscope -C -i cscope.files

