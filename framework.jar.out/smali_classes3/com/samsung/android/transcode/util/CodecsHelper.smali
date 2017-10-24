.class public Lcom/samsung/android/transcode/util/CodecsHelper;
.super Ljava/lang/Object;
.source "CodecsHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetCodecResource(II)I
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v1, -0x1

    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v2, "GetCodecResource"

    .line 345
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string/jumbo v0, "video/avc"

    .line 352
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    const-string/jumbo v0, "video/avc"

    .line 359
    invoke-static {v0, p0, p1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string/jumbo v3, "bitrate"

    const v4, 0x1d4c0

    .line 360
    invoke-virtual {v0, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v3, "frame-rate"

    const/16 v4, 0x1e

    .line 361
    invoke-virtual {v0, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v3, "i-frame-interval"

    .line 362
    invoke-virtual {v0, v3, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v3, "color-format"

    const/16 v4, 0x15

    .line 363
    invoke-virtual {v0, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 366
    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    move v1, v0

    .line 380
    :goto_1
    return v1

    .line 357
    :catch_0
    move-exception v0

    .line 355
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 356
    return v1

    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 367
    :try_start_1
    invoke-virtual {v2, v0, v4, v5, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 368
    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    const-string/jumbo v3, "max_capacity"

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    .line 369
    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    const-string/jumbo v4, "remained_resource"

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    :try_start_2
    const-string/jumbo v1, "TranscodeLib"

    .line 370
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "max_capacity = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", remained_resource = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 378
    :catch_1
    move-exception v1

    move-object v6, v1

    move v1, v0

    move-object v0, v6

    :goto_2
    const-string/jumbo v2, "TranscodeLib"

    .line 376
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "can\'t get resource - remained_resource = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 378
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method public static createAudioDecoder(Landroid/media/MediaFormat;)Landroid/media/MediaCodec;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 233
    invoke-static {p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    const/4 v1, 0x0

    .line 234
    invoke-virtual {v0, p0, v2, v2, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 235
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 236
    return-object v0
.end method

.method public static createAudioEncoder(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 220
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    const/4 v1, 0x1

    .line 221
    invoke-virtual {v0, p1, v2, v2, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 222
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 223
    return-object v0
.end method

.method public static createExtractor(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/media/MediaExtractor;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    .line 50
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 51
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 52
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 53
    return-object v0
.end method

.method public static createExtractor(Ljava/io/FileDescriptor;JJ)Landroid/media/MediaExtractor;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    const/4 v1, 0x1

    .line 64
    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->semSetRunningMode(I)V

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 65
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 66
    return-object v0
.end method

.method public static createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    const/4 v1, 0x1

    .line 36
    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->semSetRunningMode(I)V

    .line 37
    invoke-virtual {v0, p0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 38
    return-object v0
.end method

.method public static createMediaMetadataRetriever(Ljava/lang/String;)Landroid/media/MediaMetadataRetriever;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 107
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 108
    return-object v0
.end method

.method public static createVideoDecoder(Landroid/media/MediaFormat;Landroid/view/Surface;)Landroid/media/MediaCodec;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    invoke-static {p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "createVideoDecoder"

    .line 329
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 331
    :try_start_0
    invoke-virtual {v0, p0, p1, v2, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "createVideoDecoder - start"

    .line 340
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return-object v0

    .line 338
    :catch_0
    move-exception v1

    .line 333
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 334
    if-nez v0, :cond_0

    .line 337
    :goto_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "createVideoDecode configure error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    goto :goto_0
.end method

.method public static fillResolutionRect(ILandroid/graphics/Rect;)V
    .locals 4

    .prologue
    const/16 v3, 0x2d0

    const/16 v1, 0x1e0

    const/4 v2, 0x0

    .line 295
    packed-switch p0, :pswitch_data_0

    .line 316
    :goto_0
    return-void

    :pswitch_0
    const/16 v0, 0xb0

    const/16 v1, 0x90

    .line 297
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x140

    const/16 v1, 0xf0

    .line 300
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x280

    .line 303
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 306
    :pswitch_3
    invoke-virtual {p1, v2, v2, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x500

    .line 309
    invoke-virtual {p1, v2, v2, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x780

    const/16 v1, 0x438

    .line 312
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 90
    :goto_0
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    .line 96
    return v0

    .line 91
    :cond_0
    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->isAudioFormat(Landroid/media/MediaFormat;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 93
    return v0
.end method

.method public static getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 75
    :goto_0
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    .line 81
    return v0

    .line 76
    :cond_0
    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->isVideoFormat(Landroid/media/MediaFormat;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 78
    return v0
.end method

.method public static getEncoderCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-static {p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSecNaacEncoderAvailable(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v2

    .line 138
    if-eqz v2, :cond_1

    .line 154
    :cond_0
    return-object v2

    .line 139
    :cond_1
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v5

    move v4, v1

    .line 140
    :goto_0
    if-ge v4, v5, :cond_0

    .line 141
    invoke-static {v4}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 142
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v6

    move v0, v1

    .line 146
    :goto_1
    array-length v7, v6

    if-lt v0, v7, :cond_3

    move-object v0, v2

    .line 140
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v2, v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 143
    goto :goto_2

    .line 147
    :cond_3
    aget-object v7, v6, v0

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move-object v0, v3

    .line 149
    goto :goto_2
.end method

.method private static getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "mime"

    .line 119
    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoEncodingBitRate(FJJIII)I
    .locals 5

    .prologue
    const/16 v4, 0x3e8

    const/16 v3, 0x64

    const/4 v1, 0x0

    .line 252
    long-to-float v0, p1

    mul-float/2addr v0, p0

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v0, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v2

    long-to-float v2, p3

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 254
    add-int/lit8 v2, p5, 0x2

    sub-int/2addr v0, v2

    .line 257
    mul-int v2, p6, p7

    div-int/lit16 v2, v2, 0x100

    .line 259
    if-lt v2, v3, :cond_1

    .line 264
    if-gt v2, v3, :cond_2

    .line 269
    :cond_0
    if-gt v2, v4, :cond_3

    move v2, v1

    .line 277
    :goto_0
    if-lt v0, v2, :cond_4

    .line 279
    if-gt v0, v1, :cond_5

    .line 282
    :goto_1
    return v0

    :cond_1
    const/16 v2, 0x40

    const/16 v1, 0x7d0

    .line 262
    goto :goto_0

    .line 264
    :cond_2
    if-ge v2, v4, :cond_0

    const/16 v2, 0x96

    const/16 v1, 0x1388

    .line 267
    goto :goto_0

    :cond_3
    const/16 v2, 0x15e

    const/16 v1, 0x3a98

    .line 272
    goto :goto_0

    :cond_4
    move v0, v2

    .line 278
    goto :goto_1

    :cond_5
    move v0, v1

    .line 280
    goto :goto_1
.end method

.method private static isAudioFormat(Landroid/media/MediaFormat;)Z
    .locals 2

    .prologue
    .line 116
    invoke-static {p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "audio/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isSecNaacEncoderAvailable(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    move-object v2, v0

    move v0, v1

    .line 197
    :goto_0
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 209
    return-object v2

    .line 198
    :cond_0
    invoke-static {v0}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v4

    .line 199
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 200
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-nez v5, :cond_2

    .line 197
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "OMX.SEC.naac.enc"

    .line 200
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    move-object v3, v2

    move v2, v1

    .line 202
    :goto_2
    array-length v6, v5

    if-lt v2, v6, :cond_3

    move-object v2, v3

    goto :goto_1

    .line 203
    :cond_3
    aget-object v6, v5, v2

    invoke-virtual {v6, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 202
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    move-object v3, v4

    .line 204
    goto :goto_3
.end method

.method public static isSupportedCodec(Landroid/media/MediaFormat;)Z
    .locals 2

    .prologue
    const-string/jumbo v0, "mime"

    .line 122
    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    sget-object v1, Lcom/samsung/android/transcode/core/Encode$ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSupportedFormat(Landroid/media/MediaMetadataRetriever;)Z
    .locals 2

    .prologue
    const/16 v0, 0xc

    .line 126
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 127
    sget-object v1, Lcom/samsung/android/transcode/core/Encode$ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSupportedFormat(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string/jumbo v0, ""

    .line 162
    if-eqz p0, :cond_0

    .line 166
    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 169
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    const/16 v0, 0xc

    .line 171
    invoke-virtual {v4, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "video/mp4"

    .line 174
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    .line 183
    :goto_0
    if-nez v1, :cond_2

    .line 185
    :goto_1
    if-nez v4, :cond_3

    .line 192
    :goto_2
    return v0

    .line 163
    :cond_0
    return v3

    .line 175
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 184
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_1

    .line 190
    :catch_0
    move-exception v1

    goto :goto_2

    .line 186
    :cond_3
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 191
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 179
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 183
    if-nez v1, :cond_4

    .line 185
    :goto_4
    if-nez v4, :cond_5

    :goto_5
    move v0, v3

    .line 190
    goto :goto_2

    .line 184
    :cond_4
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_4

    .line 190
    :catch_2
    move-exception v0

    move v0, v3

    .line 191
    goto :goto_2

    .line 186
    :cond_5
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    .line 191
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 183
    :goto_6
    if-nez v1, :cond_6

    .line 185
    :goto_7
    if-nez v4, :cond_7

    .line 190
    :goto_8
    throw v0

    .line 184
    :cond_6
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_7

    .line 190
    :catch_3
    move-exception v1

    goto :goto_8

    .line 186
    :cond_7
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_8

    .line 191
    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method private static isVideoFormat(Landroid/media/MediaFormat;)Z
    .locals 2

    .prologue
    .line 113
    invoke-static {p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static scheduleAfter(ILjava/lang/Runnable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x2

    .line 393
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 394
    int-to-long v2, p0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, v2, v3, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 395
    return-void
.end method
