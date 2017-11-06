.class public Lcom/samsung/android/sdk/ppmt/common/FileIOUtils;
.super Ljava/lang/Object;
.source "FileIOUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/samsung/android/sdk/ppmt/common/FileIOUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ppmt/common/FileIOUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compress(Ljava/lang/String;)[B
    .locals 3
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 173
    .local v0, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 175
    .local v1, "gzipOutStream":Ljava/util/zip/GZIPOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 176
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 177
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 179
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method public static declared-synchronized deleteFiles(Ljava/lang/String;)Z
    .locals 9
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v8, Lcom/samsung/android/sdk/ppmt/common/FileIOUtils;

    monitor-enter v8

    if-nez p0, :cond_1

    .line 25
    const/4 v6, 0x0

    .line 50
    :cond_0
    :goto_0
    monitor-exit v8

    return v6

    .line 27
    :cond_1
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 29
    const/4 v6, 0x1

    goto :goto_0

    .line 31
    :cond_2
    const/4 v6, 0x1

    .line 33
    .local v6, "result":Z
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 34
    .local v2, "childFileList":[Ljava/io/File;
    if-eqz v2, :cond_5

    .line 35
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_5

    aget-object v1, v0, v4

    .line 36
    .local v1, "childFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 37
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/sdk/ppmt/common/FileIOUtils;->deleteFiles(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 38
    const/4 v6, 0x0

    .line 35
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 41
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_3

    .line 42
    const/4 v6, 0x0

    goto :goto_2

    .line 47
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "childFile":Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_5
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_0

    .line 48
    const/4 v6, 0x0

    goto :goto_0

    .line 24
    .end local v2    # "childFileList":[Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v6    # "result":Z
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public static declared-synchronized findCertainExtension(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "directory"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "extensions"    # [Ljava/lang/String;

    .prologue
    .line 70
    const-class v6, Lcom/samsung/android/sdk/ppmt/common/FileIOUtils;

    monitor-enter v6

    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    :try_start_0
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 71
    .local v1, "extension":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 77
    .end local v1    # "extension":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    :goto_1
    monitor-exit v6

    return-object v5

    .line 70
    .restart local v1    # "extension":Ljava/lang/String;
    .restart local v2    # "file":Ljava/io/File;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 77
    .end local v1    # "extension":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 70
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public static declared-synchronized readTextFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    const-class v5, Lcom/samsung/android/sdk/ppmt/common/FileIOUtils;

    monitor-enter v5

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 56
    .local v1, "fileInputStream":Ljava/io/FileInputStream;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 59
    .local v2, "strBuilder":Ljava/lang/StringBuilder;
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 60
    .local v0, "bufReader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "temp":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 65
    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .end local v3    # "temp":Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 55
    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v2    # "strBuilder":Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    .line 63
    .restart local v0    # "bufReader":Ljava/io/BufferedReader;
    .restart local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "strBuilder":Ljava/lang/StringBuilder;
    .restart local v3    # "temp":Ljava/lang/String;
    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    .line 65
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v5

    return-object v4
.end method

.method private static declared-synchronized unZip(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 19
    .param p0, "zipFile"    # Ljava/util/zip/ZipFile;
    .param p1, "zipFileElement"    # Ljava/lang/String;
    .param p2, "destDir"    # Ljava/lang/String;

    .prologue
    .line 112
    const-class v16, Lcom/samsung/android/sdk/ppmt/common/FileIOUtils;

    monitor-enter v16

    const/4 v11, 0x0

    .line 113
    .local v11, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 114
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v9, 0x0

    .line 116
    .local v9, "fos":Ljava/io/FileOutputStream;
    const/16 v15, 0x2f

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 117
    .local v6, "dirIndex":I
    const/4 v15, -0x1

    if-eq v6, v15, :cond_3

    .line 119
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 120
    .local v13, "strDirectory":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v8, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .local v8, "fileDirectory":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_3

    .line 122
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    move-result v15

    if-nez v15, :cond_3

    .line 123
    sget-object v15, Lcom/samsung/android/sdk/ppmt/common/FileIOUtils;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "unzip fail. cannot make directory:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    const/4 v15, 0x0

    .line 150
    if-eqz v11, :cond_0

    .line 152
    :try_start_1
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 156
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 158
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 162
    :cond_1
    :goto_1
    if-eqz v9, :cond_2

    .line 164
    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 166
    .end local v6    # "dirIndex":I
    .end local v8    # "fileDirectory":Ljava/io/File;
    .end local v13    # "strDirectory":Ljava/lang/String;
    :cond_2
    :goto_2
    monitor-exit v16

    return v15

    .line 128
    .restart local v6    # "dirIndex":I
    :cond_3
    add-int/lit8 v15, v6, 0x1

    :try_start_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-eq v15, v0, :cond_7

    .line 130
    invoke-virtual/range {p0 .. p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v14

    .line 131
    .local v14, "zipEntry":Ljava/util/zip/ZipEntry;
    if-eqz v14, :cond_7

    .line 132
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v11

    .line 133
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 134
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v3, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v15, 0x400

    :try_start_5
    new-array v4, v15, [B

    .line 137
    .local v4, "byteBuffer":[B
    :goto_3
    invoke-virtual {v11, v4}, Ljava/io/InputStream;->read([B)I

    move-result v12

    .local v12, "nLength":I
    if-lez v12, :cond_6

    .line 138
    const/4 v15, 0x0

    invoke-virtual {v3, v4, v15, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    .line 146
    .end local v4    # "byteBuffer":[B
    .end local v12    # "nLength":I
    :catch_0
    move-exception v7

    move-object v2, v3

    .line 147
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "dirIndex":I
    .end local v14    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v7, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_6
    sget-object v15, Lcom/samsung/android/sdk/ppmt/common/FileIOUtils;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "unZip fail. "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 148
    const/4 v15, 0x0

    .line 150
    if-eqz v11, :cond_4

    .line 152
    :try_start_7
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 156
    :cond_4
    :goto_5
    if-eqz v2, :cond_5

    .line 158
    :try_start_8
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 162
    :cond_5
    :goto_6
    if-eqz v9, :cond_2

    .line 164
    :try_start_9
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    .line 165
    :catch_1
    move-exception v17

    goto :goto_2

    .line 140
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "byteBuffer":[B
    .restart local v6    # "dirIndex":I
    .restart local v12    # "nLength":I
    .restart local v14    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_6
    :try_start_a
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 141
    .local v5, "byteData":[B
    new-instance v10, Ljava/io/FileOutputStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v10, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 142
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .local v10, "fos":Ljava/io/FileOutputStream;
    :try_start_b
    invoke-virtual {v10, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_e
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 145
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "byteBuffer":[B
    .end local v5    # "byteData":[B
    .end local v12    # "nLength":I
    .end local v14    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_7
    const/4 v15, 0x1

    .line 150
    if-eqz v11, :cond_8

    .line 152
    :try_start_c
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 156
    :cond_8
    :goto_7
    if-eqz v2, :cond_9

    .line 158
    :try_start_d
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 162
    :cond_9
    :goto_8
    if-eqz v9, :cond_2

    .line 164
    :try_start_e
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_2

    .line 165
    :catch_2
    move-exception v17

    goto/16 :goto_2

    .line 150
    .end local v6    # "dirIndex":I
    :catchall_0
    move-exception v15

    :goto_9
    if-eqz v11, :cond_a

    .line 152
    :try_start_f
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 156
    :cond_a
    :goto_a
    if-eqz v2, :cond_b

    .line 158
    :try_start_10
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 162
    :cond_b
    :goto_b
    if-eqz v9, :cond_c

    .line 164
    :try_start_11
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_c
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 166
    :cond_c
    :goto_c
    :try_start_12
    throw v15
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 112
    :catchall_1
    move-exception v15

    monitor-exit v16

    throw v15

    .line 153
    .restart local v6    # "dirIndex":I
    .restart local v8    # "fileDirectory":Ljava/io/File;
    .restart local v13    # "strDirectory":Ljava/lang/String;
    :catch_3
    move-exception v17

    goto/16 :goto_0

    .line 159
    :catch_4
    move-exception v17

    goto/16 :goto_1

    .line 165
    :catch_5
    move-exception v17

    goto/16 :goto_2

    .line 153
    .end local v8    # "fileDirectory":Ljava/io/File;
    .end local v13    # "strDirectory":Ljava/lang/String;
    :catch_6
    move-exception v17

    goto :goto_7

    .line 159
    :catch_7
    move-exception v17

    goto :goto_8

    .line 153
    .end local v6    # "dirIndex":I
    .restart local v7    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v17

    goto :goto_5

    .line 159
    :catch_9
    move-exception v17

    goto :goto_6

    .line 153
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_a
    move-exception v17

    goto :goto_a

    .line 159
    :catch_b
    move-exception v17

    goto :goto_b

    .line 165
    :catch_c
    move-exception v17

    goto :goto_c

    .line 150
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "dirIndex":I
    .restart local v14    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catchall_2
    move-exception v15

    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_9

    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "byteBuffer":[B
    .restart local v5    # "byteData":[B
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "nLength":I
    :catchall_3
    move-exception v15

    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_9

    .line 146
    .end local v4    # "byteBuffer":[B
    .end local v5    # "byteData":[B
    .end local v6    # "dirIndex":I
    .end local v12    # "nLength":I
    .end local v14    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_d
    move-exception v7

    goto/16 :goto_4

    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "byteBuffer":[B
    .restart local v5    # "byteData":[B
    .restart local v6    # "dirIndex":I
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "nLength":I
    .restart local v14    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_e
    move-exception v7

    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_4
.end method

.method public static declared-synchronized unzip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "targetDir"    # Ljava/lang/String;
    .param p1, "zipfileName"    # Ljava/lang/String;
    .param p2, "destDir"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 81
    const-class v6, Lcom/samsung/android/sdk/ppmt/common/FileIOUtils;

    monitor-enter v6

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 82
    :cond_0
    sget-object v4, Lcom/samsung/android/sdk/ppmt/common/FileIOUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "unZip fail. invalid params"

    invoke-static {v4, v7}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v4, v5

    .line 106
    :cond_1
    :goto_0
    monitor-exit v6

    return v4

    .line 86
    :cond_2
    const/4 v1, 0x0

    .line 88
    .local v1, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_1
    new-instance v2, Ljava/util/zip/ZipFile;

    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    .end local v1    # "zipFile":Ljava/util/zip/ZipFile;
    .local v2, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 90
    .local v0, "e":Ljava/util/Enumeration;
    :cond_3
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 91
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "zipFileElement":Ljava/lang/String;
    invoke-static {v2, v3, p2}, Lcom/samsung/android/sdk/ppmt/common/FileIOUtils;->unZip(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v4

    if-nez v4, :cond_3

    .line 102
    if-eqz v2, :cond_4

    .line 104
    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_4
    :goto_1
    move v4, v5

    .line 106
    goto :goto_0

    .line 96
    .end local v3    # "zipFileElement":Ljava/lang/String;
    :cond_5
    :try_start_4
    sget-object v4, Lcom/samsung/android/sdk/ppmt/common/FileIOUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unZip success ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 97
    const/4 v4, 0x1

    .line 102
    if-eqz v2, :cond_1

    .line 104
    :try_start_5
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 105
    :catch_0
    move-exception v5

    goto :goto_0

    .line 98
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v2    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v1    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_1
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_6
    sget-object v4, Lcom/samsung/android/sdk/ppmt/common/FileIOUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unZip fail. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 102
    if-eqz v1, :cond_6

    .line 104
    :try_start_7
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_6
    :goto_3
    move v4, v5

    .line 106
    goto/16 :goto_0

    .line 102
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v1, :cond_7

    .line 104
    :try_start_8
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 106
    :cond_7
    :goto_5
    :try_start_9
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 81
    .end local v1    # "zipFile":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v4

    monitor-exit v6

    throw v4

    .line 105
    .local v0, "e":Ljava/util/Enumeration;
    .restart local v2    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v3    # "zipFileElement":Ljava/lang/String;
    :catch_2
    move-exception v4

    goto :goto_1

    .end local v2    # "zipFile":Ljava/util/zip/ZipFile;
    .end local v3    # "zipFileElement":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_3
    move-exception v4

    goto :goto_3

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v5

    goto :goto_5

    .line 102
    .end local v1    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v2    # "zipFile":Ljava/util/zip/ZipFile;
    :catchall_2
    move-exception v4

    move-object v1, v2

    .end local v2    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v1    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_4

    .line 98
    .end local v1    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v2    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_5
    move-exception v0

    move-object v1, v2

    .end local v2    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v1    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_2
.end method
