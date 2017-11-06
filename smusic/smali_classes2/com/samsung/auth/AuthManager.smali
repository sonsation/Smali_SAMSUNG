.class public Lcom/samsung/auth/AuthManager;
.super Ljava/lang/Object;
.source "AuthManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/auth/AuthManager$AccessType;
    }
.end annotation


# static fields
.field private static ad:Z

.field private static iv:Z

.field private static mContext:Landroid/content/Context;

.field private static rd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;

    .line 21
    sput-boolean v1, Lcom/samsung/auth/AuthManager;->ad:Z

    .line 22
    sput-boolean v1, Lcom/samsung/auth/AuthManager;->rd:Z

    .line 23
    sput-boolean v1, Lcom/samsung/auth/AuthManager;->iv:Z

    return-void
.end method

.method private static DCNMS(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/auth/LocaleFontException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x1

    .line 348
    const/4 v0, 0x3

    .line 350
    .local v0, "p0":I
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v1

    .line 352
    .local v1, "p1":[B
    :goto_0
    invoke-static {}, Lcom/samsung/auth/AuthManager;->Prepare()[B

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v2

    .line 353
    .local v2, "p2":[B
    sget-object v10, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v3

    .line 354
    .local v3, "p3":[B
    sget-object v10, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v4

    .line 355
    .local v4, "p4":[B
    const/4 v5, 0x0

    .line 356
    .local v5, "p5":I
    const-wide/16 v6, 0x0

    .line 358
    .local v6, "p6":J
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    mul-double/2addr v10, v12

    double-to-int v8, v10

    .line 359
    .local v8, "p7":I
    const/4 v9, 0x0

    .line 360
    .local v9, "ret":[B
    packed-switch v8, :pswitch_data_0

    .line 369
    invoke-static/range {v0 .. v7}, Lcom/samsung/auth/Locale;->f3(I[B[B[B[BIJ)[B

    move-result-object v9

    .line 372
    :goto_1
    if-eqz v9, :cond_4

    .line 373
    invoke-static {v9}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v9

    .line 375
    array-length v10, v9

    add-int/lit8 v10, v10, -0x1

    aget-byte v10, v9, v10

    rem-int/lit8 v10, v10, 0x7

    if-ne v10, v14, :cond_2

    .line 376
    sput-boolean v14, Lcom/samsung/auth/AuthManager;->ad:Z

    .line 382
    :cond_0
    :goto_2
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    array-length v12, v9

    add-int/lit8 v12, v12, -0x1

    invoke-direct {v10, v9, v11, v12}, Ljava/lang/String;-><init>([BII)V

    .line 385
    :goto_3
    return-object v10

    .line 351
    .end local v1    # "p1":[B
    .end local v2    # "p2":[B
    .end local v3    # "p3":[B
    .end local v4    # "p4":[B
    .end local v5    # "p5":I
    .end local v6    # "p6":J
    .end local v8    # "p7":I
    .end local v9    # "ret":[B
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "p1":[B
    goto :goto_0

    .line 363
    .restart local v2    # "p2":[B
    .restart local v3    # "p3":[B
    .restart local v4    # "p4":[B
    .restart local v5    # "p5":I
    .restart local v6    # "p6":J
    .restart local v8    # "p7":I
    .restart local v9    # "ret":[B
    :pswitch_0
    invoke-static/range {v0 .. v7}, Lcom/samsung/auth/Locale;->f1(I[B[B[B[BIJ)[B

    move-result-object v9

    .line 364
    goto :goto_1

    .line 366
    :pswitch_1
    invoke-static/range {v0 .. v7}, Lcom/samsung/auth/Locale;->f2(I[B[B[B[BIJ)[B

    move-result-object v9

    .line 367
    goto :goto_1

    .line 377
    :cond_2
    array-length v10, v9

    add-int/lit8 v10, v10, -0x1

    aget-byte v10, v9, v10

    rem-int/lit8 v10, v10, 0x7

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 378
    sput-boolean v14, Lcom/samsung/auth/AuthManager;->iv:Z

    goto :goto_2

    .line 379
    :cond_3
    array-length v10, v9

    add-int/lit8 v10, v10, -0x1

    aget-byte v10, v9, v10

    rem-int/lit8 v10, v10, 0x7

    const/4 v11, 0x3

    if-ne v10, v11, :cond_0

    .line 380
    sput-boolean v14, Lcom/samsung/auth/AuthManager;->rd:Z

    goto :goto_2

    .line 385
    :cond_4
    const-string v10, ""

    goto :goto_3

    .line 360
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static ECDeviceIdS(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/auth/LocaleFontException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x1

    .line 432
    const/4 v0, 0x5

    .line 434
    .local v0, "p0":I
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v1

    .line 436
    .local v1, "p1":[B
    :goto_0
    invoke-static {}, Lcom/samsung/auth/AuthManager;->Prepare()[B

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v2

    .line 437
    .local v2, "p2":[B
    sget-object v10, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v3

    .line 438
    .local v3, "p3":[B
    sget-object v10, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v4

    .line 439
    .local v4, "p4":[B
    const/4 v5, 0x0

    .line 440
    .local v5, "p5":I
    const-wide/16 v6, 0x0

    .line 442
    .local v6, "p6":J
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    mul-double/2addr v10, v12

    double-to-int v8, v10

    .line 443
    .local v8, "p7":I
    const/4 v9, 0x0

    .line 444
    .local v9, "ret":[B
    packed-switch v8, :pswitch_data_0

    .line 453
    invoke-static/range {v0 .. v7}, Lcom/samsung/auth/Locale;->f3(I[B[B[B[BIJ)[B

    move-result-object v9

    .line 456
    :goto_1
    if-eqz v9, :cond_4

    .line 457
    invoke-static {v9}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v9

    .line 459
    array-length v10, v9

    add-int/lit8 v10, v10, -0x1

    aget-byte v10, v9, v10

    rem-int/lit8 v10, v10, 0x7

    if-ne v10, v14, :cond_2

    .line 460
    sput-boolean v14, Lcom/samsung/auth/AuthManager;->ad:Z

    .line 466
    :cond_0
    :goto_2
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    array-length v12, v9

    add-int/lit8 v12, v12, -0x1

    invoke-direct {v10, v9, v11, v12}, Ljava/lang/String;-><init>([BII)V

    .line 469
    :goto_3
    return-object v10

    .line 435
    .end local v1    # "p1":[B
    .end local v2    # "p2":[B
    .end local v3    # "p3":[B
    .end local v4    # "p4":[B
    .end local v5    # "p5":I
    .end local v6    # "p6":J
    .end local v8    # "p7":I
    .end local v9    # "ret":[B
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "p1":[B
    goto :goto_0

    .line 447
    .restart local v2    # "p2":[B
    .restart local v3    # "p3":[B
    .restart local v4    # "p4":[B
    .restart local v5    # "p5":I
    .restart local v6    # "p6":J
    .restart local v8    # "p7":I
    .restart local v9    # "ret":[B
    :pswitch_0
    invoke-static/range {v0 .. v7}, Lcom/samsung/auth/Locale;->f1(I[B[B[B[BIJ)[B

    move-result-object v9

    .line 448
    goto :goto_1

    .line 450
    :pswitch_1
    invoke-static/range {v0 .. v7}, Lcom/samsung/auth/Locale;->f2(I[B[B[B[BIJ)[B

    move-result-object v9

    .line 451
    goto :goto_1

    .line 461
    :cond_2
    array-length v10, v9

    add-int/lit8 v10, v10, -0x1

    aget-byte v10, v9, v10

    rem-int/lit8 v10, v10, 0x7

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 462
    sput-boolean v14, Lcom/samsung/auth/AuthManager;->iv:Z

    goto :goto_2

    .line 463
    :cond_3
    array-length v10, v9

    add-int/lit8 v10, v10, -0x1

    aget-byte v10, v9, v10

    rem-int/lit8 v10, v10, 0x7

    const/4 v11, 0x3

    if-ne v10, v11, :cond_0

    .line 464
    sput-boolean v14, Lcom/samsung/auth/AuthManager;->rd:Z

    goto :goto_2

    .line 469
    :cond_4
    const-string v10, ""

    goto :goto_3

    .line 444
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static ECNMS(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/auth/LocaleFontException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x1

    .line 390
    const/4 v0, 0x4

    .line 392
    .local v0, "p0":I
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v1

    .line 394
    .local v1, "p1":[B
    :goto_0
    invoke-static {}, Lcom/samsung/auth/AuthManager;->Prepare()[B

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v2

    .line 395
    .local v2, "p2":[B
    sget-object v10, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v3

    .line 396
    .local v3, "p3":[B
    sget-object v10, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v4

    .line 397
    .local v4, "p4":[B
    const/4 v5, 0x0

    .line 398
    .local v5, "p5":I
    const-wide/16 v6, 0x0

    .line 399
    .local v6, "p6":J
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    mul-double/2addr v10, v12

    double-to-int v8, v10

    .line 401
    .local v8, "p7":I
    const/4 v9, 0x0

    .line 402
    .local v9, "ret":[B
    packed-switch v8, :pswitch_data_0

    .line 411
    invoke-static/range {v0 .. v7}, Lcom/samsung/auth/Locale;->f3(I[B[B[B[BIJ)[B

    move-result-object v9

    .line 414
    :goto_1
    if-eqz v9, :cond_4

    .line 415
    invoke-static {v9}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v9

    .line 417
    array-length v10, v9

    add-int/lit8 v10, v10, -0x1

    aget-byte v10, v9, v10

    rem-int/lit8 v10, v10, 0x7

    if-ne v10, v14, :cond_2

    .line 418
    sput-boolean v14, Lcom/samsung/auth/AuthManager;->ad:Z

    .line 424
    :cond_0
    :goto_2
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    array-length v12, v9

    add-int/lit8 v12, v12, -0x1

    invoke-direct {v10, v9, v11, v12}, Ljava/lang/String;-><init>([BII)V

    .line 427
    :goto_3
    return-object v10

    .line 393
    .end local v1    # "p1":[B
    .end local v2    # "p2":[B
    .end local v3    # "p3":[B
    .end local v4    # "p4":[B
    .end local v5    # "p5":I
    .end local v6    # "p6":J
    .end local v8    # "p7":I
    .end local v9    # "ret":[B
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "p1":[B
    goto :goto_0

    .line 405
    .restart local v2    # "p2":[B
    .restart local v3    # "p3":[B
    .restart local v4    # "p4":[B
    .restart local v5    # "p5":I
    .restart local v6    # "p6":J
    .restart local v8    # "p7":I
    .restart local v9    # "ret":[B
    :pswitch_0
    invoke-static/range {v0 .. v7}, Lcom/samsung/auth/Locale;->f1(I[B[B[B[BIJ)[B

    move-result-object v9

    .line 406
    goto :goto_1

    .line 408
    :pswitch_1
    invoke-static/range {v0 .. v7}, Lcom/samsung/auth/Locale;->f2(I[B[B[B[BIJ)[B

    move-result-object v9

    .line 409
    goto :goto_1

    .line 419
    :cond_2
    array-length v10, v9

    add-int/lit8 v10, v10, -0x1

    aget-byte v10, v9, v10

    rem-int/lit8 v10, v10, 0x7

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 420
    sput-boolean v14, Lcom/samsung/auth/AuthManager;->iv:Z

    goto :goto_2

    .line 421
    :cond_3
    array-length v10, v9

    add-int/lit8 v10, v10, -0x1

    aget-byte v10, v9, v10

    rem-int/lit8 v10, v10, 0x7

    const/4 v11, 0x3

    if-ne v10, v11, :cond_0

    .line 422
    sput-boolean v14, Lcom/samsung/auth/AuthManager;->rd:Z

    goto :goto_2

    .line 427
    :cond_4
    const-string v10, ""

    goto :goto_3

    .line 402
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static GetAccessKey(Landroid/content/Context;Lcom/samsung/auth/AuthManager$AccessType;JLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "accessType"    # Lcom/samsung/auth/AuthManager$AccessType;
    .param p2, "secureTime"    # J
    .param p4, "userID"    # Ljava/lang/String;

    .prologue
    .line 295
    invoke-static {p1}, Lcom/samsung/auth/AuthManager;->getIntegerAccessType(Lcom/samsung/auth/AuthManager$AccessType;)I

    move-result v1

    .line 296
    .local v1, "integerAccessType":I
    const/4 v0, 0x0

    .line 297
    .local v0, "encMsg":Ljava/lang/String;
    invoke-static {v1, p2, p3, p4}, Lcom/samsung/auth/AuthManager;->GetAccessKeyS(IJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    return-object v0
.end method

.method public static declared-synchronized GetAccessKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "UtcTypeSecureTime"    # Ljava/lang/String;
    .param p2, "userID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 42
    const-class v5, Lcom/samsung/auth/AuthManager;

    monitor-enter v5

    const-wide/16 v2, 0x0

    .line 43
    .local v2, "secureTimeTickCount":J
    :try_start_0
    invoke-static {p1}, Lcom/samsung/auth/AuthManager;->convertTimeFormatToTickCount(Ljava/lang/String;)J

    move-result-wide v2

    .line 44
    sget-object v0, Lcom/samsung/auth/AuthManager$AccessType;->MusicRadio:Lcom/samsung/auth/AuthManager$AccessType;

    .line 45
    .local v0, "accessType":Lcom/samsung/auth/AuthManager$AccessType;
    invoke-static {p0, v0, v2, v3, p2}, Lcom/samsung/auth/AuthManager;->GetAccessKey(Landroid/content/Context;Lcom/samsung/auth/AuthManager$AccessType;JLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 46
    .local v1, "ret":Ljava/lang/String;
    monitor-exit v5

    return-object v1

    .line 42
    .end local v0    # "accessType":Lcom/samsung/auth/AuthManager$AccessType;
    .end local v1    # "ret":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private static GetAccessKeyS(IJLjava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p0, "a1"    # I
    .param p1, "a2"    # J
    .param p3, "a3"    # Ljava/lang/String;

    .prologue
    .line 303
    const/4 v0, 0x2

    .line 305
    .local v0, "p0":I
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v1

    .line 307
    .local v1, "p1":[B
    :goto_0
    invoke-static {}, Lcom/samsung/auth/AuthManager;->Prepare()[B

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v2

    .line 308
    .local v2, "p2":[B
    sget-object v11, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v3

    .line 309
    .local v3, "p3":[B
    sget-object v11, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v4

    .line 310
    .local v4, "p4":[B
    move/from16 v5, p0

    .line 311
    .local v5, "p5":I
    move-wide/from16 v6, p1

    .line 313
    .local v6, "p6":J
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    mul-double/2addr v12, v14

    double-to-int v9, v12

    .line 314
    .local v9, "p7":I
    const/4 v10, 0x0

    .line 316
    .local v10, "ret":[B
    packed-switch v9, :pswitch_data_0

    .line 325
    :try_start_0
    invoke-static/range {v0 .. v7}, Lcom/samsung/auth/Locale;->f3(I[B[B[B[BIJ)[B
    :try_end_0
    .catch Lcom/samsung/auth/LocaleFontException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 331
    :goto_1
    if-eqz v10, :cond_4

    .line 332
    invoke-static {v10}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v10

    .line 334
    array-length v11, v10

    add-int/lit8 v11, v11, -0x1

    aget-byte v11, v10, v11

    rem-int/lit8 v11, v11, 0x7

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 335
    const/4 v11, 0x1

    sput-boolean v11, Lcom/samsung/auth/AuthManager;->ad:Z

    .line 341
    :cond_0
    :goto_2
    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x0

    array-length v13, v10

    add-int/lit8 v13, v13, -0x1

    invoke-direct {v11, v10, v12, v13}, Ljava/lang/String;-><init>([BII)V

    .line 343
    :goto_3
    return-object v11

    .line 306
    .end local v1    # "p1":[B
    .end local v2    # "p2":[B
    .end local v3    # "p3":[B
    .end local v4    # "p4":[B
    .end local v5    # "p5":I
    .end local v6    # "p6":J
    .end local v9    # "p7":I
    .end local v10    # "ret":[B
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "p1":[B
    goto :goto_0

    .line 319
    .restart local v2    # "p2":[B
    .restart local v3    # "p3":[B
    .restart local v4    # "p4":[B
    .restart local v5    # "p5":I
    .restart local v6    # "p6":J
    .restart local v9    # "p7":I
    .restart local v10    # "ret":[B
    :pswitch_0
    :try_start_1
    invoke-static/range {v0 .. v7}, Lcom/samsung/auth/Locale;->f1(I[B[B[B[BIJ)[B

    move-result-object v10

    .line 320
    goto :goto_1

    .line 322
    :pswitch_1
    invoke-static/range {v0 .. v7}, Lcom/samsung/auth/Locale;->f2(I[B[B[B[BIJ)[B
    :try_end_1
    .catch Lcom/samsung/auth/LocaleFontException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    .line 323
    goto :goto_1

    .line 327
    :catch_0
    move-exception v8

    .line 329
    .local v8, "e":Lcom/samsung/auth/LocaleFontException;
    invoke-virtual {v8}, Lcom/samsung/auth/LocaleFontException;->printStackTrace()V

    goto :goto_1

    .line 336
    .end local v8    # "e":Lcom/samsung/auth/LocaleFontException;
    :cond_2
    array-length v11, v10

    add-int/lit8 v11, v11, -0x1

    aget-byte v11, v10, v11

    rem-int/lit8 v11, v11, 0x7

    const/4 v12, 0x2

    if-ne v11, v12, :cond_3

    .line 337
    const/4 v11, 0x1

    sput-boolean v11, Lcom/samsung/auth/AuthManager;->iv:Z

    goto :goto_2

    .line 338
    :cond_3
    array-length v11, v10

    add-int/lit8 v11, v11, -0x1

    aget-byte v11, v10, v11

    rem-int/lit8 v11, v11, 0x7

    const/4 v12, 0x3

    if-ne v11, v12, :cond_0

    .line 339
    const/4 v11, 0x1

    sput-boolean v11, Lcom/samsung/auth/AuthManager;->rd:Z

    goto :goto_2

    .line 343
    :cond_4
    const-string v11, ""

    goto :goto_3

    .line 316
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static Prepare()[B
    .locals 6

    .prologue
    .line 280
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 281
    .local v0, "generator":Ljava/util/Random;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .local v3, "randomStringBuilder":Ljava/lang/StringBuilder;
    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 283
    .local v2, "randomLength":I
    if-nez v2, :cond_0

    const/16 v2, 0xa

    .line 285
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 287
    const/16 v5, 0x60

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x20

    int-to-char v4, v5

    .line 288
    .local v4, "tempChar":C
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 285
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    .end local v4    # "tempChar":C
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    return-object v5
.end method

.method private static Resolver([B)[B
    .locals 4
    .param p0, "input"    # [B

    .prologue
    .line 268
    const v2, 0x6fea9814

    .line 269
    .local v2, "p":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 271
    rem-int/lit8 v3, v0, 0x4

    mul-int/lit8 v3, v3, 0x8

    shr-int v1, v2, v3

    .line 272
    .local v1, "k":I
    and-int/lit16 v1, v1, 0xff

    .line 273
    aget-byte v3, p0, v0

    xor-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, p0, v0

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    .end local v1    # "k":I
    :cond_0
    return-object p0
.end method

.method public static declared-synchronized Uninitialize()V
    .locals 16

    .prologue
    .line 208
    const-class v11, Lcom/samsung/auth/AuthManager;

    monitor-enter v11

    const/4 v0, 0x1

    .line 209
    .local v0, "p0":I
    :try_start_0
    invoke-static {}, Lcom/samsung/auth/AuthManager;->Prepare()[B

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v1

    .line 210
    .local v1, "p1":[B
    invoke-static {}, Lcom/samsung/auth/AuthManager;->Prepare()[B

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v2

    .line 211
    .local v2, "p2":[B
    sget-object v10, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v3

    .line 212
    .local v3, "p3":[B
    sget-object v10, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v4

    .line 213
    .local v4, "p4":[B
    const/4 v5, 0x0

    .line 214
    .local v5, "p5":I
    const-wide/16 v6, 0x0

    .line 216
    .local v6, "p6":J
    invoke-static {}, Ljava/lang/Math;->random()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v12

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    mul-double/2addr v12, v14

    double-to-int v9, v12

    .line 218
    .local v9, "p7":I
    packed-switch v9, :pswitch_data_0

    .line 227
    :try_start_1
    invoke-static/range {v0 .. v7}, Lcom/samsung/auth/Locale;->f3(I[B[B[B[BIJ)[B
    :try_end_1
    .catch Lcom/samsung/auth/LocaleFontException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    :goto_0
    monitor-exit v11

    return-void

    .line 221
    :pswitch_0
    :try_start_2
    invoke-static/range {v0 .. v7}, Lcom/samsung/auth/Locale;->f1(I[B[B[B[BIJ)[B
    :try_end_2
    .catch Lcom/samsung/auth/LocaleFontException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 229
    :catch_0
    move-exception v8

    .line 231
    .local v8, "e":Lcom/samsung/auth/LocaleFontException;
    :try_start_3
    invoke-virtual {v8}, Lcom/samsung/auth/LocaleFontException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 208
    .end local v1    # "p1":[B
    .end local v2    # "p2":[B
    .end local v3    # "p3":[B
    .end local v4    # "p4":[B
    .end local v5    # "p5":I
    .end local v6    # "p6":J
    .end local v8    # "e":Lcom/samsung/auth/LocaleFontException;
    .end local v9    # "p7":I
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    .line 224
    .restart local v1    # "p1":[B
    .restart local v2    # "p2":[B
    .restart local v3    # "p3":[B
    .restart local v4    # "p4":[B
    .restart local v5    # "p5":I
    .restart local v6    # "p6":J
    .restart local v9    # "p7":I
    :pswitch_1
    :try_start_4
    invoke-static/range {v0 .. v7}, Lcom/samsung/auth/Locale;->f2(I[B[B[B[BIJ)[B
    :try_end_4
    .catch Lcom/samsung/auth/LocaleFontException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static convertTimeFormatToTickCount(Ljava/lang/String;)J
    .locals 8
    .param p0, "secureTimeStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 236
    const-wide/16 v4, 0x0

    .line 237
    .local v4, "tickCount":J
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    .line 238
    .local v1, "pattern":Ljava/lang/String;
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 239
    .local v0, "formatter":Ljava/text/SimpleDateFormat;
    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 240
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 241
    .local v2, "secureTimeDate":Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 242
    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 243
    return-wide v4
.end method

.method public static declared-synchronized getDecoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 102
    const-class v3, Lcom/samsung/auth/AuthManager;

    monitor-enter v3

    const/4 v1, 0x0

    .line 103
    .local v1, "encMsg":Ljava/lang/String;
    :try_start_0
    sget-object v4, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    move-object p0, v2

    .line 119
    .end local p0    # "input":Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit v3

    return-object p0

    .line 105
    .restart local p0    # "input":Ljava/lang/String;
    :cond_1
    if-eqz p0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    :try_start_2
    invoke-static {p0}, Lcom/samsung/auth/AuthManager;->DCNMS(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lcom/samsung/auth/LocaleFontException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 116
    if-eqz v1, :cond_2

    if-eqz v1, :cond_3

    :try_start_3
    const-string v4, "Fail"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move-object p0, v2

    .line 117
    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Lcom/samsung/auth/LocaleFontException;
    invoke-virtual {v0}, Lcom/samsung/auth/LocaleFontException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object p0, v2

    .line 113
    goto :goto_0

    .end local v0    # "e":Lcom/samsung/auth/LocaleFontException;
    :cond_3
    move-object p0, v1

    .line 119
    goto :goto_0

    .line 102
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized getEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 124
    const-class v3, Lcom/samsung/auth/AuthManager;

    monitor-enter v3

    const/4 v1, 0x0

    .line 125
    .local v1, "encMsg":Ljava/lang/String;
    :try_start_0
    sget-object v4, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    move-object p0, v2

    .line 141
    .end local p0    # "input":Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit v3

    return-object p0

    .line 127
    .restart local p0    # "input":Ljava/lang/String;
    :cond_1
    if-eqz p0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    :try_start_2
    invoke-static {p0}, Lcom/samsung/auth/AuthManager;->ECNMS(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lcom/samsung/auth/LocaleFontException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 138
    if-eqz v1, :cond_2

    if-eqz v1, :cond_3

    :try_start_3
    const-string v4, "Fail"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move-object p0, v2

    .line 139
    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Lcom/samsung/auth/LocaleFontException;
    invoke-virtual {v0}, Lcom/samsung/auth/LocaleFontException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object p0, v2

    .line 135
    goto :goto_0

    .end local v0    # "e":Lcom/samsung/auth/LocaleFontException;
    :cond_3
    move-object p0, v1

    .line 141
    goto :goto_0

    .line 124
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized getEncodingDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 146
    const-class v3, Lcom/samsung/auth/AuthManager;

    monitor-enter v3

    const/4 v1, 0x0

    .line 147
    .local v1, "encMsg":Ljava/lang/String;
    :try_start_0
    sget-object v4, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    move-object p0, v2

    .line 164
    .end local p0    # "input":Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit v3

    return-object p0

    .line 149
    .restart local p0    # "input":Ljava/lang/String;
    :cond_1
    if-eqz p0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 154
    :try_start_2
    invoke-static {p0}, Lcom/samsung/auth/AuthManager;->ECDeviceIdS(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lcom/samsung/auth/LocaleFontException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 160
    :goto_1
    if-eqz v1, :cond_2

    if-eqz v1, :cond_3

    :try_start_3
    const-string v4, "Fail"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move-object p0, v2

    .line 161
    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Lcom/samsung/auth/LocaleFontException;
    invoke-virtual {v0}, Lcom/samsung/auth/LocaleFontException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 146
    .end local v0    # "e":Lcom/samsung/auth/LocaleFontException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_3
    move-object p0, v1

    .line 164
    goto :goto_0
.end method

.method private static getIntegerAccessType(Lcom/samsung/auth/AuthManager$AccessType;)I
    .locals 3
    .param p0, "accessType"    # Lcom/samsung/auth/AuthManager$AccessType;

    .prologue
    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, "integerAccessType":I
    sget-object v1, Lcom/samsung/auth/AuthManager$1;->$SwitchMap$com$samsung$auth$AuthManager$AccessType:[I

    invoke-virtual {p0}, Lcom/samsung/auth/AuthManager$AccessType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 262
    :goto_0
    return v0

    .line 250
    :pswitch_0
    const/4 v0, 0x0

    .line 251
    goto :goto_0

    .line 253
    :pswitch_1
    const/4 v0, 0x1

    .line 254
    goto :goto_0

    .line 256
    :pswitch_2
    const/4 v0, 0x2

    .line 257
    goto :goto_0

    .line 259
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static declared-synchronized getStatus()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 30
    const-class v1, Lcom/samsung/auth/AuthManager;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Lcom/samsung/auth/AuthManager;->ad:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v0, :cond_0

    .line 37
    :goto_0
    monitor-exit v1

    return v0

    .line 32
    :cond_0
    :try_start_1
    sget-boolean v2, Lcom/samsung/auth/AuthManager;->iv:Z

    if-ne v2, v0, :cond_1

    .line 33
    const/4 v0, 0x2

    goto :goto_0

    .line 34
    :cond_1
    sget-boolean v2, Lcom/samsung/auth/AuthManager;->rd:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v0, :cond_2

    .line 35
    const/4 v0, 0x3

    goto :goto_0

    .line 37
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;)I
    .locals 18
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/auth/LocaleFontException;
        }
    .end annotation

    .prologue
    .line 169
    const-class v12, Lcom/samsung/auth/AuthManager;

    monitor-enter v12

    :try_start_0
    sput-object p0, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "p0":I
    invoke-static/range {p0 .. p0}, Lcom/samsung/auth/SDRMUtil;->GetAuthDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v1

    .line 173
    .local v1, "p1":[B
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v2

    .line 174
    .local v2, "p2":[B
    sget-object v11, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v3

    .line 175
    .local v3, "p3":[B
    sget-object v11, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v4

    .line 176
    .local v4, "p4":[B
    const/4 v5, 0x0

    .line 177
    .local v5, "p5":I
    const-wide/16 v6, 0x0

    .line 178
    .local v6, "p6":J
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v14

    const-wide/high16 v16, 0x4008000000000000L    # 3.0

    mul-double v14, v14, v16

    double-to-int v9, v14

    .line 179
    .local v9, "p7":I
    const/4 v10, 0x0

    .line 180
    .local v10, "ret":[B
    const/4 v8, 0x0

    .line 182
    .local v8, "comp":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/samsung/auth/Locale;->setApplicationInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    packed-switch v9, :pswitch_data_0

    .line 193
    invoke-static/range {v0 .. v7}, Lcom/samsung/auth/Locale;->f3(I[B[B[B[BIJ)[B

    move-result-object v10

    .line 196
    :goto_0
    if-eqz v10, :cond_0

    .line 197
    invoke-static {v10}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v10

    .line 198
    new-instance v8, Ljava/lang/String;

    .end local v8    # "comp":Ljava/lang/String;
    const/4 v11, 0x0

    array-length v13, v10

    invoke-direct {v8, v10, v11, v13}, Ljava/lang/String;-><init>([BII)V

    .line 202
    .restart local v8    # "comp":Ljava/lang/String;
    :cond_0
    if-eqz v8, :cond_1

    const-string v11, "Success"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x0

    .line 203
    :goto_1
    monitor-exit v12

    return v11

    .line 187
    :pswitch_0
    :try_start_1
    invoke-static/range {v0 .. v7}, Lcom/samsung/auth/Locale;->f1(I[B[B[B[BIJ)[B

    move-result-object v10

    .line 188
    goto :goto_0

    .line 190
    :pswitch_1
    invoke-static/range {v0 .. v7}, Lcom/samsung/auth/Locale;->f2(I[B[B[B[BIJ)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    .line 191
    goto :goto_0

    .line 203
    :cond_1
    const/4 v11, 0x1

    goto :goto_1

    .line 169
    .end local v0    # "p0":I
    .end local v1    # "p1":[B
    .end local v2    # "p2":[B
    .end local v3    # "p3":[B
    .end local v4    # "p4":[B
    .end local v5    # "p5":I
    .end local v6    # "p6":J
    .end local v8    # "comp":Ljava/lang/String;
    .end local v9    # "p7":I
    .end local v10    # "ret":[B
    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
