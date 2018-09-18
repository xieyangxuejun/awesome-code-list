# Android 开发经验
- AndroidManifest.xml中的windowSoftInputMode=adjustResize配置会导致分页问题.
# Android 常见问题

- 微博@和#点击事件和recyclerview item点击冲突

```
//        mMovementMethod = new TouchMovementMethod(context);
//        setMovementMethod(mMovementMethod);
        mExtractor = new Extractor();
//        setLongClickable(false);
//        setOnLongClickListener(view -> true);
        setOnTouchListener(new TouchMovementMethodListener());
```

- Jetpack Room使用

[sample-android-room](https://github.com/xieyangxuejun/sample-android-room)

# 路由跳转

- scheme+host+path+query = Uri

# View相关

- view转bitmap

  - 没显示view不会测量.需要手动,不约束, 这是需要设置布局中的最大宽度和高度可以自适应,不然会是一个长条形.如果有图片.

  ```
  view.measure(View.MeasureSpec.UNSPECIFIED, View.MeasureSpec.UNSPECIFIED);
  ```

  - 

# 二维码 QR

- 导入zxing 

```
impletemention 'com.google.zxing:core:3.3.0'
impletemention 'com.google.zxing:android-core:3.3.0'
```



