.class public Lcom/samsung/android/media/SelfMotionPanoramaConverter;
.super Ljava/lang/Object;
.source "SelfMotionPanoramaConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;,
        Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;
    }
.end annotation


# static fields
.field private static final synthetic -com-samsung-android-media-SelfMotionPanoramaConverter$ENCODERSwitchesValues:[I = null

.field static final QUEUE_CAPAPCITY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SelfMotionPanoramaConverter"

.field private static final TARGET_BIT_RATE:I = 0xf42400

.field private static final TARGET_COLOUR_FORMAT:I

.field private static TARGET_ENCODE_HEIGHT:I = 0x0

.field private static TARGET_ENCODE_WIDTH:I = 0x0

.field private static final TARGET_FRAME_RATE:I = 0x1e

.field private static final TARGET_QUALITY:I

.field private static mInstance:Lcom/samsung/android/media/SelfMotionPanoramaConverter;


# instance fields
.field TWICE_ENCODING:Z

.field volatile bStopRequested:Z

.field lock:Ljava/lang/Object;

.field mDecodeTime:J

.field mDecoderGLQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;",
            ">;"
        }
    .end annotation
.end field

.field mEncodeTime:J

.field private mEncoder:Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;

.field mEncoderThread:Ljava/lang/Thread;

.field mGLEncoderQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field mGLThread:Ljava/lang/Thread;

.field mGlTime:J

.field volatile mIsEncoderInit:Z

.field mOutSharePath:Ljava/lang/String;

.field mSEFTime:J

.field private mTotalFrame:I

.field mTotalTime:J


