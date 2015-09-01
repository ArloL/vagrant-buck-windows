#!/bin/sh

set -e
set -x

wget -c --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" -O jdk-8u60-windows-i586.exe http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jdk-8u60-windows-i586.exe
shasum --check jdk-8u60-windows-i586.exe.sha1

wget -c --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" -O jdk-8u60-windows-x64.exe http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jdk-8u60-windows-x64.exe
shasum --check jdk-8u60-windows-x64.exe.sha1

wget -N http://www.eu.apache.org/dist/ant/binaries/apache-ant-1.9.6-bin.zip
shasum --check apache-ant-1.9.6-bin.zip.sha1

wget -N https://www.python.org/ftp/python/2.7.10/python-2.7.10.msi
shasum --check python-2.7.10.msi.sha1

wget -N https://www.python.org/ftp/python/2.7.10/python-2.7.10.amd64.msi
shasum --check python-2.7.10.amd64.msi.sha1

wget -c https://github.com/git-for-windows/git/releases/download/v2.5.1.windows.1/Git-2.5.1-32-bit.exe
shasum --check Git-2.5.1-32-bit.exe.sha1

wget -c https://github.com/git-for-windows/git/releases/download/v2.5.1.windows.1/Git-2.5.1-64-bit.exe
shasum --check Git-2.5.1-64-bit.exe.sha1
