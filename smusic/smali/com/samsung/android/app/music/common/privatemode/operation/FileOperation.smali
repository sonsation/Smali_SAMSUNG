.class Lcom/samsung/android/app/music/common/privatemode/operation/FileOperation;
.super Ljava/lang/Object;
.source "FileOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/privatemode/operation/FileOperation$IprogressCallback;,
        Lcom/samsung/android/app/music/common/privatemode/operation/FileOperation$Results;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/samsung/android/app/music/common/privatemode/operation/FileOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/privatemode/operation/FileOperation;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doCopyFile(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/common/privatemode/operation/FileOperation$IprogressCallback;)I
    .locals 26
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "destPath"    # Ljava/lang/String;
    .param p2, "progress"    # Lcom/samsung/android/app/music/common/privatemode/operation/FileOperation$IprogressCallback;

    .prologue
    .line 52
    const/4 v14, 0x0

    .line 53
    .local v14, "inStream":Ljava/io/FileInputStream;
    const/16 v16, 0x0

    .line 54
    .local v16, "outStream":Ljava/io/FileOutputStream;
    const-string v23, ""

    .line 56
    .local v23, "tmpDestPath":Ljava/lang/String;
    :try_start_0
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    .local v22, "srcFile":Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->isFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_3

    .line 58
    :cond_0
    const/4 v4, -0x5

    .line 104
    if-eqz v14, :cond_1

    .line 105
    :try_start_1
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 111
    :cond_1
    :goto_0
    if-eqz v16, :cond_2

    .line 112
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 129
    .end local v22    # "srcFile":Ljava/io/File;
    :cond_2
    :goto_1
    return v4

    .line 107
    .restart local v22    # "srcFile":Ljava/io/File;
    :catch_0
    move-exception v9

    .line 108
    .local v9, "e":Ljava/io/IOException;
    sget-object v5, Lcom/samsung/android/app/music/common/privatemode/operation/FileOperation;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "inStream fail to close : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    .end local v9    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v9

    .line 115
    .restart local v9    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/samsung/android/app/music/common/privatemode/operation/FileOperation;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "outStream fail to close : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 60
    .end local v9    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_3
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/music/common/privatemode/operation/FileOperation;->isFileExit(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v4

    if-eqz v4, :cond_5

    .line 61
    const/4 v4, -0x7

    .line 104
    if-eqz v14, :cond_4

    .line 105
    :try_start_4
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 111
    :cond_4
    :goto_2
    if-eqz v16, :cond_2

    .line 112
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 114
    :catch_2
    move-exception v9

    .line 115
    .restart local v9    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/samsung/android/app/music/common/privatemode/operation/FileOperation;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "outStream fail to close : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 107
    .end local v9    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v9

    .line 108
    .restart local v9    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/samsung/android/app/music/common/privatemode/operation/FileOperation;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "inStream fail to close : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 64
    .end local v9    # "e":Ljava/io/IOException;
    :cond_5
    const/4 v4, 0x0

    const/16 v5, 0x2f

    :try_start_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 65
    .local v12, "folderPath":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/temp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 67
    invoke-static {v12}, Lcom/samsung/android/app/music/common/privatemode/operation/FileOperation;->ensureFolder(Ljava/lang/String;)V

    .line 68
    invoke-static {v12}, Lcom/samsung/android/app/music/common/privatemode/operation/FileOperation;->getFreeSpace(Ljava/lang/String;)J

    move-result-wide v10

    .line 69
    .local v10, "destFreeSize":J
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->length()J

    move-result-wide v24

    .line 71
    .local v24, "srcFileSize":J
    sget-object v4, Lcom/samsung/android/app/music/common/privatemode/operation/FileOperation;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doCopyFile() - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 72
    const-wide/16 v4, 0x0

    cmp-long v4, v10, v4

    if-eqz v4, :cond_6

    cmp-long v4, v10, v24

    if-gez v4, :cond_8

    .line 73
    :cond_6
    const/4 v4, -0x3

    .line 104
    if-eqz v14, :cond_7

    .line 105
    :try_start_7
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 111
    :cond_7
    :goto_3
    if-eqz v16, :cond_2

    .line 112
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_1

    .line 114
    :catch_4
    move-exception v9

    .line 115
    .restart local v9    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/samsung/android/app/music/common/privatemode/operation/FileOperation;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "outStream fail to close : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 107
    .end local v9    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v9

    .line 108
    .restart local v9    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/samsung/android/app/music/common/privatemode/operation/FileOperation;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "inStream fail to close : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 75
    .end local v9    # "e":Ljava/io/IOException;
    :cond_8
    :try_start_9
    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 76
    .end local v14    # "inStream":Ljava/io/FileInputStream;
    .local v15, "inStream":Ljava/io/FileInputStream;
    :try_start_a
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_d
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 78
    .end local v16    # "outStream":Ljava/io/FileOutputStream;
    .local v17, "outStream":Ljava/io/FileOutputStream;
    :try_start_b
    invoke-virtual {v15}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 79
    .local v3, "fcin":Ljava/nio/channels/FileChannel;
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x64

    rem-long v20, v4, v6

    .line 80
    .local v20, "remainder":J
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x64

    div-long v18, v4, v6

    .line 81
    .local v18, "partsize":J
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    const-wide/32 v6, 0x100000

    cmp-long v4, v4, v6

    if-gez v4, :cond_e

    .line 82
    const-wide/16 v4, 0x0

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_9

    .line 83
    sget-object v4, Lcom/samsung/android/app/music/common/privatemode/operation/FileOperation;->TAG:Ljava/lang/String;

    const-string v5, "doCopyFile() - fcin.transferTo size is 0"

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_9
    if-eqz p2, :cond_a

    .line 86
    const/16 v4, 0x63

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/samsung/android/app/music/common/privatemode/operation/FileOperation$IprogressCallback;->updateProgress(I)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_e
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 104
    :cond_a
    if-eqz v15, :cond_b

    .line 105
    :try_start_c
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 111
    :cond_b
    :goto_4
    if-eqz v17, :cond_c

    .line 112
    :try_start_d
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 120
    :cond_c
    :goto_5
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, v23

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .local v2, "destFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_15

    .line 122
    :cond_d
    const/4 v4, -0x1

    move-object/from16 v16, v17

    .end local v17    # "outStream":Ljava/io/FileOutputStream;
    .restart local v16    # "outStream":Ljava/io/FileOutputStream;
    move-object v14, v15

    .end local v15    # "inStream":Ljava/io/FileInputStream;
    .restart local v14    # "inStream":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 89
    .end local v2    # "destFile":Ljava/io/File;
    .end local v14    # "inStream":Ljava/io/FileInputStream;
    .end local v16    # "outStream":Ljava/io/FileOutputStream;
    .restart local v15    # "inStream":Ljava/io/FileInputStream;
    .restart local v17    # "outStream":Ljava/io/FileOutputStream;
    :cond_e
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_6
    const/16 v4, 0x64

    if-ge v13, v4, :cond_a

    .line 90
    int-to-long v4, v13

    mul-long v4, v4, v18

    const/16 v6, 0x63

    if-ne v13, v6, :cond_11

    move-wide/from16 v6, v20

    :goto_7
    add-long v6, v6, v18

    .line 91
    :try_start_e
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    .line 90
    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_f

    .line 92
    sget-object v4, Lcom/samsung/android/app/music/common/privatemode/operation/FileOperation;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doCopyFile() - fcin.transferTo size is 0, part "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_f
    if-eqz p2, :cond_10

    .line 95
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lcom/samsung/android/app/music/common/privatemode/operation/FileOperation$IprogressCallback;->updateProgress(I)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 89
    :cond_10
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 90
    :cond_11
    const-wide/16 v6, 0x0

    goto :goto_7

    .line 107
    .end local v13    # "i":I
    :catch_6
    move-exception v9

    .line 108
    .restart local v9    # "e":Ljava/io/IOException;
    sget-object v4, Lcom/samsung/android/app/music/common/privatemode/operation/FileOperation;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inStream fail to close : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 114
    .end local v9    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v9

    .line 115
    .restart local v9    # "e":Ljava/io/IOException;
    sget-object v4, Lcom/samsung/android/app/music/common/privatemode/operation/FileOperation;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "outStream fail to close : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 99
    .end local v3    # "fcin":Ljava/nio/channels/FileChannel;
    .end local v9    # "e":Ljava/io/IOException;
    .end local v10    # "destFreeSize":J
    .end local v12    # "folderPath":Ljava/lang/String;
    .end local v15    # "inStream":Ljava/io/FileInputStream;
    .end local v17    # "outStream":Ljava/io/FileOutputStream;
    .end local v18    # "partsize":J
    .end local v20    # "remainder":J
    .end local v22    # "srcFile":Ljava/io/File;
    .end local v24    # "srcFileSize":J
    .restart local v14    # "inStream":Ljava/io/FileInputStream;
    .restart local v16    # "outStream":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v9

    .line 100
    .restart local v9    # "e":Ljava/io/IOException;
    :goto_8
    :try_start_f
    sget-object v4, Lcom/samsung/android/app/music/common/privatemode/operation/FileOperation;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 101
    const/4 v4, -0x1

    .line 104
    if-eqz v14, :cond_12

    .line 105
    :try_start_10
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    .line 111
    :cond_12
    :goto_9
    if-eqz v16, :cond_2

    .line 112
    :try_start_11
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    goto/16 :goto_1

    .line 114
    :catch_9
    move-exception v9

    .line 115
    sget-object v5, Lcom/samsung/android/app/music/common/privatemode/operation/FileOperation;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "outStream fail to close : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 107
    :catch_a
    move-exception v9

    .line 108
    sget-object v5, Lcom/samsung/android/app/music/common/privatemode/operation/FileOperation;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "inStream fail to close : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 103
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 104
    :goto_a
    if-eqz v14, :cond_13

    .line 105
    :try_start_12
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b

    .line 111
    :cond_13
    :goto_b
    if-eqz v16, :cond_14

    .line 112
    :try_start_13
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c

    .line 116
    :cond_14
    :goto_c
    throw v4

    .line 107
    :catch_b
    move-exception v9

    .line 108
    .restart local v9    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/samsung/android/app/music/common/privatemode/operation/FileOperation;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "inStream fail to close : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 114
    .end local v9    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v9

    .line 115
    .restart local v9    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/samsung/android/app/music/common/privatemode/operation/FileOperation;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "outStream fail to close : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 124
    .end local v9    # "e":Ljava/io/IOException;
    .end local v14    # "inStream":Ljava/io/FileInputStream;
    .end local v16    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "destFile":Ljava/io/File;
    .restart local v3    # "fcin":Ljava/nio/channels/FileChannel;
    .restart local v10    # "destFreeSize":J
    .restart local v12    # "folderPath":Ljava/lang/String;
    .restart local v15    # "inStream":Ljava/io/FileInputStream;
    .restart local v17    # "outStream":Ljava/io/FileOutputStream;
    .restart local v18    # "partsize":J
    .restart local v20    # "remainder":J
    .restart local v22    # "srcFile":Ljava/io/File;
    .restart local v24    # "srcFileSize":J
    :cond_15
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 125
    const-string v4, "PrivateMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FAIL renameTo : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/4 v4, -0x1

    move-object/from16 v16, v17

    .end local v17    # "outStream":Ljava/io/FileOutputStream;
    .restart local v16    # "outStream":Ljava/io/FileOutputStream;
    move-object v14, v15

    .end local v15    # "inStream":Ljava/io/FileInputStream;
    .restart local v14    # "inStream":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 129
    .end local v14    # "inStream":Ljava/io/FileInputStream;
    .end local v16    # "outStream":Ljava/io/FileOutputStream;
    .restart local v15    # "inStream":Ljava/io/FileInputStream;
    .restart local v17    # "outStream":Ljava/io/FileOutputStream;
    :cond_16
    const/4 v4, 0x0

    move-object/from16 v16, v17

    .end local v17    # "outStream":Ljava/io/FileOutputStream;
    .restart local v16    # "outStream":Ljava/io/FileOutputStream;
    move-object v14, v15

    .end local v15    # "inStream":Ljava/io/FileInputStream;
    .restart local v14    # "inStream":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 103
    .end local v2    # "destFile":Ljava/io/File;
    .end local v3    # "fcin":Ljava/nio/channels/FileChannel;
    .end local v14    # "inStream":Ljava/io/FileInputStream;
    .end local v18    # "partsize":J
    .end local v20    # "remainder":J
    .restart local v15    # "inStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v14, v15

    .end local v15    # "inStream":Ljava/io/FileInputStream;
    .restart local v14    # "inStream":Ljava/io/FileInputStream;
    goto :goto_a

    .end local v14    # "inStream":Ljava/io/FileInputStream;
    .end local v16    # "outStream":Ljava/io/FileOutputStream;
    .restart local v15    # "inStream":Ljava/io/FileInputStream;
    .restart local v17    # "outStream":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v4

    move-object/from16 v16, v17

    .end local v17    # "outStream":Ljava/io/FileOutputStream;
    .restart local v16    # "outStream":Ljava/io/FileOutputStream;
    move-object v14, v15

    .end local v15    # "inStream":Ljava/io/FileInputStream;
    .restart local v14    # "inStream":Ljava/io/FileInputStream;
    goto :goto_a

    .line 99
    .end local v14    # "inStream":Ljava/io/FileInputStream;
    .restart local v15    # "inStream":Ljava/io/FileInputStream;
    :catch_d
    move-exception v9

    move-object v14, v15

    .end local v15    # "inStream":Ljava/io/FileInputStream;
    .restart local v14    # "inStream":Ljava/io/FileInputStream;
    goto/16 :goto_8

    .end local v14    # "inStream":Ljava/io/FileInputStream;
    .end local v16    # "outStream":Ljava/io/FileOutputStream;
    .restart local v15    # "inStream":Ljava/io/FileInputStream;
    .restart local v17    # "outStream":Ljava/io/FileOutputStream;
    :catch_e
    move-exception v9

    move-object/from16 v16, v17

    .end local v17    # "outStream":Ljava/io/FileOutputStream;
    .restart local v16    # "outStream":Ljava/io/FileOutputStream;
    move-object v14, v15

    .end local v15    # "inStream":Ljava/io/FileInputStream;
    .restart local v14    # "inStream":Ljava/io/FileInputStream;
    goto/16 :goto_8
.end method

.method public static doDeleteFile(Ljava/lang/String;)Z
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 43
    if-nez p0, :cond_0

    .line 44
    const/4 v1, 0x0

    .line 47
    :goto_0
    return v1

    .line 46
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    goto :goto_0
.end method

.method public static doMoveFile(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/common/privatemode/operation/FileOperation$IprogressCallback;)I
    .locals 5
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "destPath"    # Ljava/lang/String;
    .param p2, "progress"    # Lcom/samsung/android/app/music/common/privatemode/operation/FileOperation$IprogressCallback;

    .prologue
    .line 32
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/common/privatemode/operation/FileOperation;->doCopyFile(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/common/privatemode/operation/FileOperation$IprogressCallback;)I

    move-result v0

    .line 33
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 34
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    .local v1, "srcFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 36
    sget-object v2, Lcom/samsung/android/app/music/common/privatemode/operation/FileOperation;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doMoveFile : (Fail to delete  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .end local v1    # "srcFile":Ljava/io/File;
    :cond_0
    return v0
.end method

.method private static ensureFolder(Ljava/lang/String;)V
    .locals 2
    .param p0, "folderPath"    # Ljava/lang/String;

    .prologue
    .line 147
    if-nez p0, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, "folder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method

.method public static getFileCount(Ljava/io/File;)I
    .locals 5
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 157
    if-nez p0, :cond_1

    .line 158
    const/4 v0, -0x1

    .line 174
    :cond_0
    return v0

    .line 160
    :cond_1
    const/4 v0, 0x0

    .line 161
    .local v0, "fileCount":I
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 163
    .local v2, "files":[Ljava/io/File;
    const/4 v1, 0x0

    .line 164
    .local v1, "filelength":I
    if-eqz v2, :cond_0

    .line 165
    array-length v1, v2

    .line 166
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 167
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 168
    aget-object v4, v2, v3

    invoke-static {v4}, Lcom/samsung/android/app/music/common/privatemode/operation/FileOperation;->getFileCount(Ljava/io/File;)I

    move-result v0

    .line 166
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 170
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getFreeSpace(Ljava/lang/String;)J
    .locals 2
    .param p0, "target"    # Ljava/lang/String;

    .prologue
    .line 133
    if-nez p0, :cond_0

    .line 134
    const-wide/16 v0, 0x0

    .line 136
    :goto_0
    return-wide v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static isFileExit(Ljava/lang/String;)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 140
    if-nez p0, :cond_0

    .line 141
    const/4 v0, 0x0

    .line 143
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_0
.end method
