# Dart

- Dart https://www.dartlang.org/ 

# Flutter

### Introduction

Flutter 是 Google 用以帮助开发者在 iOS 和 Android 两个平台开发高质量原生 UI 的移动 SDK。Flutter 兼容现有的代码，免费且开源，在全球开发者中广泛被使用。

### Get Started

使用镜像

```
上海交通大学 Linux 用户组
FLUTTER_STORAGE_BASE_URL: https://mirrors.sjtug.sjtu.edu.cn
PUB_HOSTED_URL: https://dart-pub.mirrors.sjtug.sjtu.edu.cn
Flutter 社区
FLUTTER_STORAGE_BASE_URL: https://storage.flutter-io.cn
PUB_HOSTED_URL: https://pub.flutter-io.cn
```

安装

```shell
> export PUB_HOSTED_URL=https://pub.flutter-io.cnexport FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn 
> export PUB_HOSTED_URL=https://dart-pub.mirrors.sjtug.sjtu.edu.cn
FLUTTER_STORAGE_BASE_URL=https://mirrors.sjtug.sjtu.edu.cn
> git clone -b dev https://github.com/flutter/flutter.git
> export PATH="PWD/flutter/bin:PATH” 
> cd ./flutter 
> flutter doctor
```

Flutter github版本

```Text
From https://github.com/flutter/flutter
   ab4506cad..020e0ef55  dev                    -> origin/dev
 + 359d0a743...ee94a88ca Hixie-patch-1          -> origin/Hixie-patch-1  (forced update)
 * [new branch]          abarth-patch-1         -> origin/abarth-patch-1
   2e449f06f..553fc4264  alpha                  -> origin/alpha
   8f65fec5f..c7ea3ca37  beta                   -> origin/beta
 * [new branch]          flutter_module         -> origin/flutter_module
   d45c8fded..a18f5e84a  master                 -> origin/master
 * [new branch]          regenAndroidFiles      -> origin/regenAndroidFiles
 * [new branch]          revert-18465-skippaint -> origin/revert-18465-skippaint
 * [new tag]             v0.5.1                 -> v0.5.1
 * [new tag]             v0.5.5                 -> v0.5.5
 * [new tag]             v0.1.1                 -> v0.1.1
 * [new tag]             v0.1.2                 -> v0.1.2
 * [new tag]             v0.1.3                 -> v0.1.3
 * [new tag]             v0.1.4                 -> v0.1.4
 * [new tag]             v0.1.5                 -> v0.1.5
 * [new tag]             v0.1.6                 -> v0.1.6
 * [new tag]             v0.1.7                 -> v0.1.7
 * [new tag]             v0.1.8                 -> v0.1.8
 * [new tag]             v0.1.9                 -> v0.1.9
 * [new tag]             v0.2.0                 -> v0.2.0
 * [new tag]             v0.2.1                 -> v0.2.1
 * [new tag]             v0.2.10                -> v0.2.10
 * [new tag]             v0.2.11                -> v0.2.11
 * [new tag]             v0.2.2                 -> v0.2.2
 * [new tag]             v0.2.3                 -> v0.2.3
 * [new tag]             v0.2.4                 -> v0.2.4
 * [new tag]             v0.2.5                 -> v0.2.5
 * [new tag]             v0.2.6                 -> v0.2.6
 * [new tag]             v0.2.7                 -> v0.2.7
 * [new tag]             v0.2.8                 -> v0.2.8
 * [new tag]             v0.2.9                 -> v0.2.9
 * [new tag]             v0.3.0                 -> v0.3.0
 * [new tag]             v0.3.1                 -> v0.3.1
 * [new tag]             v0.3.2                 -> v0.3.2
 * [new tag]             v0.3.3                 -> v0.3.3
 * [new tag]             v0.3.4                 -> v0.3.4
 * [new tag]             v0.3.5                 -> v0.3.5
 * [new tag]             v0.3.6                 -> v0.3.6
 * [new tag]             v0.4.0                 -> v0.4.0
 * [new tag]             v0.4.1                 -> v0.4.1
 * [new tag]             v0.4.2                 -> v0.4.2
 * [new tag]             v0.4.3                 -> v0.4.3
 * [new tag]             v0.4.4                 -> v0.4.4
 * [new tag]             v0.5.0                 -> v0.5.0
 * [new tag]             v0.5.2                 -> v0.5.2
 * [new tag]             v0.5.3                 -> v0.5.3
 * [new tag]             v0.5.4                 -> v0.5.4
```

切换版本

```shell
> git checked dev //-b强制切换,不推荐
```

检查flutter配置情况

```shell
> $ flutter doctor                                                      
Doctor summary (to see all details, run flutter doctor -v):
[✓] Flutter (Channel dev, v0.5.5, on Mac OS X 10.12.6 16G29, locale en-CN)
[!] Android toolchain - develop for Android devices (Android SDK 28.0.0)
    ! Some Android licenses not accepted.  To resolve this, run: flutter doctor --android-licenses
[!] iOS toolchain - develop for iOS devices (Xcode 9.2)
    ! CocoaPods out of date (1.5.0 is recommended).
        CocoaPods is used to retrieve the iOS platform side's plugin code that responds to your plugin usage on the Dart side.
        Without resolving iOS dependencies with CocoaPods, plugins will not work on iOS.
        For more info, see https://flutter.io/platform-plugins
      To upgrade:
        brew upgrade cocoapods
        pod setup
[✓] Android Studio
    ✗ Flutter plugin not installed; this adds Flutter specific functionality.
    ✗ Dart plugin not installed; this adds Dart specific functionality.
[✓] Android Studio (version 3.1)
    ✗ Flutter plugin not installed; this adds Flutter specific functionality.
    ✗ Dart plugin not installed; this adds Dart specific functionality.
[✓] IntelliJ IDEA Ultimate Edition (version 2017.1.3)
[✓] Connected devices (1 available)
```

- 更新cocoapods

```shell
> brew upgrade cocoapods
```

- 安装最新版android sdk 28.0.0

```
> flutter doctor --android-licenses //权限
```

### 开发

- 开发工具-VS Code

```
start vscode ==> view(command palette) ==> Extensions:Install Extensions ==> input Flutter ==> install dart and flutter plugin ==> finsh
```

- 创建App

```
start vscode ==> view(command palette) ==> Flutter:New Project ==> waiting ==> finsh!!!!
```