# direct methods
.method private static synthetic -getcom-samsung-android-media-SelfMotionPanoramaConverter$ENCODERSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->-com-samsung-android-media-SelfMotionPanoramaConverter$ENCODERSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->-com-samsung-android-media-SelfMotionPanoramaConverter$ENCODERSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;->values()[Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;->ANDROID_ENCODER:Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;->MP4_CONVERTER:Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;->NATIVE:Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->-com-samsung-android-media-SelfMotionPanoramaConverter$ENCODERSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/media/SelfMotionPanoramaConverter;Ljava/lang/String;Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->encodeMp4(Ljava/lang/String;Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/media/SelfMotionPanoramaConverter;Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->processFrame(Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;->VM_QUALITY_HIGH:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;

    invoke-virtual {v0}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;->getValue()I

    move-result v0

    sput v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_QUALITY:I

    const/16 v0, 0x500

    sput v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    const/16 v0, 0x2d0

    sput v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    sget-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;->VM_COLOR_FORMAT_RGB565:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    invoke-virtual {v0}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;->getValue()I

    move-result v0

    sput v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_COLOUR_FORMAT:I

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->lock:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TWICE_ENCODING:Z

    iput-boolean v1, p0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mIsEncoderInit:Z

    sget-object v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;->ANDROID_ENCODER:Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;

    iput-object v0, p0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mEncoder:Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mDecoderGLQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mGLEncoderQueue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method private decodeMp4(Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;)V
    .locals 26

    const-string v22, "SelfMotionPanoramaConverter"

    const-string v23, "decodeMp4 entry"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mDecodeTime:J

    new-instance v7, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mVideoPath:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v7, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;-><init>(Ljava/lang/String;)V

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->init(Z)V

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFirstFrame:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->seekToRequiredGOP(I)Z

    invoke-virtual {v7}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->getContentMetaData()Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$ContentMetaData;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mDecodeTime:J

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mDecodeTime:J

    const-string v22, "SelfMotionPanoramaConverter"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "share decoder  mp4 width : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget v0, v15, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$ContentMetaData;->mWidth:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " mp4 height: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget v0, v15, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$ContentMetaData;->mHeight:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "decode init time: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mDecodeTime:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getResize()Z

    move-result v22

    if-eqz v22, :cond_1

    sget-object v22, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/16 v23, 0x4

    const v24, 0x151800

    filled-new-array/range {v23 .. v24}, [I

    move-result-object v23

    invoke-static/range {v22 .. v23}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[B

    :goto_0
    const/4 v13, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFirstFrame:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFirstFrame:I

    move/from16 v23, v0

    invoke-virtual {v7}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->getGOPInterval()I

    move-result v24

    rem-int v23, v23, v24

    sub-int v9, v22, v23

    new-instance v5, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v5, v7}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;-><init>(Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;)V

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mLastFrame:I

    move/from16 v19, v0

    move v12, v11

    :goto_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const/16 v22, 0x0

    move/from16 v0, v22

    iput-boolean v0, v5, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;->bDirty:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v11, v12, 0x1

    :try_start_1
    aget-object v22, v14, v12

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;->mBuffer:[B

    const/16 v22, 0x4

    move/from16 v0, v22

    if-ne v11, v0, :cond_0

    const/4 v11, 0x0

    :cond_0
    move/from16 v0, v19

    if-le v9, v0, :cond_2

    const/4 v13, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mDecodeTime:J

    move-wide/from16 v22, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v20

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mDecodeTime:J

    const-string v22, "SelfMotionPanoramaConverter"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "share decode isDecode= "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v13, :cond_8

    add-int/lit8 v6, v6, 0x1

    const-string v22, "SelfMotionPanoramaConverter"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "share decode nextframe done "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v5, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;->bDirty:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFirstFrame:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v9, v0, :cond_5

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFrameRendererFlag:[I

    move-object/from16 v22, v0

    aget v22, v22, v9

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFirstFrame:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ne v9, v0, :cond_3

    const/4 v10, 0x0

    :goto_3
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mNumExtraFramesStart:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v10, v0, :cond_3

    const-string v22, "SelfMotionPanoramaConverter"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "share decode framesDecoded sent to encode = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v17, Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;

    iget-object v0, v5, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;->mBuffer:[B

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesStartMatrix:[[F

    move-object/from16 v23, v0

    aget-object v23, v23, v10

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v9, v2}, Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;-><init>([BI[F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mDecoderGLQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    const-wide/16 v22, 0x19

    invoke-static/range {v22 .. v23}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_1
    sget-object v22, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    const/16 v24, 0x4

    const/16 v25, 0x0

    aput v24, v23, v25

    iget v0, v15, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$ContentMetaData;->mWidth:I

    move/from16 v24, v0

    iget v0, v15, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$ContentMetaData;->mHeight:I

    move/from16 v25, v0

    mul-int v24, v24, v25

    mul-int/lit8 v24, v24, 0x3

    div-int/lit8 v24, v24, 0x2

    const/16 v25, 0x1

    aput v24, v23, v25

    invoke-static/range {v22 .. v23}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[B

    goto/16 :goto_0

    :cond_2
    :try_start_2
    invoke-virtual {v7, v5}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nextframe(Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;)Z

    move-result v13

    goto/16 :goto_2

    :cond_3
    new-instance v4, Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;

    iget-object v0, v5, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;->mBuffer:[B

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    move-object/from16 v23, v0

    aget-object v23, v23, v9

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v4, v0, v9, v1}, Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;-><init>([BI[F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mDecoderGLQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mLastFrame:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ne v9, v0, :cond_4

    const/4 v10, 0x0

    :goto_4
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mNumExtraFramesEnd:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v10, v0, :cond_4

    const-string v22, "SelfMotionPanoramaConverter"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "share decode framesDecoded sent to encode = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v16, Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;

    iget-object v0, v5, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;->mBuffer:[B

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesEndMatrix:[[F

    move-object/from16 v23, v0

    aget-object v23, v23, v10

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v9, v2}, Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;-><init>([BI[F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mDecoderGLQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    const-wide/16 v22, 0x19

    invoke-static/range {v22 .. v23}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_4
    const-string v22, "SelfMotionPanoramaConverter"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "share decode framesDecoded sent to encode = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    add-int/lit8 v9, v9, 0x1

    const-string v22, "SelfMotionPanoramaConverter"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "share decode framesDecoded = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x0

    move/from16 v0, v22

    iput-boolean v0, v5, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;->bDirty:Z

    :cond_6
    :goto_5
    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->bStopRequested:Z

    move/from16 v22, v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v22, :cond_9

    :cond_7
    :goto_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-virtual {v7}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->deInit()V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mDecodeTime:J

    move-wide/from16 v22, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v20

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mDecodeTime:J

    const-string v22, "SelfMotionPanoramaConverter"

    const-string v23, "decodeMp4 completed"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mDecoderGLQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v22, v0

    new-instance v23, Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;

    sget-object v24, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->IDENTITY_MATRIX:[F

    const/16 v25, -0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    move/from16 v2, v25

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;-><init>([BI[F)V

    invoke-interface/range {v22 .. v23}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catch_0
    move-exception v8

    :goto_7
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    :cond_9
    move v12, v11

    goto/16 :goto_1

    :catch_1
    move-exception v8

    move v11, v12

    goto :goto_7
.end method

.method private encodeMp4(Ljava/lang/String;Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;)V
    .locals 28

    const-string v4, "SelfMotionPanoramaConverter"

    const-string v5, "encodeMp4 entry"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mEncodeTime:J

    const/4 v2, 0x0

    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v18, 0x0

    const/16 v24, 0x0

    invoke-static {}, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->-getcom-samsung-android-media-SelfMotionPanoramaConverter$ENCODERSwitchesValues()[I

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mEncoder:Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    move-object/from16 v3, v18

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mEncodeTime:J

    sub-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mEncodeTime:J

    const-string v4, "SelfMotionPanoramaConverter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "share init done with retVal"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " encode init time"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mEncodeTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mIsEncoderInit:Z

    const/16 v17, 0x0

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    sget v4, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    sget v5, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    mul-int/2addr v4, v5

    mul-int/lit8 v13, v4, 0x4

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    sget v4, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    sget v5, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v21

    sget v4, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    sget v5, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    new-array v0, v4, [B

    move-object/from16 v22, v0

    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->bStopRequested:Z

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mGLEncoderQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    array-length v4, v15

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TWICE_ENCODING:Z

    if-eqz v4, :cond_0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-gtz v4, :cond_1

    :cond_0
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    invoke-static {}, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->-getcom-samsung-android-media-SelfMotionPanoramaConverter$ENCODERSwitchesValues()[I

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mEncoder:Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    :goto_3
    :pswitch_0
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mEncodeTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v26

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mEncodeTime:J

    const-string v4, "SelfMotionPanoramaConverter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encodeMp4 completed ret value"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    invoke-static {}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;->getInstance()Lcom/sec/android/app/interactiveshot/jni/MP4Writer;

    move-result-object v2

    sget v3, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    sget v4, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    sget v7, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_QUALITY:I

    sget v9, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_COLOUR_FORMAT:I

    const/4 v6, 0x0

    const/16 v8, 0x1e

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;->InitMp4EngineJava(IILjava/lang/String;IIII)I

    move-result v24

    move-object/from16 v3, v18

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v3, v18

    goto/16 :goto_0

    :pswitch_3
    new-instance v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;

    invoke-direct {v3}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;-><init>()V

    sget v4, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    sget v5, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    iget v11, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mOrientation:I

    const v6, 0xf42400

    const/16 v7, 0x1e

    const/4 v8, 0x1

    const/16 v9, 0x15

    invoke-virtual/range {v3 .. v11}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->init(IIIIIILjava/lang/String;I)I

    move-result v24

    goto/16 :goto_0

    :cond_1
    :try_start_1
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    invoke-static {}, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->-getcom-samsung-android-media-SelfMotionPanoramaConverter$ENCODERSwitchesValues()[I

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mEncoder:Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_2

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->bStopRequested:Z

    if-nez v4, :cond_2

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [B

    invoke-static {}, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->-getcom-samsung-android-media-SelfMotionPanoramaConverter$ENCODERSwitchesValues()[I

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mEncoder:Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_3

    :goto_5
    :pswitch_4
    add-int/lit8 v17, v17, 0x1

    const-string v4, "SelfMotionPanoramaConverter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "share EncodeFrame done : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ret value ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    :pswitch_5
    const/16 v4, 0x1f4

    :try_start_2
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->setTimeOutUs(I)V

    goto :goto_4

    :pswitch_6
    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;->EncodeFrame([B)I

    goto :goto_5

    :pswitch_7
    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->encode([B)V

    goto :goto_5

    :cond_2
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mEncodeTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v26

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mEncodeTime:J

    goto/16 :goto_2

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    invoke-virtual {v12, v15}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    sget v4, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    sget v5, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    move-object/from16 v0, v21

    invoke-static {v12, v0, v4, v5}, Lcom/samsung/android/app/interactivepanoramaviewer/util/JniUtil;->swABGR8888ToNV12(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;II)I

    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual/range {v21 .. v22}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->-getcom-samsung-android-media-SelfMotionPanoramaConverter$ENCODERSwitchesValues()[I

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mEncoder:Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_4

    :goto_6
    :pswitch_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TWICE_ENCODING:Z

    if-eqz v4, :cond_4

    move-object/from16 v0, v22

    array-length v4, v0

    new-array v14, v4, [B

    move-object/from16 v0, v22

    array-length v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-static {v0, v5, v14, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v17, v17, 0x1

    const-string v4, "SelfMotionPanoramaConverter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "share EncodeFrame done : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ret value ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mEncodeTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v26

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mEncodeTime:J

    goto/16 :goto_1

    :pswitch_9
    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;->EncodeFrame([B)I

    goto :goto_6

    :pswitch_a
    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->encode([B)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :pswitch_b
    invoke-virtual {v2}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;->DeInitMP4Engine()I

    goto/16 :goto_3

    :pswitch_c
    invoke-virtual {v3}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->deinit()V

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_0
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_7
        :pswitch_4
        :pswitch_6
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_a
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/media/SelfMotionPanoramaConverter;
    .locals 2

    const-class v1, Lcom/samsung/android/media/SelfMotionPanoramaConverter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mInstance:Lcom/samsung/android/media/SelfMotionPanoramaConverter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;

    invoke-direct {v0}, Lcom/samsung/android/media/SelfMotionPanoramaConverter;-><init>()V

    sput-object v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mInstance:Lcom/samsung/android/media/SelfMotionPanoramaConverter;

    :cond_0
    sget-object v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mInstance:Lcom/samsung/android/media/SelfMotionPanoramaConverter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private processFrame(Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;)V
    .locals 24

    const-string v2, "SelfMotionPanoramaConverter"

    const-string v3, "processFrame entry"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mGlTime:J

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mWidth:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mHeight:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropX:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropY:I

    move-object/from16 v0, p1

    iget v7, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropWidth:I

    move-object/from16 v0, p1

    iget v8, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropHeight:I

    sget v9, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    sget v10, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->transformRotation()I

    move-result v12

    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mIsFilpRequired:Z

    const/4 v2, 0x0

    const/4 v11, 0x0

    invoke-static/range {v2 .. v13}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->offscreenInitialize(Landroid/content/Context;IIIIIIIIIIZ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mGlTime:J

    sub-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mGlTime:J

    const-string v2, "SelfMotionPanoramaConverter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gl init time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mGlTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x4

    const/4 v5, 0x0

    aput v4, v3, v5

    sget v4, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    sget v5, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x4

    const/4 v5, 0x1

    aput v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [[B

    const/16 v18, 0x0

    const/4 v2, 0x1

    new-array v0, v2, [B

    move-object/from16 v21, v0

    move/from16 v19, v18

    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->bStopRequested:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mDecoderGLQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;

    invoke-static {v14}, Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;->-get0(Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;)[B

    move-result-object v15

    array-length v2, v15

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mGLEncoderQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v0, v21

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move/from16 v18, v19

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-static {}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->offscreenFinalize()V

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mGlTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v22

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mGlTime:J

    const-string v2, "SelfMotionPanoramaConverter"

    const-string v3, "processFrame completed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v22

    add-int/lit8 v18, v19, 0x1

    :try_start_2
    aget-object v16, v20, v19

    const/4 v2, 0x4

    move/from16 v0, v18

    if-ne v0, v2, :cond_2

    const/16 v18, 0x0

    :cond_2
    invoke-static {v14}, Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;->-get2(Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;)[F

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v15, v0, v2}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->offscreenTransformFrame([B[B[F)V

    const-string v2, "SelfMotionPanoramaConverter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encoded actual frame no = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v14}, Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;->-get1(Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mGLEncoderQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mGlTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v22

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mGlTime:J
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    move/from16 v19, v18

    goto/16 :goto_0

    :catch_0
    move-exception v17

    move/from16 v18, v19

    :goto_2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v17

    goto :goto_2
.end method

.method private stopShare()V
    .locals 3

    const-string v1, "SelfMotionPanoramaConverter"

    const-string v2, "stopShare entry"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->bStopRequested:Z

    iget-object v1, p0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mGLThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mGLThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mEncoderThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mEncoderThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mOutSharePath:Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mOutSharePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v2

    const-string v1, "SelfMotionPanoramaConverter"

    const-string v2, "stopShare exit"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public declared-synchronized convertToMP4(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mOutSharePath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->lock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->bStopRequested:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_0

    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :cond_0
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mTotalTime:J

    const-string v7, "SelfMotionPanoramaConverter"

    const-string v11, "Internal version = 1.5"

    invoke-static {v7, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "SelfMotionPanoramaConverter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "share entry file to be shared: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " output file: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInstance()Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->init(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v7, "SelfMotionPanoramaConverter"

    const-string v11, "SEF init fails"

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_5
    invoke-virtual {v4}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->printInfo()V

    const-string v7, "SelfMotionPanoramaConverter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "share offscreenInitialize width: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mWidth:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " height: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mHeight:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " cropx: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropX:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " cropy: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropY:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " cropWidth: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropWidth:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " cropHeight: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropHeight:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " orientation: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mOrientation:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " captureMode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->transformRotation()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " mFirstFrame: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFirstFrame:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " mLastFrame: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mLastFrame:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mLastFrame:I

    iget v11, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFirstFrame:I

    sub-int/2addr v7, v11

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mTotalFrame:I

    iget v7, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mWidth:I

    sput v7, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    iget v7, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mHeight:I

    sput v7, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    iget v7, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mOrientation:I

    const/16 v11, 0x5a

    if-eq v7, v11, :cond_2

    iget v7, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mOrientation:I

    const/16 v11, 0x10e

    if-ne v7, v11, :cond_3

    :cond_2
    sget v5, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    sget v7, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    sput v7, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    sput v5, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mSEFTime:J

    invoke-virtual {v4}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->printInfo()V

    const-string v7, "SelfMotionPanoramaConverter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "share offscreenInitialize width: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mWidth:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " height: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mHeight:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " cropx: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropX:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " cropy: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropY:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " cropWidth: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropWidth:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " cropHeight: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropHeight:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " orientation: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mOrientation:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " captureMode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->transformRotation()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/Thread;

    new-instance v11, Lcom/samsung/android/media/SelfMotionPanoramaConverter$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v11, v0, v1, v4}, Lcom/samsung/android/media/SelfMotionPanoramaConverter$1;-><init>(Lcom/samsung/android/media/SelfMotionPanoramaConverter;Ljava/lang/String;Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;)V

    invoke-direct {v7, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mEncoderThread:Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mEncoderThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    new-instance v7, Ljava/lang/Thread;

    new-instance v11, Lcom/samsung/android/media/SelfMotionPanoramaConverter$2;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v4}, Lcom/samsung/android/media/SelfMotionPanoramaConverter$2;-><init>(Lcom/samsung/android/media/SelfMotionPanoramaConverter;Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;)V

    invoke-direct {v7, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mGLThread:Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mGLThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->decodeMp4(Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mEncoderThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mEncoderThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->join()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_4
    :goto_0
    const/4 v7, 0x0

    :try_start_7
    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mIsEncoderInit:Z

    iget-object v7, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mVideoPath:Ljava/lang/String;

    if-eqz v7, :cond_5

    new-instance v3, Ljava/io/File;

    iget-object v7, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mVideoPath:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_5
    invoke-static {}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->freeInstance()V

    iget v7, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mOrientation:I

    const/16 v11, 0x5a

    if-eq v7, v11, :cond_6

    iget v7, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mOrientation:I

    const/16 v11, 0x10e

    if-ne v7, v11, :cond_7

    :cond_6
    sget v5, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    sget v7, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    sput v7, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    sput v5, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    :cond_7
    const-string v7, "SelfMotionPanoramaConverter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "share exit Total Time: mTotalTime "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mTotalTime:J

    sub-long/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " encode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mEncodeTime:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " decode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mDecodeTime:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " opengl: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mGlTime:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " sef: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mSEFTime:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    monitor-exit p0

    return-void

    :catch_0
    move-exception v2

    :try_start_9
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    :try_start_a
    monitor-exit v10

    throw v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception v7

    monitor-exit p0

    throw v7
.end method
