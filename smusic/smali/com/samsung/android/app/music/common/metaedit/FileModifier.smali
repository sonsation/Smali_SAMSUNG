.class public Lcom/samsung/android/app/music/common/metaedit/FileModifier;
.super Ljava/lang/Object;
.source "FileModifier.java"


# static fields
.field private static final TEMP_NAME:Ljava/lang/String; = "_TEMP_META_WORKING"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static insert(Ljava/io/RandomAccessFile;Ljava/lang/String;J[B)V
    .locals 20
    .param p0, "f"    # Ljava/io/RandomAccessFile;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "offset"    # J
    .param p4, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_TEMP_META_WORKING"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 49
    .local v18, "tempFileName":Ljava/lang/String;
    new-instance v11, Ljava/io/RandomAccessFile;

    const-string/jumbo v6, "rw"

    move-object/from16 v0, v18

    invoke-direct {v11, v0, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .local v11, "tempFile":Ljava/io/RandomAccessFile;
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 52
    .local v5, "sourceChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v10

    .line 54
    .local v10, "tempChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    sub-long v8, v6, p2

    .local v8, "preservedSize":J
    move-wide/from16 v6, p2

    .line 57
    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 59
    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 61
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 62
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 64
    const-wide/16 v6, 0x0

    invoke-virtual {v10, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 65
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v14

    move-object v12, v5

    move-object v13, v10

    move-wide/from16 v16, v8

    invoke-virtual/range {v12 .. v17}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 67
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V

    .line 72
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .local v4, "removeFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_0

    .line 74
    new-instance v6, Ljava/io/IOException;

    const-string v7, "File remove is failed. temporary file still exist."

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 76
    :cond_0
    return-void
.end method

.method public static modify(Ljava/io/RandomAccessFile;Ljava/lang/String;JJ[B)V
    .locals 20
    .param p0, "f"    # Ljava/io/RandomAccessFile;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "startOffset"    # J
    .param p4, "endOffset"    # J
    .param p6, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_TEMP_META_WORKING"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 16
    .local v18, "tempFileName":Ljava/lang/String;
    new-instance v11, Ljava/io/RandomAccessFile;

    const-string/jumbo v6, "rw"

    move-object/from16 v0, v18

    invoke-direct {v11, v0, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .local v11, "tempFile":Ljava/io/RandomAccessFile;
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 19
    .local v5, "sourceChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v10

    .line 21
    .local v10, "tempChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    sub-long v8, v6, p4

    .local v8, "preservedSize":J
    move-wide/from16 v6, p4

    .line 24
    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 26
    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 28
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 29
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 31
    const-wide/16 v6, 0x0

    invoke-virtual {v10, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 32
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v14

    move-object v12, v5

    move-object v13, v10

    move-wide/from16 v16, v8

    invoke-virtual/range {v12 .. v17}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 34
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V

    .line 39
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    .local v4, "removeFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_0

    .line 41
    new-instance v6, Ljava/io/IOException;

    const-string v7, "File remove is failed. temporary file still exist."

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 43
    :cond_0
    return-void
.end method

.method public static remove(Ljava/io/RandomAccessFile;Ljava/lang/String;JI)V
    .locals 20
    .param p0, "f"    # Ljava/io/RandomAccessFile;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "startOffset"    # J
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_TEMP_META_WORKING"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 82
    .local v18, "tempFileName":Ljava/lang/String;
    new-instance v11, Ljava/io/RandomAccessFile;

    const-string/jumbo v12, "rw"

    move-object/from16 v0, v18

    invoke-direct {v11, v0, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .local v11, "tempFile":Ljava/io/RandomAccessFile;
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 85
    .local v5, "sourceChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v10

    .line 87
    .local v10, "tempChannel":Ljava/nio/channels/FileChannel;
    move/from16 v0, p4

    int-to-long v12, v0

    add-long v6, p2, v12

    .line 88
    .local v6, "preservedStartOffset":J
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    sub-long v8, v12, v6

    .line 91
    .local v8, "preservedSize":J
    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 93
    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 94
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 95
    const-wide/16 v12, 0x0

    invoke-virtual {v10, v12, v13}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    move-object v12, v5

    move-object v13, v10

    move-wide/from16 v14, p2

    move-wide/from16 v16, v8

    .line 96
    invoke-virtual/range {v12 .. v17}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 98
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V

    .line 103
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v4, "removeFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v12

    if-nez v12, :cond_0

    .line 105
    new-instance v12, Ljava/io/IOException;

    const-string v13, "File remove is failed. temporary file still exist."

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 107
    :cond_0
    return-void
.end method
