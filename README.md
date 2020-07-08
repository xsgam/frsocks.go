### Build frsocks on Windows 
- install go1.14.4.windows-amd64.msi
- install tdm64-gcc-9.2.0.exe
~~~
https://jmeubank.github.io/tdm-gcc/download/
https://github.com/jmeubank/tdm-gcc/releases/download/v9.2.0-tdm64-1/tdm64-gcc-9.2.0.exe
~~~
- Run my_build.bat to build Go executables.

### useage

- 正向代理
~~~
frsocks -sockstype fsocks -listen 1080
~~~

- 反向代理
~~~
client:
frsocks -sockstype rsocks -listen 1111 -socks 127.0.0.1:2222

Transit server:
frsocks -sockstype rsocks -connect 1.1.1.1:1111
~~~

connect proxy: client 2222

### from 3gstudent's Homework-of-Go
Go code examples of my blog. 

渗透基础——使用Go语言开发socks代理工具
https://3gstudent.github.io/3gstudent.github.io/%E6%B8%97%E9%80%8F%E5%9F%BA%E7%A1%80-%E4%BD%BF%E7%94%A8Go%E8%AF%AD%E8%A8%80%E5%BC%80%E5%8F%91socks%E4%BB%A3%E7%90%86%E5%B7%A5%E5%85%B7/


### frsocks.go

reference:https://github.com/brimstone/rsocks

Add forward socks5 mode and some changes to the reference.

Support forward and reverse socks5 proxy.
