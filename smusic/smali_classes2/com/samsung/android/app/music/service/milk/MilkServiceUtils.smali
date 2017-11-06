.class public final Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;
.super Ljava/lang/Object;
.source "MilkServiceUtils.java"


# static fields
.field public static final DEFAULT_USER:Ljava/lang/String; = "NOLOGINUSR"

.field private static final LOG_TAG:Ljava/lang/String; = "MilkServiceUtils"

.field public static final PACKAGE_NAME_GALAXY_APPS:Ljava/lang/String; = "com.sec.android.app.samsungapps"

.field public static final PACKAGE_NAME_GOOGLE_PLAY:Ljava/lang/String; = "com.android.vending"

.field public static final SONG_EXTRAS_ADULT_YN:I = 0x0

.field public static final SONG_EXTRAS_EXPLICIT:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccessToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/app/music/common/util/AES;->getAccessToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->getEncodedUrlParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAccessTokenExt(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->getAccessToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "token":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/auth/AuthManager;->getStatus()I

    move-result v0

    .line 63
    .local v0, "code":I
    if-eqz v0, :cond_0

    .line 64
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 66
    .end local v1    # "token":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public static getAllDownloadBasketIds(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 364
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 365
    .local v7, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$DownloadBasket;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "track_id"

    aput-object v0, v2, v4

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 367
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 372
    :cond_1
    if-eqz v6, :cond_2

    if-eqz v3, :cond_3

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 373
    :cond_2
    :goto_0
    return-object v7

    .line 372
    :catch_0
    move-exception v0

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 365
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 372
    :catchall_0
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_1
    if-eqz v6, :cond_4

    if-eqz v3, :cond_5

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :goto_2
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private static getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 304
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 305
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 307
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 313
    :goto_0
    return-object v1

    .line 308
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 331
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 332
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 334
    .local v2, "label":Ljava/lang/String;
    const/16 v4, 0x2000

    .line 335
    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 336
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 342
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v2

    .line 337
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getBasketALCCount(Landroid/content/Context;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 377
    const/4 v7, 0x0

    .line 379
    .local v7, "count":I
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$DownloadBasket;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "count(*) AS count"

    aput-object v0, v2, v8

    const-string/jumbo v3, "status_code=?"

    new-array v4, v4, [Ljava/lang/String;

    const-string v0, "03"

    aput-object v0, v4, v8

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 382
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 383
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v7

    .line 385
    .end local v7    # "count":I
    if-eqz v6, :cond_0

    if-eqz v5, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 386
    :cond_0
    :goto_0
    return v7

    .line 385
    :catch_0
    move-exception v0

    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .restart local v7    # "count":I
    :cond_2
    if-eqz v6, :cond_0

    if-eqz v5, :cond_3

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 378
    :catch_2
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 385
    :catchall_0
    move-exception v1

    move-object v5, v0

    move-object v0, v1

    :goto_1
    if-eqz v6, :cond_4

    if-eqz v5, :cond_5

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_4
    :goto_2
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v5, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public static getBasketALCTrackTitleArray(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 390
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 391
    .local v7, "titleArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$DownloadBasket;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v0, "title"

    aput-object v0, v2, v8

    const-string/jumbo v3, "status_code=?"

    new-array v4, v4, [Ljava/lang/String;

    const-string v0, "03"

    aput-object v0, v4, v8

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 395
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 400
    :cond_1
    if-eqz v6, :cond_2

    if-eqz v5, :cond_3

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 401
    :cond_2
    :goto_0
    return-object v7

    .line 400
    :catch_0
    move-exception v0

    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 391
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 400
    :catchall_0
    move-exception v1

    move-object v5, v0

    move-object v0, v1

    :goto_1
    if-eqz v6, :cond_4

    if-eqz v5, :cond_5

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :goto_2
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v5, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public static getChannelId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    const-string v0, "com.samsung.radio.channelid"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    move-result-object v1

    .line 98
    .local v1, "properties":Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;
    if-eqz v1, :cond_0

    .line 99
    const-string v2, "modelName"

    sget-object v3, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->DEFAULT_MODEL_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "deviceId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 105
    .end local v0    # "deviceId":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, " "

    const-string v4, "%20"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getEncodedUrlParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "param"    # Ljava/lang/String;

    .prologue
    .line 89
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 93
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    return-object p0

    .line 90
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_0
    move-exception v0

    .line 91
    .restart local v0    # "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getGalaxyAppsAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 322
    const-string v0, "com.sec.android.app.samsungapps"

    invoke-static {p0, v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGalaxyAppsIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 295
    const-string v0, "com.sec.android.app.samsungapps"

    invoke-static {p0, v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getModSongType(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    const/4 v2, 0x0

    .line 161
    .local v2, "songType":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/LoginManager;

    move-result-object v1

    .line 162
    .local v1, "loginMgr":Lcom/samsung/android/app/music/service/milk/LoginManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getUserInfo()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v3

    .local v3, "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    if-eqz v3, :cond_0

    .line 163
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/UserInfo;->isStreamingUser()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 164
    const-string v2, "1"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    .end local v3    # "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 173
    const-string v2, "2"

    .line 176
    .end local v1    # "loginMgr":Lcom/samsung/android/app/music/service/milk/LoginManager;
    :cond_1
    :goto_1
    return-object v2

    .line 166
    .restart local v1    # "loginMgr":Lcom/samsung/android/app/music/service/milk/LoginManager;
    .restart local v3    # "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    :cond_2
    :try_start_1
    const-string v2, "2"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 169
    .end local v1    # "loginMgr":Lcom/samsung/android/app/music/service/milk/LoginManager;
    .end local v3    # "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    if-nez v2, :cond_1

    .line 173
    const-string v2, "2"

    goto :goto_1

    .line 172
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-nez v2, :cond_3

    .line 173
    const-string v2, "2"

    :cond_3
    throw v4
.end method

.method public static getPlayStoreAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 360
    const-string v0, "com.android.vending"

    invoke-static {p0, v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPlayStoreIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 351
    const-string v0, "com.android.vending"

    invoke-static {p0, v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getRadioSongType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stationType"    # Ljava/lang/String;

    .prologue
    .line 180
    const-string v1, "2"

    .line 182
    .local v1, "songType":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->getCountryStatus(Landroid/content/Context;)I

    move-result v2

    const/16 v3, 0x7d1

    if-eq v2, v3, :cond_1

    .line 183
    invoke-static {p0}, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->inst(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/advertise/AdScheduler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->isDormancyMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 184
    invoke-static {p1}, Lcom/samsung/android/app/music/common/model/Station;->isPersonalStation(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->isStreamingUser(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    :cond_0
    const-string v1, "1"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :cond_1
    :goto_0
    return-object v1

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getShopId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    const-string v0, "com.samsung.radio.shopid"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getShortenPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    const-string v0, "radio"

    return-object v0
.end method

.method public static getSongExtra(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 202
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v4, "extras":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 204
    .local v1, "adultYn":Ljava/lang/String;
    const/4 v3, 0x0

    .line 207
    .local v3, "explicit":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/LoginManager;

    move-result-object v5

    .line 208
    .local v5, "loginMgr":Lcom/samsung/android/app/music/service/milk/LoginManager;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getUserInfo()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v6

    .local v6, "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    if-eqz v6, :cond_0

    .line 209
    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/UserInfo;->getIsAdult()Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/UserInfo;->getAdultCertifyYn()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "adultCertifyYn":Ljava/lang/String;
    const-string v7, "1"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 212
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v7

    const-string v8, "explicit_option"

    const/4 v9, 0x0

    .line 213
    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 214
    const-string v3, "1"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    .end local v0    # "adultCertifyYn":Ljava/lang/String;
    .end local v6    # "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    if-nez v3, :cond_2

    .line 223
    :cond_1
    const-string v1, "0"

    .line 224
    const-string v3, "0"

    .line 226
    :cond_2
    invoke-interface {v4, v10, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 227
    invoke-interface {v4, v11, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 229
    .end local v5    # "loginMgr":Lcom/samsung/android/app/music/service/milk/LoginManager;
    :goto_1
    return-object v4

    .line 216
    .restart local v0    # "adultCertifyYn":Ljava/lang/String;
    .restart local v5    # "loginMgr":Lcom/samsung/android/app/music/service/milk/LoginManager;
    .restart local v6    # "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    :cond_3
    :try_start_1
    const-string v3, "0"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 219
    .end local v0    # "adultCertifyYn":Ljava/lang/String;
    .end local v5    # "loginMgr":Lcom/samsung/android/app/music/service/milk/LoginManager;
    .end local v6    # "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    :catch_0
    move-exception v2

    .line 220
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 222
    if-eqz v1, :cond_4

    if-nez v3, :cond_5

    .line 223
    :cond_4
    const-string v1, "0"

    .line 224
    const-string v3, "0"

    .line 226
    :cond_5
    invoke-interface {v4, v10, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 227
    invoke-interface {v4, v11, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 222
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    if-eqz v1, :cond_6

    if-nez v3, :cond_7

    .line 223
    :cond_6
    const-string v1, "0"

    .line 224
    const-string v3, "0"

    .line 226
    :cond_7
    invoke-interface {v4, v10, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 227
    invoke-interface {v4, v11, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    throw v7
.end method

.method public static getUniqueId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 109
    const-string v2, "com.samsung.radio.mixed.udid"

    invoke-static {p0, v2, v1}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "udid":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 115
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/AES;->getUniqueDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 118
    if-nez v0, :cond_0

    .line 119
    const-string v2, "MilkServiceUtils"

    const-string v3, "getUniqueId It still returns the null"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :goto_0
    return-object v1

    .line 123
    :cond_0
    const-string v1, "MilkServiceUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUniqueId udid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v1, "com.samsung.radio.mixed.udid"

    invoke-static {p0, v1, v0}, Lcom/samsung/android/app/music/common/preferences/Pref;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 126
    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 128
    goto :goto_0
.end method

.method public static getUniqueIdForSignIn(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 251
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/AES;->getUniqueMacId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserExplicitType(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/UserInfo;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userInfo"    # Lcom/samsung/android/app/music/common/model/UserInfo;

    .prologue
    .line 255
    const/4 v1, 0x0

    .line 257
    .local v1, "type":I
    if-eqz p1, :cond_6

    .line 258
    const-string v2, "0"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/UserInfo;->getIsAdult()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 259
    const/4 v1, 0x2

    .line 276
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 277
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserStatus()I

    move-result v2

    if-nez v2, :cond_1

    .line 278
    :cond_0
    const/4 v1, 0x1

    .line 285
    :cond_1
    :goto_1
    const-string v2, "MilkServiceUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getExplicitType : ExplicitType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    return v1

    .line 261
    :cond_2
    const-string v2, "1"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/UserInfo;->getAdultCertifyYn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 263
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v2

    const-string v3, "explicit_option"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 264
    .local v0, "isExplicitOn":Z
    if-eqz v0, :cond_3

    .line 265
    const/4 v1, 0x0

    goto :goto_0

    .line 267
    :cond_3
    const/4 v1, 0x7

    goto :goto_0

    .line 269
    .end local v0    # "isExplicitOn":Z
    :cond_4
    const-string v2, "-1"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/UserInfo;->getAdultCertifyYn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 270
    const/4 v1, 0x6

    goto :goto_0

    .line 272
    :cond_5
    const/4 v1, 0x5

    goto :goto_0

    .line 281
    :cond_6
    const-string v2, "MilkServiceUtils"

    const-string v3, "getExplicitType : User info is null"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static getUserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const/4 v2, 0x0

    .line 73
    .local v2, "userId":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/LoginManager;

    move-result-object v1

    .line 74
    .local v1, "loginMgr":Lcom/samsung/android/app/music/service/milk/LoginManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getUserInfo()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v3

    .local v3, "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    if-eqz v3, :cond_0

    .line 75
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 80
    .end local v3    # "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    :cond_0
    if-nez v2, :cond_1

    .line 81
    const-string v2, "NOLOGINUSR"

    .line 84
    .end local v1    # "loginMgr":Lcom/samsung/android/app/music/service/milk/LoginManager;
    :cond_1
    :goto_0
    return-object v2

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    if-nez v2, :cond_1

    .line 81
    const-string v2, "NOLOGINUSR"

    goto :goto_0

    .line 80
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-nez v2, :cond_2

    .line 81
    const-string v2, "NOLOGINUSR"

    :cond_2
    throw v4
.end method

.method public static hasEasterEgg(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 141
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    move-result-object v0

    .line 142
    .local v0, "easterEgg":Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;
    if-eqz v0, :cond_1

    .line 143
    const-string v3, "mcc"

    sget-object v4, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->DEFAULT_MOBILE_COUNTRY_CODE:Ljava/lang/String;

    .line 144
    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "mcc_property":Ljava/lang/String;
    const-string v3, "mnc"

    sget-object v4, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->DEFAULT_MOBILE_NETWORK_CODE:Ljava/lang/String;

    .line 147
    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "mnc_property":Ljava/lang/String;
    sget-object v3, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->DEFAULT_MOBILE_COUNTRY_CODE:Ljava/lang/String;

    if-ne v1, v3, :cond_0

    sget-object v3, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->DEFAULT_MOBILE_NETWORK_CODE:Ljava/lang/String;

    if-eq v2, v3, :cond_1

    .line 151
    :cond_0
    const/4 v3, 0x1

    .line 154
    .end local v1    # "mcc_property":Ljava/lang/String;
    .end local v2    # "mnc_property":Ljava/lang/String;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static isStreamingUser(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/LoginManager;

    move-result-object v0

    .line 196
    .local v0, "loginMgr":Lcom/samsung/android/app/music/service/milk/LoginManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getUserInfo()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v1

    .local v1, "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    if-eqz v1, :cond_0

    .line 197
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/UserInfo;->isStreamingUser()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .end local v1    # "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
