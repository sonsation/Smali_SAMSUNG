.class public Lcom/sec/android/cover/CoverUtils;
.super Ljava/lang/Object;
.source "CoverUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBatteryChargingTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "millis"    # J

    .prologue
    .line 481
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0x1

    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v8

    long-to-int v1, v8

    .line 482
    .local v1, "SECONDS_PER_MINUTE":I
    sget-object v8, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0x1

    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v8

    long-to-int v0, v8

    .line 485
    .local v0, "SECONDS_PER_HOUR":I
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    .line 487
    .local v6, "secondsLong":J
    const/4 v3, 0x0

    .local v3, "hours":I
    const/4 v4, 0x0

    .local v4, "minutes":I
    const/4 v5, 0x0

    .line 489
    .local v5, "seconds":I
    int-to-long v8, v0

    cmp-long v8, v6, v8

    if-ltz v8, :cond_0

    .line 490
    int-to-long v8, v0

    div-long v8, v6, v8

    long-to-int v3, v8

    .line 491
    mul-int v8, v3, v0

    int-to-long v8, v8

    sub-long/2addr v6, v8

    .line 493
    :cond_0
    int-to-long v8, v1

    cmp-long v8, v6, v8

    if-ltz v8, :cond_1

    .line 494
    int-to-long v8, v1

    div-long v8, v6, v8

    long-to-int v4, v8

    .line 495
    mul-int v8, v4, v1

    int-to-long v8, v8

    sub-long/2addr v6, v8

    .line 497
    :cond_1
    long-to-int v5, v6

    .line 499
    if-nez v3, :cond_2

    const/4 v8, 0x2

    if-lt v4, v8, :cond_2

    const/16 v8, 0x1e

    if-lt v5, v8, :cond_2

    .line 500
    add-int/lit8 v4, v4, 0x1

    .line 503
    :cond_2
    if-lez v3, :cond_3

    if-lez v4, :cond_3

    .line 504
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 505
    sget v9, Lcom/sec/android/sviewcover/R$string;->time_format_hour_minute:I

    .line 504
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    .line 505
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    .line 504
    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 537
    .local v2, "formattedTime":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 507
    .end local v2    # "formattedTime":Ljava/lang/String;
    :cond_3
    if-lez v3, :cond_4

    .line 508
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/sec/android/sviewcover/R$string;->time_format_hour:I

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    .line 509
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 508
    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "formattedTime":Ljava/lang/String;
    goto :goto_0

    .line 510
    .end local v2    # "formattedTime":Ljava/lang/String;
    :cond_4
    if-lez v4, :cond_7

    .line 511
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v8, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    .line 512
    const-string/jumbo v9, "el"

    .line 511
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 513
    const/4 v8, 0x1

    if-ne v4, v8, :cond_5

    .line 514
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 515
    sget v9, Lcom/sec/android/sviewcover/R$string;->time_format_minute:I

    .line 514
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    .line 515
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 514
    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "formattedTime":Ljava/lang/String;
    goto :goto_0

    .line 517
    .end local v2    # "formattedTime":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    .line 519
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 518
    const v10, 0x10400a3

    .line 517
    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "formattedTime":Ljava/lang/String;
    goto :goto_0

    .line 522
    .end local v2    # "formattedTime":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 523
    sget v9, Lcom/sec/android/sviewcover/R$string;->time_format_minute:I

    .line 522
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    .line 523
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 522
    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "formattedTime":Ljava/lang/String;
    goto :goto_0

    .line 526
    .end local v2    # "formattedTime":Ljava/lang/String;
    :cond_7
    const/4 v8, 0x1

    if-le v5, v8, :cond_8

    .line 527
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    .line 529
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 528
    const v10, 0x10400a7

    .line 527
    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "formattedTime":Ljava/lang/String;
    goto/16 :goto_0

    .line 531
    .end local v2    # "formattedTime":Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    .line 533
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 532
    const v10, 0x10400a8

    .line 531
    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "formattedTime":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public static getCameraIntent(Z)Landroid/content/Intent;
    .locals 3
    .param p0, "isSecure"    # Z

    .prologue
    .line 383
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 384
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 385
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 386
    const-string/jumbo v1, "com.sec.android.app.camera"

    const-string/jumbo v2, "com.sec.android.app.camera.Camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    if-eqz p0, :cond_0

    .line 388
    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 390
    :cond_0
    const-string/jumbo v1, "covermode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 391
    const-string/jumbo v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    return-object v0
.end method

