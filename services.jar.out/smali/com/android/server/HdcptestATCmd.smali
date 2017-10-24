.class public Lcom/android/server/HdcptestATCmd;
.super Ljava/lang/Object;
.source "HdcptestATCmd.java"

# interfaces
.implements Lcom/android/server/IWorkOnAt;


# static fields
.field private static final AT_COMMAND_HDCPTEST:Ljava/lang/String; = "HDCPTEST"

.field private static final AT_COMMAND_HEADER:Ljava/lang/String; = "AT"

.field private static final AT_COMMON_INTERVAL:Ljava/lang/String; = " "

.field private static final AT_HDCP_DP_ENC_KEY_13:Ljava/lang/String; = "/ted1dat.bin"

.field private static final AT_HDCP_DP_ENC_KEY_20:Ljava/lang/String; = "/ted2dat.bin"

.field private static final AT_HDCP_DP_EXEC_PATH:Ljava/lang/String; = "/system/bin/dhkprov"

.field private static final AT_HDCP_DP_HASH_SIZE:I = 0x20

.field private static final AT_HDCP_DP_INSTALL_CMD:Ljava/lang/String; = "insthkey"

.field private static final AT_HDCP_DP_VERIFY_CMD:Ljava/lang/String; = "verihkey"

.field private static final AT_HDCP_DP_VER_13:Ljava/lang/String; = "1x"

.field private static final AT_HDCP_DP_VER_22:Ljava/lang/String; = "2x"

.field private static final AT_HDCP_ENC_KEY:Ljava/lang/String; = "/redata.bin"

.field private static final AT_HDCP_EXEC_PATH:Ljava/lang/String; = "/system/bin/insthk"

.field private static final AT_HDCP_FILE_PATH_CPK:Ljava/lang/String; = "/efs/cpk"

.field private static final AT_HDCP_FILE_PATH_EFS:Ljava/lang/String; = "/efs"

.field private static final AT_HDCP_KEY_20:Ljava/lang/String; = "/h2k.dat"

.field private static final AT_RESPONSE_ERROR_EXEC:Ljava/lang/String; = "NG (ERROR_EXEC)"

.field private static final AT_RESPONSE_EXCEPTION:Ljava/lang/String; = "NG (EXCEPTION)"

.field private static final AT_RESPONSE_INTEGRITY_FAIL:Ljava/lang/String; = "NG (INTEGRITY CHK FAIL)"

.field private static final AT_RESPONSE_INVALID_PARAM:Ljava/lang/String; = "NG (INVALID_PARAM)"

.field private static final AT_RESPONSE_NG:Ljava/lang/String; = "NG"

.field private static final AT_RESPONSE_NG_FIELD:Ljava/lang/String; = "NG_FIELD"

.field private static final AT_RESPONSE_NG_KEY:Ljava/lang/String; = "NG_KEY"

.field private static final AT_RESPONSE_NO_DATA:Ljava/lang/String; = "NG (NO_DATA)"

.field private static final AT_RESPONSE_NO_EFS_PARTITION:Ljava/lang/String; = "NG (NO_EFS)"

.field private static final AT_RESPONSE_NO_EXIST_PATH:Ljava/lang/String; = "NG (NO_PATH)"

.field private static final AT_RESPONSE_OK:Ljava/lang/String; = "OK"

.field private static final AT_WV_DEFAULT_SERIAL:Ljava/lang/String; = "S000000000000000"

.field private static final AT_WV_EXEC_PATH:Ljava/lang/String; = "/system/bin/wvkprov"

.field private static final AT_WV_KEY:Ljava/lang/String; = "/efs/wv.keys"

.field private static final AT_WV_VERIFICATION_CMD:Ljava/lang/String; = "veriwvkey"

.field private static final AT_WV_ZERO_STRING:Ljava/lang/String; = "0"

.field private static final EFS_PARTITION:Ljava/lang/String; = "/efs"

.field private static final ERROR_EXEC:I = 0x2c

.field private static final ERROR_INTERNAL:I = 0x1

.field private static final NO_ERROR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HdcptestATCmd"

.field private static final TYPE_DIR:I = 0x1

.field private static final TYPE_FILE:I = 0x2

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mErrorCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    sput-object p1, Lcom/android/server/HdcptestATCmd;->mContext:Landroid/content/Context;

    .line 69
    return-void
