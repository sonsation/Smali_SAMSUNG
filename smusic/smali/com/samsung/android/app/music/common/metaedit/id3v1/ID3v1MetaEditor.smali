.class public Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1MetaEditor;
.super Ljava/lang/Object;
.source "ID3v1MetaEditor.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;


# static fields
.field private static final MODE_READ_WRITE:Ljava/lang/String; = "rw"


# instance fields
.field private final mPath:Ljava/lang/String;

.field private mTag:Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1MetaEditor;->mPath:Ljava/lang/String;

    .line 23
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1MetaEditor;->parse(Ljava/lang/String;)Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1MetaEditor;->mTag:Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;

    .line 24
    return-void
.end method

.method private getGenreString(B)Ljava/lang/String;
    .locals 2
    .param p1, "genre"    # B

    .prologue
    .line 155
    and-int/lit16 v0, p1, 0xff

    .line 156
    .local v0, "genreInt":I
    if-ltz v0, :cond_0

    sget-object v1, Lcom/samsung/android/app/music/common/metaedit/CommonContract$Genre;->GENRES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 157
    sget-object v1, Lcom/samsung/android/app/music/common/metaedit/CommonContract$Genre;->GENRES:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 159
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSizeNullTerminatedString([B)I
    .locals 2
    .param p1, "bytes"    # [B

    .prologue
    .line 146
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 147
    aget-byte v1, p1, v0

    if-nez v1, :cond_0

    .line 151
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 146
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_1
    array-length v0, p1

    goto :goto_1
.end method

.method private parse(Ljava/lang/String;)Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;
    .locals 29
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    new-instance v14, Ljava/io/RandomAccessFile;

    const-string/jumbo v22, "rw"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-direct {v14, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v14, "f":Ljava/io/RandomAccessFile;
    const/16 v23, 0x0

    .line 77
    :try_start_0
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v18

    .line 78
    .local v18, "fileSize":J
    const/16 v22, 0x80

    move/from16 v0, v22

    new-array v12, v0, [B

    .line 79
    .local v12, "bytes":[B
    const-wide/16 v24, 0x80

    sub-long v16, v18, v24

    .line 84
    .local v16, "fileOffset":J
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 85
    invoke-virtual {v14, v12}, Ljava/io/RandomAccessFile;->read([B)I

    .line 87
    const/4 v11, 0x0

    .line 92
    .local v11, "bufferOffset":I
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 93
    .local v20, "identifier":[B
    const/16 v22, 0x0

    const/16 v24, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v24

    invoke-static {v12, v11, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    add-int/lit8 v11, v11, 0x3

    .line 95
    const-string v22, "544147"

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->hexToString([B)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1

    .line 96
    new-instance v22, Lcom/samsung/android/app/music/common/metaedit/NoExistTagInformationException;

    const-string v24, "Wrong ID3v1 Tag file."

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/metaedit/NoExistTagInformationException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 76
    .end local v11    # "bufferOffset":I
    .end local v12    # "bytes":[B
    .end local v16    # "fileOffset":J
    .end local v18    # "fileSize":J
    .end local v20    # "identifier":[B
    :catch_0
    move-exception v22

    :try_start_1
    throw v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    :catchall_0
    move-exception v23

    move-object/from16 v28, v23

    move-object/from16 v23, v22

    move-object/from16 v22, v28

    :goto_0
    if-eqz v14, :cond_0

    if-eqz v23, :cond_7

    :try_start_2
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_1
    throw v22

    .line 99
    .restart local v11    # "bufferOffset":I
    .restart local v12    # "bytes":[B
    .restart local v16    # "fileOffset":J
    .restart local v18    # "fileSize":J
    .restart local v20    # "identifier":[B
    :cond_1
    const/16 v22, 0x1e

    :try_start_3
    move/from16 v0, v22

    new-array v4, v0, [B

    .line 100
    .local v4, "title":[B
    const/16 v22, 0x1e

    move/from16 v0, v22

    new-array v5, v0, [B

    .line 101
    .local v5, "artist":[B
    const/16 v22, 0x1e

    move/from16 v0, v22

    new-array v6, v0, [B

    .line 102
    .local v6, "album":[B
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v7, v0, [B

    .line 103
    .local v7, "year":[B
    const/16 v22, 0x1e

    move/from16 v0, v22

    new-array v8, v0, [B

    .line 105
    .local v8, "comment":[B
    const/16 v22, 0x5

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v21, v0

    fill-array-data v21, :array_0

    .line 108
    .local v21, "lengths":[I
    const/16 v22, 0x5

    move/from16 v0, v22

    new-array v13, v0, [[B

    const/16 v22, 0x0

    aput-object v4, v13, v22

    const/16 v22, 0x1

    aput-object v5, v13, v22

    const/16 v22, 0x2

    aput-object v6, v13, v22

    const/16 v22, 0x3

    aput-object v7, v13, v22

    const/16 v22, 0x4

    aput-object v8, v13, v22

    .line 110
    .local v13, "bytes2d":[[B
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v15, v0, :cond_2

    .line 111
    aget-object v22, v13, v15

    const/16 v24, 0x0

    aget v25, v21, v15

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v12, v11, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    aget v22, v21, v15

    add-int v11, v11, v22

    .line 110
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 115
    :cond_2
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v10, v0, [B

    const/16 v22, 0x0

    aget-byte v24, v12, v11

    aput-byte v24, v10, v22

    .line 120
    .local v10, "genre":[B
    const/16 v22, 0x1c

    aget-byte v22, v8, v22

    if-nez v22, :cond_3

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v9, v0, [B

    const/16 v22, 0x0

    const/16 v24, 0x1d

    aget-byte v24, v8, v24

    aput-byte v24, v9, v22

    .line 124
    .local v9, "trackNo":[B
    :goto_3
    const-wide/16 v24, 0x1

    sub-long v24, v18, v24

    int-to-long v0, v11

    move-wide/from16 v26, v0

    add-long v26, v26, v16

    cmp-long v22, v24, v26

    if-eqz v22, :cond_4

    .line 125
    new-instance v22, Lcom/samsung/android/app/music/common/metaedit/NoExistTagInformationException;

    const-string v24, "Wrong ID3v1 Tag file."

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/metaedit/NoExistTagInformationException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 128
    .end local v4    # "title":[B
    .end local v5    # "artist":[B
    .end local v6    # "album":[B
    .end local v7    # "year":[B
    .end local v8    # "comment":[B
    .end local v9    # "trackNo":[B
    .end local v10    # "genre":[B
    .end local v11    # "bufferOffset":I
    .end local v12    # "bytes":[B
    .end local v13    # "bytes2d":[[B
    .end local v15    # "i":I
    .end local v16    # "fileOffset":J
    .end local v18    # "fileSize":J
    .end local v20    # "identifier":[B
    .end local v21    # "lengths":[I
    :catchall_1
    move-exception v22

    goto/16 :goto_0

    .line 120
    .restart local v4    # "title":[B
    .restart local v5    # "artist":[B
    .restart local v6    # "album":[B
    .restart local v7    # "year":[B
    .restart local v8    # "comment":[B
    .restart local v10    # "genre":[B
    .restart local v11    # "bufferOffset":I
    .restart local v12    # "bytes":[B
    .restart local v13    # "bytes2d":[[B
    .restart local v15    # "i":I
    .restart local v16    # "fileOffset":J
    .restart local v18    # "fileSize":J
    .restart local v20    # "identifier":[B
    .restart local v21    # "lengths":[I
    :cond_3
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v9, v0, [B

    const/16 v22, 0x0

    const/16 v24, -0x1

    aput-byte v24, v9, v22

    goto :goto_3

    .line 127
    .restart local v9    # "trackNo":[B
    :cond_4
    invoke-static/range {v4 .. v10}, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->obtain([B[B[B[B[B[B[B)Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v22

    .line 128
    if-eqz v14, :cond_5

    if-eqz v23, :cond_6

    :try_start_4
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 127
    :cond_5
    :goto_4
    return-object v22

    .line 128
    :catch_1
    move-exception v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_6
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_4

    .end local v4    # "title":[B
    .end local v5    # "artist":[B
    .end local v6    # "album":[B
    .end local v7    # "year":[B
    .end local v8    # "comment":[B
    .end local v9    # "trackNo":[B
    .end local v10    # "genre":[B
    .end local v11    # "bufferOffset":I
    .end local v12    # "bytes":[B
    .end local v13    # "bytes2d":[[B
    .end local v15    # "i":I
    .end local v16    # "fileOffset":J
    .end local v18    # "fileSize":J
    .end local v20    # "identifier":[B
    .end local v21    # "lengths":[I
    :catch_2
    move-exception v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V

    goto/16 :goto_1

    .line 105
    nop

    :array_0
    .array-data 4
        0x1e
        0x1e
        0x1e
        0x4
        0x1e
    .end array-data
.end method


# virtual methods
.method public getBytes(I)[B
    .locals 5
    .param p1, "metaType"    # I

    .prologue
    const/4 v4, 0x0

    .line 56
    iget-object v3, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1MetaEditor;->mTag:Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->getBytes(I)[B

    move-result-object v0

    .line 57
    .local v0, "bytes":[B
    if-nez v0, :cond_1

    .line 58
    const/4 v0, 0x0

    .line 66
    .end local v0    # "bytes":[B
    :cond_0
    :goto_0
    return-object v0

    .line 60
    .restart local v0    # "bytes":[B
    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1MetaEditor;->getSizeNullTerminatedString([B)I

    move-result v1

    .line 61
    .local v1, "length":I
    array-length v3, v0

    if-eq v3, v1, :cond_0

    .line 64
    new-array v2, v1, [B

    .line 65
    .local v2, "refined":[B
    invoke-static {v0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    .line 66
    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 7
    .param p1, "metaType"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 28
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1MetaEditor;->getBytes(I)[B

    move-result-object v0

    .line 29
    .local v0, "bytes":[B
    if-eqz v0, :cond_0

    array-length v3, v0

    if-nez v3, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-object v2

    .line 32
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 34
    :pswitch_0
    aget-byte v2, v0, v4

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1MetaEditor;->getGenreString(B)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 36
    :pswitch_1
    aget-byte v2, v0, v4

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 39
    :pswitch_2
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    array-length v5, v0

    const-string v6, "ISO-8859-1"

    invoke-direct {v3, v0, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 40
    :catch_0
    move-exception v1

    .line 41
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_0

    .line 32
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public putBytes(I[B)V
    .locals 0
    .param p1, "metaType"    # I
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 73
    return-void
.end method

.method public putString(ILjava/lang/String;)V
    .locals 0
    .param p1, "metaType"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 52
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1MetaEditor;->mTag:Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
