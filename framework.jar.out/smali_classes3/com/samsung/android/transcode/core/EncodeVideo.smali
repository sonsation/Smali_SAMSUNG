.class public Lcom/samsung/android/transcode/core/EncodeVideo;
.super Lcom/samsung/android/transcode/core/Encode;
.source "EncodeVideo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;,
        Lcom/samsung/android/transcode/core/EncodeVideo$SpsPps;
    }
.end annotation


# static fields
.field private static final IMAGE_WAIT_TIMEOUT_MS:I = 0x3e8

.field private static final KEY_ERROR_TYPE:Ljava/lang/String; = "error-type"

.field private static final REWRITE_AUDIO_BUFFER_SIZE:I = 0x20000

.field private static final TIMEOUT_USEC:J = 0x2710L


# instance fields
.field private formatupdated:Z

.field private mAudioExtractor:Landroid/media/MediaExtractor;

.field private mCopyAudio:Z

.field private volatile mEncoding:Z

.field private mInputFilePath:Ljava/lang/String;

.field private mInputOrientationDegrees:I

.field private mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

.field private mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

.field private mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

.field private mStopLock:Ljava/lang/Object;

.field private mTrimAudioEndUs:J

.field private mTrimAudioStartUs:J

.field private mTrimVideoEndUs:J

.field private mTrimVideoStartUs:J

.field private mVideoExtractor:Landroid/media/MediaExtractor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/Encode;-><init>()V

    .line 45
    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    .line 49
    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    .line 57
    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->formatupdated:Z

    return-void
.end method