.end method

.method public static checkMsgIntegrity([B)Z
    .locals 9
    .param p0, "Array"    # [B

    .prologue
    const/16 v6, 0x20

    .line 426
    const/4 v5, 0x0

    .line 428
    .local v5, "ret":Z
    new-array v0, v6, [B

    .line 429
    .local v0, "bMD1":[B
    new-array v1, v6, [B

    .line 430
    .local v1, "bMD2":[B
    array-length v6, p0

    array-length v7, v0

    sub-int/2addr v6, v7

    new-array v2, v6, [B

    .line 433
    .local v2, "bMsg":[B
    :try_start_0
    array-length v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {p0, v7, v2, v8, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 434
    array-length v6, v2

    array-length v7, v0

    const/4 v8, 0x0

    invoke-static {p0, v6, v0, v8, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 436
    const-string/jumbo v6, "SHA-256"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 437
    .local v4, "md":Ljava/security/MessageDigest;
    invoke-virtual {v4, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 438
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 440
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 441
    const/4 v5, 0x1

    .line 442
    const-string/jumbo v6, "HdcptestATCmd"

    const-string/jumbo v7, "Integrity Check : Pass"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    .end local v4    # "md":Ljava/security/MessageDigest;
    :goto_0
    return v5

    .line 444
    .restart local v4    # "md":Ljava/security/MessageDigest;
    :cond_0
    const-string/jumbo v6, "HdcptestATCmd"

    const-string/jumbo v7, "Integrity Check : Failure"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 446
    .end local v4    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v3

    .line 447
    .local v3, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    .line 448
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static checkPath(Ljava/lang/String;I)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "type"    # I

    .prologue
    .line 397
    const/4 v0, 0x0

    .line 398
    .local v0, "result":Z
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 399
    .local v1, "tmpFile":Ljava/io/File;
    packed-switch p1, :pswitch_data_0

    .line 407
    .end local v0    # "result":Z
    :goto_0
    return v0

    .line 401
    .restart local v0    # "result":Z
    :pswitch_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0

    .line 404
    .local v0, "result":Z
    :pswitch_1
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0

    .line 399
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static execCmd(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "cmd"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 375
    const/4 v4, 0x2

    invoke-static {p0, v4}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 376
    const/16 v4, 0x2c

    return v4

    .line 378
    :cond_0
    if-eqz p1, :cond_1

    .line 379
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 380
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 384
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    .line 385
    .local v3, "rt":Ljava/lang/Runtime;
    invoke-virtual {v3, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 386
    .local v1, "pc":Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 387
    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 393
    .end local v1    # "pc":Ljava/lang/Process;
    .end local v3    # "rt":Ljava/lang/Runtime;
    .local v2, "ret":I
    :goto_0
    return v2

    .line 389
    .end local v2    # "ret":I
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Ljava/lang/Exception;
    const/16 v2, 0x2c

    .line 391
    .restart local v2    # "ret":I
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getHdcp2XPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 413
    const-string/jumbo v1, "/efs/cpk"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    const-string/jumbo v0, "/efs/cpk"

    .line 415
    .local v0, "hPath":Ljava/lang/String;
    const-string/jumbo v1, "HdcptestATCmd"

    const-string/jumbo v2, "Get path : cpk"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :goto_0
    return-object v0

    .line 417
    .end local v0    # "hPath":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "/efs"

    .line 418
    .restart local v0    # "hPath":Ljava/lang/String;
    const-string/jumbo v1, "HdcptestATCmd"

    const-string/jumbo v2, "Get path : legacy"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static hexToByteArray(Ljava/lang/String;)[B
    .locals 4
    .param p0, "hexData"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 360
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 361
    :cond_0
    return-object v3

    .line 364
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    .line 366
    .local v0, "bArray":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 367
    mul-int/lit8 v2, v1, 0x2

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 366
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 369
    :cond_2
    return-object v0
.end method

.method public static makeDirectory(Ljava/lang/String;)V
    .locals 3
    .param p0, "dir"    # Ljava/lang/String;

    .prologue
    .line 456
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/efs/cpk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 457
    .local v0, "cpkPath":Ljava/io/File;
    const-string/jumbo v1, "/efs/cpk"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 458
    const-string/jumbo v1, "HdcptestATCmd"

    const-string/jumbo v2, "Make cpkPath"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 454
    :cond_0
    return-void
.end method

.method private parsingParam(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 346
    const/4 v2, 0x0

    .line 348
    .local v2, "result":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, "params":Ljava/lang/String;
    const-string/jumbo v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 356
    .end local v1    # "params":Ljava/lang/String;
    .end local v2    # "result":[Ljava/lang/String;
    :goto_0
    return-object v2

    .line 352
    .restart local v2    # "result":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 353
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 354
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static writeFile([BLjava/lang/String;I)I
    .locals 8
    .param p0, "bArray"    # [B
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "length"    # I

    .prologue
    .line 467
    const/4 v3, 0x0

    .line 468
    .local v3, "hOStream":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 471
    .local v1, "hBOStream":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 472
    .end local v3    # "hOStream":Ljava/io/FileOutputStream;
    .local v4, "hOStream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 473
    .local v2, "hBOStream":Ljava/io/BufferedOutputStream;
    :try_start_2
    const-string/jumbo v6, "HdcptestATCmd"

    .end local v1    # "hBOStream":Ljava/io/BufferedOutputStream;
    const-string/jumbo v7, "Prepare buffer stream"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const/4 v6, 0x0

    invoke-virtual {v2, p0, v6, p2}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 476
    const-string/jumbo v6, "HdcptestATCmd"

    const-string/jumbo v7, "Write data into buffer"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 480
    const/4 v6, 0x2

    invoke-static {p1, v6}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    move-result v6

    if-eqz v6, :cond_1

    .line 481
    const/4 v5, 0x0

    .line 488
    .local v5, "ret":I
    :goto_0
    if-eqz v2, :cond_6

    .line 490
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 494
    :goto_1
    const/4 v1, 0x0

    .line 496
    .end local v2    # "hBOStream":Ljava/io/BufferedOutputStream;
    :goto_2
    if-eqz v4, :cond_2

    .line 498
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 502
    .end local v4    # "hOStream":Ljava/io/FileOutputStream;
    :goto_3
    const/4 v3, 0x0

    .line 505
    :cond_0
    :goto_4
    return v5

    .line 483
    .end local v5    # "ret":I
    .restart local v2    # "hBOStream":Ljava/io/BufferedOutputStream;
    .restart local v4    # "hOStream":Ljava/io/FileOutputStream;
    :cond_1
    const/4 v5, 0x1

    .restart local v5    # "ret":I
    goto :goto_0

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 493
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 494
    const/4 v1, 0x0

    .line 493
    .end local v2    # "hBOStream":Ljava/io/BufferedOutputStream;
    .restart local v1    # "hBOStream":Ljava/io/BufferedOutputStream;
    throw v6

    .line 499
    .end local v1    # "hBOStream":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v0

    .line 500
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    .line 501
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v6

    .line 502
    const/4 v3, 0x0

    .line 501
    .end local v4    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v3    # "hOStream":Ljava/io/FileOutputStream;
    throw v6

    .end local v3    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v4    # "hOStream":Ljava/io/FileOutputStream;
    :cond_2
    move-object v3, v4

    .end local v4    # "hOStream":Ljava/io/FileOutputStream;
    .local v3, "hOStream":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 484
    .end local v5    # "ret":I
    .restart local v1    # "hBOStream":Ljava/io/BufferedOutputStream;
    .local v3, "hOStream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    .line 485
    .end local v1    # "hBOStream":Ljava/io/BufferedOutputStream;
    .end local v3    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_5
    const/4 v5, 0x1

    .line 486
    .restart local v5    # "ret":I
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 488
    if-eqz v1, :cond_3

    .line 490
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 494
    :goto_6
    const/4 v1, 0x0

    .line 496
    :cond_3
    if-eqz v3, :cond_0

    .line 498
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_3

    .line 499
    :catch_3
    move-exception v0

    .line 500
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_3

    .line 501
    :catchall_2
    move-exception v6

    .line 502
    const/4 v3, 0x0

    .line 501
    .restart local v3    # "hOStream":Ljava/io/FileOutputStream;
    throw v6

    .line 491
    .end local v3    # "hOStream":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    .line 492
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_6

    .line 493
    :catchall_3
    move-exception v6

    .line 494
    const/4 v1, 0x0

    .line 493
    .restart local v1    # "hBOStream":Ljava/io/BufferedOutputStream;
    throw v6

    .line 487
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "hBOStream":Ljava/io/BufferedOutputStream;
    .end local v5    # "ret":I
    :catchall_4
    move-exception v6

    .line 488
    :goto_7
    if-eqz v1, :cond_4

    .line 490
    :try_start_c
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 494
    :goto_8
    const/4 v1, 0x0

    .line 496
    :cond_4
    if-eqz v3, :cond_5

    .line 498
    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 502
    :goto_9
    const/4 v3, 0x0

    .line 487
    :cond_5
    throw v6

    .line 491
    :catch_5
    move-exception v0

    .line 492
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_8

    .line 493
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_5
    move-exception v6

    .line 494
    const/4 v1, 0x0

    .line 493
    .restart local v1    # "hBOStream":Ljava/io/BufferedOutputStream;
    throw v6

    .line 499
    .end local v1    # "hBOStream":Ljava/io/BufferedOutputStream;
    :catch_6
    move-exception v0

    .line 500
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    goto :goto_9

    .line 501
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_6
    move-exception v6

    .line 502
    const/4 v3, 0x0

    .line 501
    .restart local v3    # "hOStream":Ljava/io/FileOutputStream;
    throw v6

    .line 487
    .end local v3    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v1    # "hBOStream":Ljava/io/BufferedOutputStream;
    .restart local v4    # "hOStream":Ljava/io/FileOutputStream;
    :catchall_7
    move-exception v6

    move-object v3, v4

    .end local v4    # "hOStream":Ljava/io/FileOutputStream;
    .local v3, "hOStream":Ljava/io/FileOutputStream;
    goto :goto_7

    .end local v1    # "hBOStream":Ljava/io/BufferedOutputStream;
    .end local v3    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v2    # "hBOStream":Ljava/io/BufferedOutputStream;
    .restart local v4    # "hOStream":Ljava/io/FileOutputStream;
    :catchall_8
    move-exception v6

    move-object v1, v2

    .end local v2    # "hBOStream":Ljava/io/BufferedOutputStream;
    .local v1, "hBOStream":Ljava/io/BufferedOutputStream;
    move-object v3, v4

    .end local v4    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v3    # "hOStream":Ljava/io/FileOutputStream;
    goto :goto_7

    .line 484
    .end local v3    # "hOStream":Ljava/io/FileOutputStream;
    .local v1, "hBOStream":Ljava/io/BufferedOutputStream;
    .restart local v4    # "hOStream":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v3    # "hOStream":Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "hBOStream":Ljava/io/BufferedOutputStream;
    .end local v3    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v2    # "hBOStream":Ljava/io/BufferedOutputStream;
    .restart local v4    # "hOStream":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v1, v2

    .end local v2    # "hBOStream":Ljava/io/BufferedOutputStream;
    .local v1, "hBOStream":Ljava/io/BufferedOutputStream;
    move-object v3, v4

    .end local v4    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v3    # "hOStream":Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "hBOStream":Ljava/io/BufferedOutputStream;
    .end local v3    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v2    # "hBOStream":Ljava/io/BufferedOutputStream;
    .restart local v4    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v5    # "ret":I
    :cond_6
    move-object v1, v2

    .end local v2    # "hBOStream":Ljava/io/BufferedOutputStream;
    .restart local v1    # "hBOStream":Ljava/io/BufferedOutputStream;
    goto :goto_2
.end method


# virtual methods
.method public getCmd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 74
    .local v0, "response":Ljava/lang/String;
    const-string/jumbo v0, "HDCPTEST"

    .line 75
    return-object v0
.end method

.method public processCmd(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 79
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    .line 80
    .local v6, "result":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/HdcptestATCmd;->parsingParam(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 81
    .local v5, "params":[Ljava/lang/String;
    const/16 v10, 0x9

    new-array v9, v10, [Ljava/lang/String;

    .line 82
    const-string/jumbo v10, "0,0"

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 83
    const-string/jumbo v10, "0,3"

    const/4 v11, 0x1

    aput-object v10, v9, v11

    .line 84
    const-string/jumbo v10, "0,4"

    const/4 v11, 0x2

    aput-object v10, v9, v11

    .line 85
    const-string/jumbo v10, "0,5"

    const/4 v11, 0x3

    aput-object v10, v9, v11

    .line 86
    const-string/jumbo v10, "1,0"

    const/4 v11, 0x4

    aput-object v10, v9, v11

    .line 87
    const-string/jumbo v10, "2,"

    const/4 v11, 0x5

    aput-object v10, v9, v11

    .line 88
    const-string/jumbo v10, "3,3,"

    const/4 v11, 0x6

    aput-object v10, v9, v11

    .line 89
    const-string/jumbo v10, "3,4,"

    const/4 v11, 0x7

    aput-object v10, v9, v11

    .line 90
    const-string/jumbo v10, "3,5,"

    const/16 v11, 0x8

    aput-object v10, v9, v11

    .line 93
    .local v9, "supportedParams":[Ljava/lang/String;
    if-nez v5, :cond_0

    .line 94
    const-string/jumbo v10, "HdcptestATCmd"

    const-string/jumbo v11, "processCmd: params is null"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string/jumbo v10, "NG (INVALID_PARAM)"

    return-object v10

    .line 98
    :cond_0
    const-string/jumbo v10, "/efs"

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_1

    .line 99
    const-string/jumbo v10, "HdcptestATCmd"

    const-string/jumbo v11, "efs partition is not mounted"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string/jumbo v10, "NG (NO_EFS)"

    return-object v10

    .line 104
    :cond_1
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    aget-object v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 107
    const/4 v10, 0x0

    aget-object v10, v9, v10

    const/4 v11, 0x0

    aget-object v11, v9, v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {p1, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 109
    const-string/jumbo v10, "HdcptestATCmd"

    const-string/jumbo v11, "AT+HDCPTEST=0,0"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string/jumbo v4, "/efs/cpk"

    .line 113
    .local v4, "hPath":Ljava/lang/String;
    const-string/jumbo v10, "/system/bin/insthk"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/android/server/HdcptestATCmd;->execCmd(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 115
    .local v7, "ret":I
    if-nez v7, :cond_2

    .line 116
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "OK"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 137
    :goto_0
    const-string/jumbo v10, "HdcptestATCmd"

    const-string/jumbo v11, "0,0 is complete!"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    .end local v4    # "hPath":Ljava/lang/String;
    .end local v7    # "ret":I
    :goto_1
    return-object v6

    .line 119
    .restart local v4    # "hPath":Ljava/lang/String;
    .restart local v7    # "ret":I
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/h2k.dat"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    invoke-static {v10, v11}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_5

    .line 120
    const-string/jumbo v4, "/efs"

    .line 121
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/h2k.dat"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    invoke-static {v10, v11}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_3

    .line 122
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "NG_KEY"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 124
    :cond_3
    const/16 v10, 0x2c

    if-ne v7, v10, :cond_4

    .line 125
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "NG (ERROR_EXEC)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 127
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "NG_FIELD"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 130
    :cond_5
    const/16 v10, 0x2c

    if-ne v7, v10, :cond_6

    .line 131
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "NG (ERROR_EXEC)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 133
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "NG_FIELD"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 140
    .end local v4    # "hPath":Ljava/lang/String;
    .end local v7    # "ret":I
    :cond_7
    const/4 v10, 0x1

    aget-object v10, v9, v10

    const/4 v11, 0x1

    aget-object v11, v9, v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {p1, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 142
    const-string/jumbo v10, "HdcptestATCmd"

    const-string/jumbo v11, "AT+HDCPTEST=0,3"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-string/jumbo v10, "/efs/wv.keys"

    const/4 v11, 0x2

    invoke-static {v10, v11}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_8

    .line 145
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "NG_KEY"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 156
    :goto_2
    const-string/jumbo v10, "HdcptestATCmd"

    const-string/jumbo v11, "0,3 is complete."

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 337
    :catch_0
    move-exception v2

    .line 338
    .local v2, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "NG (EXCEPTION)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 339
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 147
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_8
    :try_start_1
    const-string/jumbo v10, "/system/bin/wvkprov"

    const-string/jumbo v11, "veriwvkey"

    invoke-static {v10, v11}, Lcom/android/server/HdcptestATCmd;->execCmd(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 149
    .restart local v7    # "ret":I
    if-nez v7, :cond_9

    .line 150
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "OK"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 151
    :cond_9
    const/16 v10, 0x2c

    if-ne v7, v10, :cond_a

    .line 152
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "NG (ERROR_EXEC)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 154
    :cond_a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "NG_FIELD"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 159
    .end local v7    # "ret":I
    :cond_b
    const/4 v10, 0x2

    aget-object v10, v9, v10

    const/4 v11, 0x2

    aget-object v11, v9, v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {p1, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 161
    const-string/jumbo v10, "HdcptestATCmd"

    const-string/jumbo v11, "AT+HDCPTEST=0,4"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string/jumbo v3, "verihkey 2x"

    .line 164
    .local v3, "execParam":Ljava/lang/String;
    const-string/jumbo v10, "/system/bin/dhkprov"

    invoke-static {v10, v3}, Lcom/android/server/HdcptestATCmd;->execCmd(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 166
    .restart local v7    # "ret":I
    if-nez v7, :cond_c

    .line 167
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "OK"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 179
    :goto_3
    const-string/jumbo v10, "HdcptestATCmd"

    const-string/jumbo v11, "0,4 is complete."

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 169
    :cond_c
    const-string/jumbo v3, "insthkey 2x"

    .line 170
    const-string/jumbo v10, "/system/bin/dhkprov"

    invoke-static {v10, v3}, Lcom/android/server/HdcptestATCmd;->execCmd(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 171
    if-nez v7, :cond_d

    .line 172
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "OK"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 173
    :cond_d
    const/16 v10, 0x2c

    if-ne v7, v10, :cond_e

    .line 174
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "NG (ERROR_EXEC)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 176
    :cond_e
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "NG"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 182
    .end local v3    # "execParam":Ljava/lang/String;
    .end local v7    # "ret":I
    :cond_f
    const/4 v10, 0x3

    aget-object v10, v9, v10

    const/4 v11, 0x3

    aget-object v11, v9, v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {p1, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 184
    const-string/jumbo v10, "HdcptestATCmd"

    const-string/jumbo v11, "AT+HDCPTEST=0,5"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string/jumbo v3, "verihkey 1x"

    .line 187
    .restart local v3    # "execParam":Ljava/lang/String;
    const-string/jumbo v10, "/system/bin/dhkprov"

    invoke-static {v10, v3}, Lcom/android/server/HdcptestATCmd;->execCmd(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 189
    .restart local v7    # "ret":I
    if-nez v7, :cond_10

    .line 190
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "OK"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 202
    :goto_4
    const-string/jumbo v10, "HdcptestATCmd"

    const-string/jumbo v11, "0,5 is complete."

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 192
    :cond_10
    const-string/jumbo v3, "insthkey 1x"

    .line 193
    const-string/jumbo v10, "/system/bin/dhkprov"

    invoke-static {v10, v3}, Lcom/android/server/HdcptestATCmd;->execCmd(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 194
    if-nez v7, :cond_11

    .line 195
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "OK"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 196
    :cond_11
    const/16 v10, 0x2c

    if-ne v7, v10, :cond_12

    .line 197
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "NG (ERROR_EXEC)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 199
    :cond_12
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "NG"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 205
    .end local v3    # "execParam":Ljava/lang/String;
    .end local v7    # "ret":I
    :cond_13
    const/4 v10, 0x4

    aget-object v10, v9, v10

    const/4 v11, 0x4

    aget-object v11, v9, v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {p1, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 207
    const-string/jumbo v10, "HdcptestATCmd"

    const-string/jumbo v11, "AT+HDCPTEST=1,0"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-string/jumbo v0, "S000000000000000"

    .line 210
    .local v0, "AT_RESPONSE_SERIAL":Ljava/lang/String;
    const-string/jumbo v10, "ro.serialno"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 212
    .local v8, "serialNo":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x10

    if-lt v10, v11, :cond_14

    .line 213
    move-object v0, v8

    .line 220
    :goto_5
    const-string/jumbo v10, "HdcptestATCmd"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Serial Number : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 223
    const-string/jumbo v10, "HdcptestATCmd"

    const-string/jumbo v11, "1,0 is complete."

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 214
    :cond_14
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_15

    .line 215
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 217
    :cond_15
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 226
    .end local v0    # "AT_RESPONSE_SERIAL":Ljava/lang/String;
    .end local v8    # "serialNo":Ljava/lang/String;
    :cond_16
    const/4 v10, 0x5

    aget-object v10, v9, v10

    const/4 v11, 0x5

    aget-object v11, v9, v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {p1, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 228
    const/4 v10, 0x1

    aget-object v10, v5, v10

    invoke-static {v10}, Lcom/android/server/HdcptestATCmd;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 230
    .local v1, "bArray":[B
    if-nez v1, :cond_17

    .line 231
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "NG (NO_DATA)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 244
    :goto_6
    const-string/jumbo v10, "HdcptestATCmd"

    const-string/jumbo v11, "2,Data is complete."

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 233
    :cond_17
    const-string/jumbo v10, "HdcptestATCmd"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "bArray size : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string/jumbo v10, "/efs/cpk"

    invoke-static {v10}, Lcom/android/server/HdcptestATCmd;->makeDirectory(Ljava/lang/String;)V

    .line 236
    invoke-static {}, Lcom/android/server/HdcptestATCmd;->getHdcp2XPath()Ljava/lang/String;

    move-result-object v4

    .line 237
    .restart local v4    # "hPath":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/redata.bin"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    array-length v11, v1

    invoke-static {v1, v10, v11}, Lcom/android/server/HdcptestATCmd;->writeFile([BLjava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_18

    .line 238
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "OK"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    .line 240
    :cond_18
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "NG"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    .line 247
    .end local v1    # "bArray":[B
    .end local v4    # "hPath":Ljava/lang/String;
    :cond_19
    const/4 v10, 0x6

    aget-object v10, v9, v10

    const/4 v11, 0x6

    aget-object v11, v9, v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {p1, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 249
    const-string/jumbo v10, "HdcptestATCmd"

    const-string/jumbo v11, "AT+HDCPTEST=3,3,Data"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v10, 0x2

    aget-object v10, v5, v10

    if-eqz v10, :cond_1a

    const/4 v10, 0x2

    aget-object v10, v5, v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_1b

    .line 252
    :cond_1a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "NG (NO_DATA)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 265
    :goto_7
    const-string/jumbo v10, "HdcptestATCmd"

    const-string/jumbo v11, "3,3,Data is complete."

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 254
    :cond_1b
    const-string/jumbo v10, "HdcptestATCmd"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Param size : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x2

    aget-object v12, v5, v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-string/jumbo v10, "/system/bin/wvkprov"

    const/4 v11, 0x2

    aget-object v11, v5, v11

    invoke-static {v10, v11}, Lcom/android/server/HdcptestATCmd;->execCmd(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 257
    .restart local v7    # "ret":I
    if-nez v7, :cond_1c

    .line 258
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "OK"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    .line 259
    :cond_1c
    const/16 v10, 0x2c

    if-ne v7, v10, :cond_1d

    .line 260
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "NG (ERROR_EXEC)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    .line 262
    :cond_1d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "NG"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    .line 268
    .end local v7    # "ret":I
    :cond_1e
    const/4 v10, 0x7

    aget-object v10, v9, v10

    const/4 v11, 0x7

    aget-object v11, v9, v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {p1, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_24

    .line 270
    const-string/jumbo v10, "HdcptestATCmd"

    const-string/jumbo v11, "AT+HDCPTEST=3,4,Data"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v7, 0x0

    .line 273
    .restart local v7    # "ret":I
    const/4 v10, 0x2

    aget-object v10, v5, v10

    invoke-static {v10}, Lcom/android/server/HdcptestATCmd;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 275
    .restart local v1    # "bArray":[B
    if-nez v1, :cond_20

    .line 276
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "NG (NO_DATA)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 299
    :cond_1f
    :goto_8
    const-string/jumbo v10, "HdcptestATCmd"

    const-string/jumbo v11, "3,4,Data is complete."

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 277
    :cond_20
    invoke-static {v1}, Lcom/android/server/HdcptestATCmd;->checkMsgIntegrity([B)Z

    move-result v10

    if-nez v10, :cond_21

    .line 278
    const-string/jumbo v10, "HdcptestATCmd"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to check integtiry -size:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "NG (INTEGRITY CHK FAIL)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    .line 281
    :cond_21
    const-string/jumbo v10, "HdcptestATCmd"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "bArray size : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const-string/jumbo v10, "/efs/cpk"

    invoke-static {v10}, Lcom/android/server/HdcptestATCmd;->makeDirectory(Ljava/lang/String;)V

    .line 284
    const-string/jumbo v4, "/efs/cpk/ted2dat.bin"

    .line 285
    .restart local v4    # "hPath":Ljava/lang/String;
    array-length v10, v1

    add-int/lit8 v10, v10, -0x20

    invoke-static {v1, v4, v10}, Lcom/android/server/HdcptestATCmd;->writeFile([BLjava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_1f

    .line 286
    const-string/jumbo v3, "insthkey 2x"

    .line 287
    .restart local v3    # "execParam":Ljava/lang/String;
    const-string/jumbo v10, "/system/bin/dhkprov"

    invoke-static {v10, v3}, Lcom/android/server/HdcptestATCmd;->execCmd(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 289
    if-nez v7, :cond_22

    .line 290
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "OK"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_8

    .line 291
    :cond_22
    const/16 v10, 0x2c

    if-ne v7, v10, :cond_23

    .line 292
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "NG (ERROR_EXEC)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_8

    .line 294
    :cond_23
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "NG"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_8

    .line 303
    .end local v1    # "bArray":[B
    .end local v3    # "execParam":Ljava/lang/String;
    .end local v4    # "hPath":Ljava/lang/String;
    .end local v7    # "ret":I
    :cond_24
    const/16 v10, 0x8

    aget-object v10, v9, v10

    const/16 v11, 0x8

    aget-object v11, v9, v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {p1, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2a

    .line 305
    const-string/jumbo v10, "HdcptestATCmd"

    const-string/jumbo v11, "AT+HDCPTEST=3,5,Data"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 v7, 0x0

    .line 308
    .restart local v7    # "ret":I
    const/4 v10, 0x2

    aget-object v10, v5, v10

    invoke-static {v10}, Lcom/android/server/HdcptestATCmd;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 310
    .restart local v1    # "bArray":[B
    if-nez v1, :cond_26

    .line 311
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "NG (NO_DATA)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 333
    :cond_25
    :goto_9
    const-string/jumbo v10, "HdcptestATCmd"

    const-string/jumbo v11, "3,5,Data is complete."

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 312
    :cond_26
    invoke-static {v1}, Lcom/android/server/HdcptestATCmd;->checkMsgIntegrity([B)Z

    move-result v10

    if-nez v10, :cond_27

    .line 313
    const-string/jumbo v10, "HdcptestATCmd"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to check integtiry -size:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "NG (INTEGRITY CHK FAIL)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_9

    .line 316
    :cond_27
    const-string/jumbo v10, "HdcptestATCmd"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "bArray size : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const-string/jumbo v10, "/efs/cpk"

    invoke-static {v10}, Lcom/android/server/HdcptestATCmd;->makeDirectory(Ljava/lang/String;)V

    .line 319
    const-string/jumbo v4, "/efs/cpk/ted1dat.bin"

    .line 320
    .restart local v4    # "hPath":Ljava/lang/String;
    array-length v10, v1

    add-int/lit8 v10, v10, -0x20

    invoke-static {v1, v4, v10}, Lcom/android/server/HdcptestATCmd;->writeFile([BLjava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_25

    .line 321
    const-string/jumbo v3, "insthkey 1x"

    .line 322
    .restart local v3    # "execParam":Ljava/lang/String;
    const-string/jumbo v10, "/system/bin/dhkprov"

    invoke-static {v10, v3}, Lcom/android/server/HdcptestATCmd;->execCmd(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 324
    if-nez v7, :cond_28

    .line 325
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "OK"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_9

    .line 326
    :cond_28
    const/16 v10, 0x2c

    if-ne v7, v10, :cond_29

    .line 327
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "NG (ERROR_EXEC)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_9

    .line 329
    :cond_29
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "NG"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_9

    .line 336
    .end local v1    # "bArray":[B
    .end local v3    # "execParam":Ljava/lang/String;
    .end local v4    # "hPath":Ljava/lang/String;
    .end local v7    # "ret":I
    :cond_2a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "NG (INVALID_PARAM)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto/16 :goto_1
.end method
