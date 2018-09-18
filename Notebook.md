### JS build Desktop Apps

```
git clone https://github.com/electron/electron-quick-start
cd electron-quick-start
npm install
npm start
```

### PS插件

- http://nullice.com/
- http://coolketang.com/
- http://wwwimages.adobe.com/www.adobe.com/content/dam/acom/en/devnet/photoshop/pdfs/photoshop-cc-javascript-ref-2015.pdf
- [Adobe SDK](https://console.adobe.io/downloads/ps)
- [Srcipting](https://www.adobe.com/devnet/photoshop/scripting.html)

> CEP (Common Extensibility Platform) 有操作的插件 https://github.com/Adobe-CEP/Getting-Started-guides

六步创建CEP extension



Photoshop 中英文翻译 http://hermeson.lofter.com/post/2a00ce_25e1e31



命令行

```shell
>bin/img2webp 
>bin/webpmux -frame abc_0000_a1.png -frame abc_0002_a3.png -frame abc_0002_a3.png -loop 21 -bgcolor 255,255,255,255 -o anim_container.webp
```



### NDK-BUILD命令行参数

\1. ndk-build NDK_LOG=1

用于配置LOG级别，打印ndk编译时的详细输出信息

\2. ndk-build NDK_PROJECT_PATH=.

指定NDK编译的代码路径为当前目录，如果不配置，则必须把工程代码放到Android工程的jni目录下

\3. ndk-build APP_BUILD_SCRIPT=./Android.mk

指定NDK编译使用的Android.mk文件

\4. ndk-build NDK_APP_APPLICATION_MK=./Application.mk

指定NDK编译使用的application.mk文件

\5. ndk-build clean

清除所有编译出来的临时文件和目标文件

\6. ndk-build -B

强制重新编译已经编译完成的代码

\7. ndk-build NDK_DEBUG=1

执行 debug build

\8. ndk-build NDK_DEBUG=0

执行 release build

\9. ndk-build NDK_OUT=./mydir

指定编译生成的文件的存放位置

\10. ndk-build -C /opt/myTest/

到指定目录编译native代码