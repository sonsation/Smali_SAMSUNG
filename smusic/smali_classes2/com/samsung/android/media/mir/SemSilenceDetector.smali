.class public Lcom/samsung/android/media/mir/SemSilenceDetector;
.super Ljava/lang/Object;
.source "SemSilenceDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;
    }
.end annotation


# static fields
.field public static DEFAULT_THRESHOLD:D = 0.0

.field private static final SMSD_ERR_INSUFF_MEM:I = -0x2

.field private static final SMSD_ERR_INVALID_ARG:I = -0x4

.field private static final SMSD_ERR_NOT_OPEN_FILE:I = -0x7

.field private static final SMSD_ERR_UNSUPPORT:I = -0x3

.field private static SMSD_LOAD_LIBRARY:Z = false

.field private static final SMSD_OK:I = 0x0

.field private static final USE_JNI_LIBRARY:Z = true


# instance fields
.field private kTimeOutUs:J

.field private mFilepath:Ljava/lang/String;

.field private mMinDurationUs:J

.field private mSearchDurationUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 24
    const-wide/high16 v2, -0x3fac000000000000L    # -80.0

    sput-wide v2, Lcom/samsung/android/media/mir/SemSilenceDetector;->DEFAULT_THRESHOLD:D

    .line 574
    sput-boolean v4, Lcom/samsung/android/media/mir/SemSilenceDetector;->SMSD_LOAD_LIBRARY:Z

    .line 579
    :try_start_0
    const-string/jumbo v1, "smsd"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 580
    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/media/mir/SemSilenceDetector;->SMSD_LOAD_LIBRARY:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 581
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 582
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    sput-boolean v4, Lcom/samsung/android/media/mir/SemSilenceDetector;->SMSD_LOAD_LIBRARY:Z

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/media/mir/SemSilenceDetector;->mFilepath:Ljava/lang/String;

    .line 82
    const-wide/32 v0, 0x4c4b40

    iput-wide v0, p0, Lcom/samsung/android/media/mir/SemSilenceDetector;->mSearchDurationUs:J

    .line 83
    const-wide/32 v0, 0x1c9c380

    iput-wide v0, p0, Lcom/samsung/android/media/mir/SemSilenceDetector;->mMinDurationUs:J

    .line 84
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/samsung/android/media/mir/SemSilenceDetector;->kTimeOutUs:J

    .line 34
    iput-object p1, p0, Lcom/samsung/android/media/mir/SemSilenceDetector;->mFilepath:Ljava/lang/String;

    .line 35
    return-void
.end method

