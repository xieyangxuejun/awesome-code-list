# FFmpeg

## 命令行使用水平

视频添加水印

```
ffmpeg -i demo.mp4 -acodec copy -b:v 548k -vf "movie=logo.png[watermark];[in][watermark]overlay=20:20" demo_watermark.mp4
```

图片添加水印

```
ffmpeg -i test.jpg -vf "movie=/Users/silen/Programs/FFmpeg/Test/logo.png[watermask];[in][watermask] overlay=0:0" -y test_image_watermark.jpg
```

添加文字水印

```
ffmpeg -i test.jpg -vf drawtext=text=watermark测试 -y test_watermark.jpg
```

