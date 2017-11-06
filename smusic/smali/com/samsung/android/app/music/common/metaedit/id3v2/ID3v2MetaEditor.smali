.class public Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;
.super Ljava/lang/Object;
.source "ID3v2MetaEditor.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;


# static fields
.field private static final DEBUG:Z = true

.field private static final NUMERIC_GENRE_REF_PATTERN:Ljava/util/regex/Pattern;

.field private static final POLICY_FORCED_UTF8_UPDATE_TO_MAJOR4:Z = true


# instance fields
.field private final mPath:Ljava/lang/String;

.field private mTag:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

.field private final mUnknownFrames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "\\(?([\\d]+)\\)?\\u0000?"

    .line 39
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->NUMERIC_GENRE_REF_PATTERN:Ljava/util/regex/Pattern;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->mUnknownFrames:Ljava/util/List;

    .line 61
    iput-object p1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->mPath:Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->parse(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "metaType"    # I
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->mUnknownFrames:Ljava/util/List;

    .line 75
    const-string v5, "UTF-8"

    invoke-virtual {p3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 77
    .local v1, "bytes":[B
    array-length v5, v1

    add-int/lit8 v3, v5, 0xb

    .line 78
    .local v3, "newFrameLength":I
    add-int/lit8 v4, v3, 0xa

    .line 79
    .local v4, "newId3TagWholeLength":I
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 82
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    sget-object v5, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract$Header;->BYTES_IDENTIFIER:[B

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 83
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 84
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 85
    sget-object v5, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract$Header;->BYTES_EMPTY_FLAG:[B

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 86
    invoke-static {v3, v6}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->getSynchSafeBytesFromInt(II)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 89
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->getFrameIdBytes(I)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 90
    array-length v5, v1

    add-int/lit8 v5, v5, 0x1

    .line 91
    invoke-static {v5, v6}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->getSynchSafeBytesFromInt(II)[B

    move-result-object v5

    .line 90
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 93
    sget-object v5, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract$Frame;->BYTES_EMPTY_FLAG:[B

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 94
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 95
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 97
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "rw"

    invoke-direct {v2, p1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v2, "f":Ljava/io/RandomAccessFile;
    const/4 v6, 0x0

    .line 98
    const-wide/16 v8, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-static {v2, p1, v8, v9, v5}, Lcom/samsung/android/app/music/common/metaedit/FileModifier;->insert(Ljava/io/RandomAccessFile;Ljava/lang/String;J[B)V

    .line 99
    iput-object p1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->mPath:Ljava/lang/String;

    .line 100
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->parse(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 101
    if-eqz v2, :cond_0

    if-eqz v6, :cond_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v5

    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    .line 97
    :catch_1
    move-exception v5

    :try_start_2
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    :catchall_0
    move-exception v6

    move-object v10, v6

    move-object v6, v5

    move-object v5, v10

    :goto_1
    if-eqz v2, :cond_2

    if-eqz v6, :cond_3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    throw v5

    :catch_2
    move-exception v7

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_2

    :catchall_1
    move-exception v5

    goto :goto_1
.end method

.method private addFrame(I[B)V
    .locals 21
    .param p1, "metaType"    # I
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 487
    new-instance v8, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->mPath:Ljava/lang/String;

    const-string/jumbo v16, "rw"

    move-object/from16 v0, v16

    invoke-direct {v8, v15, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v8, "f":Ljava/io/RandomAccessFile;
    const/16 v16, 0x0

    .line 489
    :try_start_0
    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->makeTextFrameData(I[B)[B

    move-result-object v5

    .line 490
    .local v5, "encodedBytes":[B
    array-length v3, v5

    .line 501
    .local v3, "encodedSize":I
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->getFrameIdBytes(I)[B

    move-result-object v2

    .line 503
    .local v2, "idBytes":[B
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->mTag:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    iget-object v15, v15, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->version:[B

    const/16 v17, 0x0

    aget-byte v15, v15, v17

    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v15, v0, :cond_1

    .line 504
    const/4 v15, 0x4

    invoke-static {v3, v15}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->getSynchSafeBytesFromInt(II)[B

    move-result-object v14

    .line 508
    .local v14, "sizeBytes":[B
    :goto_0
    const/4 v15, 0x2

    new-array v4, v15, [B

    fill-array-data v4, :array_0

    .line 511
    .local v4, "flagBytes":[B
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->mTag:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v15}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->parseExtendedHeader(Ljava/io/RandomAccessFile;Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;)I

    move-result v15

    int-to-long v6, v15

    .line 512
    .local v6, "offset":J
    add-int/lit8 v11, v3, 0xa

    .line 513
    .local v11, "newFrameSize":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->mTag:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    iget v15, v15, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->size:I

    add-int v12, v15, v11

    .line 514
    .local v12, "newID3TagSize":I
    const/4 v15, 0x4

    .line 515
    invoke-static {v12, v15}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->getSynchSafeBytesFromInt(II)[B

    move-result-object v13

    .line 518
    .local v13, "newID3TagSizeBytes":[B
    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 519
    .local v9, "frameBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v9, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 520
    invoke-virtual {v9, v14}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 521
    invoke-virtual {v9, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 522
    invoke-virtual {v9, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 525
    const-wide/16 v18, 0x6

    move-wide/from16 v0, v18

    invoke-virtual {v8, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 526
    invoke-virtual {v8, v13}, Ljava/io/RandomAccessFile;->write([B)V

    .line 529
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->mPath:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v8, v15, v6, v7, v0}, Lcom/samsung/android/app/music/common/metaedit/FileModifier;->insert(Ljava/io/RandomAccessFile;Ljava/lang/String;J[B)V

    .line 532
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v11, v12}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->changeOffsetAndTagSize(JII)V

    .line 535
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->obtain([BI[B[BJ)Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;

    move-result-object v10

    .line 536
    .local v10, "newFrame":Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->mTag:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    move/from16 v0, p1

    invoke-virtual {v15, v0, v10}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->addFrame(ILcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 537
    if-eqz v8, :cond_0

    if-eqz v16, :cond_2

    :try_start_1
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 538
    :cond_0
    :goto_1
    return-void

    .line 506
    .end local v4    # "flagBytes":[B
    .end local v6    # "offset":J
    .end local v9    # "frameBuffer":Ljava/nio/ByteBuffer;
    .end local v10    # "newFrame":Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;
    .end local v11    # "newFrameSize":I
    .end local v12    # "newID3TagSize":I
    .end local v13    # "newID3TagSizeBytes":[B
    .end local v14    # "sizeBytes":[B
    :cond_1
    const/4 v15, 0x4

    :try_start_2
    invoke-static {v3, v15}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->getBytesFromInt(II)[B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v14

    .restart local v14    # "sizeBytes":[B
    goto :goto_0

    .line 537
    .restart local v4    # "flagBytes":[B
    .restart local v6    # "offset":J
    .restart local v9    # "frameBuffer":Ljava/nio/ByteBuffer;
    .restart local v10    # "newFrame":Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;
    .restart local v11    # "newFrameSize":I
    .restart local v12    # "newID3TagSize":I
    .restart local v13    # "newID3TagSizeBytes":[B
    :catch_0
    move-exception v15

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_1

    .line 487
    .end local v2    # "idBytes":[B
    .end local v3    # "encodedSize":I
    .end local v4    # "flagBytes":[B
    .end local v5    # "encodedBytes":[B
    .end local v6    # "offset":J
    .end local v9    # "frameBuffer":Ljava/nio/ByteBuffer;
    .end local v10    # "newFrame":Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;
    .end local v11    # "newFrameSize":I
    .end local v12    # "newID3TagSize":I
    .end local v13    # "newID3TagSizeBytes":[B
    .end local v14    # "sizeBytes":[B
    :catch_1
    move-exception v15

    :try_start_3
    throw v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 537
    :catchall_0
    move-exception v16

    move-object/from16 v20, v16

    move-object/from16 v16, v15

    move-object/from16 v15, v20

    :goto_2
    if-eqz v8, :cond_3

    if-eqz v16, :cond_4

    :try_start_4
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_3
    throw v15

    :catch_2
    move-exception v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_3

    :catchall_1
    move-exception v15

    goto :goto_2

    .line 508
    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private changeOffsetAndTagSize(JII)V
    .locals 1
    .param p1, "offset"    # J
    .param p3, "delta"    # I
    .param p4, "tagSize"    # I

    .prologue
    .line 611
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->mTag:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->propagateOffsetChanged(JI)V

    .line 612
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->mTag:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    invoke-static {v0, p4}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->obtain(Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;I)Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->mTag:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    .line 613
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->mTag:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->getMajorVersion()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->needUpdateToV24(B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->changeUnknownFramesOffset(JI)V

    .line 616
    :cond_0
    return-void
.end method

.method private changeUnknownFramesOffset(JI)V
    .locals 7
    .param p1, "offset"    # J
    .param p3, "delta"    # I

    .prologue
    .line 619
    iget-object v1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->mUnknownFrames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;

    .line 620
    .local v0, "unknownFrame":Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->getOffset()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    .line 621
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->getOffset()J

    move-result-wide v2

    int-to-long v4, p3

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->setOffset(J)V

    goto :goto_0

    .line 624
    .end local v0    # "unknownFrame":Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;
    :cond_1
    return-void
.end method

.method private getFrameIdBytes(I)[B
    .locals 3
    .param p1, "metaType"    # I

    .prologue
    .line 588
    packed-switch p1, :pswitch_data_0

    .line 606
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not supported meta type. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 590
    :pswitch_0
    sget-object v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract$Frame;->BYTES_TITLE:[B

    .line 604
    :goto_0
    return-object v0

    .line 592
    :pswitch_1
    sget-object v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract$Frame;->BYTES_ARTIST:[B

    goto :goto_0

    .line 594
    :pswitch_2
    sget-object v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract$Frame;->BYTES_ALBUM:[B

    goto :goto_0

    .line 596
    :pswitch_3
    sget-object v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract$Frame;->BYTES_ALBUM_ARTIST:[B

    goto :goto_0

    .line 598
    :pswitch_4
    sget-object v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract$Frame;->BYTES_GENRE:[B

    goto :goto_0

    .line 600
    :pswitch_5
    sget-object v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract$Frame;->BYTES_YEAR:[B

    goto :goto_0

    .line 602
    :pswitch_6
    sget-object v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract$Frame;->BYTES_TRACK_NUMBER:[B

    goto :goto_0

    .line 604
    :pswitch_7
    sget-object v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract$Frame;->BYTES_DISC_NUMBER:[B

    goto :goto_0

    .line 588
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private getGenreFromNumericString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "uncheckedGenre"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 657
    sget-object v4, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->NUMERIC_GENRE_REF_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 658
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_1

    .line 669
    :cond_0
    :goto_0
    return-object v3

    .line 662
    :cond_1
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 663
    .local v2, "numericGenre":I
    if-ltz v2, :cond_0

    sget-object v4, Lcom/samsung/android/app/music/common/metaedit/CommonContract$Genre;->GENRES:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 666
    sget-object v4, Lcom/samsung/android/app/music/common/metaedit/CommonContract$Genre;->GENRES:[Ljava/lang/String;

    aget-object v3, v4, v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 667
    .end local v2    # "numericGenre":I
    :catch_0
    move-exception v0

    .line 669
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_1
    goto :goto_0

    .line 667
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private getMetaType([B)I
    .locals 8
    .param p1, "id"    # [B

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 541
    invoke-static {p1}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->hexToString([B)Ljava/lang/String;

    move-result-object v6

    const/4 v5, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v5, :pswitch_data_0

    move v0, v4

    .line 583
    :goto_1
    :pswitch_0
    return v0

    .line 541
    :sswitch_0
    const-string v7, "54495432"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v4

    goto :goto_0

    :sswitch_1
    const-string v7, "54504531"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v0

    goto :goto_0

    :sswitch_2
    const-string v7, "54414c42"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v1

    goto :goto_0

    :sswitch_3
    const-string v7, "54504532"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v2

    goto :goto_0

    :sswitch_4
    const-string v7, "54434f4e"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v3

    goto :goto_0

    :sswitch_5
    const-string v7, "54594552"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x5

    goto :goto_0

    :sswitch_6
    const-string v7, "5452434b"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x6

    goto :goto_0

    :sswitch_7
    const-string v7, "54504f53"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x7

    goto :goto_0

    :sswitch_8
    const-string v7, "45515541"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x8

    goto :goto_0

    :sswitch_9
    const-string v7, "49504c53"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x9

    goto :goto_0

    :sswitch_a
    const-string v7, "52564144"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xa

    goto :goto_0

    :sswitch_b
    const-string v7, "54444154"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xb

    goto :goto_0

    :sswitch_c
    const-string v7, "54494d45"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v7, "544f5259"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string v7, "54524441"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string v7, "5453495a"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string v7, "54445243"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x10

    goto/16 :goto_0

    :pswitch_1
    move v0, v1

    .line 545
    goto/16 :goto_1

    :pswitch_2
    move v0, v2

    .line 547
    goto/16 :goto_1

    :pswitch_3
    move v0, v3

    .line 549
    goto/16 :goto_1

    .line 551
    :pswitch_4
    const/4 v0, 0x5

    goto/16 :goto_1

    .line 553
    :pswitch_5
    const/4 v0, 0x6

    goto/16 :goto_1

    .line 555
    :pswitch_6
    const/4 v0, 0x7

    goto/16 :goto_1

    .line 557
    :pswitch_7
    const/16 v0, 0x8

    goto/16 :goto_1

    .line 559
    :pswitch_8
    const v0, 0x186a1

    goto/16 :goto_1

    .line 561
    :pswitch_9
    const v0, 0x186a2

    goto/16 :goto_1

    .line 563
    :pswitch_a
    const v0, 0x186a3

    goto/16 :goto_1

    .line 565
    :pswitch_b
    const v0, 0x186a4

    goto/16 :goto_1

    .line 567
    :pswitch_c
    const v0, 0x186a5

    goto/16 :goto_1

    .line 569
    :pswitch_d
    const v0, 0x186a6

    goto/16 :goto_1

    .line 571
    :pswitch_e
    const v0, 0x186a7

    goto/16 :goto_1

    .line 573
    :pswitch_f
    const v0, 0x186a8

    goto/16 :goto_1

    .line 581
    :pswitch_10
    const v0, 0x186a9

    goto/16 :goto_1

    .line 541
    nop

    :sswitch_data_0
    .sparse-switch
        -0x64160f37 -> :sswitch_2
        -0x63f9d4bf -> :sswitch_4
        -0x63ec8445 -> :sswitch_b
        -0x63ec0c45 -> :sswitch_10
        -0x63a58f5e -> :sswitch_0
        -0x63a54f6b -> :sswitch_c
        -0x626ffae7 -> :sswitch_1
        -0x626ffae6 -> :sswitch_3
        -0x626f42b6 -> :sswitch_7
        -0x6253d317 -> :sswitch_6
        -0x6253cf87 -> :sswitch_e
        -0x6245a4f2 -> :sswitch_f
        -0x61f1271f -> :sswitch_5
        -0x612b74ee -> :sswitch_d
        0x34180cbb -> :sswitch_a
        0x3e2ead6d -> :sswitch_9
        0x6aa39f7a -> :sswitch_8
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method private isDeprecatedV23Frame(I)Z
    .locals 1
    .param p1, "metaType"    # I

    .prologue
    .line 712
    packed-switch p1, :pswitch_data_0

    .line 723
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 721
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 712
    nop

    :pswitch_data_0
    .packed-switch 0x186a1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isNumericStringType(I)Z
    .locals 1
    .param p1, "metaType"    # I

    .prologue
    .line 651
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeTextFrameData(I[B)[B
    .locals 3
    .param p1, "metaType"    # I
    .param p2, "bytes"    # [B

    .prologue
    .line 627
    array-length v2, p2

    add-int/lit8 v1, v2, 0x1

    .line 628
    .local v1, "encodedSize":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 633
    .local v0, "encodedBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->isNumericStringType(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 634
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 646
    :goto_0
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 647
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2

    .line 637
    :cond_0
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private needUpdateToV24(B)Z
    .locals 1
    .param p1, "currentVersion"    # B

    .prologue
    .line 728
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parse(Ljava/lang/String;)V
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v4, "rw"

    invoke-direct {v2, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v2, "f":Ljava/io/RandomAccessFile;
    const/4 v5, 0x0

    .line 237
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 238
    .local v0, "elapsedTime":J
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->parseHeader(Ljava/io/RandomAccessFile;)Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->mTag:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    .line 239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v0

    .line 241
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Header parsing time : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 245
    iget-object v4, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->mTag:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    invoke-direct {p0, v2, v4}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->parseExtendedHeader(Ljava/io/RandomAccessFile;Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;)I

    move-result v3

    .line 246
    .local v3, "offset":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v0

    .line 248
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Extended header parsing time : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 252
    iget-object v4, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->mTag:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    invoke-direct {p0, v2, v4, v3}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->parseFrames(Ljava/io/RandomAccessFile;Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;I)V

    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v0

    .line 255
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Frames parsing time : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 257
    if-eqz v2, :cond_0

    if-eqz v5, :cond_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v4

    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    .line 236
    .end local v0    # "elapsedTime":J
    .end local v3    # "offset":I
    :catch_1
    move-exception v4

    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 257
    :catchall_0
    move-exception v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    :goto_1
    if-eqz v2, :cond_2

    if-eqz v5, :cond_3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    throw v4

    :catch_2
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_2

    :catchall_1
    move-exception v4

    goto :goto_1
.end method

.method private parseExtendedHeader(Ljava/io/RandomAccessFile;Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;)I
    .locals 6
    .param p1, "f"    # Ljava/io/RandomAccessFile;
    .param p2, "tag"    # Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 292
    const-wide/16 v2, 0xa

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 293
    iget-byte v1, p2, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->flags:B

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_1

    .line 294
    iget-object v1, p2, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->version:[B

    aget-byte v1, v1, v5

    if-ne v1, v4, :cond_0

    .line 295
    new-array v0, v4, [B

    .line 296
    .local v0, "sizeBytes":[B
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 297
    invoke-static {v0}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->getIntFromSynchSafeBytes([B)I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    .line 305
    .end local v0    # "sizeBytes":[B
    :goto_0
    return v1

    .line 298
    :cond_0
    iget-object v1, p2, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->version:[B

    aget-byte v1, v1, v5

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 299
    new-array v0, v4, [B

    .line 300
    .restart local v0    # "sizeBytes":[B
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 301
    invoke-static {v0}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->getIntFromBytes([B)I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 305
    .end local v0    # "sizeBytes":[B
    :cond_1
    const/16 v1, 0xa

    goto :goto_0
.end method

.method private parseFrames(Ljava/io/RandomAccessFile;Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;I)V
    .locals 20
    .param p1, "f"    # Ljava/io/RandomAccessFile;
    .param p2, "tag"    # Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;
    .param p3, "start"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    .line 310
    .local v6, "fileLength":J
    const/16 v18, 0xa

    move/from16 v0, v18

    new-array v10, v0, [B

    .line 311
    .local v10, "frameHeaderBytes":[B
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 314
    .local v17, "sizeBytes":[B
    move/from16 v5, p3

    .line 318
    .local v5, "fileOffset":I
    int-to-long v0, v5

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 319
    :cond_0
    :goto_0
    int-to-long v0, v5

    move-wide/from16 v18, v0

    cmp-long v18, v18, v6

    if-gez v18, :cond_1

    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->size:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v5, v0, :cond_1

    .line 320
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v18

    add-int v5, v5, v18

    .line 321
    const/4 v14, 0x0

    .line 323
    .local v14, "offset":I
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v11, v0, [B

    .line 324
    .local v11, "idBytes":[B
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v8, v0, [B

    .line 326
    .local v8, "flagsBytes":[B
    const/16 v18, 0x0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v10, v14, v11, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 327
    add-int/lit8 v14, v14, 0x4

    .line 334
    sget-object v18, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract$Padding;->BYTE_PADDING:[B

    move-object/from16 v0, v18

    invoke-static {v11, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 388
    .end local v8    # "flagsBytes":[B
    .end local v11    # "idBytes":[B
    .end local v14    # "offset":I
    :cond_1
    return-void

    .line 338
    .restart local v8    # "flagsBytes":[B
    .restart local v11    # "idBytes":[B
    .restart local v14    # "offset":I
    :cond_2
    const/16 v18, 0x0

    const/16 v19, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v10, v14, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    add-int/lit8 v14, v14, 0x4

    .line 341
    const/16 v18, 0x0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v10, v14, v8, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 348
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->version:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-byte v18, v18, v19

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 349
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->getIntFromSynchSafeBytes([B)I

    move-result v16

    .line 353
    .local v16, "size":I
    :goto_1
    if-lez v16, :cond_0

    .line 361
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->getMetaType([B)I

    move-result v12

    .line 362
    .local v12, "metaType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->mTag:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->getMajorVersion()B

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->needUpdateToV24(B)Z

    move-result v13

    .line 363
    .local v13, "needUpdateID3v24":Z
    if-nez v12, :cond_5

    .line 364
    if-eqz v13, :cond_3

    .line 366
    const/16 v18, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v11, v0, v8, v1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->obtain([BI[B[B)Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;

    move-result-object v9

    .line 367
    .local v9, "frame":Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;
    add-int/lit8 v18, v5, -0xa

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->setOffset(J)V

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->mUnknownFrames:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    .end local v9    # "frame":Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;
    :cond_3
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v18

    add-int v5, v5, v18

    goto/16 :goto_0

    .line 351
    .end local v12    # "metaType":I
    .end local v13    # "needUpdateID3v24":Z
    .end local v16    # "size":I
    :cond_4
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->getIntFromBytes([B)I

    move-result v16

    .restart local v16    # "size":I
    goto :goto_1

    .line 371
    .restart local v12    # "metaType":I
    .restart local v13    # "needUpdateID3v24":Z
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->isDeprecatedV23Frame(I)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 372
    if-eqz v13, :cond_6

    .line 374
    const/16 v18, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v11, v0, v8, v1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->obtain([BI[B[B)Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;

    move-result-object v9

    .line 375
    .restart local v9    # "frame":Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;
    add-int/lit8 v18, v5, -0xa

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->setOffset(J)V

    .line 376
    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v9}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->addFrame(ILcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;)V

    .line 378
    .end local v9    # "frame":Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;
    :cond_6
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v18

    add-int v5, v5, v18

    goto/16 :goto_0

    .line 380
    :cond_7
    move/from16 v0, v16

    new-array v4, v0, [B

    .line 381
    .local v4, "dataBytes":[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v15

    .line 382
    .local v15, "readByteNum":I
    move/from16 v0, v16

    invoke-static {v11, v0, v8, v4}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->obtain([BI[B[B)Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;

    move-result-object v9

    .line 383
    .restart local v9    # "frame":Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;
    add-int/lit8 v18, v5, -0xa

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->setOffset(J)V

    .line 384
    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v9}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->addFrame(ILcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;)V

    .line 385
    add-int/2addr v5, v15

    goto/16 :goto_0
.end method

.method private parseHeader(Ljava/io/RandomAccessFile;)Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;
    .locals 12
    .param p1, "f"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 261
    const/16 v7, 0xa

    new-array v1, v7, [B

    .line 262
    .local v1, "header":[B
    const/4 v4, 0x0

    .line 263
    .local v4, "offset":I
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 265
    new-array v3, v10, [B

    .line 266
    .local v3, "identifier":[B
    invoke-static {v1, v4, v3, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    add-int/lit8 v4, v4, 0x3

    .line 269
    invoke-static {v3}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->hexToString([B)Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, "hexId":Ljava/lang/String;
    const-string v7, "494433"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 271
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V

    .line 272
    new-instance v7, Lcom/samsung/android/app/music/common/metaedit/NoExistTagInformationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wrong ID3v2 file. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/samsung/android/app/music/common/metaedit/NoExistTagInformationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 275
    :cond_0
    new-array v6, v9, [B

    .line 276
    .local v6, "version":[B
    invoke-static {v1, v4, v6, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    add-int/lit8 v4, v4, 0x2

    .line 279
    aget-byte v7, v6, v8

    if-ne v7, v9, :cond_1

    .line 280
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V

    .line 281
    new-instance v7, Lcom/samsung/android/app/music/common/metaedit/NotSupportedVersionException;

    const-string v8, "Sorry. v2.2 is not supported."

    invoke-direct {v7, v8}, Lcom/samsung/android/app/music/common/metaedit/NotSupportedVersionException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 283
    :cond_1
    aget-byte v0, v1, v4

    .line 284
    .local v0, "flags":B
    add-int/lit8 v4, v4, 0x1

    .line 286
    new-array v5, v11, [B

    .line 287
    .local v5, "size":[B
    invoke-static {v1, v4, v5, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 288
    invoke-static {v5}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->getIntFromSynchSafeBytes([B)I

    move-result v7

    invoke-static {v6, v0, v7}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->obtain([BBI)Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    move-result-object v7

    return-object v7
.end method

.method private removeDeprecatedV23Frames()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 683
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 684
    .local v0, "deprecatedTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->mTag:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->getFrames()Ljava/util/Map;

    move-result-object v2

    .line 685
    .local v2, "frames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 686
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 687
    .local v3, "metaType":I
    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->isDeprecatedV23Frame(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 688
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 691
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;>;"
    .end local v3    # "metaType":I
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 692
    .restart local v3    # "metaType":I
    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->removeFrame(I)V

    goto :goto_1

    .line 694
    .end local v3    # "metaType":I
    :cond_2
    return-void
.end method

.method private removeFrame(I)V
    .locals 13
    .param p1, "metaType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    iget-object v7, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->mTag:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    invoke-virtual {v7, p1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->getFrame(I)Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;

    move-result-object v1

    .line 393
    .local v1, "frame":Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;
    if-nez v1, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v7, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->mPath:Ljava/lang/String;

    const-string/jumbo v8, "rw"

    invoke-direct {v0, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "f":Ljava/io/RandomAccessFile;
    const/4 v8, 0x0

    .line 399
    :try_start_0
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->getOffset()J

    move-result-wide v4

    .line 400
    .local v4, "offset":J
    iget v7, v1, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->size:I

    add-int/lit8 v6, v7, 0xa

    .line 402
    .local v6, "removeSize":I
    iget-object v7, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->mTag:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    iget v7, v7, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->size:I

    sub-int v2, v7, v6

    .line 403
    .local v2, "newID3TagSize":I
    const/4 v7, 0x4

    .line 404
    invoke-static {v2, v7}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->getSynchSafeBytesFromInt(II)[B

    move-result-object v3

    .line 407
    .local v3, "newID3TagSizeBytes":[B
    const-wide/16 v10, 0x6

    invoke-virtual {v0, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 408
    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->write([B)V

    .line 411
    iget-object v7, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->mPath:Ljava/lang/String;

    invoke-static {v0, v7, v4, v5, v6}, Lcom/samsung/android/app/music/common/metaedit/FileModifier;->remove(Ljava/io/RandomAccessFile;Ljava/lang/String;JI)V

    .line 413
    neg-int v7, v6

    iget-object v9, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->mTag:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    iget v9, v9, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->size:I

    sub-int/2addr v9, v6

    invoke-direct {p0, v4, v5, v7, v9}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->changeOffsetAndTagSize(JII)V

    .line 414
    iget-object v7, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->mTag:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    invoke-virtual {v7, p1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->removeFrame(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 415
    if-eqz v0, :cond_0

    if-eqz v8, :cond_2

    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {v8, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    .line 398
    .end local v2    # "newID3TagSize":I
    .end local v3    # "newID3TagSizeBytes":[B
    .end local v4    # "offset":J
    .end local v6    # "removeSize":I
    :catch_1
    move-exception v7

    :try_start_2
    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 415
    :catchall_0
    move-exception v8

    move-object v12, v8

    move-object v8, v7

    move-object v7, v12

    :goto_1
    if-eqz v0, :cond_3

    if-eqz v8, :cond_4

    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_2
    throw v7

    :catch_2
    move-exception v9

    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_2

    :catchall_1
    move-exception v7

    goto :goto_1
.end method

.method private updateFrame(I[BLcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;)V
    .locals 23
    .param p1, "metaType"    # I
    .param p2, "bytes"    # [B
    .param p3, "frame"    # Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 419
    new-instance v2, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->mPath:Ljava/lang/String;

    const-string/jumbo v6, "rw"

    invoke-direct {v2, v3, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v2, "f":Ljava/io/RandomAccessFile;
    const/16 v21, 0x0

    .line 421
    :try_start_0
    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->makeTextFrameData(I[B)[B

    move-result-object v9

    .line 422
    .local v9, "encodedBytes":[B
    array-length v13, v9

    .line 433
    .local v13, "encodedSize":I
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->getFrameIdBytes(I)[B

    move-result-object v16

    .line 435
    .local v16, "idBytes":[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->mTag:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    iget-object v3, v3, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->version:[B

    const/4 v6, 0x0

    aget-byte v3, v3, v6

    const/4 v6, 0x4

    if-ne v3, v6, :cond_1

    .line 436
    const/4 v3, 0x4

    invoke-static {v13, v3}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->getSynchSafeBytesFromInt(II)[B

    move-result-object v20

    .line 440
    .local v20, "sizeBytes":[B
    :goto_0
    move-object/from16 v0, p3

    iget-object v14, v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->flags:[B

    .line 446
    .local v14, "flagBytes":[B
    const/4 v3, 0x1

    const/4 v6, 0x1

    aget-byte v6, v14, v6

    and-int/lit8 v6, v6, -0x2

    int-to-byte v6, v6

    aput-byte v6, v14, v3

    .line 451
    add-int/lit8 v3, v13, 0xa

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 452
    .local v15, "frameBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v15 .. v16}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 453
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 454
    invoke-virtual {v15, v14}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 455
    invoke-virtual {v15, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 457
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->getOffset()J

    move-result-wide v4

    .line 458
    .local v4, "offset":J
    move-object/from16 v0, p3

    iget v3, v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->size:I

    if-ne v3, v13, :cond_2

    .line 460
    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 461
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->write([B)V

    :goto_1
    move-object/from16 v6, v16

    move v7, v13

    move-object v8, v14

    move-wide v10, v4

    .line 481
    invoke-static/range {v6 .. v11}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->obtain([BI[B[BJ)Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;

    move-result-object v17

    .line 482
    .local v17, "newFrame":Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->mTag:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    move/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->addFrame(ILcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 483
    if-eqz v2, :cond_0

    if-eqz v21, :cond_4

    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 484
    :cond_0
    :goto_2
    return-void

    .line 438
    .end local v4    # "offset":J
    .end local v14    # "flagBytes":[B
    .end local v15    # "frameBuffer":Ljava/nio/ByteBuffer;
    .end local v17    # "newFrame":Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;
    .end local v20    # "sizeBytes":[B
    :cond_1
    const/4 v3, 0x4

    :try_start_2
    invoke-static {v13, v3}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->getBytesFromInt(II)[B

    move-result-object v20

    .restart local v20    # "sizeBytes":[B
    goto :goto_0

    .line 464
    .restart local v4    # "offset":J
    .restart local v14    # "flagBytes":[B
    .restart local v15    # "frameBuffer":Ljava/nio/ByteBuffer;
    :cond_2
    move-object/from16 v0, p3

    iget v3, v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->size:I

    sub-int v12, v13, v3

    .line 465
    .local v12, "delta":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->mTag:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    iget v3, v3, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->size:I

    add-int v18, v3, v12

    .line 466
    .local v18, "newID3TagSize":I
    const/4 v3, 0x4

    .line 467
    move/from16 v0, v18

    invoke-static {v0, v3}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->getSynchSafeBytesFromInt(II)[B

    move-result-object v19

    .line 470
    .local v19, "newID3TagSizeBytes":[B
    const-wide/16 v6, 0x6

    invoke-virtual {v2, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 471
    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 474
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->mPath:Ljava/lang/String;

    const-wide/16 v6, 0xa

    add-long/2addr v6, v4

    move-object/from16 v0, p3

    iget v8, v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->size:I

    int-to-long v10, v8

    add-long/2addr v6, v10

    .line 475
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    .line 474
    invoke-static/range {v2 .. v8}, Lcom/samsung/android/app/music/common/metaedit/FileModifier;->modify(Ljava/io/RandomAccessFile;Ljava/lang/String;JJ[B)V

    .line 478
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v4, v5, v12, v1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->changeOffsetAndTagSize(JII)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 419
    .end local v4    # "offset":J
    .end local v9    # "encodedBytes":[B
    .end local v12    # "delta":I
    .end local v13    # "encodedSize":I
    .end local v14    # "flagBytes":[B
    .end local v15    # "frameBuffer":Ljava/nio/ByteBuffer;
    .end local v16    # "idBytes":[B
    .end local v18    # "newID3TagSize":I
    .end local v19    # "newID3TagSizeBytes":[B
    .end local v20    # "sizeBytes":[B
    :catch_0
    move-exception v3

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 483
    :catchall_0
    move-exception v6

    move-object/from16 v22, v6

    move-object v6, v3

    move-object/from16 v3, v22

    :goto_3
    if-eqz v2, :cond_3

    if-eqz v6, :cond_5

    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_4
    throw v3

    .restart local v4    # "offset":J
    .restart local v9    # "encodedBytes":[B
    .restart local v13    # "encodedSize":I
    .restart local v14    # "flagBytes":[B
    .restart local v15    # "frameBuffer":Ljava/nio/ByteBuffer;
    .restart local v16    # "idBytes":[B
    .restart local v17    # "newFrame":Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;
    .restart local v20    # "sizeBytes":[B
    :catch_1
    move-exception v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_2

    .end local v4    # "offset":J
    .end local v9    # "encodedBytes":[B
    .end local v13    # "encodedSize":I
    .end local v14    # "flagBytes":[B
    .end local v15    # "frameBuffer":Ljava/nio/ByteBuffer;
    .end local v16    # "idBytes":[B
    .end local v17    # "newFrame":Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;
    .end local v20    # "sizeBytes":[B
    :catch_2
    move-exception v7

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_4

    :catchall_1
    move-exception v3

    move-object/from16 v6, v21

    goto :goto_3
.end method

.method private updateTagVersion(B)V
    .locals 7
    .param p1, "version"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 675
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->mPath:Ljava/lang/String;

    const-string/jumbo v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "f":Ljava/io/RandomAccessFile;
    const/4 v2, 0x0

    .line 676
    const-wide/16 v4, 0x3

    :try_start_0
    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 677
    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write(I)V

    .line 678
    iget-object v1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->mTag:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    const/4 v3, 0x2

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    invoke-static {v1, v3}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->obtain(Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;[B)Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->mTag:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 679
    if-eqz v0, :cond_0

    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 680
    :cond_0
    :goto_0
    return-void

    .line 679
    :catch_0
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    .line 675
    :catch_1
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 679
    :catchall_0
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    throw v1

    :catch_2
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_2

    :catchall_1
    move-exception v1

    goto :goto_1

    .line 678
    nop

    :array_0
    .array-data 1
        0x4t
        0x0t
    .end array-data
.end method

.method private updateUnknownFrameSize(B)V
    .locals 10
    .param p1, "version"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    .line 697
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->mPath:Ljava/lang/String;

    const-string/jumbo v3, "rw"

    invoke-direct {v0, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "f":Ljava/io/RandomAccessFile;
    const/4 v3, 0x0

    .line 698
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->mUnknownFrames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;

    .line 700
    .local v1, "unknownFrame":Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->getOffset()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 701
    if-ne p1, v8, :cond_1

    .line 702
    iget v4, v1, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->size:I

    const/4 v5, 0x4

    .line 703
    invoke-static {v4, v5}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->getSynchSafeBytesFromInt(II)[B

    move-result-object v4

    .line 702
    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 697
    .end local v1    # "unknownFrame":Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;
    :catch_0
    move-exception v2

    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 708
    :catchall_0
    move-exception v3

    move-object v9, v3

    move-object v3, v2

    move-object v2, v9

    :goto_1
    if-eqz v0, :cond_0

    if-eqz v3, :cond_5

    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_2
    throw v2

    .line 705
    .restart local v1    # "unknownFrame":Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;
    :cond_1
    :try_start_3
    iget v4, v1, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->size:I

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->getBytesFromInt(II)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 708
    .end local v1    # "unknownFrame":Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;
    :catchall_1
    move-exception v2

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v3, :cond_4

    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 709
    :cond_3
    :goto_3
    return-void

    .line 708
    :catch_1
    move-exception v2

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_3

    :catch_2
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_2
.end method


# virtual methods
.method public getBytes(I)[B
    .locals 5
    .param p1, "metaType"    # I

    .prologue
    const/4 v3, 0x0

    .line 165
    iget-object v4, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->mTag:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    invoke-virtual {v4, p1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->getFrame(I)Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;

    move-result-object v1

    .line 166
    .local v1, "frame":Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;
    if-nez v1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-object v3

    .line 170
    :cond_1
    iget v4, v1, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->dataLengthIndicator:I

    if-nez v4, :cond_2

    .line 171
    const/4 v2, 0x1

    .line 175
    .local v2, "realDataOffset":I
    :goto_1
    iget-object v4, v1, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->bytes:[B

    array-length v4, v4

    if-lez v4, :cond_0

    .line 178
    iget-object v3, v1, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->bytes:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 179
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    iget-object v3, v1, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->bytes:[B

    iget-object v4, v1, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->bytes:[B

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v2, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 180
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    goto :goto_0

    .line 173
    .end local v0    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v2    # "realDataOffset":I
    :cond_2
    const/4 v2, 0x5

    .restart local v2    # "realDataOffset":I
    goto :goto_1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 9
    .param p1, "metaType"    # I

    .prologue
    const/4 v6, 0x0

    .line 121
    iget-object v7, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->mTag:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    invoke-virtual {v7, p1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->getFrame(I)Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;

    move-result-object v3

    .line 122
    .local v3, "frame":Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;
    if-nez v3, :cond_1

    move-object v4, v6

    .line 159
    :cond_0
    :goto_0
    return-object v4

    .line 125
    :cond_1
    iget-object v0, v3, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->bytes:[B

    .line 126
    .local v0, "bytes":[B
    if-eqz v0, :cond_2

    array-length v7, v0

    if-nez v7, :cond_3

    :cond_2
    move-object v4, v6

    .line 127
    goto :goto_0

    .line 132
    :cond_3
    :try_start_0
    iget-object v7, v3, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->bytes:[B

    const/4 v8, 0x0

    aget-byte v7, v7, v8

    packed-switch v7, :pswitch_data_0

    move-object v4, v6

    .line 146
    goto :goto_0

    .line 134
    :pswitch_0
    const-string v1, "UTF-8"

    .line 148
    .local v1, "charset":Ljava/lang/String;
    :goto_1
    const/4 v7, 0x5

    if-ne p1, v7, :cond_5

    .line 149
    new-instance v5, Ljava/lang/String;

    const/4 v7, 0x1

    array-length v8, v0

    add-int/lit8 v8, v8, -0x1

    invoke-direct {v5, v0, v7, v8, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 150
    .local v5, "uncheckedGenre":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->getGenreFromNumericString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, "genre":Ljava/lang/String;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    :cond_4
    move-object v4, v5

    .line 152
    goto :goto_0

    .line 137
    .end local v1    # "charset":Ljava/lang/String;
    .end local v4    # "genre":Ljava/lang/String;
    .end local v5    # "uncheckedGenre":Ljava/lang/String;
    :pswitch_1
    const-string v1, "UTF-16"

    .line 138
    .restart local v1    # "charset":Ljava/lang/String;
    goto :goto_1

    .line 140
    .end local v1    # "charset":Ljava/lang/String;
    :pswitch_2
    const-string v1, "UTF-16BE"

    .line 141
    .restart local v1    # "charset":Ljava/lang/String;
    goto :goto_1

    .line 143
    .end local v1    # "charset":Ljava/lang/String;
    :pswitch_3
    const-string v1, "ISO-8859-1"

    .line 144
    .restart local v1    # "charset":Ljava/lang/String;
    goto :goto_1

    .line 157
    :cond_5
    new-instance v4, Ljava/lang/String;

    const/4 v7, 0x1

    array-length v8, v0

    add-int/lit8 v8, v8, -0x1

    invoke-direct {v4, v0, v7, v8, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    .end local v1    # "charset":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    move-object v4, v6

    .line 159
    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public putBytes(I[B)V
    .locals 3
    .param p1, "metaType"    # I
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 204
    iget-object v1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->mTag:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->getMajorVersion()B

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->needUpdateToV24(B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->updateTagVersion(B)V

    .line 207
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->updateUnknownFrameSize(B)V

    .line 208
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->removeDeprecatedV23Frames()V

    .line 211
    :cond_0
    const/4 v1, 0x6

    if-ne p1, v1, :cond_1

    .line 217
    const v1, 0x186a9

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->removeFrame(I)V

    .line 220
    :cond_1
    if-eqz p2, :cond_2

    array-length v1, p2

    if-nez v1, :cond_3

    .line 222
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->removeFrame(I)V

    .line 233
    :goto_0
    return-void

    .line 224
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->mTag:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->getFrame(I)Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;

    move-result-object v0

    .line 225
    .local v0, "frame":Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;
    if-eqz v0, :cond_4

    .line 227
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->updateFrame(I[BLcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;)V

    goto :goto_0

    .line 230
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->addFrame(I[B)V

    goto :goto_0
.end method

.method public putString(ILjava/lang/String;)V
    .locals 2
    .param p1, "metaType"    # I
    .param p2, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->isNumericStringType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    const-string v1, "ISO-8859-1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 199
    .local v0, "bytes":[B
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->putBytes(I[B)V

    .line 200
    return-void

    .line 190
    .end local v0    # "bytes":[B
    :cond_0
    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .restart local v0    # "bytes":[B
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .prologue
    const/16 v10, 0xa

    .line 106
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 107
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->mTag:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    iget-object v5, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;->mTag:Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->getFrames()Ljava/util/Map;

    move-result-object v2

    .line 109
    .local v2, "frames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 110
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 111
    .local v3, "metaType":I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;

    .line 112
    .local v1, "frame":Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "size : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v1, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->size:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", offset : "

    .line 113
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->getOffset()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 114
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;

    iget-object v5, v5, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->bytes:[B

    invoke-static {v5}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->hexToString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 116
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;>;"
    .end local v1    # "frame":Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;
    .end local v3    # "metaType":I
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
