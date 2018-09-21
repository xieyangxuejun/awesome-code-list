/*
*****:ffmpeg-3.1.2 *****$ ./configure  --help
Usage: configure [options]
Options: [defaults in brackets after descriptions]

 帮助选项:
--help                   打印此条文档|print this message
--list-decoders          显示所有可用的解码器|show all available decoders
--list-encoders          显示所有可用的编码器|show all available encoders
--list-hwaccels          显示所有可用的硬件加速器|show all available hardware accelerators
--list-demuxers          显示所有可用的分流器|show all available demuxers
--list-muxers            显示所有可用的混合器|show all available muxers
--list-parsers           显示所有可用的解析器|show all available parsers
--list-protocols         显示所有可用的协议|show all available protocols
--list-bsfs              显示所有可用的比特流过滤器|show all available bitstream filters
--list-indevs            显示所有可用的输入设备|show all available input devices
--list-outdevs           显示所有可用的输出设备|show all available output devices
--list-filters           显示所有可用的过滤器|show all available filters

标准选项：
--logfile=FILE           输出日志到file|log tests and output to FILE [config.log]
--disable-logging        禁用日志|do not log configure debug information
--fatal-warnings         如果有警告就抛错|fail if any configure warning is generated
--prefix=PREFIX          安装目录|install in PREFIX []
--bindir=DIR             二进制文件目录|install binaries in DIR [PREFIX/bin]
--datadir=DIR            数据文件目录|install data files in DIR [PREFIX/share/ffmpeg]
--docdir=DIR             文档目录|install documentation in DIR [PREFIX/share/doc/ffmpeg]
--libdir=DIR             lib库目录|install libs in DIR [PREFIX/lib]
--shlibdir=DIR           共享库目录|install shared libs in DIR [LIBDIR]
--incdir=DIR             头文件目录|install includes in DIR [PREFIX/include]
--mandir=DIR             手册目录|install man page in DIR [PREFIX/share/man]
--pkgconfigdir=DIR       pkg配置文件目录|install pkg-config files in DIR [LIBDIR/pkgconfig]
--enable-rpath           允许不同目录|use rpath to allow installing libraries in paths not part of the dynamic linker search path use rpath when linking programs [USE WITH CARE]
--install-name-dir=DIR   Darwin directory name for installed targets

许可选项：
--enable-gpl             允许使用GPL代码|allow use of GPL code, the resulting libs and binaries will be under GPL [no]
--enable-version3        更新到GPL3|upgrade (L)GPL to version 3 [no]
--enable-nonfree         允许使用非开源代码，编译出来的库和二进制文件可以再发行（GPL协议详情请baidu）|allow use of nonfree code, the resulting libs and binaries will be unredistributable [no]


 配置选项：
--disable-static                不建立静态库|do not build static libraries [no]
--enable-shared                 建立共享库|build shared libraries [no]
--enable-small                  编译结果以小优先，而不是以速度优先|optimize for size instead of speed
--disable-runtime-cpudetect     禁用在运行时检测CPU的能力|disable detecting cpu capabilities at runtime (smaller binary)
--enable-gray                   启用灰阶支持（彩色比较慢）|enable full grayscale support (slower color)
--disable-swscale-alpha         禁用swscale Alpha通道支持|disable alpha channel support in swscale
--disable-all                   禁止编译所有|disable building components, libraries and programs
--enable-incompatible-libav-abi Libav与ABI不兼容？|enable incompatible Libav fork ABI [no]
--enable-raise-major            增加主版本号|increase major version numbers in so names [no]

方案选择：
--disable-programs       不建命令行程序|do not build command line programs
--disable-ffmpeg         不生成ffmpeg|disable ffmpeg build
--disable-ffplay         不生成ffplay|disable ffplay build
--disable-ffprobe        不生成ffprobe|disable ffprobe build
--disable-ffserver       不生成ffserver|disable ffserver build

 文档选项：
--disable-doc            不生成文档|do not build documentation
--disable-htmlpages      不生成html|do not build HTML documentation pages
--disable-manpages       do not build man documentation pages
--disable-podpages       do not build POD documentation pages
--disable-txtpages       do not build text documentation pages

组件选项：（不一个一个翻译了，这些都是静态库，需要什么编译什么就好，不需要的直接禁止了就行）
--disable-avdevice       disable libavdevice build
--disable-avcodec        disable libavcodec build
--disable-avformat       disable libavformat build
--disable-swresample     disable libswresample build
--disable-swscale        disable libswscale build
--disable-postproc       disable libpostproc build
--disable-avfilter       disable libavfilter build
--enable-avresample      enable libavresample build [no]
--disable-pthreads       disable pthreads [autodetect]
--disable-w32threads     disable Win32 threads [autodetect]
--disable-os2threads     disable OS/2 threads [autodetect]
--disable-network        disable network support [no]
--disable-dct            disable DCT code
--disable-dwt            disable DWT code
--disable-error-resilience disable error resilience code
--disable-lsp            disable LSP code
--disable-lzo            disable LZO decoder code
--disable-mdct           disable MDCT code
--disable-rdft           disable RDFT code
--disable-fft            disable FFT code
--disable-faan           disable floating point AAN (I)DCT code
--disable-pixelutils     disable pixel utils in libavutil

个别组件选项:（以下选项是编解码器、混合器是否编译的设置，具体情况自行设置）
--disable-everything     禁用下面列出的所有组件|disable all components listed below
--disable-encoder=NAME   disable encoder NAME
--enable-encoder=NAME    enable encoder NAME
--disable-encoders       disable all encoders
--disable-decoder=NAME   disable decoder NAME
--enable-decoder=NAME    enable decoder NAME
--disable-decoders       disable all decoders
--disable-hwaccel=NAME   disable hwaccel NAME
--enable-hwaccel=NAME    enable hwaccel NAME
--disable-hwaccels       disable all hwaccels
--disable-muxer=NAME     disable muxer NAME
--enable-muxer=NAME      enable muxer NAME
--disable-muxers         disable all muxers
--disable-demuxer=NAME   disable demuxer NAME
--enable-demuxer=NAME    enable demuxer NAME
--disable-demuxers       disable all demuxers
--enable-parser=NAME     enable parser NAME
--disable-parser=NAME    disable parser NAME
--disable-parsers        disable all parsers
--enable-bsf=NAME        enable bitstream filter NAME
--disable-bsf=NAME       disable bitstream filter NAME
--disable-bsfs           disable all bitstream filters
--enable-protocol=NAME   enable protocol NAME
--disable-protocol=NAME  disable protocol NAME
--disable-protocols      disable all protocols
--enable-indev=NAME      enable input device NAME
--disable-indev=NAME     disable input device NAME
--disable-indevs         disable input devices
--enable-outdev=NAME     enable output device NAME
--disable-outdev=NAME    disable output device NAME
--disable-outdevs        disable output devices
--disable-devices        disable all devices
--enable-filter=NAME     enable filter NAME
--disable-filter=NAME    disable filter NAME
--disable-filters        disable all filters

外部库的支持：
ffmpeg 支持外链其他库。 除ffmpeg本身的库是自动检测开闭状态之外，外链的库必须手动设置相应参数启用
ffmpeg 只是提供了一些壳，具体功能需要外链的库进行实现

Using any of the following switches will allow FFmpeg to link to the
corresponding external library. All the components depending on that library
will become enabled, if all their other dependencies are met and they are not
explicitly disabled. E.g. --enable-libwavpack will enable linking to
libwavpack and allow the libwavpack encoder to be built, unless it is
specifically disabled with --disable-encoder=libwavpack.

Note that only the system libraries are auto-detected. All the other external
libraries must be explicitly enabled.

Also note that the following help text describes the purpose of the libraries
themselves, not all their features will necessarily be usable by FFmpeg.

--enable-avisynth        enable reading of AviSynth script files [no]
--disable-bzlib          disable bzlib [autodetect]
--enable-chromaprint     enable audio fingerprinting with chromaprint [no]
--enable-frei0r          enable frei0r video filtering [no]
--enable-gcrypt          enable gcrypt, needed for rtmp(t)e support
if openssl, librtmp or gmp is not used [no]
--enable-gmp             enable gmp, needed for rtmp(t)e support
if openssl or librtmp is not used [no]
--enable-gnutls          enable gnutls, needed for https support
if openssl is not used [no]
--disable-iconv          disable iconv [autodetect]
--enable-jni             enable JNI support [no]
--enable-ladspa          enable LADSPA audio filtering [no]
--enable-libass          enable libass subtitles rendering,
needed for subtitles and ass filter [no]
--enable-libbluray       enable BluRay reading using libbluray [no]
--enable-libbs2b         enable bs2b DSP library [no]
--enable-libcaca         enable textual display using libcaca [no]
--enable-libcelt         enable CELT decoding via libcelt [no]
--enable-libcdio         enable audio CD grabbing with libcdio [no]
--enable-libdc1394       enable IIDC-1394 grabbing using libdc1394
and libraw1394 [no]
--enable-libebur128      enable libebur128 for EBU R128 measurement,
needed for loudnorm filter [no]
--enable-libfaac         enable AAC encoding via libfaac [no]
--enable-libfdk-aac      enable AAC de/encoding via libfdk-aac [no]
--enable-libflite        enable flite (voice synthesis) support via libflite [no]
--enable-libfontconfig   enable libfontconfig, useful for drawtext filter [no]
--enable-libfreetype     enable libfreetype, needed for drawtext filter [no]
--enable-libfribidi      enable libfribidi, improves drawtext filter [no]
--enable-libgme          enable Game Music Emu via libgme [no]
--enable-libgsm          enable GSM de/encoding via libgsm [no]
--enable-libiec61883     enable iec61883 via libiec61883 [no]
--enable-libilbc         enable iLBC de/encoding via libilbc [no]
--enable-libkvazaar      enable HEVC encoding via libkvazaar [no]
--enable-libmodplug      enable ModPlug via libmodplug [no]
--enable-libmp3lame      enable MP3 encoding via libmp3lame [no]
--enable-libnut          enable NUT (de)muxing via libnut,
native (de)muxer exists [no]
--enable-libopencore-amrnb enable AMR-NB de/encoding via libopencore-amrnb [no]
--enable-libopencore-amrwb enable AMR-WB decoding via libopencore-amrwb [no]
--enable-libopencv       enable video filtering via libopencv [no]
--enable-libopenh264     enable H.264 encoding via OpenH264 [no]
--enable-libopenjpeg     enable JPEG 2000 de/encoding via OpenJPEG [no]
--enable-libopus         enable Opus de/encoding via libopus [no]
--enable-libpulse        enable Pulseaudio input via libpulse [no]
--enable-librubberband   enable rubberband needed for rubberband filter [no]
--enable-librtmp         enable RTMP[E] support via librtmp [no]
--enable-libschroedinger enable Dirac de/encoding via libschroedinger [no]
--enable-libshine        enable fixed-point MP3 encoding via libshine [no]
--enable-libsmbclient    enable Samba protocol via libsmbclient [no]
--enable-libsnappy       enable Snappy compression, needed for hap encoding [no]
--enable-libsoxr         enable Include libsoxr resampling [no]
--enable-libspeex        enable Speex de/encoding via libspeex [no]
--enable-libssh          enable SFTP protocol via libssh [no]
--enable-libtesseract    enable Tesseract, needed for ocr filter [no]
--enable-libtheora       enable Theora encoding via libtheora [no]
--enable-libtwolame      enable MP2 encoding via libtwolame [no]
--enable-libv4l2         enable libv4l2/v4l-utils [no]
--enable-libvidstab      enable video stabilization using vid.stab [no]
--enable-libvo-amrwbenc  enable AMR-WB encoding via libvo-amrwbenc [no]
--enable-libvorbis       enable Vorbis en/decoding via libvorbis,
native implementation exists [no]
--enable-libvpx          enable VP8 and VP9 de/encoding via libvpx [no]
--enable-libwavpack      enable wavpack encoding via libwavpack [no]
--enable-libwebp         enable WebP encoding via libwebp [no]
--enable-libx264         enable H.264 encoding via x264 [no]
--enable-libx265         enable HEVC encoding via x265 [no]
--enable-libxavs         enable AVS encoding via xavs [no]
--enable-libxcb          enable X11 grabbing using XCB [autodetect]
--enable-libxcb-shm      enable X11 grabbing shm communication [autodetect]
--enable-libxcb-xfixes   enable X11 grabbing mouse rendering [autodetect]
--enable-libxcb-shape    enable X11 grabbing shape rendering [autodetect]
--enable-libxvid         enable Xvid encoding via xvidcore,
native MPEG-4/Xvid encoder exists [no]
--enable-libzimg         enable z.lib, needed for zscale filter [no]
--enable-libzmq          enable message passing via libzmq [no]
--enable-libzvbi         enable teletext support via libzvbi [no]
--disable-lzma           disable lzma [autodetect]
--enable-decklink        enable Blackmagic DeckLink I/O support [no]
--enable-mediacodec      enable Android MediaCodec support [no]
--enable-netcdf          enable NetCDF, needed for sofalizer filter [no]
--enable-openal          enable OpenAL 1.1 capture support [no]
--enable-opencl          enable OpenCL code
--enable-opengl          enable OpenGL rendering [no]
--enable-openssl         enable openssl, needed for https support
if gnutls is not used [no]
--disable-schannel       disable SChannel SSP, needed for TLS support on
Windows if openssl and gnutls are not used [autodetect]
--disable-sdl            disable sdl [autodetect]
--disable-securetransport disable Secure Transport, needed for TLS support
on OSX if openssl and gnutls are not used [autodetect]
--enable-x11grab         enable X11 grabbing (legacy) [no]
--disable-xlib           disable xlib [autodetect]
--disable-zlib           disable zlib [autodetect]

以下库提供各种硬件加速功能：（针对不同平台请自行考虑）
--disable-audiotoolbox   禁用苹果AudioToolbox代码[自动检测]|disable Apple AudioToolbox code [autodetect]
--enable-cuda            enable dynamically linked Nvidia CUDA code [no]
--enable-cuvid           enable Nvidia CUVID support [autodetect]
--disable-d3d11va        disable Microsoft Direct3D 11 video acceleration code [autodetect]
--disable-dxva2          disable Microsoft DirectX 9 video acceleration code [autodetect]
--enable-libmfx          enable Intel MediaSDK (AKA Quick Sync Video) code via libmfx [no]
--enable-libnpp          enable Nvidia Performance Primitives-based code [no]
--enable-mmal            enable Broadcom Multi-Media Abstraction Layer (Raspberry Pi) via MMAL [no]
--enable-nvenc           enable Nvidia video encoding code [no]
--enable-omx             enable OpenMAX IL code [no]
--enable-omx-rpi         enable OpenMAX IL code for Raspberry Pi [no]
--disable-vaapi          disable Video Acceleration API (mainly Unix/Intel) code [autodetect]
--disable-vda            disable Apple Video Decode Acceleration code [autodetect]
--disable-vdpau          disable Nvidia Video Decode and Presentation API for Unix code [autodetect]
--disable-videotoolbox   disable VideoToolbox code [autodetect]

工具链的选项：
--arch=ARCH              选择架构|select architecture []
--cpu=CPU                cpu的最低要求|select the minimum required CPU (affects
​                                                          instruction selection, may crash on older CPUs)
--cross-prefix=PREFIX    use PREFIX for compilation tools []
--progs-suffix=SUFFIX    程序名称后缀|program name suffix []
--enable-cross-compile   交叉编译|assume a cross-compiler is used
--sysroot=PATH           交叉编译的根目录|root of cross-build tree
--sysinclude=PATH        交叉编译的头文件目录|location of cross-build system headers
--target-os=OS           编译器的目标OS|compiler targets OS []
--target-exec=CMD        命令行运行可执行文件|command to run executables on target
--target-path=DIR        路径查看构建目录的目标|path to view of build directory on target
--target-samples=DIR     路径目标样本目录|path to samples directory on target
--tempprefix=PATH        force fixed dir/prefix instead of mktemp for checks
--toolchain=NAME         set tool defaults according to NAME
--nm=NM                  use nm tool NM [nm -g]
--ar=AR                  use archive tool AR [ar]
--as=AS                  use assembler AS []
--ln_s=LN_S              use symbolic link tool LN_S [ln -s -f]
--strip=STRIP            use strip tool STRIP [strip]
--windres=WINDRES        use windows resource compiler WINDRES [windres]
--yasmexe=EXE            use yasm-compatible assembler EXE [yasm]
--cc=CC                  use C compiler CC [gcc]
--cxx=CXX                use C compiler CXX [g++]
--objcc=OCC              use ObjC compiler OCC [gcc]
--dep-cc=DEPCC           use dependency generator DEPCC [gcc]
--ld=LD                  use linker LD []
--pkg-config=PKGCONFIG   use pkg-config tool PKGCONFIG [pkg-config]
--pkg-config-flags=FLAGS pass additional flags to pkgconf []
--ranlib=RANLIB          use ranlib RANLIB [ranlib]
--doxygen=DOXYGEN        use DOXYGEN to generate API doc [doxygen]
--host-cc=HOSTCC         use host C compiler HOSTCC
--host-cflags=HCFLAGS    use HCFLAGS when compiling for host
--host-cppflags=HCPPFLAGS use HCPPFLAGS when compiling for host
--host-ld=HOSTLD         use host linker HOSTLD
--host-ldflags=HLDFLAGS  use HLDFLAGS when linking for host
--host-libs=HLIBS        use libs HLIBS when linking for host
--host-os=OS             compiler host OS []
--extra-cflags=ECFLAGS   add ECFLAGS to CFLAGS []
--extra-cxxflags=ECFLAGS add ECFLAGS to CXXFLAGS []
--extra-objcflags=FLAGS  add FLAGS to OBJCFLAGS []
--extra-ldflags=ELDFLAGS add ELDFLAGS to LDFLAGS []
--extra-ldexeflags=ELDFLAGS add ELDFLAGS to LDEXEFLAGS []
--extra-ldlibflags=ELDFLAGS add ELDFLAGS to LDLIBFLAGS []
--extra-libs=ELIBS       add ELIBS []
--extra-version=STRING   version string suffix []
--optflags=OPTFLAGS      override optimization-related compiler flags
--build-suffix=SUFFIX    library name suffix []
--enable-pic             build position-independent code
--enable-thumb           compile for Thumb instruction set
--enable-lto             use link-time optimization
--env="ENV=override"     override the environment variables


 高级选项（仅限专家）：
--malloc-prefix=PREFIX          prefix malloc and related names with PREFIX
--custom-allocator=NAME         use a supported custom allocator
--disable-symver                disable symbol versioning
--enable-hardcoded-tables       使用硬编码|use hardcoded tables instead of runtime generation
--disable-safe-bitstream-reader
disable buffer boundary         checking in bitreaders
(faster, but may crash)
--enable-memalign-hack          emulate memalign, interferes with memory debuggers
--sws-max-filter-size=N         the max filter size swscale uses [256]

优化选项（仅限专家）：
--disable-asm            disable all assembly optimizations
--disable-altivec        disable AltiVec optimizations
--disable-vsx            disable VSX optimizations
--disable-power8         disable POWER8 optimizations
--disable-amd3dnow       disable 3DNow! optimizations
--disable-amd3dnowext    disable 3DNow! extended optimizations
--disable-mmx            disable MMX optimizations
--disable-mmxext         disable MMXEXT optimizations
--disable-sse            disable SSE optimizations
--disable-sse2           disable SSE2 optimizations
--disable-sse3           disable SSE3 optimizations
--disable-ssse3          disable SSSE3 optimizations
--disable-sse4           disable SSE4 optimizations
--disable-sse42          disable SSE4.2 optimizations
--disable-avx            disable AVX optimizations
--disable-xop            disable XOP optimizations
--disable-fma3           disable FMA3 optimizations
--disable-fma4           disable FMA4 optimizations
--disable-avx2           disable AVX2 optimizations
--disable-aesni          disable AESNI optimizations
--disable-armv5te        disable armv5te optimizations
--disable-armv6          disable armv6 optimizations
--disable-armv6t2        disable armv6t2 optimizations
--disable-vfp            disable VFP optimizations
--disable-neon           disable NEON optimizations
--disable-inline-asm     disable use of inline assembly
--disable-yasm           disable use of nasm/yasm assembly
--disable-mipsdsp        disable MIPS DSP ASE R1 optimizations
--disable-mipsdspr2      disable MIPS DSP ASE R2 optimizations
--disable-msa            disable MSA optimizations
--disable-mipsfpu        disable floating point MIPS optimizations
--disable-mmi            disable Loongson SIMD optimizations
--disable-fast-unaligned consider unaligned accesses slow

*/