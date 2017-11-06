.class public Lcom/samsung/android/app/music/milk/store/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/IOUtils$CleanupFileTask;,
        Lcom/samsung/android/app/music/milk/store/IOUtils$RandomAccessFileOutputStream;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000

.field private static final LOG_TAG:Ljava/lang/String; = "IOUtils"

.field protected static final ZERO_OUT_FILE_CHUNK_SIZE:I = 0x8000

.field private static lock:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sLogCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 426
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/app/music/milk/store/IOUtils;->sLogCount:I

    .line 655
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/IOUtils;->lock:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Ljava/io/Closeable;)V
    .locals 3
    .param p0, "io"    # Ljava/io/Closeable;

    .prologue
    .line 48
    if-eqz p0, :cond_0

    .line 51
    :try_start_0
    instance-of v2, p0, Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_1

    .line 53
    :try_start_1
    check-cast p0, Landroid/os/ParcelFileDescriptor;

    .end local p0    # "io":Ljava/io/Closeable;
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 73
    .local v0, "e":Ljava/io/IOException;
    .local v1, "e1":Ljava/io/IOException;
    :goto_0
    const/4 p0, 0x0

    .line 75
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e1":Ljava/io/IOException;
    .restart local p0    # "io":Ljava/io/Closeable;
    :cond_0
    return-void

    .line 54
    .end local p0    # "io":Ljava/io/Closeable;
    :catch_0
    move-exception v1

    .line 55
    .restart local v1    # "e1":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 70
    :catch_1
    move-exception v0

    .line 71
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 57
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e1":Ljava/io/IOException;
    .restart local p0    # "io":Ljava/io/Closeable;
    :cond_1
    :try_start_3
    instance-of v2, p0, Landroid/database/Cursor;

    if-eqz v2, :cond_2

    .line 58
    check-cast p0, Landroid/database/Cursor;

    .end local p0    # "io":Ljava/io/Closeable;
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 60
    .restart local p0    # "io":Ljava/io/Closeable;
    :cond_2
    instance-of v2, p0, Landroid/content/res/AssetFileDescriptor;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v2, :cond_3

    .line 62
    :try_start_4
    check-cast p0, Landroid/content/res/AssetFileDescriptor;

    .end local p0    # "io":Ljava/io/Closeable;
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 63
    :catch_2
    move-exception v1

    .line 64
    .restart local v1    # "e1":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 67
    .end local v1    # "e1":Ljava/io/IOException;
    .restart local p0    # "io":Ljava/io/Closeable;
    :cond_3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/io/InputStream;)V
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;

    .prologue
    .line 594
    if-eqz p0, :cond_0

    .line 595
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 597
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "output"    # Ljava/io/OutputStream;

    .prologue
    .line 604
    if-eqz p0, :cond_0

    .line 605
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    :cond_0
    :goto_0
    return-void

    .line 607
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 4
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 585
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/store/IOUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    .line 586
    .local v0, "count":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 587
    const/4 v2, -0x1

    .line 589
    :goto_0
    return v2

    :cond_0
    long-to-int v2, v0

    goto :goto_0
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "dest"    # Ljava/lang/String;

    .prologue
    .line 298
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/app/music/milk/store/IOUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 22
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "dest"    # Ljava/lang/String;
    .param p2, "fileSize"    # J

    .prologue
    .line 232
    const/4 v13, 0x0

    .line 233
    .local v13, "fileInput":Ljava/io/FileInputStream;
    const/4 v15, 0x0

    .line 234
    .local v15, "fileOutput":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 235
    .local v3, "fileInputChannel":Ljava/nio/channels/FileChannel;
    const/4 v8, 0x0

    .line 237
    .local v8, "fileOutputChannel":Ljava/nio/channels/FileChannel;
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 238
    :cond_0
    const-string v4, "IOUtils"

    const-string v5, "copyFile : source or source is null!!"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const/4 v4, 0x0

    .line 287
    :goto_0
    return v4

    .line 242
    :cond_1
    invoke-virtual/range {p0 .. p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 243
    const-string v4, "IOUtils"

    const-string v5, "copyFile : same folder"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const/4 v4, 0x0

    goto :goto_0

    .line 248
    :cond_2
    :try_start_0
    new-instance v17, Ljava/io/File;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/store/IOUtils;->getValidateFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 249
    .local v17, "sourceFile":Ljava/io/File;
    new-instance v10, Ljava/io/File;

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/music/milk/store/IOUtils;->getValidateFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    .local v10, "destFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v12

    .line 252
    .local v12, "fileDir":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 253
    const-string v4, "IOUtils"

    const-string v5, "copyFile : source file is not exist"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    const/4 v4, 0x0

    .line 282
    invoke-static {v13}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    .line 283
    invoke-static {v15}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    .line 284
    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    .line 285
    invoke-static {v8}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .line 258
    :cond_3
    if-eqz v12, :cond_4

    :try_start_1
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    .line 259
    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    move-result v2

    .line 260
    .local v2, "create":Z
    const-string v4, "IOUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "copyFile : dir is created! - "

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .end local v2    # "create":Z
    :cond_4
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 264
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v9

    .line 265
    .local v9, "delete":Z
    const-string v4, "IOUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "copyFile : file exist. so delete ? "

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .end local v9    # "delete":Z
    :cond_5
    new-instance v14, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    .end local v13    # "fileInput":Ljava/io/FileInputStream;
    .local v14, "fileInput":Ljava/io/FileInputStream;
    :try_start_2
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 270
    .end local v15    # "fileOutput":Ljava/io/FileOutputStream;
    .local v16, "fileOutput":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual {v14}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 271
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    .line 272
    move-wide/from16 v6, p2

    .line 273
    .local v6, "size":J
    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-gtz v4, :cond_6

    .line 274
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    .line 276
    :cond_6
    const-wide/16 v4, 0x0

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v18

    .line 277
    .local v18, "transperted":J
    const-string v4, "IOUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "copyFile :"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v20, " bytes are copied."

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 282
    invoke-static {v14}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    .line 283
    invoke-static/range {v16 .. v16}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    .line 284
    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    .line 285
    invoke-static {v8}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    .line 287
    const/4 v4, 0x1

    move-object/from16 v15, v16

    .end local v16    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v15    # "fileOutput":Ljava/io/FileOutputStream;
    move-object v13, v14

    .end local v14    # "fileInput":Ljava/io/FileInputStream;
    .restart local v13    # "fileInput":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 278
    .end local v6    # "size":J
    .end local v10    # "destFile":Ljava/io/File;
    .end local v12    # "fileDir":Ljava/io/File;
    .end local v17    # "sourceFile":Ljava/io/File;
    .end local v18    # "transperted":J
    :catch_0
    move-exception v11

    .line 279
    .local v11, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 280
    const/4 v4, 0x0

    .line 282
    invoke-static {v13}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    .line 283
    invoke-static {v15}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    .line 284
    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    .line 285
    invoke-static {v8}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 282
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_2
    invoke-static {v13}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    .line 283
    invoke-static {v15}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    .line 284
    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    .line 285
    invoke-static {v8}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    throw v4

    .line 282
    .end local v13    # "fileInput":Ljava/io/FileInputStream;
    .restart local v10    # "destFile":Ljava/io/File;
    .restart local v12    # "fileDir":Ljava/io/File;
    .restart local v14    # "fileInput":Ljava/io/FileInputStream;
    .restart local v17    # "sourceFile":Ljava/io/File;
    :catchall_1
    move-exception v4

    move-object v13, v14

    .end local v14    # "fileInput":Ljava/io/FileInputStream;
    .restart local v13    # "fileInput":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v13    # "fileInput":Ljava/io/FileInputStream;
    .end local v15    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v14    # "fileInput":Ljava/io/FileInputStream;
    .restart local v16    # "fileOutput":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v4

    move-object/from16 v15, v16

    .end local v16    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v15    # "fileOutput":Ljava/io/FileOutputStream;
    move-object v13, v14

    .end local v14    # "fileInput":Ljava/io/FileInputStream;
    .restart local v13    # "fileInput":Ljava/io/FileInputStream;
    goto :goto_2

    .line 278
    .end local v13    # "fileInput":Ljava/io/FileInputStream;
    .restart local v14    # "fileInput":Ljava/io/FileInputStream;
    :catch_1
    move-exception v11

    move-object v13, v14

    .end local v14    # "fileInput":Ljava/io/FileInputStream;
    .restart local v13    # "fileInput":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v13    # "fileInput":Ljava/io/FileInputStream;
    .end local v15    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v14    # "fileInput":Ljava/io/FileInputStream;
    .restart local v16    # "fileOutput":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v11

    move-object/from16 v15, v16

    .end local v16    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v15    # "fileOutput":Ljava/io/FileOutputStream;
    move-object v13, v14

    .end local v14    # "fileInput":Ljava/io/FileInputStream;
    .restart local v13    # "fileInput":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 574
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 575
    .local v0, "buffer":[B
    const-wide/16 v2, 0x0

    .line 576
    .local v2, "count":J
    const/4 v1, 0x0

    .line 577
    .local v1, "n":I
    :goto_0
    const/4 v4, -0x1

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-eq v4, v1, :cond_0

    .line 578
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 579
    int-to-long v4, v1

    add-long/2addr v2, v4

    goto :goto_0

    .line 581
    :cond_0
    return-wide v2
.end method

.method public static createNewFile(Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    .line 86
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    const-string v3, "IOUtils"

    const-string v4, "createNewFile : file already exist. so remove it."

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 92
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 93
    .local v0, "dir":Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 94
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 98
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-object v2

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static deleteContents(Ljava/io/File;)Z
    .locals 8
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 638
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 639
    .local v1, "files":[Ljava/io/File;
    const/4 v2, 0x1

    .line 640
    .local v2, "success":Z
    if-eqz v1, :cond_2

    .line 641
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    .line 642
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 643
    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/IOUtils;->deleteContents(Ljava/io/File;)Z

    move-result v5

    and-int/2addr v2, v5

    .line 645
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_1

    .line 646
    const-string v5, "IOUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to delete :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const/4 v2, 0x0

    .line 641
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 651
    .end local v0    # "file":Ljava/io/File;
    :cond_2
    return v2
.end method

.method public static deleteFile(Ljava/lang/String;)J
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    .line 36
    if-nez p0, :cond_1

    move-wide v2, v4

    .line 44
    :cond_0
    :goto_0
    return-wide v2

    .line 39
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 41
    .local v2, "len":J
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    move-wide v2, v4

    .line 44
    goto :goto_0
.end method

.method public static declared-synchronized executeLogCat(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 436
    const-class v1, Lcom/samsung/android/app/music/milk/store/IOUtils;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/logs/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {p0, v0, p1, v2}, Lcom/samsung/android/app/music/milk/store/IOUtils;->executeLogCat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    monitor-exit v1

    return-void

    .line 436
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized executeLogCat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rootPath"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 444
    const-class v0, Lcom/samsung/android/app/music/milk/store/IOUtils;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, p1, p2, v1}, Lcom/samsung/android/app/music/milk/store/IOUtils;->executeLogCat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    monitor-exit v0

    return-void

    .line 444
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized executeLogCat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rootPath"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "appendPostFix"    # Z

    .prologue
    .line 448
    const-class v13, Lcom/samsung/android/app/music/milk/store/IOUtils;

    monitor-enter v13

    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "/"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 449
    .local v9, "path":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 450
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget v14, Lcom/samsung/android/app/music/milk/store/IOUtils;->sLogCount:I

    add-int/lit8 v15, v14, 0x1

    sput v15, Lcom/samsung/android/app/music/milk/store/IOUtils;->sLogCount:I

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 453
    :cond_0
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 454
    .local v10, "root":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1

    .line 455
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 458
    :cond_1
    new-instance v6, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ".log"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 460
    .local v6, "logFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    if-nez v12, :cond_2

    .line 462
    :try_start_1
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    :cond_2
    :goto_0
    :try_start_2
    const-string v12, "IOUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "executeLogCat : path - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 473
    .local v5, "log":Ljava/lang/StringBuilder;
    :try_start_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v12

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "logcat"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "-d"

    aput-object v16, v14, v15

    invoke-virtual {v12, v14}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v7

    .line 476
    .local v7, "logcat":Ljava/lang/Process;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v14, 0x1000

    invoke-direct {v1, v12, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 479
    .local v1, "br":Ljava/io/BufferedReader;
    const-string v12, "line.separator"

    invoke-static {v12}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 480
    .local v11, "separator":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 481
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 484
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    .end local v7    # "logcat":Ljava/lang/Process;
    .end local v11    # "separator":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 485
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 489
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_5
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 491
    .local v8, "out":Ljava/io/FileOutputStream;
    :try_start_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 495
    if-eqz v8, :cond_4

    .line 496
    :try_start_7
    invoke-static {v8}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 505
    .end local v8    # "out":Ljava/io/FileOutputStream;
    :cond_4
    :goto_2
    :try_start_8
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v12

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "logcat"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "-c"

    aput-object v16, v14, v15

    invoke-virtual {v12, v14}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 509
    :goto_3
    monitor-exit v13

    return-void

    .line 463
    .end local v5    # "log":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v2

    .line 464
    .local v2, "e":Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 448
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "logFile":Ljava/io/File;
    .end local v9    # "path":Ljava/lang/String;
    .end local v10    # "root":Ljava/io/File;
    :catchall_0
    move-exception v12

    monitor-exit v13

    throw v12

    .line 492
    .restart local v5    # "log":Ljava/lang/StringBuilder;
    .restart local v6    # "logFile":Ljava/io/File;
    .restart local v8    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "path":Ljava/lang/String;
    .restart local v10    # "root":Ljava/io/File;
    :catch_2
    move-exception v2

    .line 493
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_a
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 495
    if-eqz v8, :cond_4

    .line 496
    :try_start_b
    invoke-static {v8}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_2

    .line 499
    .end local v2    # "e":Ljava/io/IOException;
    .end local v8    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v2

    .line 500
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_2

    .line 495
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v8    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v12

    if-eqz v8, :cond_5

    .line 496
    :try_start_d
    invoke-static {v8}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    :cond_5
    throw v12
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 506
    .end local v8    # "out":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v3

    .line 507
    .local v3, "e1":Ljava/lang/Exception;
    :try_start_e
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_3
.end method

.method public static declared-synchronized executeLogCat(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "appendPostFix"    # Z

    .prologue
    .line 440
    const-class v1, Lcom/samsung/android/app/music/milk/store/IOUtils;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/logs/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/samsung/android/app/music/milk/store/IOUtils;->executeLogCat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    monitor-exit v1

    return-void

    .line 440
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getAvailableInternalMemorySize()J
    .locals 8

    .prologue
    .line 614
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    .line 615
    .local v4, "path":Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 616
    .local v5, "stat":Landroid/os/StatFs;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x12

    if-ge v6, v7, :cond_0

    .line 617
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 618
    .local v2, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 619
    .local v0, "availableBlocks":J
    mul-long v6, v0, v2

    .line 623
    :goto_0
    return-wide v6

    .line 621
    .end local v0    # "availableBlocks":J
    .end local v2    # "blockSize":J
    :cond_0
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 622
    .restart local v2    # "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    .line 623
    .restart local v0    # "availableBlocks":J
    mul-long v6, v0, v2

    goto :goto_0
.end method

.method public static getFileExist(Ljava/lang/String;)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 628
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 629
    :cond_0
    const/4 v1, 0x0

    .line 634
    :goto_0
    return v1

    .line 632
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 634
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    goto :goto_0
.end method

.method public static getValidateFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 407
    const-string v0, ""

    .line 409
    .local v0, "sfilePath":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 410
    const-string v4, "IOUtils"

    const-string v5, "getValidateFilePath : filePath is null"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 423
    .end local v0    # "sfilePath":Ljava/lang/String;
    .local v1, "sfilePath":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 414
    .end local v1    # "sfilePath":Ljava/lang/String;
    .restart local v0    # "sfilePath":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, "/"

    invoke-direct {v2, p0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    .local v2, "st":Ljava/util/StringTokenizer;
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 416
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 417
    .local v3, "temp":Ljava/lang/String;
    const-string v4, ".."

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 420
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 421
    goto :goto_1

    .end local v3    # "temp":Ljava/lang/String;
    :cond_2
    move-object v1, v0

    .line 423
    .end local v0    # "sfilePath":Ljava/lang/String;
    .restart local v1    # "sfilePath":Ljava/lang/String;
    goto :goto_0
.end method

.method public static lock()V
    .locals 4

    .prologue
    .line 658
    sget-object v2, Lcom/samsung/android/app/music/milk/store/IOUtils;->lock:Ljava/util/concurrent/BlockingQueue;

    monitor-enter v2

    .line 660
    :try_start_0
    const-string v1, "IOUtils"

    const-string v3, "lock : "

    invoke-static {v1, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    sget-object v1, Lcom/samsung/android/app/music/milk/store/IOUtils;->lock:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    .local v0, "e":Ljava/lang/InterruptedException;
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 666
    return-void

    .line 662
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_0
    move-exception v0

    .line 663
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 665
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static lock(I)V
    .locals 6
    .param p0, "timeout"    # I

    .prologue
    .line 674
    sget-object v2, Lcom/samsung/android/app/music/milk/store/IOUtils;->lock:Ljava/util/concurrent/BlockingQueue;

    monitor-enter v2

    .line 676
    :try_start_0
    const-string v1, "IOUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lock : time - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    sget-object v1, Lcom/samsung/android/app/music/milk/store/IOUtils;->lock:Ljava/util/concurrent/BlockingQueue;

    int-to-long v4, p0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v4, v5, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 682
    return-void

    .line 678
    :catch_0
    move-exception v0

    .line 679
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 681
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static mergeFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 30
    .param p0, "source1"    # Ljava/lang/String;
    .param p1, "source2"    # Ljava/lang/String;
    .param p2, "dest"    # Ljava/lang/String;

    .prologue
    .line 334
    const/16 v19, 0x0

    .line 335
    .local v19, "fileInput1":Ljava/io/FileInputStream;
    const/16 v21, 0x0

    .line 336
    .local v21, "fileInput2":Ljava/io/FileInputStream;
    const/16 v23, 0x0

    .line 337
    .local v23, "fileOutput":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 338
    .local v3, "fileInput1Channel":Ljava/nio/channels/FileChannel;
    const/4 v9, 0x0

    .line 339
    .local v9, "fileInput2Channel":Ljava/nio/channels/FileChannel;
    const/4 v8, 0x0

    .line 341
    .local v8, "fileOutputChannel":Ljava/nio/channels/FileChannel;
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 342
    :cond_0
    const-string v4, "IOUtils"

    const-string v5, "mergeFile : sources or destination is null!!"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const/4 v4, 0x0

    .line 403
    :goto_0
    return v4

    .line 346
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 347
    :cond_2
    const-string v4, "IOUtils"

    const-string v5, "mergeFile : should not overwrite to sources"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const/4 v4, 0x0

    goto :goto_0

    .line 352
    :cond_3
    :try_start_0
    new-instance v25, Ljava/io/File;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/store/IOUtils;->getValidateFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 353
    .local v25, "source1File":Ljava/io/File;
    new-instance v26, Ljava/io/File;

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/music/milk/store/IOUtils;->getValidateFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 354
    .local v26, "source2File":Ljava/io/File;
    new-instance v16, Ljava/io/File;

    invoke-static/range {p2 .. p2}, Lcom/samsung/android/app/music/milk/store/IOUtils;->getValidateFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 355
    .local v16, "destFile":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v18

    .line 357
    .local v18, "fileDir":Ljava/io/File;
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    .line 358
    const-string v4, "IOUtils"

    const-string v5, "mergeFile : source1 file is not exist"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    const/4 v4, 0x0

    .line 396
    invoke-static/range {v19 .. v19}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    .line 397
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    .line 398
    invoke-static/range {v23 .. v23}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    .line 399
    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    .line 400
    invoke-static {v9}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    .line 401
    invoke-static {v8}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .line 362
    :cond_4
    :try_start_1
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5

    .line 363
    const-string v4, "IOUtils"

    const-string v5, "mergeFile : source2 file is not exist"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    const/4 v4, 0x0

    .line 396
    invoke-static/range {v19 .. v19}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    .line 397
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    .line 398
    invoke-static/range {v23 .. v23}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    .line 399
    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    .line 400
    invoke-static {v9}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    .line 401
    invoke-static {v8}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .line 368
    :cond_5
    if-eqz v18, :cond_6

    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_6

    .line 369
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdirs()Z

    move-result v2

    .line 370
    .local v2, "create":Z
    const-string v4, "IOUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mergeFile : dir is created! - "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    .end local v2    # "create":Z
    :cond_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 374
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    move-result v15

    .line 375
    .local v15, "delete":Z
    const-string v4, "IOUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mergeFile : file exist. so delete ? "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    .end local v15    # "delete":Z
    :cond_7
    new-instance v20, Ljava/io/FileInputStream;

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 379
    .end local v19    # "fileInput1":Ljava/io/FileInputStream;
    .local v20, "fileInput1":Ljava/io/FileInputStream;
    :try_start_3
    new-instance v24, Ljava/io/FileOutputStream;

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 380
    .end local v23    # "fileOutput":Ljava/io/FileOutputStream;
    .local v24, "fileOutput":Ljava/io/FileOutputStream;
    :try_start_4
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 381
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    .line 382
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    .line 383
    .local v6, "size":J
    const-wide/16 v4, 0x0

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v28

    .line 384
    .local v28, "transperted":J
    const-string v4, "IOUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mergeFile : fisrt "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v28

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " bytes are copied."

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    new-instance v22, Ljava/io/FileInputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 387
    .end local v21    # "fileInput2":Ljava/io/FileInputStream;
    .local v22, "fileInput2":Ljava/io/FileInputStream;
    :try_start_5
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9

    .line 388
    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    .line 389
    const-wide/16 v10, 0x0

    move-wide v12, v6

    move-object v14, v8

    invoke-virtual/range {v9 .. v14}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v28

    .line 390
    const-string v4, "IOUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mergeFile : second "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v28

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " bytes are copied."

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 396
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    .line 397
    invoke-static/range {v22 .. v22}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    .line 398
    invoke-static/range {v24 .. v24}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    .line 399
    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    .line 400
    invoke-static {v9}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    .line 401
    invoke-static {v8}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    .line 403
    const/4 v4, 0x1

    move-object/from16 v23, v24

    .end local v24    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v23    # "fileOutput":Ljava/io/FileOutputStream;
    move-object/from16 v21, v22

    .end local v22    # "fileInput2":Ljava/io/FileInputStream;
    .restart local v21    # "fileInput2":Ljava/io/FileInputStream;
    move-object/from16 v19, v20

    .end local v20    # "fileInput1":Ljava/io/FileInputStream;
    .restart local v19    # "fileInput1":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 391
    .end local v6    # "size":J
    .end local v16    # "destFile":Ljava/io/File;
    .end local v18    # "fileDir":Ljava/io/File;
    .end local v25    # "source1File":Ljava/io/File;
    .end local v26    # "source2File":Ljava/io/File;
    .end local v28    # "transperted":J
    :catch_0
    move-exception v17

    .line 392
    .local v17, "e":Ljava/io/IOException;
    :goto_1
    :try_start_6
    const-string v4, "IOUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mergeFile : Error, "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 394
    const/4 v4, 0x0

    .line 396
    invoke-static/range {v19 .. v19}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    .line 397
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    .line 398
    invoke-static/range {v23 .. v23}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    .line 399
    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    .line 400
    invoke-static {v9}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    .line 401
    invoke-static {v8}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 396
    .end local v17    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    invoke-static/range {v19 .. v19}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    .line 397
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    .line 398
    invoke-static/range {v23 .. v23}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    .line 399
    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    .line 400
    invoke-static {v9}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    .line 401
    invoke-static {v8}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    throw v4

    .line 396
    .end local v19    # "fileInput1":Ljava/io/FileInputStream;
    .restart local v16    # "destFile":Ljava/io/File;
    .restart local v18    # "fileDir":Ljava/io/File;
    .restart local v20    # "fileInput1":Ljava/io/FileInputStream;
    .restart local v25    # "source1File":Ljava/io/File;
    .restart local v26    # "source2File":Ljava/io/File;
    :catchall_1
    move-exception v4

    move-object/from16 v19, v20

    .end local v20    # "fileInput1":Ljava/io/FileInputStream;
    .restart local v19    # "fileInput1":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v19    # "fileInput1":Ljava/io/FileInputStream;
    .end local v23    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v20    # "fileInput1":Ljava/io/FileInputStream;
    .restart local v24    # "fileOutput":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v4

    move-object/from16 v23, v24

    .end local v24    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v23    # "fileOutput":Ljava/io/FileOutputStream;
    move-object/from16 v19, v20

    .end local v20    # "fileInput1":Ljava/io/FileInputStream;
    .restart local v19    # "fileInput1":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v19    # "fileInput1":Ljava/io/FileInputStream;
    .end local v21    # "fileInput2":Ljava/io/FileInputStream;
    .end local v23    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v6    # "size":J
    .restart local v20    # "fileInput1":Ljava/io/FileInputStream;
    .restart local v22    # "fileInput2":Ljava/io/FileInputStream;
    .restart local v24    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v28    # "transperted":J
    :catchall_3
    move-exception v4

    move-object/from16 v23, v24

    .end local v24    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v23    # "fileOutput":Ljava/io/FileOutputStream;
    move-object/from16 v21, v22

    .end local v22    # "fileInput2":Ljava/io/FileInputStream;
    .restart local v21    # "fileInput2":Ljava/io/FileInputStream;
    move-object/from16 v19, v20

    .end local v20    # "fileInput1":Ljava/io/FileInputStream;
    .restart local v19    # "fileInput1":Ljava/io/FileInputStream;
    goto :goto_2

    .line 391
    .end local v6    # "size":J
    .end local v19    # "fileInput1":Ljava/io/FileInputStream;
    .end local v28    # "transperted":J
    .restart local v20    # "fileInput1":Ljava/io/FileInputStream;
    :catch_1
    move-exception v17

    move-object/from16 v19, v20

    .end local v20    # "fileInput1":Ljava/io/FileInputStream;
    .restart local v19    # "fileInput1":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v19    # "fileInput1":Ljava/io/FileInputStream;
    .end local v23    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v20    # "fileInput1":Ljava/io/FileInputStream;
    .restart local v24    # "fileOutput":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v17

    move-object/from16 v23, v24

    .end local v24    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v23    # "fileOutput":Ljava/io/FileOutputStream;
    move-object/from16 v19, v20

    .end local v20    # "fileInput1":Ljava/io/FileInputStream;
    .restart local v19    # "fileInput1":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v19    # "fileInput1":Ljava/io/FileInputStream;
    .end local v21    # "fileInput2":Ljava/io/FileInputStream;
    .end local v23    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v6    # "size":J
    .restart local v20    # "fileInput1":Ljava/io/FileInputStream;
    .restart local v22    # "fileInput2":Ljava/io/FileInputStream;
    .restart local v24    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v28    # "transperted":J
    :catch_3
    move-exception v17

    move-object/from16 v23, v24

    .end local v24    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v23    # "fileOutput":Ljava/io/FileOutputStream;
    move-object/from16 v21, v22

    .end local v22    # "fileInput2":Ljava/io/FileInputStream;
    .restart local v21    # "fileInput2":Ljava/io/FileInputStream;
    move-object/from16 v19, v20

    .end local v20    # "fileInput1":Ljava/io/FileInputStream;
    .restart local v19    # "fileInput1":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static moveFile(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 4
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "dest"    # Ljava/lang/String;
    .param p2, "delay"    # J

    .prologue
    .line 311
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/store/IOUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 313
    .local v0, "copyDone":Z
    if-eqz v0, :cond_0

    .line 314
    const-string v2, "IOUtils"

    const-string v3, "moveFile : done to copy!!."

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    new-instance v1, Lcom/samsung/android/app/music/milk/store/IOUtils$CleanupFileTask;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/store/IOUtils$CleanupFileTask;-><init>()V

    .line 317
    .local v1, "task":Lcom/samsung/android/app/music/milk/store/IOUtils$CleanupFileTask;
    invoke-virtual {v1, p0, p2, p3}, Lcom/samsung/android/app/music/milk/store/IOUtils$CleanupFileTask;->cleanup(Ljava/lang/String;J)V

    .line 319
    const/4 v2, 0x1

    .line 322
    .end local v1    # "task":Lcom/samsung/android/app/music/milk/store/IOUtils$CleanupFileTask;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static newFileOutputStream(Ljava/lang/String;J)Ljava/io/OutputStream;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "byteOffset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    const/4 v1, 0x0

    .line 185
    .local v1, "os":Ljava/io/OutputStream;
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "rwd"

    invoke-direct {v0, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .local v0, "file":Ljava/io/RandomAccessFile;
    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 187
    new-instance v1, Lcom/samsung/android/app/music/milk/store/IOUtils$RandomAccessFileOutputStream;

    .end local v1    # "os":Ljava/io/OutputStream;
    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/milk/store/IOUtils$RandomAccessFileOutputStream;-><init>(Ljava/io/RandomAccessFile;)V

    .line 189
    .restart local v1    # "os":Ljava/io/OutputStream;
    return-object v1
.end method

.method public static resizeFile(Ljava/lang/String;J)Z
    .locals 5
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "fileSize"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p1, p2}, Lcom/samsung/android/app/music/milk/store/IOUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    .line 203
    .local v0, "copied":Z
    if-eqz v0, :cond_0

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v1, p0, v2, v3}, Lcom/samsung/android/app/music/milk/store/IOUtils;->moveFile(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v1

    .line 206
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static resizeFile2(Ljava/lang/String;J)Z
    .locals 5
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "fileSize"    # J

    .prologue
    const/4 v2, 0x1

    .line 216
    const/4 v1, 0x0

    .line 218
    .local v1, "outChan":Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 219
    invoke-virtual {v1, p1, p2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    .line 228
    :goto_0
    return v2

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    .line 228
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 223
    :catch_1
    move-exception v0

    .line 224
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 226
    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    goto :goto_1

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    throw v2
.end method

.method public static unlock()V
    .locals 2

    .prologue
    .line 669
    const-string v0, "IOUtils"

    const-string/jumbo v1, "unlock : "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    sget-object v0, Lcom/samsung/android/app/music/milk/store/IOUtils;->lock:Ljava/util/concurrent/BlockingQueue;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 671
    return-void
.end method

.method public static zeroOutFile(Ljava/lang/String;II)I
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "bytes"    # I

    .prologue
    .line 134
    const/4 v1, 0x0

    .line 136
    .local v1, "io":Ljava/io/OutputStream;
    int-to-long v2, p1

    .line 137
    :try_start_0
    invoke-static {p0, v2, v3}, Lcom/samsung/android/app/music/milk/store/IOUtils;->newFileOutputStream(Ljava/lang/String;J)Ljava/io/OutputStream;

    move-result-object v1

    .line 141
    invoke-static {v1, p2}, Lcom/samsung/android/app/music/milk/store/IOUtils;->zeroOutfile(Ljava/io/OutputStream;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 145
    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    .line 148
    :goto_0
    return v2

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    .line 148
    const/4 v2, 0x0

    goto :goto_0

    .line 145
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    throw v2
.end method

.method public static zeroOutFile(Ljava/lang/String;I)Z
    .locals 8
    .param p0, "filepath"    # Ljava/lang/String;
    .param p1, "bytes"    # I

    .prologue
    .line 113
    const/4 v3, 0x0

    .line 115
    .local v3, "os":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/music/milk/store/IOUtils;->createNewFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 116
    .local v2, "file":Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .local v4, "os":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {v4, p1}, Lcom/samsung/android/app/music/milk/store/IOUtils;->zeroOutfile(Ljava/io/OutputStream;I)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 120
    .local v0, "bytesZeroed":I
    if-ne v0, p1, :cond_0

    .line 121
    const/4 v5, 0x1

    .line 126
    invoke-static {v4}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    move-object v3, v4

    .line 129
    .end local v0    # "bytesZeroed":I
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :goto_0
    return v5

    .line 126
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v0    # "bytesZeroed":I
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "os":Ljava/io/FileOutputStream;
    :cond_0
    invoke-static {v4}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    move-object v3, v4

    .line 129
    .end local v0    # "bytesZeroed":I
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    :try_start_2
    const-string v5, "IOUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "zeroOutFile : unexpected IO exception -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    goto :goto_1

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_3
    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    throw v5

    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "os":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 123
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v4    # "os":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private static zeroOutfile(Ljava/io/OutputStream;I)I
    .locals 5
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "bytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v4, 0x8000

    .line 152
    const v1, 0x8000

    .line 153
    .local v1, "zeroOutChunkSize":I
    new-array v2, v4, [B

    .line 154
    .local v2, "zeros":[B
    const/4 v0, 0x0

    .line 156
    .local v0, "bytesZeroed":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 157
    sub-int v3, p1, v0

    if-lt v3, v4, :cond_0

    .line 158
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 159
    add-int/2addr v0, v4

    goto :goto_0

    .line 161
    :cond_0
    const/4 v3, 0x0

    sub-int v4, p1, v0

    invoke-virtual {p0, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 162
    sub-int v3, p1, v0

    add-int/2addr v0, v3

    .line 166
    :cond_1
    return v0
.end method