.method private CheckVideoCodec(IILjava/lang/String;Z)Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 2070
    if-eqz p4, :cond_3

    move v0, v1

    .line 2075
    :goto_0
    :try_start_0
    invoke-static {p3}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v3

    .line 2076
    if-eqz v3, :cond_4

    .line 2082
    invoke-static {v3}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v4

    .line 2083
    if-ltz v4, :cond_6

    .line 2089
    invoke-virtual {v3, v4}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    const-string/jumbo v4, "width"

    .line 2090
    invoke-virtual {v2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    :try_start_1
    const-string/jumbo v4, "height"

    .line 2091
    invoke-virtual {v2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    :try_start_2
    const-string/jumbo v6, "error-type"

    .line 2092
    invoke-virtual {v2, v6}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    if-nez v6, :cond_7

    move v6, v5

    move v5, v4

    move v4, v1

    .line 2107
    :goto_1
    if-nez v3, :cond_8

    .line 2112
    :cond_0
    :goto_2
    if-nez v4, :cond_a

    .line 2118
    if-eqz p4, :cond_b

    .line 2124
    :cond_1
    if-gtz v6, :cond_c

    :cond_2
    const-string/jumbo v0, "TranscodeLib"

    .line 2126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Resolution Error appear : width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", height= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    return v1

    .line 2071
    :cond_3
    invoke-static {p1, p2}, Lcom/samsung/android/transcode/util/CodecsHelper;->GetCodecResource(II)I

    move-result v0

    goto :goto_0

    :cond_4
    :try_start_3
    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "Can\'t create Extractor"

    .line 2078
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2107
    if-nez v3, :cond_5

    .line 2079
    :goto_3
    return v1

    .line 2108
    :cond_5
    invoke-virtual {v3}, Landroid/media/MediaExtractor;->release()V

    goto :goto_3

    :cond_6
    :try_start_4
    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v5, "Can\'t get VideoTrack"

    .line 2086
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v5, v1

    move v6, v1

    goto :goto_1

    :cond_7
    :try_start_5
    const-string/jumbo v6, "error-type"

    .line 2093
    invoke-virtual {v2, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v2

    move v6, v5

    move v5, v4

    move v4, v2

    goto :goto_1

    .line 2108
    :cond_8
    invoke-virtual {v3}, Landroid/media/MediaExtractor;->release()V

    goto :goto_2

    .line 2110
    :catch_0
    move-exception v2

    move v4, v1

    move v5, v1

    move v6, v1

    .line 2098
    :goto_4
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2107
    if-eqz v3, :cond_0

    .line 2108
    invoke-virtual {v3}, Landroid/media/MediaExtractor;->release()V

    goto :goto_2

    .line 2110
    :catch_1
    move-exception v2

    move v4, v1

    move v5, v1

    move v6, v1

    .line 2101
    :goto_5
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2107
    if-eqz v3, :cond_0

    .line 2108
    invoke-virtual {v3}, Landroid/media/MediaExtractor;->release()V

    goto :goto_2

    .line 2110
    :catch_2
    move-exception v2

    move v4, v1

    move v5, v1

    move v6, v1

    .line 2104
    :goto_6
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2107
    if-eqz v3, :cond_0

    .line 2108
    invoke-virtual {v3}, Landroid/media/MediaExtractor;->release()V

    goto/16 :goto_2

    .line 2110
    :catchall_0
    move-exception v0

    .line 2107
    if-nez v3, :cond_9

    .line 2109
    :goto_7
    throw v0

    .line 2108
    :cond_9
    invoke-virtual {v3}, Landroid/media/MediaExtractor;->release()V

    goto :goto_7

    :cond_a
    const-string/jumbo v0, "TranscodeLib"

    .line 2114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Extactor Error appear : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2115
    return v1

    .line 2118
    :cond_b
    if-ltz v0, :cond_1

    mul-int v2, v6, v5

    if-ge v0, v2, :cond_1

    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v2, "Codec resource is not enough"

    .line 2120
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2121
    return v1

    .line 2124
    :cond_c
    if-lez v5, :cond_2

    .line 2130
    const/4 v0, 0x1

    return v0

    .line 2110
    :catch_3
    move-exception v2

    move v5, v1

    move v6, v1

    goto :goto_6

    :catch_4
    move-exception v2

    move v4, v1

    move v6, v5

    move v5, v1

    goto :goto_6

    :catch_5
    move-exception v2

    move v6, v5

    move v5, v4

    move v4, v1

    goto :goto_6

    :catch_6
    move-exception v2

    move v5, v1

    move v6, v1

    goto :goto_5

    :catch_7
    move-exception v2

    move v4, v1

    move v6, v5

    move v5, v1

    goto :goto_5

    :catch_8
    move-exception v2

    move v6, v5

    move v5, v4

    move v4, v1

    goto :goto_5

    :catch_9
    move-exception v2

    move v5, v1

    move v6, v1

    goto :goto_4

    :catch_a
    move-exception v2

    move v4, v1

    move v6, v5

    move v5, v1

    goto :goto_4

    :catch_b
    move-exception v2

    move v6, v5

    move v5, v4

    move v4, v1

    goto/16 :goto_4
.end method

.method private CheckVideoFormat(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 2137
    const/4 v0, 0x1

    .line 2141
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2142
    :try_start_1
    invoke-static {p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->createMediaMetadataRetriever(Ljava/lang/String;)Landroid/media/MediaMetadataRetriever;

    move-result-object v1

    .line 2144
    invoke-static {v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v4

    const/4 v5, -0x1

    .line 2145
    if-ne v4, v5, :cond_1

    :cond_0
    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v4, "Video Format is not supported"

    .line 2147
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 2157
    :goto_0
    if-nez v2, :cond_2

    .line 2161
    :goto_1
    if-nez v1, :cond_3

    .line 2165
    :goto_2
    return v0

    .line 2145
    :cond_1
    invoke-static {v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSupportedFormat(Landroid/media/MediaMetadataRetriever;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 2158
    :cond_2
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->release()V

    goto :goto_1

    .line 2162
    :cond_3
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_2

    .line 2164
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 2153
    :goto_3
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2157
    if-nez v2, :cond_4

    .line 2161
    :goto_4
    if-nez v1, :cond_5

    :goto_5
    move v0, v3

    .line 2164
    goto :goto_2

    .line 2158
    :cond_4
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->release()V

    goto :goto_4

    .line 2162
    :cond_5
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_5

    .line 2164
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 2157
    :goto_6
    if-nez v2, :cond_6

    .line 2161
    :goto_7
    if-nez v1, :cond_7

    .line 2163
    :goto_8
    throw v0

    .line 2158
    :cond_6
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->release()V

    goto :goto_7

    .line 2162
    :cond_7
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_8

    .line 2164
    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method static synthetic access$002(Lcom/samsung/android/transcode/core/EncodeVideo;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->formatupdated:Z

    return p1
.end method

.method public static checkRewritable(Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2181
    if-nez p0, :cond_1

    const-string/jumbo v0, "TranscodeLib"

    .line 2258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid file path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .line 2261
    :cond_0
    :goto_0
    return v3

    .line 2182
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSupportedFormat(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 2186
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2199
    :goto_1
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    .line 2200
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Number of tracks: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 2202
    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v1

    .line 2203
    if-eq v1, v5, :cond_4

    .line 2208
    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    const-string/jumbo v4, "mime"

    .line 2209
    invoke-virtual {v1, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "video/avc"

    .line 2211
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_2
    move v1, v2

    move v4, v2

    .line 2220
    :goto_2
    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v6

    .line 2221
    if-eq v6, v5, :cond_6

    .line 2226
    invoke-virtual {v0, v6}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    const-string/jumbo v6, "mime"

    .line 2227
    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "audio/mp4a-latm"

    .line 2228
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_3
    move v0, v2

    move v6, v2

    .line 2237
    :goto_3
    if-nez v1, :cond_8

    move v3, v5

    .line 2252
    goto :goto_0

    .line 2190
    :catch_0
    move-exception v1

    .line 2189
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v4, "Valid video track absent"

    .line 2204
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    move v4, v3

    .line 2205
    goto :goto_2

    :cond_5
    const-string/jumbo v4, "video/mp4v-es"

    .line 2211
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "video/3gpp"

    .line 2212
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "video/hevc"

    .line 2213
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v4, "Unsupported mime type: video"

    .line 2216
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    move v4, v3

    goto :goto_2

    :cond_6
    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v6, "Valid audio track absent"

    .line 2222
    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    move v6, v3

    .line 2223
    goto :goto_3

    :cond_7
    const-string/jumbo v6, "audio/3gpp"

    .line 2228
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "audio/amr-wb"

    .line 2229
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v6, "Unsuppported mime type: audio"

    .line 2233
    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    move v6, v3

    goto :goto_3

    .line 2238
    :cond_8
    if-eqz v4, :cond_0

    .line 2239
    if-nez v0, :cond_9

    move v3, v2

    .line 2246
    goto/16 :goto_0

    .line 2240
    :cond_9
    if-eqz v6, :cond_0

    move v3, v2

    .line 2241
    goto/16 :goto_0
.end method

.method public static findAtom(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2273
    const/4 v3, 0x0

    .line 2274
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 2275
    new-array v5, v1, [B

    const/4 v1, 0x4

    .line 2276
    new-array v6, v1, [B

    .line 2277
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 2278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "file size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/4 v1, 0x5

    .line 2280
    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "mdia"

    aput-object v2, v7, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "minf"

    aput-object v2, v7, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "moov"

    aput-object v2, v7, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "stbl"

    aput-object v2, v7, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "trak"

    aput-object v2, v7, v1

    const/4 v1, 0x0

    .line 2284
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "r"

    invoke-direct {v4, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v0, 0x0

    .line 2287
    :goto_0
    cmp-long v2, v0, v8

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_1

    .line 2289
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "filePointer: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 2290
    invoke-virtual {v4, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    const/4 v2, 0x0

    .line 2295
    :try_start_2
    array-length v10, v5

    invoke-virtual {v4, v5, v2, v10}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 2296
    invoke-static {v5}, Lcom/samsung/android/transcode/core/EncodeVideo;->unsignedIntToLong([B)J

    move-result-wide v10

    .line 2297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Atom Size: "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 2301
    array-length v12, v6

    invoke-virtual {v4, v6, v2, v12}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 2303
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([B)V

    .line 2304
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Atom Box: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 2306
    invoke-static {v7, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v12

    .line 2307
    if-gez v12, :cond_2

    .line 2312
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-wide/16 v12, 0x1

    .line 2317
    cmp-long v2, v10, v12

    if-nez v2, :cond_4

    const-wide/16 v10, 0x8

    .line 2318
    add-long/2addr v10, v0

    invoke-virtual {v4, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v2, 0x8

    .line 2319
    new-array v2, v2, [B

    const/4 v10, 0x0

    .line 2320
    array-length v11, v2

    invoke-virtual {v4, v2, v10, v11}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 2321
    new-instance v10, Ljava/math/BigInteger;

    invoke-direct {v10, v2}, Ljava/math/BigInteger;-><init>([B)V

    .line 2322
    invoke-virtual {v10}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v10

    .line 2323
    add-long/2addr v0, v10

    .line 2324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "64bit: "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 2339
    :catchall_0
    move-exception v0

    move-object v1, v4

    .line 2338
    :goto_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    throw v0

    .line 2287
    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_1
    move v0, v3

    .line 2338
    :goto_4
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 2340
    return v0

    .line 2294
    :catch_0
    move-exception v2

    .line 2293
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 2308
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Found parent: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v10, " move to position: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const-wide/16 v10, 0x8

    .line 2310
    add-long/2addr v0, v10

    goto/16 :goto_0

    .line 2313
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 2314
    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const-wide/16 v12, 0x0

    .line 2325
    cmp-long v2, v10, v12

    if-nez v2, :cond_5

    const-string/jumbo v0, "filePointer does not go forward. Exit."

    .line 2326
    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 2327
    const/4 v0, 0x0

    goto :goto_4

    .line 2330
    :cond_5
    add-long/2addr v0, v10

    .line 2331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "move: "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v12, " atomsize "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 2339
    :catchall_1
    move-exception v0

    goto/16 :goto_3
.end method

.method public static getMaxEncodingDuration(IIII)I
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    const-wide/16 v8, 0x8

    const/16 v3, 0x64

    const/4 v2, 0x0

    const/16 v6, 0x3e8

    .line 1973
    int-to-float v0, p0

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-long v4, v0

    .line 1975
    mul-int v0, p1, p2

    div-int/lit16 v0, v0, 0x100

    .line 1977
    if-lt v0, v3, :cond_1

    .line 1979
    if-gt v0, v3, :cond_2

    .line 1981
    :cond_0
    if-gt v0, v6, :cond_3

    move v0, v2

    :goto_0
    const/4 v1, 0x1

    .line 1984
    if-eq p3, v1, :cond_4

    .line 1987
    mul-long/2addr v4, v8

    mul-long/2addr v4, v10

    add-int/lit8 v0, v0, 0x40

    int-to-long v0, v0

    div-long v0, v4, v0

    :goto_1
    const-string/jumbo v3, "TranscodeLib"

    .line 1990
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " width "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " height "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " audiocodec "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " maxdur "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    long-to-int v0, v0

    .line 1993
    if-lt v0, v6, :cond_5

    .line 1996
    return v0

    :cond_1
    const/16 v0, 0x40

    .line 1978
    goto :goto_0

    .line 1979
    :cond_2
    if-ge v0, v6, :cond_0

    const/16 v0, 0x96

    .line 1980
    goto :goto_0

    :cond_3
    const/16 v0, 0x15e

    .line 1982
    goto :goto_0

    .line 1985
    :cond_4
    mul-long/2addr v4, v8

    mul-long/2addr v4, v10

    add-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    div-long v0, v4, v0

    goto :goto_1

    .line 1994
    :cond_5
    return v2
.end method

.method private getVideoSampleSize(Landroid/media/MediaFormat;)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v0, "mime"

    .line 2169
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2174
    return v2

    :cond_0
    const-string/jumbo v0, "width"

    .line 2170
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "height"

    .line 2171
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 2172
    mul-int/2addr v0, v1

    return v0
.end method

.method private static isRecognizedFormat(I)Z
    .locals 1

    .prologue
    .line 2644
    sparse-switch p0, :sswitch_data_0

    .line 2653
    const/4 v0, 0x0

    return v0

    .line 2651
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 2644
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x27 -> :sswitch_0
        0x7f000100 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isSupportedFormat(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 2658
    invoke-static {p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSupportedFormat(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static parseAvcProfile([B)I
    .locals 1

    .prologue
    const/4 v0, 0x5

    .line 2358
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 2359
    sparse-switch v0, :sswitch_data_0

    const/4 v0, -0x1

    .line 2375
    return v0

    :sswitch_0
    const/4 v0, 0x1

    .line 2361
    return v0

    :sswitch_1
    const/4 v0, 0x2

    .line 2363
    return v0

    :sswitch_2
    const/4 v0, 0x4

    .line 2365
    return v0

    :sswitch_3
    const/16 v0, 0x8

    .line 2367
    return v0

    :sswitch_4
    const/16 v0, 0x10

    .line 2369
    return v0

    :sswitch_5
    const/16 v0, 0x20

    .line 2371
    return v0

    :sswitch_6
    const/16 v0, 0x40

    .line 2373
    return v0

    .line 2359
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x4d -> :sswitch_1
        0x58 -> :sswitch_2
        0x64 -> :sswitch_3
        0x6e -> :sswitch_4
        0x7a -> :sswitch_5
        0xf4 -> :sswitch_6
    .end sparse-switch
.end method

.method private static selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2631
    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v2

    move v0, v1

    .line 2632
    :goto_0
    iget-object v3, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v3, v3

    if-lt v0, v3, :cond_0

    const-string/jumbo v0, "TranscodeLib"

    .line 2639
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "couldn\'t find a good color format for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2640
    return v1

    .line 2633
    :cond_0
    iget-object v3, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    aget v3, v3, v0

    .line 2634
    invoke-static {v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->isRecognizedFormat(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2632
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2635
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "colorFormat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 2636
    return v3
.end method

.method private static final unsignedIntToLong([B)J
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v0, 0x0

    .line 2346
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    or-long/2addr v0, v2

    .line 2347
    shl-long/2addr v0, v4

    const/4 v2, 0x1

    .line 2348
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 2349
    shl-long/2addr v0, v4

    const/4 v2, 0x2

    .line 2350
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 2351
    shl-long/2addr v0, v4

    const/4 v2, 0x3

    .line 2352
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 2354
    return-wide v0
.end method


# virtual methods
.method public checkTransRewritable(Landroid/media/MediaFormat;ILjava/lang/String;)I
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x4

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string/jumbo v0, "width"

    .line 2507
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v5, "height"

    .line 2508
    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    .line 2515
    invoke-static {v0, v5}, Lcom/samsung/android/transcode/util/CodecsHelper;->GetCodecResource(II)I

    move-result v6

    .line 2516
    if-gez v6, :cond_1

    :cond_0
    :try_start_0
    const-string/jumbo v0, "ctts"

    .line 2522
    invoke-static {p3, v0}, Lcom/samsung/android/transcode/core/EncodeVideo;->findAtom(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eq v0, v4, :cond_2

    :goto_0
    const-string/jumbo v0, "video/avc"

    const-string/jumbo v5, "mime"

    .line 2532
    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "video/mp4v-es"

    const-string/jumbo v1, "mime"

    .line 2616
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "video/3gpp"

    const-string/jumbo v1, "mime"

    .line 2619
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string/jumbo v0, "TranscodeLib"

    .line 2623
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to detect csd-0: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "mime"

    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    :goto_1
    return v2

    .line 2516
    :cond_1
    mul-int/2addr v0, v5

    if-ge v6, v0, :cond_0

    const-string/jumbo v0, "Overshoot capability"

    .line 2517
    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 2518
    return v4

    :cond_2
    :try_start_1
    const-string/jumbo v0, "ctts detected"

    .line 2524
    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2525
    return v2

    .line 2530
    :catch_0
    move-exception v0

    .line 2529
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "csd-0"

    .line 2533
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "Unable to detect csd-0 or csd-1"

    .line 2613
    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "csd-0"

    .line 2534
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2535
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v5

    new-array v5, v5, [B

    .line 2536
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    new-array v6, v6, [B

    .line 2538
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 2539
    invoke-virtual {v0, v10}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 2540
    array-length v7, v6

    invoke-virtual {v0, v6, v2, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 2541
    invoke-virtual {v0, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 2543
    invoke-static {v5}, Lcom/samsung/android/transcode/core/EncodeVideo;->parseAvcProfile([B)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoProfile:I

    .line 2544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Profile: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoProfile:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 2549
    :try_start_2
    invoke-virtual {p0, p2}, Lcom/samsung/android/transcode/core/EncodeVideo;->getLocalEncHeader(I)Lcom/samsung/android/transcode/core/EncodeVideo$SpsPps;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    .line 2550
    if-eqz v1, :cond_6

    :goto_2
    const-string/jumbo v0, ""

    .line 2561
    array-length v7, v6

    move-object v5, v0

    move v0, v2

    :goto_3
    if-lt v0, v7, :cond_7

    .line 2564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "TargetSPS: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move v0, v2

    .line 2568
    :goto_4
    :try_start_3
    array-length v5, v6
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    if-lt v0, v5, :cond_8

    move v0, v3

    :goto_5
    const-string/jumbo v3, "csd-1"

    .line 2583
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_5
    :goto_6
    move v2, v0

    .line 2612
    goto/16 :goto_1

    :cond_6
    :try_start_4
    const-string/jumbo v0, "localSPS is null"

    .line 2551
    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 2552
    return v2

    .line 2557
    :catch_1
    move-exception v0

    .line 2556
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 2561
    :cond_7
    aget-byte v8, v6, v0

    .line 2562
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, "0x"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2561
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2569
    :cond_8
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "i: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v7, v6, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v1, Lcom/samsung/android/transcode/core/EncodeVideo$SpsPps;->_sps:[B

    aget-byte v7, v7, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 2571
    aget-byte v5, v6, v0

    iget-object v7, v1, Lcom/samsung/android/transcode/core/EncodeVideo$SpsPps;->_sps:[B

    aget-byte v7, v7, v0

    if-ne v5, v7, :cond_9

    .line 2568
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    :cond_9
    const-string/jumbo v0, "SPS does not match"

    .line 2572
    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2

    move v0, v4

    .line 2574
    goto/16 :goto_5

    .line 2581
    :catch_2
    move-exception v0

    .line 2579
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2580
    return v2

    :cond_a
    const-string/jumbo v3, "csd-1"

    .line 2584
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 2585
    invoke-virtual {v3}, Ljava/nio/Buffer;->capacity()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    new-array v6, v5, [B

    .line 2586
    invoke-virtual {v3, v10}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 2587
    array-length v5, v6

    invoke-virtual {v3, v6, v2, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 2588
    invoke-virtual {v3, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    const-string/jumbo v3, ""

    .line 2592
    array-length v7, v6

    move-object v5, v3

    move v3, v2

    :goto_7
    if-lt v3, v7, :cond_b

    .line 2595
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "TargetPPS: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move v3, v2

    .line 2599
    :goto_8
    :try_start_6
    array-length v5, v6

    if-ge v3, v5, :cond_5

    .line 2600
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "i: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v7, v6, v3

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v1, Lcom/samsung/android/transcode/core/EncodeVideo$SpsPps;->_pps:[B

    aget-byte v7, v7, v3

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 2601
    aget-byte v5, v6, v3

    iget-object v7, v1, Lcom/samsung/android/transcode/core/EncodeVideo$SpsPps;->_pps:[B

    aget-byte v7, v7, v3
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_3

    if-ne v5, v7, :cond_c

    .line 2599
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 2592
    :cond_b
    aget-byte v8, v6, v3

    .line 2593
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, "0x"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2592
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7

    :cond_c
    :try_start_7
    const-string/jumbo v0, "PPS does not match"

    .line 2602
    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_3

    move v0, v4

    .line 2604
    goto/16 :goto_6

    .line 2610
    :catch_3
    move-exception v0

    .line 2608
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2609
    return v2

    :cond_d
    const-string/jumbo v0, "Mpeg4: Rewrite"

    .line 2617
    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move v2, v4

    .line 2618
    goto/16 :goto_1

    :cond_e
    const-string/jumbo v0, "3gp: Rewrite"

    .line 2620
    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move v2, v4

    .line 2621
    goto/16 :goto_1
.end method

.method public getLocalEncHeader(I)Lcom/samsung/android/transcode/core/EncodeVideo$SpsPps;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 2384
    iget v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    iget v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 2387
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 2398
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    .line 2400
    iget-object v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoMimeType:Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    iget v4, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputHeight:I

    invoke-static {v2, v3, v4}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    const-string/jumbo v3, "bitrate"

    .line 2401
    iget v4, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoBitRate:I

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v3, "frame-rate"

    .line 2402
    invoke-virtual {v2, v3, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v3, "color-format"

    .line 2404
    invoke-virtual {v1}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/samsung/android/transcode/core/EncodeVideo;->selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v1, "i-frame-interval"

    .line 2405
    iget v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoIFrameInterval:I

    invoke-virtual {v2, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v1, "profile"

    .line 2406
    iget v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoProfile:I

    invoke-virtual {v2, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Local video format "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 2410
    invoke-virtual {v0, v2, v7, v7, v12}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 2411
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 2417
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 2418
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v11

    const-wide/16 v2, -0x1

    .line 2419
    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 2420
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "inputBufferIndex A: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 2422
    if-gez v1, :cond_0

    :goto_1
    const-wide/16 v2, 0x64

    .line 2435
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 2436
    new-instance v4, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v4}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const-wide/16 v2, 0x0

    .line 2437
    invoke-virtual {v0, v4, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    .line 2438
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "outputBufferIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/4 v2, -0x2

    .line 2440
    if-eq v1, v2, :cond_1

    move v3, v1

    .line 2444
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "outputBufferIndex 4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2445
    if-gez v3, :cond_2

    .line 2497
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 2498
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 2501
    :goto_3
    return-object v7

    .line 2397
    :catch_0
    move-exception v0

    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "codec cannot be created"

    .line 2389
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    move-object v0, v7

    .line 2397
    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "TranscodeLib"

    .line 2392
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "type is not a valid mime type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2393
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 2397
    :catch_2
    move-exception v0

    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "type is null"

    .line 2395
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2396
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v7

    goto/16 :goto_0

    .line 2423
    :cond_0
    :try_start_2
    aget-object v2, v10, v1

    .line 2424
    invoke-virtual {v2}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 2425
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    .line 2426
    invoke-virtual {v9}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 2427
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "inputBufferIndex G4: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const-wide/16 v2, -0x1

    .line 2429
    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 2430
    aget-object v2, v10, v1

    .line 2431
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    .line 2432
    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 2433
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "inputBufferIndex G5: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 2499
    :catch_3
    move-exception v1

    .line 2495
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2497
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 2498
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    goto/16 :goto_3

    :cond_1
    const-wide/16 v2, 0x0

    .line 2441
    :try_start_4
    invoke-virtual {v0, v4, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    move v3, v1

    goto/16 :goto_2

    .line 2446
    :cond_2
    aget-object v1, v11, v3

    .line 2447
    iget v2, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v2, v2, [B

    .line 2448
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "bufferInfo.size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 2449
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 2451
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2452
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    if-eq v5, v12, :cond_4

    const-string/jumbo v5, "Invalid start pattern"

    .line 2455
    invoke-static {v5}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 2458
    :cond_3
    :goto_5
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    if-ne v5, v12, :cond_3

    .line 2461
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    .line 2462
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ppsIndex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 2463
    add-int/lit8 v5, v1, -0x8

    new-array v5, v5, [B

    const/4 v6, 0x4

    const/4 v9, 0x0

    .line 2464
    array-length v10, v5

    invoke-static {v2, v6, v5, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2465
    array-length v6, v2

    sub-int/2addr v6, v1

    new-array v6, v6, [B

    const/4 v9, 0x0

    .line 2466
    array-length v10, v6

    invoke-static {v2, v1, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2468
    new-instance v9, Lcom/samsung/android/transcode/core/EncodeVideo$SpsPps;

    const/4 v1, 0x0

    invoke-direct {v9, p0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo$SpsPps;-><init>(Lcom/samsung/android/transcode/core/EncodeVideo;Lcom/samsung/android/transcode/core/EncodeVideo$1;)V

    .line 2470
    array-length v1, v5

    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, v9, Lcom/samsung/android/transcode/core/EncodeVideo$SpsPps;->_sps:[B

    .line 2471
    array-length v1, v6

    invoke-static {v6, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, v9, Lcom/samsung/android/transcode/core/EncodeVideo$SpsPps;->_pps:[B

    const-string/jumbo v1, ""

    .line 2475
    array-length v10, v5

    move-object v2, v1

    move v1, v8

    :goto_6
    if-lt v1, v10, :cond_5

    .line 2478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Local SPS: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const-string/jumbo v1, ""

    .line 2483
    array-length v5, v6

    move-object v2, v1

    move v1, v8

    :goto_7
    if-lt v1, v5, :cond_6

    .line 2486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Local PPS: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 2489
    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    const-wide/16 v2, 0x0

    .line 2490
    invoke-virtual {v0, v4, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2497
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 2498
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 2492
    return-object v9

    :cond_4
    :try_start_5
    const-string/jumbo v5, "start pattern match"

    .line 2453
    invoke-static {v5}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_5

    .line 2499
    :catchall_0
    move-exception v1

    .line 2497
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 2498
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    throw v1

    .line 2475
    :cond_5
    :try_start_6
    aget-byte v11, v5, v1

    .line 2476
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v12, "0x"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v11, " "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2475
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2483
    :cond_6
    aget-byte v8, v6, v1

    .line 2484
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v10, "0x"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, " "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v2

    .line 2483
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_7
.end method

.method public getOutputFileSize()I
    .locals 14

    .prologue
    const/4 v9, 0x0

    const-wide/16 v12, 0x0

    .line 2011
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v2

    .line 2012
    invoke-static {v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v0

    .line 2014
    invoke-virtual {v2, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    .line 2015
    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    .line 2016
    cmp-long v4, v0, v12

    if-nez v4, :cond_0

    const-string/jumbo v0, "durationUs"

    .line 2017
    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    move-wide v10, v0

    .line 2028
    :goto_0
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->release()V

    .line 2031
    iget-wide v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputMaxSizeKB:J

    cmp-long v0, v0, v12

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    .line 2032
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoMimeType:Ljava/lang/String;

    const-string/jumbo v1, "video/avc"

    if-eq v0, v1, :cond_2

    .line 2035
    :goto_2
    iget v1, p0, Lcom/samsung/android/transcode/core/Encode;->mSizeFraction:F

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputMaxSizeKB:J

    iget-wide v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    sub-long v4, v10, v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iget v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioBitRate:I

    div-int/lit16 v6, v0, 0x3e8

    iget v7, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    iget v8, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputHeight:I

    invoke-static/range {v1 .. v8}, Lcom/samsung/android/transcode/util/CodecsHelper;->getVideoEncodingBitRate(FJJIII)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 2046
    :goto_3
    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    sub-long v2, v10, v2

    long-to-double v2, v2

    const-wide v4, 0x415e848000000000L    # 8000000.0

    div-double/2addr v2, v4

    iget v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioBitRate:I

    add-int/2addr v0, v1

    int-to-double v0, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v4

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 2048
    iget-wide v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputMaxSizeKB:J

    cmp-long v1, v2, v12

    if-nez v1, :cond_4

    .line 2049
    int-to-double v0, v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0

    :cond_0
    move-wide v10, v0

    .line 2016
    goto :goto_0

    :cond_1
    move v0, v9

    .line 2031
    goto :goto_1

    :cond_2
    const v0, 0x3f666666    # 0.9f

    .line 2033
    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mSizeFraction:F
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 2051
    :catch_0
    move-exception v0

    .line 2055
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2062
    return v9

    .line 2043
    :cond_3
    :try_start_1
    iget v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    iget v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/transcode/core/Encode;->suggestBitRate(II)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_3

    .line 2051
    :cond_4
    return v0

    .line 2060
    :catch_1
    move-exception v0

    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "NullPointerException appear"

    .line 2058
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 2059
    return v0
.end method

.method public initialize(Ljava/lang/String;IILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 101
    if-lez p2, :cond_0

    .line 103
    if-lez p3, :cond_1

    .line 105
    if-eqz p1, :cond_2

    .line 107
    if-eqz p4, :cond_3

    .line 110
    invoke-direct {p0, p4}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckVideoFormat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 114
    invoke-direct {p0, p2, p3, p4, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckVideoCodec(IILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 117
    iput-object p1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFilePath:Ljava/lang/String;

    .line 118
    iput p2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    .line 119
    iput p3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputHeight:I

    .line 120
    iput-object p4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    .line 121
    return-void

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width cannot be equal to or less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "height cannot be equal to or less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "output file path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "input file path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Not a valid video format."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Not a valid video codec."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialize(Ljava/lang/String;IILjava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    if-lez p2, :cond_0

    .line 133
    if-lez p3, :cond_1

    .line 135
    if-eqz p1, :cond_2

    .line 137
    if-eqz p4, :cond_3

    .line 140
    invoke-direct {p0, p4}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckVideoFormat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 143
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckVideoCodec(IILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 146
    iput-object p1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFilePath:Ljava/lang/String;

    .line 147
    iput p2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    .line 148
    iput p3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputHeight:I

    .line 149
    iput-object p4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    .line 150
    return-void

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width cannot be equal to or less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "height cannot be equal to or less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "output file path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "input file path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Not a valid video format."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Not a valid video codec."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialize(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-static {p2}, Lcom/samsung/android/transcode/core/Encode$EncodeResolution;->isSupportedResolution(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    if-eqz p1, :cond_1

    .line 85
    if-eqz p3, :cond_2

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 89
    invoke-static {p2, v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->fillResolutionRect(ILandroid/graphics/Rect;)V

    .line 90
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0, p1, v1, v0, p3}, Lcom/samsung/android/transcode/core/EncodeVideo;->initialize(Ljava/lang/String;IILjava/lang/String;)V

    .line 91
    return-void

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid resolution value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Output file path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Input file path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected prepare()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    .line 228
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->prepareVideoCodec()V

    .line 229
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->prepareAudioCodec()V

    .line 230
    return-void
.end method

.method protected prepareAudioCodec()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v14, 0x1

    const/4 v0, 0x0

    const/4 v10, -0x1

    const/4 v8, 0x0

    .line 463
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 466
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    .line 467
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-static {v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v1

    .line 469
    if-eq v1, v10, :cond_5

    .line 473
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v11

    const-string/jumbo v1, "audio/unknown"

    const-string/jumbo v2, "mime"

    .line 475
    invoke-virtual {v11, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "error-type"

    .line 481
    invoke-virtual {v11, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 492
    :cond_0
    iput-boolean v14, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    .line 494
    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    const-string/jumbo v1, "durationUs"

    .line 496
    invoke-virtual {v11, v1}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "mTrimAudioEndUs was 0 but updated"

    .line 497
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v1, "TranscodeLib"

    .line 500
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Audio input format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "sample-rate"

    .line 501
    invoke-virtual {v11, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioSampleRateHZ:I

    const-string/jumbo v1, "channel-count"

    .line 502
    invoke-virtual {v11, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioChannelCount:I

    const-string/jumbo v1, "mime"

    .line 504
    invoke-virtual {v11, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "audio/mp4a-latm"

    .line 505
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_2
    :goto_0
    :try_start_0
    const-string/jumbo v0, "max-input-size"

    .line 608
    invoke-virtual {v11, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    .line 613
    :goto_1
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/Encode;->mMMSMode:Z

    if-nez v1, :cond_17

    .line 617
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioMimeType:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioSampleRateHZ:I

    iget v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioChannelCount:I

    invoke-static {v1, v2, v3}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    .line 618
    if-nez v0, :cond_18

    :goto_3
    const-string/jumbo v0, "bitrate"

    .line 620
    iget v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioBitRate:I

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v0, "aac-profile"

    .line 621
    iget v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioAACProfile:I

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v0, "TranscodeLib"

    .line 622
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Audio output format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getEncoderCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 624
    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->createAudioEncoder(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    .line 625
    invoke-static {v11}, Lcom/samsung/android/transcode/util/CodecsHelper;->createAudioDecoder(Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    .line 627
    return-void

    .line 464
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "mInputFilePath is NULL"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :cond_5
    iput-boolean v8, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    .line 471
    return-void

    :cond_6
    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "Audio mime type is unknown. Ignore audio track."

    .line 476
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iput-boolean v8, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    .line 478
    return-void

    :cond_7
    const-string/jumbo v1, "error-type"

    .line 483
    invoke-virtual {v11, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 484
    if-eqz v1, :cond_0

    const-string/jumbo v0, "TranscodeLib"

    .line 486
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Audio codec error appear : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iput-boolean v8, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    .line 488
    return-void

    .line 509
    :cond_8
    :try_start_1
    invoke-static {v11}, Lcom/samsung/android/transcode/util/CodecsHelper;->createAudioDecoder(Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    .line 511
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v1, :cond_a

    .line 512
    :goto_4
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v1, :cond_b

    move-object v7, v0

    .line 514
    :goto_5
    new-instance v12, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v12}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 519
    new-instance v13, Lcom/samsung/android/transcode/core/EncodeVideo$1;

    invoke-direct {v13, p0}, Lcom/samsung/android/transcode/core/EncodeVideo$1;-><init>(Lcom/samsung/android/transcode/core/EncodeVideo;)V

    move v9, v10

    .line 526
    :cond_9
    :goto_6
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->formatupdated:Z

    if-eqz v0, :cond_c

    .line 584
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_16

    .line 595
    :goto_7
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v0, :cond_2

    .line 596
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 603
    :catch_0
    move-exception v0

    .line 600
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 511
    :cond_a
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 603
    :catch_1
    move-exception v0

    .line 602
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 512
    :cond_b
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object v7, v0

    goto :goto_5

    .line 527
    :cond_c
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->formatupdated:Z

    if-eqz v0, :cond_e

    :cond_d
    :goto_8
    const/4 v0, 0x3

    .line 548
    invoke-static {v0, v13}, Lcom/samsung/android/transcode/util/CodecsHelper;->scheduleAfter(ILjava/lang/Runnable;)V

    .line 549
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->formatupdated:Z

    if-nez v0, :cond_9

    if-ne v9, v10, :cond_9

    .line 550
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v12, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    .line 552
    if-eq v0, v10, :cond_11

    const/4 v1, -0x3

    .line 556
    if-eq v0, v1, :cond_12

    const/4 v1, -0x2

    .line 561
    if-eq v0, v1, :cond_13

    .line 568
    if-ltz v0, :cond_14

    .line 574
    iget v1, v12, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_15

    move v9, v0

    .line 580
    goto :goto_6

    .line 528
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 529
    if-eq v1, v10, :cond_f

    .line 533
    aget-object v0, v7, v1

    .line 534
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 535
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    .line 536
    if-gtz v3, :cond_10

    .line 538
    if-ne v3, v10, :cond_d

    .line 540
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    .line 541
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->formatupdated:Z

    const-string/jumbo v0, "TranscodeLib"

    .line 542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Audio buffer is empty, size :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_f
    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "audio decoder input try again later while preparing audio codec"

    .line 530
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 537
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_8

    :cond_11
    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "audio decoder output buffer try again later while preparing audio codec"

    .line 553
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_12
    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "audio decoder: output buffers changed "

    .line 557
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    goto/16 :goto_6

    .line 562
    :cond_13
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    const-string/jumbo v1, "sample-rate"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioSampleRateHZ:I

    .line 563
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    const-string/jumbo v1, "channel-count"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioChannelCount:I

    const-string/jumbo v0, "TranscodeLib"

    .line 564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "audio decoder: output format changed: SampleRate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioSampleRateHZ:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",ChannelCount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioChannelCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->formatupdated:Z

    goto/16 :goto_6

    :cond_14
    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "Unexpected result from audio decoder dequeue output format."

    .line 569
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_15
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "audio decoder: codec config buffer"

    .line 575
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iget-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_6

    .line 586
    :cond_16
    :try_start_4
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 587
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    .line 588
    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_7

    .line 592
    :catch_2
    move-exception v0

    :try_start_5
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "Exception in releasing input audio decoder."

    .line 590
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_7

    .line 611
    :catch_3
    move-exception v0

    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "Audio max input size not defined"

    .line 610
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    goto/16 :goto_1

    .line 613
    :cond_17
    iget v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioChannelCount:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_3

    .line 614
    iget v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioChannelCount:I

    iput v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOriginalAudioChannelCount:I

    .line 615
    iput v14, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioChannelCount:I

    goto/16 :goto_2

    :cond_18
    const-string/jumbo v2, "max-input-size"

    .line 619
    invoke-virtual {v1, v2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/16 :goto_3
.end method

.method protected prepareVideoCodec()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    .line 241
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 244
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v0, 0x18

    .line 248
    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 249
    if-nez v0, :cond_5

    const/4 v0, 0x0

    .line 271
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    :goto_0
    if-nez v1, :cond_6

    .line 282
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    .line 283
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v0

    .line 285
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v11

    const-string/jumbo v0, "TranscodeLib"

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "input video format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    const-string/jumbo v0, "durationUs"

    .line 290
    invoke-virtual {v11, v0}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "mTrimVideoEndUs was 0 but updated"

    .line 291
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_1
    iget-wide v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputMaxSizeKB:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_8

    move v0, v10

    :goto_2
    if-nez v0, :cond_b

    .line 295
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->m2ndTimeEncoding:Z

    if-eqz v0, :cond_9

    .line 298
    :cond_2
    :goto_3
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mMMSMode:Z

    if-nez v0, :cond_a

    .line 301
    :goto_4
    iget v1, p0, Lcom/samsung/android/transcode/core/Encode;->mSizeFraction:F

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputMaxSizeKB:J

    iget-wide v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    iget-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iget v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioBitRate:I

    div-int/lit16 v6, v0, 0x3e8

    iget v7, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    iget v8, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputHeight:I

    invoke-static/range {v1 .. v8}, Lcom/samsung/android/transcode/util/CodecsHelper;->getVideoEncodingBitRate(FJJIII)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoBitRate:I

    :goto_5
    :try_start_1
    const-string/jumbo v0, "frame-rate"

    .line 314
    invoke-virtual {v11, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    .line 320
    :goto_6
    iget-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoMimeType:Ljava/lang/String;

    const-string/jumbo v2, "video/avc"

    if-eq v1, v2, :cond_c

    .line 323
    :cond_3
    :goto_7
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/Encode;->mMMSMode:Z

    if-nez v1, :cond_d

    .line 326
    :goto_8
    iget v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    if-gt v0, v1, :cond_e

    :goto_9
    const-string/jumbo v0, "TranscodeLib"

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mOutputVideoFrameRate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoMimeType:Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    iget v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputHeight:I

    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string/jumbo v1, "color-format"

    const v2, 0x7f000789

    .line 333
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v1, "bitrate"

    .line 334
    iget v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoBitRate:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v1, "frame-rate"

    .line 335
    iget v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v1, "i-frame-interval"

    .line 336
    iget v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoIFrameInterval:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v1, "TranscodeLib"

    .line 338
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "output video format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    .line 340
    iget-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v12, v12, v10}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 342
    new-instance v0, Lcom/samsung/android/transcode/surfaces/InputSurface;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/transcode/surfaces/InputSurface;-><init>(Landroid/view/Surface;)V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    .line 343
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 344
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/surfaces/InputSurface;->makeCurrent()V

    .line 345
    new-instance v0, Lcom/samsung/android/transcode/surfaces/OutputSurface;

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    invoke-direct {v0, v1}, Lcom/samsung/android/transcode/surfaces/OutputSurface;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    .line 346
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mLogoPresent:Z

    if-nez v0, :cond_f

    .line 350
    :goto_a
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->createVideoDecoder(Landroid/media/MediaFormat;Landroid/view/Surface;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    .line 351
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_10

    .line 354
    return-void

    .line 242
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "mInputFilePath is NULL"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_5
    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 257
    :goto_b
    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const/4 v0, 0x0

    .line 258
    :try_start_3
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 274
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 277
    if-eqz v1, :cond_0

    .line 278
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto/16 :goto_1

    .line 256
    :catch_1
    move-exception v0

    .line 254
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v9

    goto :goto_b

    :sswitch_1
    const/16 v0, 0x5a

    .line 261
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 280
    :catchall_0
    move-exception v0

    .line 277
    if-nez v1, :cond_7

    .line 279
    :goto_c
    throw v0

    :sswitch_2
    const/16 v0, 0xb4

    .line 264
    :try_start_6
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    goto/16 :goto_0

    :sswitch_3
    const/16 v0, 0x10e

    .line 267
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 278
    :cond_6
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_c

    :cond_8
    move v0, v9

    .line 294
    goto/16 :goto_2

    .line 295
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoMimeType:Ljava/lang/String;

    const-string/jumbo v1, "video/avc"

    if-ne v0, v1, :cond_2

    const v0, 0x3f666666    # 0.9f

    .line 296
    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mSizeFraction:F

    goto/16 :goto_3

    :cond_a
    const/16 v0, 0x7d00

    .line 299
    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioBitRate:I

    goto/16 :goto_4

    .line 309
    :cond_b
    iget v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    iget v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/transcode/core/Encode;->suggestBitRate(II)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoBitRate:I

    goto/16 :goto_5

    .line 318
    :catch_2
    move-exception v0

    move v0, v9

    goto/16 :goto_6

    .line 320
    :cond_c
    if-lez v0, :cond_3

    .line 321
    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    goto/16 :goto_7

    .line 324
    :cond_d
    iget v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    goto/16 :goto_8

    .line 327
    :cond_e
    iput-boolean v10, p0, Lcom/samsung/android/transcode/core/Encode;->mSkipFrames:Z

    .line 328
    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mFramesSkipInterval:I

    goto/16 :goto_9

    .line 347
    :cond_f
    new-instance v0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    invoke-direct {v0}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    .line 348
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->prepare()I

    goto/16 :goto_a

    .line 352
    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "can\'t set VideoDecoder"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method protected prepareVideoCodecNeo()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 357
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v0, 0x18

    .line 362
    invoke-virtual {v2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x14

    .line 363
    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    .line 364
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoBitRate:I

    .line 366
    if-nez v0, :cond_5

    const/4 v0, 0x0

    .line 388
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    :goto_0
    if-nez v2, :cond_6

    .line 399
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    .line 400
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v0

    .line 402
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "input video format: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 405
    iget-wide v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    const-string/jumbo v0, "durationUs"

    .line 407
    invoke-virtual {v2, v0}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    const-string/jumbo v0, "mTrimVideoEndUs was 0 but updated"

    .line 408
    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    :cond_1
    :try_start_1
    const-string/jumbo v0, "frame-rate"

    .line 413
    invoke-virtual {v2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    .line 418
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoMimeType:Ljava/lang/String;

    const-string/jumbo v3, "video/avc"

    if-eq v1, v3, :cond_8

    .line 421
    :cond_2
    :goto_3
    iget v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    if-gt v0, v1, :cond_9

    .line 425
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mOutputVideoFrameRate: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 427
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkRewritable(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/transcode/core/Encode;->mTransRewritable:I

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "askRewritable: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/transcode/core/Encode;->mTransRewritable:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 429
    iget v1, p0, Lcom/samsung/android/transcode/core/Encode;->mTransRewritable:I

    if-ne v1, v9, :cond_a

    .line 430
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkTransRewritable(Landroid/media/MediaFormat;ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mTransRewritable:I

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mTransRewritable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/core/Encode;->mTransRewritable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 433
    :goto_5
    iget v0, p0, Lcom/samsung/android/transcode/core/Encode;->mTransRewritable:I

    if-eq v0, v10, :cond_b

    .line 436
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoMimeType:Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    iget v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputHeight:I

    invoke-static {v0, v1, v3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string/jumbo v1, "color-format"

    const v3, 0x7f000789

    .line 437
    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v1, "bitrate"

    .line 438
    iget v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoBitRate:I

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v1, "frame-rate"

    .line 439
    iget v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v1, "i-frame-interval"

    .line 440
    iget v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoIFrameInterval:I

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 441
    iget v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoProfile:I

    if-ne v1, v10, :cond_c

    const-string/jumbo v1, "Skip video profile setup"

    .line 444
    invoke-static {v1}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 446
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "output video format "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 448
    iget v1, p0, Lcom/samsung/android/transcode/core/Encode;->mTransRewritable:I

    if-ne v1, v9, :cond_d

    .line 460
    :cond_4
    return-void

    .line 369
    :cond_5
    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 374
    :goto_7
    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const/4 v0, 0x0

    .line 375
    :try_start_3
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 397
    :catch_0
    move-exception v0

    .line 391
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 394
    if-eqz v2, :cond_0

    .line 395
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    goto/16 :goto_1

    .line 373
    :catch_1
    move-exception v0

    .line 371
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v1

    goto :goto_7

    :sswitch_1
    const/16 v0, 0x5a

    .line 378
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 397
    :catchall_0
    move-exception v0

    .line 394
    if-nez v2, :cond_7

    .line 396
    :goto_8
    throw v0

    :sswitch_2
    const/16 v0, 0xb4

    .line 381
    :try_start_6
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    goto/16 :goto_0

    :sswitch_3
    const/16 v0, 0x10e

    .line 384
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 395
    :cond_6
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_8

    .line 417
    :catch_2
    move-exception v0

    move v0, v1

    goto/16 :goto_2

    .line 418
    :cond_8
    if-lez v0, :cond_2

    .line 419
    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    goto/16 :goto_3

    .line 422
    :cond_9
    iput-boolean v9, p0, Lcom/samsung/android/transcode/core/Encode;->mSkipFrames:Z

    .line 423
    int-to-float v1, v0

    iget v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    iput v1, p0, Lcom/samsung/android/transcode/core/Encode;->mFramesSkipInterval:I

    goto/16 :goto_4

    .line 429
    :cond_a
    iget v1, p0, Lcom/samsung/android/transcode/core/Encode;->mTransRewritable:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    goto/16 :goto_5

    .line 434
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Unable to handle input file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const-string/jumbo v1, "profile"

    .line 442
    iget v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoProfile:I

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/16 :goto_6

    .line 449
    :cond_d
    iget-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    .line 450
    iget-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v8, v8, v9}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 451
    new-instance v0, Lcom/samsung/android/transcode/surfaces/InputSurface;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/transcode/surfaces/InputSurface;-><init>(Landroid/view/Surface;)V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    .line 452
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 453
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/surfaces/InputSurface;->makeCurrent()V

    .line 454
    new-instance v0, Lcom/samsung/android/transcode/surfaces/OutputSurface;

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    invoke-direct {v0, v1}, Lcom/samsung/android/transcode/surfaces/OutputSurface;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    .line 455
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->createVideoDecoder(Landroid/media/MediaFormat;Landroid/view/Surface;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    .line 456
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_4

    .line 457
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "can\'t set VideoDecoder"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method protected prepare_for_transrewrite()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    const/4 v0, -0x1

    .line 235
    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mTransRewritable:I

    .line 236
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->prepareVideoCodecNeo()V

    .line 237
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->prepareAudioCodec()V

    .line 238
    return-void
.end method

.method protected release()V
    .locals 3

    .prologue
    :try_start_0
    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "releasing encoder objects"

    .line 1796
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_1

    .line 1810
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_2

    .line 1822
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    if-nez v0, :cond_3

    .line 1833
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    if-nez v0, :cond_4

    .line 1843
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    if-nez v0, :cond_5

    .line 1853
    :goto_4
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    if-nez v0, :cond_6

    .line 1861
    :cond_0
    :goto_5
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    if-nez v0, :cond_7

    .line 1872
    :goto_6
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_8

    .line 1884
    :goto_7
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_9

    .line 1896
    :goto_8
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    if-nez v0, :cond_a

    .line 1906
    :goto_9
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_b

    .line 1921
    :goto_a
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1922
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    .line 1923
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1924
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1927
    return-void

    .line 1799
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 1800
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    .line 1801
    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1806
    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "Exception in releasing output video encoder."

    .line 1804
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1925
    :catchall_0
    move-exception v0

    .line 1921
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1922
    const/4 v2, 0x0

    :try_start_4
    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    .line 1923
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1924
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 1812
    :cond_2
    :try_start_5
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 1813
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    .line 1814
    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 1819
    :catch_1
    move-exception v0

    :try_start_6
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "Exception in releasing input video decoder."

    .line 1817
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 1824
    :cond_3
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    const/4 v0, 0x0

    .line 1825
    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 1830
    :catch_2
    move-exception v0

    :try_start_8
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "Exception in releasing video extractor."

    .line 1828
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 1835
    :cond_4
    :try_start_9
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->release()V

    const/4 v0, 0x0

    .line 1836
    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_3

    .line 1841
    :catch_3
    move-exception v0

    :try_start_a
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "Exception in releasing outputSurface."

    .line 1839
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_3

    .line 1845
    :cond_5
    :try_start_b
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->release()V

    const/4 v0, 0x0

    .line 1846
    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_4

    .line 1851
    :catch_4
    move-exception v0

    :try_start_c
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "Exception in releasing logo renderer."

    .line 1849
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_4

    .line 1853
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget-object v0, v0, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1854
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget-object v0, v0, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1855
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget-object v0, v0, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1856
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 1857
    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    .line 1858
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mLogoPresent:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_5

    .line 1864
    :cond_7
    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/surfaces/InputSurface;->release()V

    const/4 v0, 0x0

    .line 1865
    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_6

    .line 1870
    :catch_5
    move-exception v0

    :try_start_e
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "Exception in releasing input surface."

    .line 1868
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_6

    .line 1874
    :cond_8
    :try_start_f
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 1875
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    .line 1876
    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_7

    .line 1881
    :catch_6
    move-exception v0

    :try_start_10
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "Exception in releasing output audio encoder."

    .line 1879
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_7

    .line 1886
    :cond_9
    :try_start_11
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 1887
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    .line 1888
    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_8

    .line 1893
    :catch_7
    move-exception v0

    :try_start_12
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "Exception in releasing input audio decoder."

    .line 1891
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_8

    .line 1898
    :cond_a
    :try_start_13
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    const/4 v0, 0x0

    .line 1899
    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_9

    .line 1904
    :catch_8
    move-exception v0

    :try_start_14
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "Exception in releasing audio extractor."

    .line 1902
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_9

    .line 1908
    :cond_b
    :try_start_15
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    if-nez v0, :cond_c

    .line 1910
    :goto_b
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    const/4 v0, 0x0

    .line 1911
    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_9
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto/16 :goto_a

    .line 1917
    :catch_9
    move-exception v0

    :try_start_16
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "Exception in releasing muxer."

    .line 1915
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_a

    .line 1909
    :cond_c
    :try_start_17
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_9
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto :goto_b

    .line 1924
    :catchall_1
    move-exception v0

    :try_start_18
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_19
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    throw v0
.end method

.method public setEncodingCodecs(II)V
    .locals 3

    .prologue
    .line 178
    packed-switch p1, :pswitch_data_0

    const-string/jumbo v0, "TranscodeLib"

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "videoCodecType is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid video codec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string/jumbo v0, "video/3gpp"

    .line 180
    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoMimeType:Ljava/lang/String;

    .line 190
    :goto_0
    packed-switch p2, :pswitch_data_1

    .line 198
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid audio codec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const-string/jumbo v0, "video/avc"

    .line 183
    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoMimeType:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "audio/3gpp"

    .line 192
    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioMimeType:Ljava/lang/String;

    .line 200
    :goto_1
    return-void

    :pswitch_3
    const-string/jumbo v0, "audio/mp4a-latm"

    .line 195
    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioMimeType:Ljava/lang/String;

    goto :goto_1

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 190
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setMaxOutputSize(I)V
    .locals 7

    .prologue
    const/16 v6, 0xc8

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 207
    if-lez p1, :cond_2

    const-string/jumbo v2, "TranscodeLib"

    .line 210
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "max output size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    int-to-long v2, p1

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputMaxSizeKB:J

    .line 217
    iget-wide v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputMaxSizeKB:J

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    move v0, v1

    :cond_0
    if-nez v0, :cond_4

    iget v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    if-lt v0, v6, :cond_3

    :cond_1
    :goto_0
    const-string/jumbo v0, "TranscodeLib"

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mMMSMode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/Encode;->mMMSMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void

    .line 208
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size cannot be 0 or lesser"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_3
    iget v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputHeight:I

    if-ge v0, v6, :cond_1

    .line 218
    :cond_4
    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/Encode;->mMMSMode:Z

    goto :goto_0
.end method

.method public setTrimTime(JJ)V
    .locals 9

    .prologue
    const-wide/16 v6, 0x3e8

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 158
    cmp-long v2, p1, v4

    if-ltz v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "start time cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v2, v1

    .line 158
    goto :goto_0

    .line 160
    :cond_1
    cmp-long v2, p3, v4

    if-ltz v2, :cond_2

    move v2, v0

    :goto_1
    if-nez v2, :cond_3

    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "end time cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v2, v1

    .line 160
    goto :goto_1

    .line 162
    :cond_3
    cmp-long v2, p1, p3

    if-gtz v2, :cond_4

    :goto_2
    if-nez v0, :cond_5

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "start time cannot be more than end time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v0, v1

    .line 162
    goto :goto_2

    .line 164
    :cond_5
    cmp-long v0, p1, p3

    if-nez v0, :cond_6

    .line 165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "endUs cannot be equal to startUs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_6
    mul-long v0, p1, v6

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    .line 168
    mul-long v0, p3, v6

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Trim startUS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", endUS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 170
    return-void
.end method

.method protected startEncoding()V
    .locals 39
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 630
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v4, :cond_8

    .line 635
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v20

    .line 637
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v30

    .line 638
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v17

    .line 640
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v4, :cond_9

    const/4 v4, 0x0

    .line 641
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v5, :cond_a

    const/4 v5, 0x0

    move-object v11, v5

    .line 643
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v5, :cond_b

    const/4 v5, 0x0

    .line 644
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v6, :cond_c

    const/4 v6, 0x0

    move-object v12, v6

    .line 646
    :goto_3
    new-instance v31, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v31 .. v31}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 647
    new-instance v32, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v32 .. v32}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 649
    new-instance v33, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v33 .. v33}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 650
    new-instance v34, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v34 .. v34}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/16 v28, 0x0

    const/16 v19, 0x0

    .line 657
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v6, :cond_d

    const/4 v6, 0x1

    .line 658
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v7, :cond_e

    const/4 v7, 0x1

    .line 659
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v8, :cond_f

    const/4 v8, 0x1

    .line 662
    :goto_6
    const/4 v13, 0x0

    .line 663
    const/16 v18, 0x0

    .line 664
    const/16 v16, 0x0

    const/16 v22, -0x1

    const/4 v15, 0x0

    const/4 v14, 0x0

    .line 672
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    shl-int/lit8 v35, v9, 0x1

    .line 673
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/samsung/android/transcode/core/Encode;->mLogoPresent:Z

    if-nez v9, :cond_10

    .line 698
    :goto_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v9, v24, v26

    if-eqz v9, :cond_0

    .line 699
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    move-wide/from16 v24, v0

    const/4 v10, 0x0

    move-wide/from16 v0, v24

    invoke-virtual {v9, v0, v1, v10}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 705
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v9, :cond_11

    :cond_1
    const-wide/16 v26, -0x1

    move/from16 v25, v8

    move/from16 v24, v7

    move/from16 v21, v6

    move-object/from16 v23, v5

    move-object/from16 v29, v4

    move v4, v13

    .line 715
    :goto_8
    if-nez v18, :cond_14

    .line 724
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v5, :cond_15

    :cond_3
    :goto_9
    move v13, v4

    .line 769
    :cond_4
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v4, :cond_1d

    .line 870
    :cond_5
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v4, :cond_30

    .line 928
    :cond_6
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v4, :cond_3b

    move/from16 v4, v24

    move-object/from16 v5, v28

    move-object/from16 v6, v29

    .line 1151
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v7, :cond_64

    .line 1160
    :cond_7
    :goto_e
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v7, :cond_68

    move/from16 v24, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move v4, v13

    goto :goto_8

    :cond_8
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "Not starting encoding because it is stopped by user."

    .line 632
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    return-void

    .line 640
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    goto/16 :goto_0

    .line 641
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    move-object v11, v5

    goto/16 :goto_1

    .line 643
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    goto/16 :goto_2

    .line 644
    :cond_c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v6

    move-object v12, v6

    goto/16 :goto_3

    :cond_d
    const/4 v6, 0x0

    .line 657
    goto/16 :goto_4

    :cond_e
    const/4 v7, 0x0

    .line 658
    goto/16 :goto_5

    :cond_f
    const/4 v8, 0x0

    .line 659
    goto/16 :goto_6

    .line 674
    :cond_10
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget-object v10, v10, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawWidth:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawHeight:I

    move/from16 v23, v0

    move/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v9, v10, v0, v1}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->loadTexture(Landroid/graphics/Bitmap;II)I

    .line 675
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget-object v9, v9, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 676
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    .line 678
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    shr-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget v10, v10, Lcom/samsung/android/transcode/core/Encode$Logo;->mTopX:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawWidth:I

    move/from16 v21, v0

    shr-int/lit8 v21, v21, 0x1

    add-int v10, v10, v21

    int-to-float v10, v10

    const/high16 v21, 0x3f800000    # 1.0f

    mul-float v10, v10, v21

    sub-float/2addr v9, v10

    neg-float v9, v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    shr-int/lit8 v10, v10, 0x1

    int-to-float v10, v10

    div-float v10, v9, v10

    .line 679
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputHeight:I

    shr-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/samsung/android/transcode/core/Encode$Logo;->mTopY:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawHeight:I

    move/from16 v23, v0

    shr-int/lit8 v23, v23, 0x1

    add-int v21, v21, v23

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v23, 0x3f800000    # 1.0f

    mul-float v21, v21, v23

    sub-float v9, v9, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputHeight:I

    move/from16 v21, v0

    shr-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v9, v9, v21

    .line 681
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    move/from16 v21, v0

    sparse-switch v21, :sswitch_data_0

    .line 693
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10, v9}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->setProjectionMatrixTranslate(FF)V

    .line 694
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget v10, v10, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawWidth:I

    int-to-float v10, v10

    const/high16 v21, 0x3f800000    # 1.0f

    mul-float v10, v10, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v10, v10, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v23, 0x3f800000    # 1.0f

    mul-float v21, v21, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v21, v21, v23

    move/from16 v0, v21

    invoke-virtual {v9, v10, v0}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->setProjectionMatrixScale(FF)V

    .line 695
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    int-to-float v10, v10

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/high16 v24, 0x3f800000    # 1.0f

    move/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v9, v10, v0, v1, v2}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->setProjectionMatrixRotate(FFFF)V

    goto/16 :goto_7

    :sswitch_0
    const/high16 v21, -0x40800000    # -1.0f

    .line 683
    mul-float v9, v9, v21

    goto :goto_f

    :sswitch_1
    const/high16 v21, -0x40800000    # -1.0f

    .line 686
    mul-float v10, v10, v21

    const/high16 v21, -0x40800000    # -1.0f

    .line 687
    mul-float v9, v9, v21

    goto :goto_f

    :sswitch_2
    const/high16 v21, -0x40800000    # -1.0f

    .line 690
    mul-float v10, v10, v21

    goto :goto_f

    .line 705
    :cond_11
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v9, v24, v26

    if-eqz v9, :cond_1

    .line 706
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    move-wide/from16 v24, v0

    const/4 v10, 0x0

    move-wide/from16 v0, v24

    invoke-virtual {v9, v0, v1, v10}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 707
    :goto_10
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v9}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    move-wide/from16 v26, v0

    cmp-long v9, v24, v26

    if-ltz v9, :cond_12

    const/4 v9, 0x1

    :goto_11
    if-nez v9, :cond_1

    .line 708
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v9}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v24

    const-wide/16 v26, -0x1

    cmp-long v9, v24, v26

    if-nez v9, :cond_13

    .line 709
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Invalid File!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 707
    :cond_12
    const/4 v9, 0x0

    goto :goto_11

    .line 710
    :cond_13
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v9}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_10

    .line 715
    :cond_14
    if-eqz v25, :cond_2

    .line 1166
    :goto_12
    return-void

    .line 724
    :cond_15
    if-nez v4, :cond_3

    if-nez v19, :cond_17

    .line 727
    :cond_16
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const-wide/16 v6, 0x2710

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    const/4 v6, -0x1

    .line 728
    if-eq v5, v6, :cond_18

    .line 734
    aget-object v4, v30, v5

    .line 735
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v7

    .line 736
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    .line 737
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    move-wide/from16 v36, v0

    cmp-long v4, v8, v36

    if-lez v4, :cond_19

    const/4 v4, 0x1

    :goto_13
    if-nez v4, :cond_1c

    .line 738
    if-gez v7, :cond_1a

    .line 746
    :goto_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->advance()Z

    move-result v4

    if-eqz v4, :cond_1b

    const/4 v4, 0x0

    :goto_15
    move v13, v4

    .line 751
    :goto_16
    if-eqz v13, :cond_4

    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v6, "video extractor: EOS"

    .line 753
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto/16 :goto_a

    .line 724
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    if-nez v5, :cond_16

    goto/16 :goto_9

    :cond_18
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v6, "no video decoder input buffer"

    .line 730
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v13, v4

    .line 731
    goto/16 :goto_a

    .line 737
    :cond_19
    const/4 v4, 0x0

    goto :goto_13

    .line 739
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    .line 744
    invoke-virtual {v10}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v10

    .line 739
    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_14

    :cond_1b
    const/4 v4, 0x1

    .line 746
    goto :goto_15

    .line 749
    :cond_1c
    const/4 v13, 0x1

    goto :goto_16

    .line 769
    :cond_1d
    if-nez v16, :cond_5

    if-nez v19, :cond_20

    .line 771
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const-wide/16 v6, 0x2710

    move-object/from16 v0, v32

    invoke-virtual {v4, v0, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v5

    const/4 v4, -0x1

    .line 772
    if-eq v5, v4, :cond_21

    const/4 v4, -0x3

    .line 777
    if-eq v5, v4, :cond_22

    const/4 v4, -0x2

    .line 783
    if-eq v5, v4, :cond_23

    .line 789
    aget-object v4, v17, v5

    .line 790
    move-object/from16 v0, v32

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_24

    const-string/jumbo v4, "TranscodeLib"

    .line 798
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "video decoder: returned buffer for time "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v32

    iget-wide v8, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    move-object/from16 v0, v32

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v4, :cond_25

    const/4 v4, 0x0

    .line 802
    :goto_17
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v6, v5, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 803
    if-nez v4, :cond_26

    .line 853
    :cond_1f
    :goto_18
    move-object/from16 v0, v32

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "video decoder: EOS"

    .line 856
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    const/4 v4, 0x1

    .line 858
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    move/from16 v16, v4

    goto/16 :goto_b

    .line 769
    :cond_20
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    if-nez v4, :cond_1e

    goto/16 :goto_b

    :cond_21
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "no video decoder output buffer"

    .line 774
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_22
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "video decoder: output buffers changed"

    .line 779
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object/from16 v17, v4

    .line 781
    goto/16 :goto_b

    :cond_23
    const-string/jumbo v4, "TranscodeLib"

    .line 785
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "video decoder: codec info format changed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_24
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v6, "video decoder: codec config buffer"

    .line 793
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_b

    :cond_25
    const/4 v4, 0x1

    .line 801
    goto/16 :goto_17

    :cond_26
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "output surface: await new image"

    .line 805
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->checkForNewImage(I)Z

    move-result v4

    if-eqz v4, :cond_29

    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "output surface: draw image"

    .line 817
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x4000

    .line 818
    invoke-static {v4}, Landroid/opengl/GLES20;->glClear(I)V

    .line 819
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    invoke-virtual {v4}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->drawImage()V

    .line 821
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/Encode;->mLogoPresent:Z

    if-nez v4, :cond_2b

    .line 825
    :cond_27
    :goto_19
    move-object/from16 v0, v32

    iget-wide v4, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_2c

    const/4 v4, 0x1

    :goto_1a
    if-nez v4, :cond_2d

    .line 826
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/Encode;->mSkipFrames:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_2e

    :cond_28
    const/4 v4, 0x0

    .line 831
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    move-object/from16 v0, v32

    iget-wide v6, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/transcode/surfaces/InputSurface;->setPresentationTime(J)V

    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v6, "input surface: swap buffers"

    .line 834
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    invoke-virtual {v5}, Lcom/samsung/android/transcode/surfaces/InputSurface;->swapBuffers()Z

    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v6, "video encoder: notified of new frame"

    .line 837
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 838
    add-int/lit8 v5, v15, 0x1

    .line 840
    :goto_1b
    add-int/lit8 v14, v4, 0x1

    :goto_1c
    move v15, v5

    .line 851
    goto/16 :goto_18

    :cond_29
    :try_start_2
    const-string/jumbo v4, "TranscodeLib"

    .line 810
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "video decoder: checkForNewImage return false!!  mUserStop : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_a

    .line 851
    :catch_0
    move-exception v4

    .line 844
    :goto_1d
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 845
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v6, :cond_2f

    .line 849
    :cond_2a
    :goto_1e
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 822
    :cond_2b
    :try_start_3
    rem-int v4, v15, v35

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    if-ge v4, v5, :cond_27

    .line 823
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    invoke-virtual {v4}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->draw()V

    goto/16 :goto_19

    .line 825
    :cond_2c
    const/4 v4, 0x0

    goto :goto_1a

    :cond_2d
    move v5, v15

    goto :goto_1c

    .line 826
    :cond_2e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/Encode;->mFramesSkipInterval:I

    rem-int v4, v14, v4
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v4, :cond_28

    move v4, v14

    move v5, v15

    goto :goto_1b

    .line 845
    :cond_2f
    if-eqz v5, :cond_2a

    const-string/jumbo v6, "Surface frame wait timed out"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1f

    goto :goto_1e

    .line 870
    :cond_30
    if-nez v18, :cond_6

    if-nez v19, :cond_32

    .line 871
    :cond_31
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const-wide/16 v6, 0x2710

    move-object/from16 v0, v31

    invoke-virtual {v4, v0, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v5

    const/4 v4, -0x1

    .line 873
    if-eq v5, v4, :cond_33

    const/4 v4, -0x3

    .line 878
    if-eq v5, v4, :cond_34

    const/4 v4, -0x2

    .line 884
    if-eq v5, v4, :cond_35

    .line 895
    if-ltz v5, :cond_37

    .line 900
    aget-object v4, v20, v5

    .line 901
    move-object/from16 v0, v31

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_38

    .line 911
    move-object/from16 v0, v31

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v6, :cond_39

    .line 917
    :goto_1f
    move-object/from16 v0, v31

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_3a

    move/from16 v4, v18

    .line 923
    :goto_20
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move/from16 v18, v4

    .line 926
    goto/16 :goto_c

    .line 870
    :cond_32
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    if-nez v4, :cond_31

    goto/16 :goto_c

    :cond_33
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "no video encoder output buffer"

    .line 875
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :cond_34
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "video encoder: output buffers changed"

    .line 880
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object/from16 v20, v4

    .line 882
    goto/16 :goto_c

    :cond_35
    const-string/jumbo v4, "TranscodeLib"

    .line 886
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "video encoder: output format changed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/Encode;->mVideoTrackIndex:I

    if-gez v4, :cond_36

    .line 892
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    move-object/from16 v19, v4

    .line 893
    goto/16 :goto_c

    .line 890
    :cond_36
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Video encoder output format changed after muxer has started"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_37
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "Unexpected result from video encoder dequeue output format."

    .line 897
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :cond_38
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v6, "video encoder: codec config buffer"

    .line 904
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_c

    :cond_39
    const-string/jumbo v6, "TranscodeLib"

    .line 913
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "video encoder: writing sample data timestamp "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v31

    iget-wide v8, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/transcode/core/Encode;->mVideoTrackIndex:I

    move-object/from16 v0, v31

    invoke-virtual {v6, v7, v4, v0}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto/16 :goto_1f

    :cond_3a
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v6, "video encoder: EOS"

    .line 920
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    const/4 v4, 0x1

    goto/16 :goto_20

    .line 935
    :cond_3b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v4, :cond_40

    .line 974
    :cond_3c
    :goto_21
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v4, :cond_48

    .line 1018
    :cond_3d
    :goto_22
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v4, :cond_50

    :cond_3e
    move/from16 v4, v24

    .line 1081
    :goto_23
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v5, :cond_57

    :cond_3f
    :goto_24
    move-object/from16 v5, v28

    move-object/from16 v6, v29

    goto/16 :goto_d

    .line 935
    :cond_40
    if-nez v21, :cond_3c

    if-nez v28, :cond_42

    .line 936
    :cond_41
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    const/4 v4, -0x1

    .line 937
    if-eq v5, v4, :cond_43

    .line 943
    aget-object v4, v12, v5

    .line 944
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v7

    .line 945
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    .line 946
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    move-wide/from16 v36, v0

    cmp-long v4, v8, v36

    if-lez v4, :cond_44

    const/4 v4, 0x1

    :goto_25
    if-nez v4, :cond_47

    .line 947
    if-gtz v7, :cond_45

    .line 951
    :goto_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->advance()Z

    move-result v4

    if-eqz v4, :cond_46

    const/4 v4, 0x0

    :goto_27
    move/from16 v21, v4

    .line 957
    :goto_28
    if-eqz v21, :cond_3c

    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v6, "audio decoder sending EOS"

    .line 959
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_21

    .line 935
    :cond_42
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    if-nez v4, :cond_41

    goto :goto_21

    :cond_43
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "audio decoder input try again later"

    .line 939
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 946
    :cond_44
    const/4 v4, 0x0

    goto :goto_25

    .line 948
    :cond_45
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v10}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v10

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_26

    :cond_46
    const/4 v4, 0x1

    .line 951
    goto :goto_27

    .line 954
    :cond_47
    const/16 v21, 0x1

    goto :goto_28

    .line 974
    :cond_48
    if-nez v24, :cond_3d

    const/4 v4, -0x1

    move/from16 v0, v22

    if-ne v0, v4, :cond_3d

    if-nez v28, :cond_4a

    .line 975
    :cond_49
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v6, 0x2710

    move-object/from16 v0, v34

    invoke-virtual {v4, v0, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4

    const/4 v5, -0x1

    .line 976
    if-eq v4, v5, :cond_4b

    const/4 v5, -0x3

    .line 981
    if-eq v4, v5, :cond_4c

    const/4 v5, -0x2

    .line 987
    if-eq v4, v5, :cond_4d

    .line 993
    if-ltz v4, :cond_4e

    .line 1000
    move-object/from16 v0, v34

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_4f

    move/from16 v22, v4

    .line 1007
    goto/16 :goto_22

    .line 974
    :cond_4a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    if-nez v4, :cond_49

    goto/16 :goto_22

    :cond_4b
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "audio decoder output buffer try again later while decoding"

    .line 978
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_22

    :cond_4c
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "audio decoder: output buffers changed"

    .line 983
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object/from16 v23, v4

    .line 985
    goto/16 :goto_22

    :cond_4d
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "audio decoder: output format changed: "

    .line 990
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_22

    :cond_4e
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "Unexpected result from audio decoder dequeue output format."

    .line 995
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_22

    :cond_4f
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v6, "audio decoder: codec config buffer"

    .line 1002
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_22

    :cond_50
    const/4 v4, -0x1

    .line 1018
    move/from16 v0, v22

    if-eq v0, v4, :cond_3e

    .line 1020
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    const/4 v4, -0x1

    .line 1021
    if-eq v5, v4, :cond_51

    .line 1027
    aget-object v6, v11, v5

    .line 1028
    move-object/from16 v0, v34

    iget v7, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 1029
    move-object/from16 v0, v34

    iget-wide v8, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 1031
    if-gez v7, :cond_52

    .line 1063
    :goto_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    move/from16 v0, v22

    invoke-virtual {v4, v0, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    const/16 v22, -0x1

    .line 1065
    move-object/from16 v0, v34

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_56

    move/from16 v4, v24

    goto/16 :goto_23

    :cond_51
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "audio encoder input buffer try again later"

    .line 1023
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v4, v24

    .line 1024
    goto/16 :goto_23

    .line 1032
    :cond_52
    aget-object v4, v23, v22

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 1033
    move-object/from16 v0, v34

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v10, v4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 1034
    move-object/from16 v0, v34

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v4, v7

    invoke-virtual {v10, v4}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 1036
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/Encode;->mOriginalAudioChannelCount:I

    if-gtz v4, :cond_53

    const/4 v4, 0x0

    .line 1058
    invoke-virtual {v6, v4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 1059
    invoke-virtual {v6, v10}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1060
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    move-object/from16 v0, v34

    iget v10, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_29

    .line 1037
    :cond_53
    invoke-virtual {v10}, Ljava/nio/Buffer;->capacity()I

    move-result v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v36

    .line 1038
    if-nez v36, :cond_54

    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "TempAudio is null!"

    .line 1054
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    :cond_54
    const/4 v4, 0x0

    .line 1039
    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 1040
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/Encode;->mOriginalAudioChannelCount:I

    div-int v4, v7, v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    const/4 v4, 0x0

    .line 1042
    :goto_2a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/transcode/core/Encode;->mOriginalAudioChannelCount:I

    move/from16 v37, v0

    mul-int/lit8 v37, v37, 0x2

    div-int v37, v7, v37

    move/from16 v0, v37

    if-lt v4, v0, :cond_55

    const/4 v4, 0x0

    .line 1047
    invoke-virtual {v6, v4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 1048
    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1049
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/transcode/core/Encode;->mOriginalAudioChannelCount:I

    div-int/2addr v7, v10

    move-object/from16 v0, v34

    iget v10, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 1051
    invoke-virtual/range {v36 .. v36}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    goto/16 :goto_29

    .line 1043
    :cond_55
    mul-int/lit8 v37, v4, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/transcode/core/Encode;->mOriginalAudioChannelCount:I

    move/from16 v38, v0

    mul-int v38, v38, v4

    mul-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v38

    invoke-virtual/range {v36 .. v38}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 1044
    mul-int/lit8 v37, v4, 0x2

    add-int/lit8 v37, v37, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/transcode/core/Encode;->mOriginalAudioChannelCount:I

    move/from16 v38, v0

    mul-int v38, v38, v4

    mul-int/lit8 v38, v38, 0x2

    add-int/lit8 v38, v38, 0x1

    move/from16 v0, v38

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v38

    invoke-virtual/range {v36 .. v38}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 1042
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    :cond_56
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "audio decoder: EOS"

    .line 1067
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    const/4 v4, 0x1

    goto/16 :goto_23

    .line 1081
    :cond_57
    if-nez v25, :cond_3f

    if-nez v28, :cond_59

    .line 1082
    :cond_58
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v6, 0x2710

    move-object/from16 v0, v33

    invoke-virtual {v5, v0, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v8

    const/4 v5, -0x1

    .line 1083
    if-eq v8, v5, :cond_5a

    const/4 v5, -0x3

    .line 1088
    if-eq v8, v5, :cond_5b

    const/4 v5, -0x2

    .line 1094
    if-eq v8, v5, :cond_5c

    .line 1104
    if-ltz v8, :cond_5e

    .line 1110
    aget-object v9, v29, v8

    .line 1112
    move-object/from16 v0, v33

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_5f

    .line 1120
    move-object/from16 v0, v33

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v5, :cond_60

    move-wide/from16 v6, v26

    .line 1133
    :goto_2b
    move-object/from16 v0, v33

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_63

    move/from16 v5, v25

    .line 1138
    :goto_2c
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v10, 0x0

    invoke-virtual {v9, v8, v10}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move-wide/from16 v26, v6

    move/from16 v25, v5

    move-object/from16 v5, v28

    move-object/from16 v6, v29

    .line 1140
    goto/16 :goto_d

    .line 1081
    :cond_59
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    if-nez v5, :cond_58

    goto/16 :goto_24

    :cond_5a
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v6, "audio encoder output buffer try again later"

    .line 1085
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v5, v28

    move-object/from16 v6, v29

    .line 1086
    goto/16 :goto_d

    :cond_5b
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v6, "audio encoder: output buffers changed"

    .line 1090
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    move-object v6, v5

    move-object/from16 v5, v28

    .line 1092
    goto/16 :goto_d

    .line 1095
    :cond_5c
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/transcode/core/Encode;->mAudioTrackIndex:I

    if-gez v5, :cond_5d

    .line 1098
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v5

    const-string/jumbo v6, "TranscodeLib"

    .line 1100
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "audio encoder: output format changed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v6, v29

    .line 1102
    goto/16 :goto_d

    .line 1096
    :cond_5d
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Audio encoder output format changed after muxer is started."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5e
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v6, "Unexpected result from audio encoder dequeue output format."

    .line 1106
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v5, v28

    move-object/from16 v6, v29

    .line 1107
    goto/16 :goto_d

    :cond_5f
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v6, "audio encoder ignoring BUFFER_FLAG_CODEC_CONFIG"

    .line 1114
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    invoke-virtual {v5, v8, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move-object/from16 v5, v28

    move-object/from16 v6, v29

    .line 1117
    goto/16 :goto_d

    :cond_60
    const-string/jumbo v5, "TranscodeLib"

    .line 1122
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "audio encoder writing sample data to muxer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v33

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v36, v0

    move-wide/from16 v0, v36

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    move-object/from16 v0, v33

    iget-wide v6, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v5, v26, v6

    if-gtz v5, :cond_61

    const/4 v5, 0x1

    :goto_2d
    if-nez v5, :cond_62

    .line 1125
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Audio time stamps are not in increasing order."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1124
    :cond_61
    const/4 v5, 0x0

    goto :goto_2d

    .line 1127
    :cond_62
    move-object/from16 v0, v33

    iget-wide v6, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 1128
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/transcode/core/Encode;->mAudioTrackIndex:I

    move-object/from16 v0, v33

    invoke-virtual {v5, v10, v9, v0}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto/16 :goto_2b

    :cond_63
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v9, "audio encoder: EOS"

    .line 1135
    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    const/4 v5, 0x1

    goto/16 :goto_2c

    .line 1151
    :cond_64
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    if-nez v7, :cond_7

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v7, :cond_66

    .line 1152
    :cond_65
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/android/transcode/core/Encode;->mVideoTrackIndex:I

    .line 1153
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v7, :cond_67

    .line 1155
    :goto_2e
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    invoke-virtual {v7, v8}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 1156
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v7}, Landroid/media/MediaMuxer;->start()V

    .line 1157
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    goto/16 :goto_e

    .line 1151
    :cond_66
    if-nez v5, :cond_65

    goto/16 :goto_e

    .line 1154
    :cond_67
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v7, v5}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/android/transcode/core/Encode;->mAudioTrackIndex:I

    goto :goto_2e

    :cond_68
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "Encoding abruptly stopped."

    .line 1162
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 851
    :catch_1
    move-exception v5

    move v14, v4

    move-object v4, v5

    goto/16 :goto_1d

    .line 681
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public startTransRewriting()V
    .locals 39
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1170
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v2, :cond_9

    const/16 v27, 0x0

    const/16 v18, 0x0

    .line 1179
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v2, :cond_a

    const/4 v2, 0x1

    .line 1180
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v3, :cond_b

    const/4 v3, 0x1

    .line 1181
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v4, :cond_c

    const/4 v4, 0x1

    .line 1184
    :goto_2
    const/4 v11, 0x0

    .line 1185
    const/16 v16, 0x0

    .line 1186
    const/4 v15, 0x0

    const/16 v21, -0x1

    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 1192
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    shl-int/lit8 v5, v5, 0x1

    const-wide/16 v6, 0x0

    .line 1204
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    move-wide/from16 v30, v0

    .line 1206
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    const-wide/16 v22, 0x0

    cmp-long v5, v8, v22

    if-eqz v5, :cond_15

    .line 1207
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/transcode/core/Encode;->mTransRewritable:I

    const/4 v8, 0x2

    if-eq v5, v8, :cond_d

    .line 1246
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/transcode/core/Encode;->mTransRewritable:I

    const/4 v8, 0x1

    if-eq v5, v8, :cond_14

    move-wide/from16 v28, v6

    move/from16 v23, v4

    .line 1267
    :goto_3
    if-nez v16, :cond_16

    .line 1268
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v4, :cond_17

    .line 1278
    :cond_1
    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/Encode;->mTransRewritable:I

    if-nez v4, :cond_1a

    :cond_2
    const-string/jumbo v4, "Transcoding start"

    .line 1279
    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 1280
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v17

    .line 1282
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v32

    .line 1283
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 1285
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v4, :cond_1b

    const/4 v4, 0x0

    .line 1286
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v5, :cond_1c

    const/4 v5, 0x0

    move-object v9, v5

    .line 1288
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v5, :cond_1d

    const/4 v5, 0x0

    .line 1289
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v6, :cond_1e

    const/4 v6, 0x0

    move-object v10, v6

    .line 1291
    :goto_8
    new-instance v33, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v33 .. v33}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 1292
    new-instance v34, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v34 .. v34}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 1294
    new-instance v35, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v35 .. v35}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 1295
    new-instance v36, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v36 .. v36}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const-wide/16 v24, -0x1

    move-object/from16 v20, v5

    move-object/from16 v26, v4

    move/from16 v22, v3

    move/from16 v19, v2

    move v2, v11

    .line 1298
    :goto_9
    if-nez v16, :cond_1f

    .line 1306
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v3, :cond_20

    :cond_4
    :goto_a
    move v11, v2

    .line 1346
    :cond_5
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v2, :cond_28

    :cond_6
    :goto_c
    move-object/from16 v37, v14

    move v14, v13

    move v13, v12

    move-object/from16 v12, v37

    .line 1432
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v2, :cond_3a

    :cond_7
    :goto_e
    move-object/from16 v37, v17

    move/from16 v17, v16

    move-object/from16 v16, v37

    .line 1483
    :goto_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v2, :cond_45

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    .line 1666
    :goto_10
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v4, :cond_6b

    .line 1674
    :cond_8
    :goto_11
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v4, :cond_6f

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move v2, v11

    move/from16 v37, v13

    move v13, v14

    move-object v14, v12

    move/from16 v12, v37

    move-object/from16 v38, v16

    move/from16 v16, v17

    move-object/from16 v17, v38

    goto :goto_9

    :cond_9
    const-string/jumbo v2, "Not starting encoding because it is stopped by user."

    .line 1171
    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 1172
    return-void

    :cond_a
    const/4 v2, 0x0

    .line 1179
    goto/16 :goto_0

    :cond_b
    const/4 v3, 0x0

    .line 1180
    goto/16 :goto_1

    :cond_c
    const/4 v4, 0x0

    .line 1181
    goto/16 :goto_2

    .line 1208
    :cond_d
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    .line 1209
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v9, v10}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 1210
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Input time: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " After seekto previous I: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v8}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 1211
    :goto_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    cmp-long v5, v8, v30

    if-ltz v5, :cond_e

    const/4 v5, 0x1

    :goto_13
    if-nez v5, :cond_10

    .line 1212
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->advance()Z

    .line 1213
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v5

    const/4 v8, 0x1

    if-eq v5, v8, :cond_f

    .line 1217
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    .line 1218
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Proceed to find I: Sampletime: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto :goto_12

    .line 1211
    :cond_e
    const/4 v5, 0x0

    goto :goto_13

    .line 1214
    :cond_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Found I: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v8}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 1221
    :cond_10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Transcode section Start: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, ", End: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 1222
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    cmp-long v5, v8, v6

    if-gtz v5, :cond_11

    const/4 v5, 0x1

    :goto_14
    if-nez v5, :cond_13

    const-string/jumbo v4, "Reversed. Recalculating..."

    .line 1223
    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 1224
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    const/4 v5, 0x2

    invoke-virtual {v4, v6, v7, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 1225
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    .line 1226
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    const/4 v5, 0x2

    invoke-virtual {v4, v6, v7, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 1227
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    .line 1229
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_12

    .line 1232
    :goto_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Now...Input time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " After seekto: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    .line 1234
    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1232
    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const-wide/16 v6, -0x1

    .line 1236
    const/16 v16, 0x1

    .line 1237
    const/4 v4, 0x1

    move-wide/from16 v28, v6

    move/from16 v23, v4

    goto/16 :goto_3

    .line 1222
    :cond_11
    const/4 v5, 0x0

    goto :goto_14

    .line 1230
    :cond_12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Starting on I: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto :goto_15

    .line 1239
    :cond_13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Set transcode mode: Start: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, ", End: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 1240
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    .line 1241
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v9, v10}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 1242
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    .line 1243
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v9, v10}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 1244
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    move-wide/from16 v28, v6

    move/from16 v23, v4

    goto/16 :goto_3

    .line 1247
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    const/4 v5, 0x0

    invoke-virtual {v4, v8, v9, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 1248
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    .line 1249
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    const/4 v5, 0x0

    invoke-virtual {v4, v8, v9, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 1250
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    .line 1254
    const/16 v16, 0x1

    .line 1255
    const/4 v4, 0x1

    const-string/jumbo v5, "Abandon TransRewrite. Switch to Rewrite mode."

    .line 1256
    invoke-static {v5}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-wide/from16 v28, v6

    move/from16 v23, v4

    goto/16 :goto_3

    :cond_15
    const-wide/16 v6, -0x1

    .line 1260
    const/16 v16, 0x1

    .line 1261
    const/4 v4, 0x1

    const-string/jumbo v5, "Start point has not been updated!"

    .line 1263
    invoke-static {v5}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-wide/from16 v28, v6

    move/from16 v23, v4

    goto/16 :goto_3

    .line 1267
    :cond_16
    if-eqz v23, :cond_0

    goto/16 :goto_4

    .line 1268
    :cond_17
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 1269
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    const/4 v5, 0x0

    invoke-virtual {v4, v6, v7, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 1270
    :goto_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_18

    const/4 v4, 0x1

    :goto_17
    if-nez v4, :cond_19

    const-string/jumbo v4, "Advance audio..."

    .line 1271
    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 1272
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_16

    .line 1270
    :cond_18
    const/4 v4, 0x0

    goto :goto_17

    .line 1274
    :cond_19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Audio Transcode section: Current position: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mTrimAudioStartUs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 1278
    :cond_1a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/Encode;->mTransRewritable:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    :goto_18
    const-string/jumbo v2, "Rewriting starts"

    .line 1684
    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 1687
    const/4 v5, 0x0

    .line 1688
    const/4 v4, 0x0

    .line 1689
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-static {v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v6

    .line 1690
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-static {v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v3

    const/4 v2, 0x0

    const/4 v7, -0x1

    .line 1695
    if-ne v6, v7, :cond_70

    .line 1698
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Absent valid video track"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1285
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    goto/16 :goto_5

    .line 1286
    :cond_1c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    move-object v9, v5

    goto/16 :goto_6

    .line 1288
    :cond_1d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    goto/16 :goto_7

    .line 1289
    :cond_1e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v6

    move-object v10, v6

    goto/16 :goto_8

    .line 1298
    :cond_1f
    if-eqz v23, :cond_3

    :goto_19
    const-string/jumbo v2, "Transcoding Done"

    .line 1679
    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto :goto_18

    .line 1306
    :cond_20
    if-nez v2, :cond_4

    if-nez v18, :cond_22

    .line 1307
    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    const/4 v4, -0x1

    .line 1308
    if-eq v3, v4, :cond_23

    .line 1313
    aget-object v2, v32, v3

    .line 1314
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v5

    .line 1315
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    .line 1316
    cmp-long v2, v6, v28

    if-lez v2, :cond_24

    const/4 v2, 0x1

    :goto_1a
    if-nez v2, :cond_27

    .line 1317
    if-gez v5, :cond_25

    .line 1325
    :goto_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v2, 0x0

    :goto_1c
    const-string/jumbo v4, "Move forward to locate: Video"

    .line 1326
    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move v11, v2

    .line 1331
    :goto_1d
    if-eqz v11, :cond_5

    const-string/jumbo v2, "video extractor: EOS"

    .line 1332
    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 1333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto/16 :goto_b

    .line 1306
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    if-nez v3, :cond_21

    goto/16 :goto_a

    :cond_23
    const-string/jumbo v3, "no video decoder input buffer"

    .line 1309
    invoke-static {v3}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move v11, v2

    .line 1310
    goto/16 :goto_b

    .line 1316
    :cond_24
    const/4 v2, 0x0

    goto :goto_1a

    .line 1318
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    .line 1323
    invoke-virtual {v8}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v8

    .line 1318
    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_1b

    :cond_26
    const/4 v2, 0x1

    .line 1325
    goto :goto_1c

    .line 1329
    :cond_27
    const/4 v11, 0x1

    goto :goto_1d

    .line 1346
    :cond_28
    if-nez v15, :cond_6

    if-nez v18, :cond_2b

    .line 1348
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x2710

    move-object/from16 v0, v34

    invoke-virtual {v2, v0, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    const/4 v2, -0x1

    .line 1349
    if-eq v3, v2, :cond_2c

    const/4 v2, -0x3

    .line 1353
    if-eq v3, v2, :cond_2d

    const/4 v2, -0x2

    .line 1358
    if-eq v3, v2, :cond_2e

    .line 1362
    aget-object v2, v14, v3

    .line 1363
    move-object/from16 v0, v34

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2f

    .line 1369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "video decoder: returned buffer for time "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v34

    iget-wide v4, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 1372
    move-object/from16 v0, v34

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v2, :cond_30

    const/4 v2, 0x0

    .line 1373
    :goto_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v4, v3, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1374
    if-nez v2, :cond_31

    .line 1416
    :cond_2a
    :goto_1f
    move-object/from16 v0, v34

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_39

    move-object/from16 v37, v14

    move v14, v13

    move v13, v12

    move-object/from16 v12, v37

    goto/16 :goto_d

    .line 1346
    :cond_2b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    if-nez v2, :cond_29

    goto/16 :goto_c

    :cond_2c
    const-string/jumbo v2, "no video decoder output buffer"

    .line 1350
    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-object/from16 v37, v14

    move v14, v13

    move v13, v12

    move-object/from16 v12, v37

    .line 1351
    goto/16 :goto_d

    :cond_2d
    const-string/jumbo v2, "video decoder: output buffers changed"

    .line 1354
    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 1355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    move v14, v13

    move v13, v12

    move-object v12, v2

    .line 1356
    goto/16 :goto_d

    :cond_2e
    move-object/from16 v37, v14

    move v14, v13

    move v13, v12

    move-object/from16 v12, v37

    .line 1359
    goto/16 :goto_d

    :cond_2f
    const-string/jumbo v2, "video decoder: codec config buffer"

    .line 1365
    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 1366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move-object/from16 v37, v14

    move v14, v13

    move v13, v12

    move-object/from16 v12, v37

    .line 1367
    goto/16 :goto_d

    :cond_30
    const/4 v2, 0x1

    .line 1372
    goto :goto_1e

    :cond_31
    const-string/jumbo v2, "output surface: await new image"

    .line 1375
    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 1378
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->checkForNewImage(I)Z

    move-result v2

    if-eqz v2, :cond_33

    const-string/jumbo v2, "output surface: draw image"

    .line 1385
    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/16 v2, 0x4000

    .line 1386
    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 1387
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    invoke-virtual {v2}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->drawImage()V

    .line 1389
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "presentationTimeUs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v34

    iget-wide v4, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "StartPnt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 1390
    move-object/from16 v0, v34

    iget-wide v2, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_35

    const/4 v2, 0x1

    :goto_20
    if-nez v2, :cond_36

    .line 1391
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/Encode;->mSkipFrames:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_37

    :cond_32
    const/4 v2, 0x0

    .line 1396
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    move-object/from16 v0, v34

    iget-wide v4, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/transcode/surfaces/InputSurface;->setPresentationTime(J)V

    const-string/jumbo v3, "input surface: swap buffers"

    .line 1398
    invoke-static {v3}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 1399
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    invoke-virtual {v3}, Lcom/samsung/android/transcode/surfaces/InputSurface;->swapBuffers()Z

    const-string/jumbo v3, "video encoder: notified of new frame"

    .line 1400
    invoke-static {v3}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1401
    add-int/lit8 v3, v13, 0x1

    .line 1403
    :goto_21
    add-int/lit8 v12, v2, 0x1

    :goto_22
    move v13, v3

    .line 1414
    goto/16 :goto_1f

    .line 1379
    :cond_33
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "video decoder: checkForNewImage return false!!  mUserStop : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_b

    .line 1414
    :catch_0
    move-exception v2

    .line 1407
    :goto_23
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 1408
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v4, :cond_38

    .line 1412
    :cond_34
    :goto_24
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1390
    :cond_35
    const/4 v2, 0x0

    goto :goto_20

    :cond_36
    move v3, v13

    goto :goto_22

    .line 1391
    :cond_37
    :try_start_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/Encode;->mFramesSkipInterval:I

    rem-int v2, v12, v2
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v2, :cond_32

    move v2, v12

    move v3, v13

    goto :goto_21

    .line 1408
    :cond_38
    if-eqz v3, :cond_34

    const-string/jumbo v4, "Surface frame wait timed out"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    goto :goto_24

    :cond_39
    const-string/jumbo v2, "video decoder: EOS"

    .line 1418
    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 1419
    const/4 v2, 0x1

    .line 1420
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    move v15, v2

    move/from16 v37, v12

    move-object v12, v14

    move v14, v13

    move/from16 v13, v37

    goto/16 :goto_d

    .line 1432
    :cond_3a
    if-nez v16, :cond_7

    if-nez v18, :cond_3c

    .line 1433
    :cond_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x2710

    move-object/from16 v0, v33

    invoke-virtual {v2, v0, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    const/4 v2, -0x1

    .line 1435
    if-eq v3, v2, :cond_3d

    const/4 v2, -0x3

    .line 1439
    if-eq v3, v2, :cond_3e

    const/4 v2, -0x2

    .line 1444
    if-eq v3, v2, :cond_3f

    .line 1454
    if-ltz v3, :cond_41

    .line 1458
    aget-object v2, v17, v3

    .line 1459
    move-object/from16 v0, v33

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_42

    .line 1468
    move-object/from16 v0, v33

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v4, :cond_43

    .line 1473
    :goto_25
    move-object/from16 v0, v33

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_44

    move/from16 v2, v16

    .line 1478
    :goto_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move-object/from16 v16, v17

    move/from16 v17, v2

    .line 1481
    goto/16 :goto_f

    .line 1432
    :cond_3c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    if-nez v2, :cond_3b

    goto/16 :goto_e

    :cond_3d
    const-string/jumbo v2, "no video encoder output buffer"

    .line 1436
    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-object/from16 v37, v17

    move/from16 v17, v16

    move-object/from16 v16, v37

    .line 1437
    goto/16 :goto_f

    :cond_3e
    const-string/jumbo v2, "video encoder: output buffers changed"

    .line 1440
    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 1441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    move/from16 v17, v16

    move-object/from16 v16, v2

    .line 1442
    goto/16 :goto_f

    :cond_3f
    const-string/jumbo v2, "video encoder: output format changed"

    .line 1445
    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 1446
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/Encode;->mVideoTrackIndex:I

    if-gez v2, :cond_40

    .line 1451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    move-object/from16 v18, v2

    move/from16 v37, v16

    move-object/from16 v16, v17

    move/from16 v17, v37

    .line 1452
    goto/16 :goto_f

    .line 1449
    :cond_40
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Video encoder output format changed after muxer has started"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_41
    const-string/jumbo v2, "Unexpected result from video encoder dequeue output format."

    .line 1455
    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-object/from16 v37, v17

    move/from16 v17, v16

    move-object/from16 v16, v37

    .line 1456
    goto/16 :goto_f

    :cond_42
    const-string/jumbo v2, "video encoder: codec config buffer"

    .line 1461
    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 1463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move-object/from16 v37, v17

    move/from16 v17, v16

    move-object/from16 v16, v37

    .line 1464
    goto/16 :goto_f

    .line 1469
    :cond_43
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "video encoder: writing sample data timestamp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v33

    iget-wide v6, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 1470
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/transcode/core/Encode;->mVideoTrackIndex:I

    move-object/from16 v0, v33

    invoke-virtual {v4, v5, v2, v0}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto/16 :goto_25

    :cond_44
    const-string/jumbo v2, "video encoder: EOS"

    .line 1475
    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 1476
    const/4 v2, 0x1

    goto/16 :goto_26

    .line 1490
    :cond_45
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v2, :cond_4a

    .line 1530
    :cond_46
    :goto_27
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v2, :cond_52

    .line 1569
    :cond_47
    :goto_28
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v2, :cond_5a

    :cond_48
    move/from16 v2, v22

    .line 1607
    :goto_29
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v3, :cond_5e

    :cond_49
    :goto_2a
    move/from16 v22, v2

    move-object/from16 v3, v27

    move-object/from16 v2, v26

    goto/16 :goto_10

    .line 1490
    :cond_4a
    if-nez v19, :cond_46

    if-nez v27, :cond_4c

    .line 1491
    :cond_4b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    const/4 v2, -0x1

    .line 1492
    if-eq v3, v2, :cond_4d

    .line 1497
    aget-object v2, v10, v3

    .line 1498
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v5

    .line 1499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    .line 1501
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Audio psntTimeUs: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", TrimTCEndTime "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v28

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 1502
    cmp-long v2, v6, v28

    if-lez v2, :cond_4e

    const/4 v2, 0x1

    :goto_2b
    if-nez v2, :cond_51

    .line 1503
    if-gtz v5, :cond_4f

    .line 1507
    :goto_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z

    move-result v2

    if-eqz v2, :cond_50

    const/4 v2, 0x0

    :goto_2d
    const-string/jumbo v4, "Move forward to locate: Audio"

    .line 1508
    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move/from16 v19, v2

    .line 1514
    :goto_2e
    if-eqz v19, :cond_46

    const-string/jumbo v2, "audio decoder sending EOS"

    .line 1515
    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 1516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto/16 :goto_27

    .line 1490
    :cond_4c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    if-nez v2, :cond_4b

    goto/16 :goto_27

    :cond_4d
    const-string/jumbo v2, "audio decoder input try again later"

    .line 1493
    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto/16 :goto_27

    .line 1502
    :cond_4e
    const/4 v2, 0x0

    goto :goto_2b

    .line 1504
    :cond_4f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v8}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v8

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_2c

    :cond_50
    const/4 v2, 0x1

    .line 1507
    goto :goto_2d

    .line 1511
    :cond_51
    const/16 v19, 0x1

    goto :goto_2e

    .line 1530
    :cond_52
    if-nez v22, :cond_47

    const/4 v2, -0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_47

    if-nez v27, :cond_54

    .line 1531
    :cond_53
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x2710

    move-object/from16 v0, v36

    invoke-virtual {v2, v0, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    const/4 v3, -0x1

    .line 1532
    if-eq v2, v3, :cond_55

    const/4 v3, -0x3

    .line 1536
    if-eq v2, v3, :cond_56

    const/4 v3, -0x2

    .line 1541
    if-eq v2, v3, :cond_57

    .line 1546
    if-ltz v2, :cond_58

    .line 1552
    move-object/from16 v0, v36

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_59

    move/from16 v21, v2

    .line 1558
    goto/16 :goto_28

    .line 1530
    :cond_54
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    if-nez v2, :cond_53

    goto/16 :goto_28

    :cond_55
    const-string/jumbo v2, "audio decoder output buffer try again later"

    .line 1533
    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto/16 :goto_28

    :cond_56
    const-string/jumbo v2, "audio decoder: output buffers changed"

    .line 1537
    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 1538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v20, v2

    .line 1539
    goto/16 :goto_28

    :cond_57
    const-string/jumbo v2, "audio decoder: output format changed: "

    .line 1543
    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto/16 :goto_28

    :cond_58
    const-string/jumbo v2, "Unexpected result from audio decoder dequeue output format."

    .line 1547
    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto/16 :goto_28

    :cond_59
    const-string/jumbo v3, "audio decoder: codec config buffer"

    .line 1553
    invoke-static {v3}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 1554
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_28

    :cond_5a
    const/4 v2, -0x1

    .line 1569
    move/from16 v0, v21

    if-eq v0, v2, :cond_48

    .line 1571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    const/4 v2, -0x1

    .line 1572
    if-eq v3, v2, :cond_5b

    .line 1577
    aget-object v2, v9, v3

    .line 1578
    move-object/from16 v0, v36

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 1579
    move-object/from16 v0, v36

    iget-wide v6, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 1581
    if-gez v5, :cond_5c

    .line 1590
    :goto_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    move/from16 v0, v21

    invoke-virtual {v2, v0, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    const/16 v21, -0x1

    .line 1592
    move-object/from16 v0, v36

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_5d

    move/from16 v2, v22

    goto/16 :goto_29

    :cond_5b
    const-string/jumbo v2, "audio encoder input buffer try again later"

    .line 1573
    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move/from16 v2, v22

    .line 1574
    goto/16 :goto_29

    .line 1582
    :cond_5c
    aget-object v4, v20, v21

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1583
    move-object/from16 v0, v36

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v4, v8}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 1584
    move-object/from16 v0, v36

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v8, v5

    invoke-virtual {v4, v8}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    const/4 v8, 0x0

    .line 1586
    invoke-virtual {v2, v8}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 1587
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    move-object/from16 v0, v36

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_2f

    :cond_5d
    const-string/jumbo v2, "audio decoder: EOS"

    .line 1593
    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 1594
    const/4 v2, 0x1

    goto/16 :goto_29

    .line 1607
    :cond_5e
    if-nez v23, :cond_49

    if-nez v27, :cond_60

    .line 1608
    :cond_5f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x2710

    move-object/from16 v0, v35

    invoke-virtual {v3, v0, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v6

    const/4 v3, -0x1

    .line 1609
    if-eq v6, v3, :cond_61

    const/4 v3, -0x3

    .line 1613
    if-eq v6, v3, :cond_62

    const/4 v3, -0x2

    .line 1618
    if-eq v6, v3, :cond_63

    .line 1627
    if-ltz v6, :cond_65

    .line 1632
    aget-object v7, v26, v6

    .line 1634
    move-object/from16 v0, v35

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_66

    .line 1641
    move-object/from16 v0, v35

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v3, :cond_67

    move-wide/from16 v4, v24

    .line 1649
    :goto_30
    move-object/from16 v0, v35

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_6a

    move/from16 v3, v23

    .line 1653
    :goto_31
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move-wide/from16 v24, v4

    move/from16 v23, v3

    move/from16 v22, v2

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    .line 1655
    goto/16 :goto_10

    .line 1607
    :cond_60
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    if-nez v3, :cond_5f

    goto/16 :goto_2a

    :cond_61
    const-string/jumbo v3, "audio encoder output buffer try again later"

    .line 1610
    invoke-static {v3}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move/from16 v22, v2

    move-object/from16 v3, v27

    move-object/from16 v2, v26

    .line 1611
    goto/16 :goto_10

    :cond_62
    const-string/jumbo v3, "audio encoder: output buffers changed"

    .line 1614
    invoke-static {v3}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 1615
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v3

    move/from16 v22, v2

    move-object v2, v3

    move-object/from16 v3, v27

    .line 1616
    goto/16 :goto_10

    .line 1619
    :cond_63
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/transcode/core/Encode;->mAudioTrackIndex:I

    if-gez v3, :cond_64

    .line 1622
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    .line 1623
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "audio encoder: output format changed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move/from16 v22, v2

    move-object/from16 v2, v26

    .line 1625
    goto/16 :goto_10

    .line 1620
    :cond_64
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Audio encoder output format changed after muxer is started."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_65
    const-string/jumbo v3, "Unexpected result from audio encoder dequeue output format."

    .line 1628
    invoke-static {v3}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move/from16 v22, v2

    move-object/from16 v3, v27

    move-object/from16 v2, v26

    .line 1629
    goto/16 :goto_10

    :cond_66
    const-string/jumbo v3, "audio encoder ignoring BUFFER_FLAG_CODEC_CONFIG"

    .line 1635
    invoke-static {v3}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 1637
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    invoke-virtual {v3, v6, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move/from16 v22, v2

    move-object/from16 v3, v27

    move-object/from16 v2, v26

    .line 1638
    goto/16 :goto_10

    .line 1643
    :cond_67
    move-object/from16 v0, v35

    iget-wide v4, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v3, v24, v4

    if-gtz v3, :cond_68

    const/4 v3, 0x1

    :goto_32
    if-nez v3, :cond_69

    .line 1644
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Audio time stamps are not in increasing order."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1643
    :cond_68
    const/4 v3, 0x0

    goto :goto_32

    .line 1646
    :cond_69
    move-object/from16 v0, v35

    iget-wide v4, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 1647
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/transcode/core/Encode;->mAudioTrackIndex:I

    move-object/from16 v0, v35

    invoke-virtual {v3, v8, v7, v0}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto/16 :goto_30

    :cond_6a
    const-string/jumbo v3, "audio encoder: EOS"

    .line 1650
    invoke-static {v3}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 1651
    const/4 v3, 0x1

    goto/16 :goto_31

    .line 1666
    :cond_6b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    if-nez v4, :cond_8

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v4, :cond_6d

    .line 1667
    :cond_6c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/transcode/core/Encode;->mVideoTrackIndex:I

    .line 1668
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v4, :cond_6e

    .line 1670
    :goto_33
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    invoke-virtual {v4, v5}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 1671
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v4}, Landroid/media/MediaMuxer;->start()V

    .line 1672
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    goto/16 :goto_11

    .line 1666
    :cond_6d
    if-nez v3, :cond_6c

    goto/16 :goto_11

    .line 1669
    :cond_6e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v4, v3}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/transcode/core/Encode;->mAudioTrackIndex:I

    goto :goto_33

    :cond_6f
    const-string/jumbo v2, "Encoding abruptly stopped."

    .line 1675
    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto/16 :goto_19

    .line 1696
    :cond_70
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v7, v6}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v6

    const/4 v7, -0x1

    .line 1700
    if-ne v3, v7, :cond_73

    .line 1703
    :goto_34
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    if-eqz v7, :cond_74

    .line 1714
    :goto_35
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/samsung/android/transcode/core/EncodeVideo;->getVideoSampleSize(Landroid/media/MediaFormat;)I

    move-result v6

    const/4 v2, -0x1

    .line 1718
    if-eq v3, v2, :cond_77

    move v2, v4

    .line 1730
    :goto_36
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 1731
    new-instance v7, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v7}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 1732
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v4

    iput v4, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    move v4, v5

    .line 1735
    :goto_37
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v5, :cond_78

    :cond_71
    const/4 v4, -0x1

    .line 1758
    if-ne v3, v4, :cond_7c

    .line 1788
    :cond_72
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v2, :cond_80

    .line 1790
    :goto_38
    return-void

    .line 1701
    :cond_73
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    goto :goto_34

    .line 1704
    :cond_74
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v7, v6}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/android/transcode/core/Encode;->mVideoTrackIndex:I

    .line 1705
    if-nez v2, :cond_76

    :cond_75
    const/4 v2, -0x1

    .line 1709
    :goto_39
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    invoke-virtual {v3, v7}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 1710
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v3}, Landroid/media/MediaMuxer;->start()V

    .line 1711
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    move v3, v2

    goto :goto_35

    :cond_76
    const-string/jumbo v7, "audio/unknown"

    const-string/jumbo v8, "mime"

    .line 1705
    invoke-virtual {v2, v8}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_75

    .line 1706
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v7, v2}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/transcode/core/Encode;->mAudioTrackIndex:I

    move v2, v3

    goto :goto_39

    .line 1720
    :cond_77
    const/4 v2, 0x1

    goto :goto_36

    .line 1735
    :cond_78
    if-nez v4, :cond_71

    const/4 v5, 0x0

    .line 1736
    iput v5, v7, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 1737
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v5

    iput v5, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 1738
    iget v5, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v5, :cond_79

    .line 1744
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    iput-wide v8, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v8, -0x1

    .line 1745
    cmp-long v5, v30, v8

    if-eqz v5, :cond_7b

    iget-wide v8, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v5, v8, v30

    if-gtz v5, :cond_7a

    const/4 v5, 0x1

    :goto_3a
    if-nez v5, :cond_7b

    .line 1746
    const/4 v4, 0x1

    const-string/jumbo v5, "sawEOS: true: V"

    .line 1747
    invoke-static {v5}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto/16 :goto_37

    :cond_79
    const-string/jumbo v4, "saw input EOS: Video"

    .line 1739
    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 1740
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1741
    iput v5, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto/16 :goto_37

    .line 1745
    :cond_7a
    const/4 v5, 0x0

    goto :goto_3a

    .line 1750
    :cond_7b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v5

    iput v5, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 1751
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/transcode/core/Encode;->mVideoTrackIndex:I

    invoke-virtual {v5, v8, v6, v7}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 1753
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->advance()Z

    goto/16 :goto_37

    :cond_7c
    const/high16 v3, 0x20000

    .line 1760
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1761
    new-instance v5, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v5}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 1762
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    iput v3, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 1765
    :goto_3b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v3, :cond_72

    if-nez v2, :cond_72

    const/4 v3, 0x0

    .line 1766
    iput v3, v5, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 1767
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    iput v3, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 1768
    iget v3, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v3, :cond_7d

    .line 1774
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    iput-wide v6, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v6, -0x1

    .line 1775
    cmp-long v3, v30, v6

    if-eqz v3, :cond_7f

    iget-wide v6, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v3, v6, v30

    if-gtz v3, :cond_7e

    const/4 v3, 0x1

    :goto_3c
    if-nez v3, :cond_7f

    .line 1776
    const/4 v2, 0x1

    const-string/jumbo v3, "sawEOS: true: A"

    .line 1777
    invoke-static {v3}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto :goto_3b

    :cond_7d
    const-string/jumbo v2, "saw input EOS: Audio"

    .line 1769
    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    .line 1770
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1771
    iput v3, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_3b

    .line 1775
    :cond_7e
    const/4 v3, 0x0

    goto :goto_3c

    .line 1780
    :cond_7f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v3

    iput v3, v5, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 1781
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/transcode/core/Encode;->mAudioTrackIndex:I

    invoke-virtual {v3, v6, v4, v5}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 1783
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_3b

    :cond_80
    const-string/jumbo v2, "Rewriting finished"

    .line 1789
    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto/16 :goto_38

    .line 1414
    :catch_1
    move-exception v3

    move v12, v2

    move-object v2, v3

    goto/16 :goto_23
.end method

.method public stop()V
    .locals 4

    .prologue
    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "Stop method called "

    .line 1932
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1936
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    if-nez v0, :cond_0

    .line 1939
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    .line 1940
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v2, "Calling wait on stop lock."

    .line 1943
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1950
    :goto_1
    :try_start_2
    monitor-exit v1

    .line 1952
    return-void

    .line 1937
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->notifyFrameSyncObject()V

    goto :goto_0

    .line 1950
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1941
    :cond_1
    :try_start_3
    monitor-exit v1

    return-void

    .line 1949
    :catch_0
    move-exception v0

    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v3, "Stop lock interrupted."

    .line 1947
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