.method public static getClockFontPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 299
    const-string/jumbo v1, "sview_prefs"

    .line 300
    const/4 v2, 0x0

    .line 299
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 301
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "clock_font_path"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDateFormat(Landroid/content/Context;Z)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "forTTS"    # Z

    .prologue
    .line 419
    if-eqz p1, :cond_0

    sget v4, Lcom/sec/android/sviewcover/R$string;->date_format_for_tts:I

    .line 420
    .local v4, "patternId":I
    :goto_0
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "datePattern":Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 423
    .local v1, "displayTemplate":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 424
    .local v3, "mCurrentLocale":Ljava/util/Locale;
    invoke-static {v3, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 429
    .end local v3    # "mCurrentLocale":Ljava/util/Locale;
    :goto_1
    return-object v1

    .line 419
    .end local v0    # "datePattern":Ljava/lang/String;
    .end local v1    # "displayTemplate":Ljava/lang/String;
    .end local v4    # "patternId":I
    :cond_0
    sget v4, Lcom/sec/android/sviewcover/R$string;->date_format_for_display:I

    goto :goto_0

    .line 425
    .restart local v0    # "datePattern":Ljava/lang/String;
    .restart local v1    # "displayTemplate":Ljava/lang/String;
    .restart local v4    # "patternId":I
    :catch_0
    move-exception v2

    .line 426
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "CoverUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception while getting date format: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getFavoriteContactIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 396
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.contacts.action.SCOVER_FAVORITES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 397
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 398
    return-object v0
.end method

.method public static getPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 167
    const/4 v1, 0x0

    .line 168
    .local v1, "appName":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 171
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 172
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 180
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appName":Ljava/lang/String;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-object v1

    .line 175
    .restart local v1    # "appName":Ljava/lang/String;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .line 176
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "CoverUtils"

    const-string/jumbo v5, "Error while getting app name"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getRegularFavoriteContactIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 402
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.dialer.action.START_FAVORITES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 403
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 404
    return-object v0
.end method

.method public static getResourceArray(Landroid/content/Context;I)[I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "arrayId"    # I

    .prologue
    .line 273
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 274
    .local v0, "ar":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 275
    .local v2, "length":I
    new-array v3, v2, [I

    .line 277
    .local v3, "picArray":[I
    const/4 v1, 0x0

    .local v1, "iIdx":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 278
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v3, v1

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 281
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 283
    return-object v3
.end method

.method public static getTPhoneDialIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 408
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 409
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.action.DIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    return-object v0
.end method

.method public static is24HourModeEnabled(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 433
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 434
    const-string/jumbo v6, "time_12_24"

    const/4 v7, -0x2

    .line 433
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 435
    .local v4, "value":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 436
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v0, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 437
    .local v0, "locale":Ljava/util/Locale;
    const/4 v5, 0x1

    invoke-static {v5, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    .line 439
    .local v1, "natural":Ljava/text/DateFormat;
    instance-of v5, v1, Ljava/text/SimpleDateFormat;

    if-eqz v5, :cond_1

    move-object v3, v1

    .line 440
    check-cast v3, Ljava/text/SimpleDateFormat;

    .line 441
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v3}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    .line 443
    .local v2, "pattern":Ljava/lang/String;
    const/16 v5, 0x48

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_0

    .line 444
    const-string/jumbo v4, "24"

    .line 452
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_0
    const-string/jumbo v5, "24"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    return v5

    .line 446
    .restart local v2    # "pattern":Ljava/lang/String;
    .restart local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_0
    const-string/jumbo v4, "12"

    goto :goto_0

    .line 449
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_1
    const-string/jumbo v4, "12"

    goto :goto_0

    .line 454
    .end local v0    # "locale":Ljava/util/Locale;
    .end local v1    # "natural":Ljava/text/DateFormat;
    :cond_2
    const-string/jumbo v5, "24"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    return v5
.end method

.method public static isEmergencyMode(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 81
    if-nez p0, :cond_0

    .line 82
    return v6

    .line 85
    :cond_0
    const/4 v1, 0x0

    .line 86
    .local v1, "isEmergencyModeEnabled":Z
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    .line 87
    .local v0, "em":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    move-result v1

    .line 92
    .end local v1    # "isEmergencyModeEnabled":Z
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "ultra_powersaving_mode"

    .line 91
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_2

    const/4 v2, 0x1

    .line 94
    .local v2, "isUltraPowerSavingModeEnabled":Z
    :goto_0
    if-nez v1, :cond_3

    .end local v2    # "isUltraPowerSavingModeEnabled":Z
    :goto_1
    return v2

    .line 91
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "isUltraPowerSavingModeEnabled":Z
    goto :goto_0

    :cond_3
    move v2, v3

    .line 94
    goto :goto_1
.end method

.method public static isKidsMode(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 103
    invoke-static {p0}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v2

    .line 104
    const-string/jumbo v3, "kids_home_mode"

    .line 103
    invoke-virtual {v2, v3, v1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isNetworkRoaming(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 53
    if-nez p0, :cond_0

    .line 54
    const-string/jumbo v6, "CoverUtils"

    const-string/jumbo v7, "isNetworkRoaming(), null context"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return v8

    .line 58
    :cond_0
    const-string/jumbo v7, "phone"

    .line 57
    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 59
    .local v3, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v3, :cond_1

    .line 60
    const-string/jumbo v6, "CoverUtils"

    const-string/jumbo v7, "isNetworkRoaming(), TelephonyManager is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return v8

    .line 63
    :cond_1
    const/4 v1, 0x0

    .line 64
    .local v1, "isNetworkRoaming":Z
    const/4 v2, 0x0

    .line 65
    .local v2, "isNetworkRoamingForMultiSIM":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    .line 66
    .local v4, "phoneCount":I
    if-le v4, v6, :cond_4

    .line 67
    const/4 v5, 0x0

    .end local v2    # "isNetworkRoamingForMultiSIM":Z
    .local v5, "simSlotNum":I
    :goto_0
    if-ge v5, v4, :cond_5

    .line 68
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 69
    .local v0, "SIM_ID":[I
    if-eqz v0, :cond_2

    .line 70
    if-nez v2, :cond_3

    aget v7, v0, v8

    invoke-virtual {v3, v7}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v2

    .line 67
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 70
    :cond_3
    const/4 v2, 0x1

    .restart local v2    # "isNetworkRoamingForMultiSIM":Z
    goto :goto_1

    .line 74
    .end local v0    # "SIM_ID":[I
    .end local v5    # "simSlotNum":I
    :cond_4
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    .line 77
    .end local v1    # "isNetworkRoaming":Z
    .end local v2    # "isNetworkRoamingForMultiSIM":Z
    :cond_5
    if-nez v1, :cond_6

    :goto_2
    return v2

    :cond_6
    move v2, v6

    goto :goto_2
.end method

.method public static isOperatorLocked(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 218
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 219
    .local v0, "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockPlusEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled(I)Z

    move-result v1

    .line 219
    if-eqz v1, :cond_1

    .line 221
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 224
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetPackage"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 144
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 145
    .local v2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "packageInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 146
    .local v0, "packageInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 147
    const/4 v4, 0x1

    return v4

    .line 150
    .end local v0    # "packageInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    return v5
.end method

.method public static isSPenBlackMemoEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v4, -0x2

    const/4 v1, 0x0

    .line 546
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 547
    const-string/jumbo v3, "action_memo_on_off_screen"

    .line 546
    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_0

    .line 548
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 549
    const-string/jumbo v3, "screen_off_memo"

    .line 548
    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_1

    .line 546
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 548
    goto :goto_0
.end method

.method public static isSetupWizardRunning(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 198
    const-string/jumbo v1, "device_provisioned"

    .line 197
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 199
    const/4 v0, 0x1

    return v0

    .line 201
    :cond_0
    return v2
.end method

.method public static isTPhoneEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 118
    invoke-static {p0}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v2

    .line 119
    const-string/jumbo v3, "skt_phone20_settings"

    .line 118
    invoke-virtual {v2, v3, v1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isUsimDownloadTopActivity(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 458
    const-string/jumbo v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 459
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 460
    .local v1, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v6, :cond_0

    .line 461
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 462
    .local v2, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.android.phone.UsimDownload"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 463
    return v6

    .line 466
    .end local v2    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_0
    return v5
.end method

.method public static reportContextualSurvey(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    .line 362
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 363
    :cond_0
    return-void

    .line 362
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 366
    sget-boolean v2, Lcom/sec/android/cover/CoverRune;->FEATURE_SUPPORT_CONTEXTUAL_SURVEY:Z

    if-nez v2, :cond_2

    .line 367
    return-void

    .line 370
    :cond_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 371
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "app_id"

    const-string/jumbo v3, "com.sec.android.cover"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string/jumbo v2, "feature"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 375
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 377
    const-string/jumbo v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 361
    return-void
.end method

.method public static setClockFontPath(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fontPath"    # Ljava/lang/String;

    .prologue
    .line 288
    if-eqz p1, :cond_0

    .line 289
    const-string/jumbo v2, "sview_prefs"

    .line 290
    const/4 v3, 0x0

    .line 289
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 292
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 293
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "clock_font_path"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 294
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 287
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method