.method private byteOffsetToTimeUs(JII)J
    .locals 5
    .param p1, "byteOffset"    # J
    .param p3, "Hz"    # I
    .param p4, "ch"    # I

    .prologue
    const-wide/16 v0, 0x0

    .line 549
    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 551
    :goto_0
    return-wide v0

    :cond_0
    int-to-long v0, p4

    div-long v0, p1, v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    int-to-long v2, p3

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method private dbToShort(D)S
    .locals 5
    .param p1, "dB"    # D

    .prologue
    .line 559
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    div-double v2, p1, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x40e0000000000000L    # 32768.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method private decodeFrontBack(Ljava/lang/String;ZJD)Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;
    .locals 57
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "reconfigure"    # Z
    .param p3, "decLimitUs"    # J
    .param p5, "threshold"    # D

    .prologue
    .line 183
    new-instance v40, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;

    const/4 v6, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;-><init>(Lcom/samsung/android/media/mir/SemSilenceDetector;Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;)V

    .line 184
    .local v40, "result":Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;
    const/16 v18, 0x0

    .line 185
    .local v18, "decodedBack":[S
    const/16 v19, 0x0

    .line 186
    .local v19, "decodedIdx":I
    const/4 v7, 0x0

    .line 187
    .local v7, "sampleSize":I
    const-wide/16 v8, 0x0

    .line 188
    .local v8, "presentationTimeUs":J
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/mir/SemSilenceDetector;->dbToShort(D)S

    move-result v48

    .line 189
    .local v48, "threshold2":S
    const/16 v20, 0x0

    .line 190
    .local v20, "dstBuf":Ljava/nio/ByteBuffer;
    new-instance v22, Landroid/media/MediaExtractor;

    invoke-direct/range {v22 .. v22}, Landroid/media/MediaExtractor;-><init>()V

    .line 191
    .local v22, "extractor":Landroid/media/MediaExtractor;
    const/4 v4, 0x0

    .line 192
    .local v4, "codec":Landroid/media/MediaCodec;
    const/4 v14, 0x0

    .line 193
    .local v14, "codecInputBuffers":[Ljava/nio/ByteBuffer;
    const/4 v15, 0x0

    .line 196
    .local v15, "codecOutputBuffers":[Ljava/nio/ByteBuffer;
    :try_start_0
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    const/4 v12, 0x0

    .line 206
    .local v12, "bFindAudioCodec":Z
    const/4 v11, 0x0

    .line 207
    .local v11, "audiotracknum":I
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_0
    invoke-virtual/range {v22 .. v22}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v6

    move/from16 v0, v26

    if-lt v0, v6, :cond_0

    .line 217
    :goto_1
    if-nez v12, :cond_2

    .line 218
    const/16 v22, 0x0

    .line 219
    const/16 v40, 0x0

    .line 220
    const/16 v18, 0x0

    .line 221
    const/4 v6, 0x0

    .line 545
    .end local v11    # "audiotracknum":I
    .end local v12    # "bFindAudioCodec":Z
    .end local v26    # "i":I
    :goto_2
    return-object v6

    .line 197
    :catch_0
    move-exception v21

    .line 198
    .local v21, "e":Ljava/io/IOException;
    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    .line 199
    const/16 v22, 0x0

    .line 200
    const/16 v40, 0x0

    .line 201
    const/16 v18, 0x0

    .line 202
    const/4 v6, 0x0

    goto :goto_2

    .line 208
    .end local v21    # "e":Ljava/io/IOException;
    .restart local v11    # "audiotracknum":I
    .restart local v12    # "bFindAudioCodec":Z
    .restart local v26    # "i":I
    :cond_0
    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v25

    .line 209
    .local v25, "format":Landroid/media/MediaFormat;
    const-string v6, "mime"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 210
    .local v29, "mime":Ljava/lang/String;
    const-string v6, "audio/"

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 211
    const/4 v12, 0x1

    .line 212
    move/from16 v11, v26

    .line 213
    goto :goto_1

    .line 207
    :cond_1
    add-int/lit8 v26, v26, 0x1

    goto :goto_0

    .line 225
    .end local v25    # "format":Landroid/media/MediaFormat;
    .end local v29    # "mime":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v25

    .line 226
    .restart local v25    # "format":Landroid/media/MediaFormat;
    if-nez v25, :cond_3

    .line 227
    const/16 v22, 0x0

    .line 228
    const/16 v40, 0x0

    .line 229
    const/16 v18, 0x0

    .line 230
    const/4 v6, 0x0

    goto :goto_2

    .line 233
    :cond_3
    :try_start_1
    const-string v6, "mime"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v40

    iput-object v6, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->mime:Ljava/lang/String;

    .line 234
    const-string/jumbo v6, "sample-rate"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v40

    iput v6, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->Hz:I

    .line 235
    const-string v6, "channel-count"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v40

    iput v6, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->nCh:I

    .line 236
    const-string v6, "durationUs"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v52

    move-wide/from16 v0, v52

    move-object/from16 v2, v40

    iput-wide v0, v2, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->duration:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 245
    move-object/from16 v0, v40

    iget-wide v0, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->duration:J

    move-wide/from16 v52, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/media/mir/SemSilenceDetector;->mMinDurationUs:J

    move-wide/from16 v54, v0

    cmp-long v6, v52, v54

    if-gtz v6, :cond_4

    .line 246
    const/16 v22, 0x0

    .line 247
    const/16 v40, 0x0

    .line 248
    const/16 v18, 0x0

    .line 249
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 237
    :catch_1
    move-exception v21

    .line 238
    .local v21, "e":Ljava/lang/Exception;
    const/16 v22, 0x0

    .line 239
    const/16 v40, 0x0

    .line 240
    const/16 v18, 0x0

    .line 241
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 252
    .end local v21    # "e":Ljava/lang/Exception;
    :cond_4
    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->mime:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 253
    .restart local v29    # "mime":Ljava/lang/String;
    const/16 v34, 0x1

    .line 254
    .local v34, "needToProc":Z
    sget-boolean v6, Lcom/samsung/android/media/mir/SemSilenceDetector;->SMSD_LOAD_LIBRARY:Z

    if-eqz v6, :cond_7

    .line 255
    const-string v6, "audio/x-ms-wma"

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "audio/mpeg"

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "audio/aac"

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 256
    const-string v6, "audio/mp4a-latm"

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "audio/flac"

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 257
    const-string v6, "audio/raw"

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "audio/x-wav"

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "audio/vorbis"

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 258
    const-string v6, "application/ogg"

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 259
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/media/mir/SemSilenceDetector;->init(Ljava/lang/String;)I

    move-result v41

    .line 260
    .local v41, "ret":I
    if-nez v41, :cond_9

    .line 261
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/mir/SemSilenceDetector;->getSilencePositionNative(D)[J

    move-result-object v38

    .line 262
    .local v38, "pos":[J
    if-eqz v38, :cond_6

    .line 263
    const/4 v6, 0x0

    aget-wide v52, v38, v6

    move-wide/from16 v0, v52

    move-object/from16 v2, v40

    iput-wide v0, v2, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findFrontUs:J

    .line 264
    const/4 v6, 0x1

    aget-wide v52, v38, v6

    move-wide/from16 v0, v52

    move-object/from16 v2, v40

    iput-wide v0, v2, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findBackUs:J

    .line 265
    const/16 v34, 0x0

    .line 267
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/media/mir/SemSilenceDetector;->deinit()I

    .line 275
    .end local v38    # "pos":[J
    .end local v41    # "ret":I
    :cond_7
    :goto_3
    if-eqz v34, :cond_10

    .line 276
    move-object/from16 v0, v40

    iget-object v6, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->mime:Ljava/lang/String;

    invoke-static {v6}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    .line 277
    if-nez v4, :cond_a

    .line 278
    if-eqz v22, :cond_8

    .line 279
    invoke-virtual/range {v22 .. v22}, Landroid/media/MediaExtractor;->release()V

    .line 280
    const/16 v22, 0x0

    .line 282
    :cond_8
    const/16 v40, 0x0

    .line 283
    const/16 v18, 0x0

    .line 284
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 269
    .restart local v41    # "ret":I
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/media/mir/SemSilenceDetector;->deinit()I

    .line 270
    const-wide/16 v52, -0x1

    move-wide/from16 v0, v52

    move-object/from16 v2, v40

    iput-wide v0, v2, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findFrontUs:J

    .line 271
    const-wide/16 v52, -0x1

    move-wide/from16 v0, v52

    move-object/from16 v2, v40

    iput-wide v0, v2, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findBackUs:J

    goto :goto_3

    .line 286
    .end local v41    # "ret":I
    :cond_a
    const/4 v6, 0x0

    const/4 v10, 0x0

    const/16 v49, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v49

    invoke-virtual {v4, v0, v6, v10, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 287
    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    .line 288
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 289
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 290
    if-eqz p2, :cond_b

    .line 291
    invoke-virtual {v4}, Landroid/media/MediaCodec;->stop()V

    .line 292
    const/4 v6, 0x0

    const/4 v10, 0x0

    const/16 v49, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v49

    invoke-virtual {v4, v0, v6, v10, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 293
    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    .line 294
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 295
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 297
    :cond_b
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 298
    new-instance v28, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v28 .. v28}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 300
    .local v28, "info":Landroid/media/MediaCodec$BufferInfo;
    move-object/from16 v0, v40

    iget v6, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->Hz:I

    div-int/lit8 v6, v6, 0x64

    move-object/from16 v0, v40

    iget v10, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->nCh:I

    mul-int v45, v6, v10

    .line 302
    .local v45, "skipsize":I
    const-wide/16 v52, 0x0

    const/4 v6, 0x2

    move-object/from16 v0, v22

    move-wide/from16 v1, v52

    invoke-virtual {v0, v1, v2, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 303
    const/16 v43, 0x0

    .line 304
    .local v43, "sawInputEOS":Z
    const/16 v44, 0x0

    .line 305
    .local v44, "sawOutputEOS":Z
    const/16 v35, 0x0

    .line 306
    .local v35, "noOutputCounter":I
    const/16 v24, 0x0

    .line 307
    .local v24, "findfront":Z
    :cond_c
    :goto_4
    if-nez v44, :cond_d

    const/16 v6, 0x32

    move/from16 v0, v35

    if-lt v0, v6, :cond_13

    .line 406
    :cond_d
    if-nez v24, :cond_e

    .line 407
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v52, v0

    move-wide/from16 v0, v52

    move-object/from16 v2, v40

    iput-wide v0, v2, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findFrontUs:J

    .line 411
    :cond_e
    const-wide/32 v16, 0xf4240

    .line 412
    .local v16, "decLimitloop":J
    div-long v32, p3, v16

    .line 413
    .local v32, "loopcnt":J
    const/16 v23, 0x0

    .line 414
    .local v23, "findback":Z
    const-wide/16 v46, 0x0

    .line 417
    .local v46, "seekto":J
    move-object/from16 v0, v40

    iget v6, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->Hz:I

    mul-int/lit8 v6, v6, 0x14

    move-object/from16 v0, v40

    iget v10, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->nCh:I

    mul-int/2addr v6, v10

    new-array v0, v6, [S

    move-object/from16 v18, v0

    .line 418
    const-wide/16 v30, 0x1

    .local v30, "k":J
    :goto_5
    cmp-long v6, v30, v32

    if-lez v6, :cond_21

    .line 523
    if-nez v23, :cond_f

    .line 524
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v52, v0

    move-wide/from16 v0, v52

    move-object/from16 v2, v40

    iput-wide v0, v2, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findBackUs:J

    .line 527
    :cond_f
    move-object/from16 v0, v40

    iget-wide v0, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findFrontUs:J

    move-wide/from16 v52, v0

    move-object/from16 v0, v40

    iget v6, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->Hz:I

    move-object/from16 v0, v40

    iget v10, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->nCh:I

    move-object/from16 v0, p0

    move-wide/from16 v1, v52

    invoke-direct {v0, v1, v2, v6, v10}, Lcom/samsung/android/media/mir/SemSilenceDetector;->byteOffsetToTimeUs(JII)J

    move-result-wide v52

    move-wide/from16 v0, v52

    move-object/from16 v2, v40

    iput-wide v0, v2, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findFrontUs:J

    .line 528
    move-object/from16 v0, v40

    iget-wide v0, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findBackUs:J

    move-wide/from16 v52, v0

    move-object/from16 v0, v40

    iget v6, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->Hz:I

    move-object/from16 v0, v40

    iget v10, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->nCh:I

    move-object/from16 v0, p0

    move-wide/from16 v1, v52

    invoke-direct {v0, v1, v2, v6, v10}, Lcom/samsung/android/media/mir/SemSilenceDetector;->byteOffsetToTimeUs(JII)J

    move-result-wide v52

    move-wide/from16 v0, v52

    move-object/from16 v2, v40

    iput-wide v0, v2, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findBackUs:J

    .line 530
    const/16 v18, 0x0

    .line 533
    .end local v16    # "decLimitloop":J
    .end local v23    # "findback":Z
    .end local v24    # "findfront":Z
    .end local v28    # "info":Landroid/media/MediaCodec$BufferInfo;
    .end local v30    # "k":J
    .end local v32    # "loopcnt":J
    .end local v35    # "noOutputCounter":I
    .end local v43    # "sawInputEOS":Z
    .end local v44    # "sawOutputEOS":Z
    .end local v45    # "skipsize":I
    .end local v46    # "seekto":J
    :cond_10
    if-eqz v4, :cond_11

    .line 534
    invoke-virtual {v4}, Landroid/media/MediaCodec;->stop()V

    .line 535
    invoke-virtual {v4}, Landroid/media/MediaCodec;->release()V

    .line 538
    :cond_11
    if-eqz v22, :cond_12

    .line 539
    invoke-virtual/range {v22 .. v22}, Landroid/media/MediaExtractor;->release()V

    .line 540
    const/16 v22, 0x0

    .line 543
    :cond_12
    const/16 v18, 0x0

    move-object/from16 v6, v40

    .line 545
    goto/16 :goto_2

    .line 308
    .restart local v24    # "findfront":Z
    .restart local v28    # "info":Landroid/media/MediaCodec$BufferInfo;
    .restart local v35    # "noOutputCounter":I
    .restart local v43    # "sawInputEOS":Z
    .restart local v44    # "sawOutputEOS":Z
    .restart local v45    # "skipsize":I
    :cond_13
    add-int/lit8 v35, v35, 0x1

    .line 309
    if-nez v43, :cond_14

    .line 310
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/media/mir/SemSilenceDetector;->kTimeOutUs:J

    move-wide/from16 v52, v0

    move-wide/from16 v0, v52

    invoke-virtual {v4, v0, v1}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    .line 311
    .local v5, "inputBufIndex":I
    if-ltz v5, :cond_14

    .line 312
    aget-object v20, v14, v5

    .line 313
    const/4 v6, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v7

    .line 314
    const-wide/16 v8, 0x0

    .line 315
    if-gez v7, :cond_16

    .line 317
    const/16 v43, 0x1

    .line 318
    const/4 v7, 0x0

    .line 322
    :goto_6
    const/4 v6, 0x0

    .line 323
    if-eqz v43, :cond_17

    const/4 v10, 0x4

    .line 322
    :goto_7
    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 324
    if-nez v43, :cond_14

    .line 325
    invoke-virtual/range {v22 .. v22}, Landroid/media/MediaExtractor;->advance()Z

    .line 329
    .end local v5    # "inputBufIndex":I
    :cond_14
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/media/mir/SemSilenceDetector;->kTimeOutUs:J

    move-wide/from16 v52, v0

    move-object/from16 v0, v28

    move-wide/from16 v1, v52

    invoke-virtual {v4, v0, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v39

    .line 330
    .local v39, "res":I
    if-ltz v39, :cond_20

    .line 333
    move-object/from16 v0, v28

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v6, :cond_15

    .line 334
    const/16 v35, 0x0

    .line 336
    :cond_15
    move-object/from16 v0, v28

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v6, :cond_18

    if-eqz p2, :cond_18

    .line 339
    const/16 p2, 0x0

    .line 340
    const-wide/16 v52, 0x0

    const/4 v6, 0x2

    move-object/from16 v0, v22

    move-wide/from16 v1, v52

    invoke-virtual {v0, v1, v2, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 341
    const/16 v43, 0x0

    .line 342
    invoke-virtual {v4}, Landroid/media/MediaCodec;->stop()V

    .line 343
    const/4 v6, 0x0

    const/4 v10, 0x0

    const/16 v49, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v49

    invoke-virtual {v4, v0, v6, v10, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 344
    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    .line 345
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 346
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 347
    goto/16 :goto_4

    .line 320
    .end local v39    # "res":I
    .restart local v5    # "inputBufIndex":I
    :cond_16
    invoke-virtual/range {v22 .. v22}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    goto :goto_6

    .line 323
    :cond_17
    const/4 v10, 0x0

    goto :goto_7

    .line 349
    .end local v5    # "inputBufIndex":I
    .restart local v39    # "res":I
    :cond_18
    move/from16 v36, v39

    .line 350
    .local v36, "outputBufIndex":I
    aget-object v13, v15, v36

    .line 351
    .local v13, "buf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v42

    .line 353
    .local v42, "samples16":Ljava/nio/ShortBuffer;
    const/16 v27, 0x0

    .line 354
    .local v27, "idx":I
    move-object/from16 v0, v40

    iget v6, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->nCh:I

    const/4 v10, 0x2

    if-lt v6, v10, :cond_1e

    .line 355
    const/16 v37, 0x0

    .line 356
    .local v37, "pcm16":S
    const/16 v27, 0x0

    :goto_8
    invoke-virtual/range {v42 .. v42}, Ljava/nio/ShortBuffer;->limit()I

    move-result v6

    sub-int v6, v6, v45

    move/from16 v0, v27

    if-lt v0, v6, :cond_1c

    .line 378
    .end local v37    # "pcm16":S
    :cond_19
    :goto_9
    if-nez v24, :cond_1a

    .line 379
    add-int v19, v19, v27

    .line 382
    :cond_1a
    const/4 v6, 0x0

    move/from16 v0, v36

    invoke-virtual {v4, v0, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 384
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v52, v0

    const-wide/32 v54, 0xf4240

    mul-long v52, v52, v54

    move-object/from16 v0, v40

    iget v6, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->Hz:I

    move-object/from16 v0, v40

    iget v10, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->nCh:I

    mul-int/2addr v6, v10

    int-to-long v0, v6

    move-wide/from16 v54, v0

    div-long v50, v52, v54

    .line 385
    .local v50, "toUs":J
    cmp-long v6, v50, p3

    if-ltz v6, :cond_1b

    .line 386
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v52, v0

    move-wide/from16 v0, v52

    move-object/from16 v2, v40

    iput-wide v0, v2, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findFrontUs:J

    .line 387
    const/16 v43, 0x1

    .line 390
    :cond_1b
    move-object/from16 v0, v28

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_c

    .line 392
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v52, v0

    move-wide/from16 v0, v52

    move-object/from16 v2, v40

    iput-wide v0, v2, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findFrontUs:J

    .line 393
    const/16 v44, 0x1

    .line 395
    goto/16 :goto_4

    .line 357
    .end local v50    # "toUs":J
    .restart local v37    # "pcm16":S
    :cond_1c
    move-object/from16 v0, v42

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v6

    add-int/lit8 v10, v27, 0x1

    move-object/from16 v0, v42

    invoke-virtual {v0, v10}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v10

    add-int/2addr v6, v10

    int-to-short v0, v6

    move/from16 v37, v0

    .line 358
    div-int/lit8 v6, v37, 0x2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-short v0, v6

    move/from16 v37, v0

    .line 359
    move/from16 v0, v37

    move/from16 v1, v48

    if-le v0, v1, :cond_1d

    .line 360
    add-int v19, v19, v27

    .line 361
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v52, v0

    move-wide/from16 v0, v52

    move-object/from16 v2, v40

    iput-wide v0, v2, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findFrontUs:J

    .line 362
    const/16 v44, 0x1

    .line 363
    const/16 v24, 0x1

    .line 364
    goto :goto_9

    .line 356
    :cond_1d
    add-int v27, v27, v45

    goto/16 :goto_8

    .line 368
    .end local v37    # "pcm16":S
    :cond_1e
    const/16 v27, 0x0

    :goto_a
    invoke-virtual/range {v42 .. v42}, Ljava/nio/ShortBuffer;->limit()I

    move-result v6

    sub-int v6, v6, v45

    move/from16 v0, v27

    if-ge v0, v6, :cond_19

    .line 369
    move-object/from16 v0, v42

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v6

    move/from16 v0, v48

    if-le v6, v0, :cond_1f

    .line 370
    add-int v19, v19, v27

    .line 371
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v52, v0

    move-wide/from16 v0, v52

    move-object/from16 v2, v40

    iput-wide v0, v2, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findFrontUs:J

    .line 372
    const/16 v44, 0x1

    .line 373
    const/16 v24, 0x1

    .line 374
    goto/16 :goto_9

    .line 368
    :cond_1f
    add-int v27, v27, v45

    goto :goto_a

    .line 395
    .end local v13    # "buf":Ljava/nio/ByteBuffer;
    .end local v27    # "idx":I
    .end local v36    # "outputBufIndex":I
    .end local v42    # "samples16":Ljava/nio/ShortBuffer;
    :cond_20
    const/4 v6, -0x3

    move/from16 v0, v39

    if-ne v0, v6, :cond_c

    .line 396
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v15

    goto/16 :goto_4

    .line 419
    .end local v39    # "res":I
    .restart local v16    # "decLimitloop":J
    .restart local v23    # "findback":Z
    .restart local v30    # "k":J
    .restart local v32    # "loopcnt":J
    .restart local v46    # "seekto":J
    :cond_21
    invoke-virtual {v4}, Landroid/media/MediaCodec;->flush()V

    .line 420
    move-object/from16 v0, v40

    iget-wide v0, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->duration:J

    move-wide/from16 v52, v0

    mul-long v54, v16, v30

    sub-long v46, v52, v54

    .line 421
    const-wide/16 v52, 0x0

    cmp-long v6, v46, v52

    if-gez v6, :cond_22

    .line 422
    move-object/from16 v0, v40

    iget-wide v0, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->duration:J

    move-wide/from16 v46, v0

    .line 425
    :cond_22
    const/4 v6, 0x2

    move-object/from16 v0, v22

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 426
    const/16 v43, 0x0

    .line 427
    const/16 v44, 0x0

    .line 428
    const/16 v35, 0x0

    .line 429
    const/16 v19, 0x0

    .line 430
    const/16 v44, 0x0

    .line 431
    :cond_23
    :goto_b
    if-nez v44, :cond_24

    const/16 v6, 0x32

    move/from16 v0, v35

    if-lt v0, v6, :cond_26

    .line 499
    :cond_24
    move-object/from16 v0, v40

    iget v6, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->nCh:I

    const/4 v10, 0x2

    if-lt v6, v10, :cond_30

    .line 500
    const/16 v37, 0x0

    .line 501
    .restart local v37    # "pcm16":S
    move-object/from16 v0, v40

    iget v6, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->nCh:I

    sub-int v26, v19, v6

    :goto_c
    move/from16 v0, v26

    move/from16 v1, v45

    if-gt v0, v1, :cond_2e

    .line 418
    .end local v37    # "pcm16":S
    :cond_25
    :goto_d
    const-wide/16 v52, 0x1

    add-long v30, v30, v52

    goto/16 :goto_5

    .line 432
    :cond_26
    add-int/lit8 v35, v35, 0x1

    .line 433
    if-nez v43, :cond_27

    .line 434
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/media/mir/SemSilenceDetector;->kTimeOutUs:J

    move-wide/from16 v52, v0

    move-wide/from16 v0, v52

    invoke-virtual {v4, v0, v1}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    .line 435
    .restart local v5    # "inputBufIndex":I
    if-ltz v5, :cond_27

    .line 436
    aget-object v20, v14, v5

    .line 437
    const/4 v6, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v7

    .line 438
    const-wide/16 v8, 0x0

    .line 439
    if-gez v7, :cond_29

    .line 441
    const/16 v43, 0x1

    .line 442
    const/4 v7, 0x0

    .line 446
    :goto_e
    const/4 v6, 0x0

    .line 447
    if-eqz v43, :cond_2a

    const/4 v10, 0x4

    .line 446
    :goto_f
    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 448
    if-nez v43, :cond_27

    .line 449
    invoke-virtual/range {v22 .. v22}, Landroid/media/MediaExtractor;->advance()Z

    .line 453
    .end local v5    # "inputBufIndex":I
    :cond_27
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/media/mir/SemSilenceDetector;->kTimeOutUs:J

    move-wide/from16 v52, v0

    move-object/from16 v0, v28

    move-wide/from16 v1, v52

    invoke-virtual {v4, v0, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v39

    .line 454
    .restart local v39    # "res":I
    if-ltz v39, :cond_2d

    .line 457
    move-object/from16 v0, v28

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v6, :cond_28

    .line 458
    const/16 v35, 0x0

    .line 460
    :cond_28
    move-object/from16 v0, v28

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v6, :cond_2b

    if-eqz p2, :cond_2b

    .line 463
    const/16 p2, 0x0

    .line 464
    const/4 v6, 0x2

    move-object/from16 v0, v22

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 465
    const/16 v43, 0x0

    .line 466
    invoke-virtual {v4}, Landroid/media/MediaCodec;->stop()V

    .line 467
    const/4 v6, 0x0

    const/4 v10, 0x0

    const/16 v49, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v49

    invoke-virtual {v4, v0, v6, v10, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 468
    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    .line 469
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 470
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 471
    goto/16 :goto_b

    .line 444
    .end local v39    # "res":I
    .restart local v5    # "inputBufIndex":I
    :cond_29
    invoke-virtual/range {v22 .. v22}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    goto :goto_e

    .line 447
    :cond_2a
    const/4 v10, 0x0

    goto :goto_f

    .line 473
    .end local v5    # "inputBufIndex":I
    .restart local v39    # "res":I
    :cond_2b
    aget-object v13, v15, v39

    .line 474
    .restart local v13    # "buf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v42

    .line 476
    .restart local v42    # "samples16":Ljava/nio/ShortBuffer;
    invoke-virtual/range {v42 .. v42}, Ljava/nio/ShortBuffer;->limit()I

    move-result v6

    add-int v6, v6, v19

    move-object/from16 v0, v18

    array-length v10, v0

    if-lt v6, v10, :cond_2c

    .line 477
    invoke-virtual/range {v42 .. v42}, Ljava/nio/ShortBuffer;->limit()I

    move-result v6

    add-int v6, v6, v19

    move-object/from16 v0, v18

    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v18

    .line 479
    :cond_2c
    invoke-virtual/range {v42 .. v42}, Ljava/nio/ShortBuffer;->limit()I

    move-result v6

    move-object/from16 v0, v42

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v6}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 480
    invoke-virtual/range {v42 .. v42}, Ljava/nio/ShortBuffer;->limit()I

    move-result v6

    add-int v19, v19, v6

    .line 481
    const/4 v6, 0x0

    move/from16 v0, v39

    invoke-virtual {v4, v0, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 483
    move-object/from16 v0, v28

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_23

    .line 485
    const/16 v44, 0x1

    .line 487
    goto/16 :goto_b

    .end local v13    # "buf":Ljava/nio/ByteBuffer;
    .end local v42    # "samples16":Ljava/nio/ShortBuffer;
    :cond_2d
    const/4 v6, -0x3

    move/from16 v0, v39

    if-ne v0, v6, :cond_23

    .line 488
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v15

    goto/16 :goto_b

    .line 502
    .end local v39    # "res":I
    .restart local v37    # "pcm16":S
    :cond_2e
    aget-short v6, v18, v26

    add-int/lit8 v10, v26, 0x1

    aget-short v10, v18, v10

    add-int/2addr v6, v10

    int-to-short v0, v6

    move/from16 v37, v0

    .line 503
    div-int/lit8 v6, v37, 0x2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-short v0, v6

    move/from16 v37, v0

    .line 504
    move/from16 v0, v37

    move/from16 v1, v48

    if-le v0, v1, :cond_2f

    .line 505
    add-int/lit8 v6, v19, -0x1

    sub-int v6, v6, v26

    int-to-long v0, v6

    move-wide/from16 v52, v0

    move-wide/from16 v0, v52

    move-object/from16 v2, v40

    iput-wide v0, v2, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findBackUs:J

    .line 507
    const/16 v23, 0x1

    .line 508
    goto/16 :goto_d

    .line 501
    :cond_2f
    sub-int v26, v26, v45

    goto/16 :goto_c

    .line 512
    .end local v37    # "pcm16":S
    :cond_30
    move-object/from16 v0, v40

    iget v6, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->nCh:I

    sub-int v26, v19, v6

    :goto_10
    move/from16 v0, v26

    move/from16 v1, v45

    if-le v0, v1, :cond_25

    .line 513
    aget-short v6, v18, v26

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    move/from16 v0, v48

    if-le v6, v0, :cond_31

    .line 514
    add-int/lit8 v6, v19, -0x1

    sub-int v6, v6, v26

    int-to-long v0, v6

    move-wide/from16 v52, v0

    move-wide/from16 v0, v52

    move-object/from16 v2, v40

    iput-wide v0, v2, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findBackUs:J

    .line 516
    const/16 v23, 0x1

    .line 517
    goto/16 :goto_d

    .line 512
    :cond_31
    sub-int v26, v26, v45

    goto :goto_10
.end method

.method private decodeFrontBackJniOnly(Ljava/lang/String;ZJD)Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;
    .locals 19
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "reconfigure"    # Z
    .param p3, "decLimitUs"    # J
    .param p5, "threshold"    # D

    .prologue
    .line 97
    new-instance v12, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v14}, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;-><init>(Lcom/samsung/android/media/mir/SemSilenceDetector;Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;)V

    .line 98
    .local v12, "result":Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;
    new-instance v7, Landroid/media/MediaExtractor;

    invoke-direct {v7}, Landroid/media/MediaExtractor;-><init>()V

    .line 101
    .local v7, "extractor":Landroid/media/MediaExtractor;
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    const/4 v5, 0x0

    .line 110
    .local v5, "bFindAudioCodec":Z
    const/4 v4, 0x0

    .line 111
    .local v4, "audiotracknum":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v7}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v14

    if-lt v9, v14, :cond_0

    .line 121
    :goto_1
    if-nez v5, :cond_2

    .line 122
    const/4 v7, 0x0

    .line 123
    const/4 v12, 0x0

    .line 124
    const/4 v14, 0x0

    .line 179
    .end local v4    # "audiotracknum":I
    .end local v5    # "bFindAudioCodec":Z
    .end local v9    # "i":I
    :goto_2
    return-object v14

    .line 102
    :catch_0
    move-exception v6

    .line 103
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 104
    const/4 v7, 0x0

    .line 105
    const/4 v12, 0x0

    .line 106
    const/4 v14, 0x0

    goto :goto_2

    .line 112
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v4    # "audiotracknum":I
    .restart local v5    # "bFindAudioCodec":Z
    .restart local v9    # "i":I
    :cond_0
    invoke-virtual {v7, v9}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v8

    .line 113
    .local v8, "format":Landroid/media/MediaFormat;
    const-string v14, "mime"

    invoke-virtual {v8, v14}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 114
    .local v10, "mime":Ljava/lang/String;
    const-string v14, "audio/"

    invoke-virtual {v10, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 115
    const/4 v5, 0x1

    .line 116
    move v4, v9

    .line 117
    goto :goto_1

    .line 111
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 128
    .end local v8    # "format":Landroid/media/MediaFormat;
    .end local v10    # "mime":Ljava/lang/String;
    :cond_2
    invoke-virtual {v7, v4}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v8

    .line 129
    .restart local v8    # "format":Landroid/media/MediaFormat;
    if-nez v8, :cond_3

    .line 130
    const/4 v7, 0x0

    .line 131
    const/4 v12, 0x0

    .line 132
    const/4 v14, 0x0

    goto :goto_2

    .line 135
    :cond_3
    :try_start_1
    const-string v14, "mime"

    invoke-virtual {v8, v14}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v12, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->mime:Ljava/lang/String;

    .line 136
    const-string/jumbo v14, "sample-rate"

    invoke-virtual {v8, v14}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v14

    iput v14, v12, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->Hz:I

    .line 137
    const-string v14, "channel-count"

    invoke-virtual {v8, v14}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v14

    iput v14, v12, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->nCh:I

    .line 138
    const-string v14, "durationUs"

    invoke-virtual {v8, v14}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v12, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->duration:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 146
    iget-wide v14, v12, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->duration:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/media/mir/SemSilenceDetector;->mMinDurationUs:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-gtz v14, :cond_4

    .line 147
    const/4 v7, 0x0

    .line 148
    const/4 v12, 0x0

    .line 149
    const/4 v14, 0x0

    goto :goto_2

    .line 139
    :catch_1
    move-exception v6

    .line 140
    .local v6, "e":Ljava/lang/Exception;
    const/4 v7, 0x0

    .line 141
    const/4 v12, 0x0

    .line 142
    const/4 v14, 0x0

    goto :goto_2

    .line 152
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v10, v12, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->mime:Ljava/lang/String;

    .line 153
    .restart local v10    # "mime":Ljava/lang/String;
    sget-boolean v14, Lcom/samsung/android/media/mir/SemSilenceDetector;->SMSD_LOAD_LIBRARY:Z

    if-eqz v14, :cond_9

    .line 154
    const-string v14, "audio/x-ms-wma"

    invoke-virtual {v10, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    const-string v14, "audio/mpeg"

    invoke-virtual {v10, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    const-string v14, "audio/aac"

    invoke-virtual {v10, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 155
    const-string v14, "audio/mp4a-latm"

    invoke-virtual {v10, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    const-string v14, "audio/flac"

    invoke-virtual {v10, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 156
    const-string v14, "audio/raw"

    invoke-virtual {v10, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    const-string v14, "audio/x-wav"

    invoke-virtual {v10, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    const-string v14, "audio/vorbis"

    invoke-virtual {v10, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 157
    const-string v14, "application/ogg"

    invoke-virtual {v10, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 158
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/media/mir/SemSilenceDetector;->init(Ljava/lang/String;)I

    move-result v13

    .line 159
    .local v13, "ret":I
    if-nez v13, :cond_8

    .line 160
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/mir/SemSilenceDetector;->getSilencePositionNative(D)[J

    move-result-object v11

    .line 161
    .local v11, "pos":[J
    if-eqz v11, :cond_6

    .line 162
    const/4 v14, 0x0

    aget-wide v14, v11, v14

    iput-wide v14, v12, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findFrontUs:J

    .line 163
    const/4 v14, 0x1

    aget-wide v14, v11, v14

    iput-wide v14, v12, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findBackUs:J

    .line 165
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/media/mir/SemSilenceDetector;->deinit()I

    .line 174
    .end local v11    # "pos":[J
    .end local v13    # "ret":I
    :goto_3
    if-eqz v7, :cond_7

    .line 175
    invoke-virtual {v7}, Landroid/media/MediaExtractor;->release()V

    .line 176
    const/4 v7, 0x0

    :cond_7
    move-object v14, v12

    .line 179
    goto/16 :goto_2

    .line 167
    .restart local v13    # "ret":I
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/media/mir/SemSilenceDetector;->deinit()I

    .line 168
    const/4 v12, 0x0

    .line 170
    goto :goto_3

    .line 171
    .end local v13    # "ret":I
    :cond_9
    const/4 v12, 0x0

    goto :goto_3
.end method

.method private native deinit()I
.end method

.method private native getSilencePositionNative(D)[J
.end method

.method private native init(Ljava/lang/String;)I
.end method

.method private shortTodB(S)D
    .locals 6
    .param p1, "sample16bit"    # S

    .prologue
    .line 555
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x40e0000000000000L    # 32768.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public getSilencePosition(D)[J
    .locals 9
    .param p1, "threshold"    # D

    .prologue
    .line 56
    const/4 v1, 0x2

    new-array v8, v1, [J

    fill-array-data v8, :array_0

    .line 58
    .local v8, "retVal":[J
    iget-object v1, p0, Lcom/samsung/android/media/mir/SemSilenceDetector;->mFilepath:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-object v8

    .line 62
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/media/mir/SemSilenceDetector;->mFilepath:Ljava/lang/String;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/samsung/android/media/mir/SemSilenceDetector;->mSearchDurationUs:J

    move-object v1, p0

    move-wide v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/media/mir/SemSilenceDetector;->decodeFrontBackJniOnly(Ljava/lang/String;ZJD)Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;

    move-result-object v0

    .line 64
    .local v0, "result":Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;
    if-eqz v0, :cond_3

    .line 65
    const/4 v1, 0x0

    iget-wide v2, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findFrontUs:J

    aput-wide v2, v8, v1

    .line 66
    const/4 v1, 0x1

    iget-wide v2, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->duration:J

    iget-wide v4, v0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findBackUs:J

    sub-long/2addr v2, v4

    aput-wide v2, v8, v1

    .line 73
    :goto_1
    const/4 v1, 0x0

    aget-wide v2, v8, v1

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_2

    const/4 v1, 0x1

    aget-wide v2, v8, v1

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 74
    :cond_2
    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    aput-wide v2, v8, v1

    .line 75
    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    aput-wide v2, v8, v1

    goto :goto_0

    .line 69
    :cond_3
    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    aput-wide v2, v8, v1

    .line 70
    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    aput-wide v2, v8, v1

    goto :goto_1

    .line 56
    nop

    :array_0
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method public release()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/mir/SemSilenceDetector;->mFilepath:Ljava/lang/String;

    .line 43
    return-void
.end method
