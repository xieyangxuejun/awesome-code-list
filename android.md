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

