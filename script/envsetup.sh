#sudo pppoeconf

sudo apt-get install sun-java6-jdk
sudo update-alternatives --config java
#此时，会出现几个选项让你选，选择那个带sun,java的。

#配置JAVA环境变量:
sudo gedit /etc/environment

# 在其中添加如下两行：
CLASSPATH=.:/usr/lib/jvm/java-6-sun/lib
JAVA_HOME=/usr/lib/jvm/java-6-sun
#sudo gedit /etc/jvm
#将/usr/lib/jvm/java-6-sun
#这一行填入到配置块的顶部

#安装gcc,g++,make等
sudo apt-get install build-essential
#安装头文件和库
sudo apt-get install libc6-dev libstdc++6-4.0-dev
#安装libncurses5-dev
sudo apt-get install libncurses5-dev
#安装gdb 调试器-
sudo apt-get install gdb

#安装automake工具
sudo apt-get install automake autoconf autogen
#安装indent 调整C原始代码文件的格式。
sudo apt-get install indent      
#GNU libtool 是一个通用库支持脚本，将使用动态库的复杂性隐藏在统一、可移植的接口中。
sudo apt-get install libtool
#安装文档
sudo apt-get install binutils-doc cpp-doc gcc-4.0-doc gcc-doc glibc-doc libstdc++6-4.0-doc stl-manual cpp-4.0-doc

#mysql
sudo apt-get install libmysqld-dev python-mysqldb 
