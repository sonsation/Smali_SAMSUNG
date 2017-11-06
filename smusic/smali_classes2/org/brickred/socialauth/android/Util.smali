.class public final Lorg/brickred/socialauth/android/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static UI_DENSITY:I

.field public static UI_SIZE:I

.field public static UI_YAHOO_ALLOW:I

.field public static providerList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "facebook"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "twitter"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "runkeeper"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "yammer"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "foursquare"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "salesforce"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "linkedin"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "myspace"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "flickr"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "instagram"

    aput-object v2, v0, v1

    sput-object v0, Lorg/brickred/socialauth/android/Util;->providerList:[Ljava/lang/String;

    return-void
.end method

.method public static decodeUrl(Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 102
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 103
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_2

    .line 104
    const-string v4, "&"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "array":[Ljava/lang/String;
    array-length v7, v0

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v1, v0, v5

    .line 106
    .local v1, "parameter":Ljava/lang/String;
    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, "v":[Ljava/lang/String;
    array-length v4, v3

    if-le v4, v9, :cond_0

    .line 108
    aget-object v4, v3, v6

    invoke-static {v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    array-length v4, v3

    if-le v4, v9, :cond_1

    aget-object v4, v3, v9

    invoke-static {v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-interface {v2, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_0
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    .line 108
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 112
    .end local v0    # "array":[Ljava/lang/String;
    .end local v1    # "parameter":Ljava/lang/String;
    .end local v3    # "v":[Ljava/lang/String;
    :cond_2
    return-object v2
.end method

.method public static getDisplayDpi(Landroid/content/Context;)V
    .locals 20
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 261
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 262
    .local v3, "dm":Landroid/util/DisplayMetrics;
    const-string/jumbo v11, "window"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    .line 263
    .local v10, "wm":Landroid/view/WindowManager;
    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 265
    iget v11, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v11, v11

    iget v0, v3, Landroid/util/DisplayMetrics;->xdpi:F

    move/from16 v16, v0

    div-float v11, v11, v16

    float-to-double v0, v11

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    .line 266
    .local v12, "x":D
    iget v11, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v11, v11

    iget v0, v3, Landroid/util/DisplayMetrics;->ydpi:F

    move/from16 v16, v0

    div-float v11, v11, v16

    float-to-double v0, v11

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    .line 267
    .local v14, "y":D
    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Display;->getWidth()I

    move-result v7

    .line 268
    .local v7, "width":I
    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Display;->getHeight()I

    move-result v5

    .line 269
    .local v5, "height":I
    add-double v16, v12, v14

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 270
    .local v8, "screenInches":D
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v6, v0

    .line 271
    .local v6, "screenInch":I
    iget v2, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 273
    .local v2, "dapi":I
    const-string v11, "Resolution X"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v11, "Resolution Y"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string/jumbo v11, "screeninch"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const-string v11, "dapi"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :try_start_0
    iget v11, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    sparse-switch v11, :sswitch_data_0

    .line 353
    :goto_0
    return-void

    .line 283
    :sswitch_0
    const/16 v11, 0x78

    sput v11, Lorg/brickred/socialauth/android/Util;->UI_DENSITY:I

    .line 285
    const/4 v11, 0x7

    if-gt v6, v11, :cond_0

    .line 286
    const/4 v11, 0x4

    sput v11, Lorg/brickred/socialauth/android/Util;->UI_SIZE:I

    .line 287
    const/16 v11, 0x7d

    sput v11, Lorg/brickred/socialauth/android/Util;->UI_YAHOO_ALLOW:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 350
    :catch_0
    move-exception v4

    .line 351
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 290
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    const/16 v11, 0xa

    :try_start_1
    sput v11, Lorg/brickred/socialauth/android/Util;->UI_SIZE:I

    goto :goto_0

    .line 296
    :sswitch_1
    const/16 v11, 0xa0

    sput v11, Lorg/brickred/socialauth/android/Util;->UI_DENSITY:I

    .line 298
    const/4 v11, 0x7

    if-gt v6, v11, :cond_3

    .line 301
    const/16 v11, 0x140

    if-ne v7, v11, :cond_1

    .line 302
    const/16 v11, 0x69

    sput v11, Lorg/brickred/socialauth/android/Util;->UI_YAHOO_ALLOW:I

    .line 303
    const/4 v11, 0x3

    sput v11, Lorg/brickred/socialauth/android/Util;->UI_SIZE:I

    goto :goto_0

    .line 304
    :cond_1
    const/16 v11, 0x1e0

    if-ne v7, v11, :cond_2

    .line 305
    const/16 v11, 0xc8

    sput v11, Lorg/brickred/socialauth/android/Util;->UI_YAHOO_ALLOW:I

    .line 306
    const/4 v11, 0x4

    sput v11, Lorg/brickred/socialauth/android/Util;->UI_SIZE:I

    goto :goto_0

    .line 308
    :cond_2
    const/4 v11, 0x1

    sput v11, Lorg/brickred/socialauth/android/Util;->UI_YAHOO_ALLOW:I

    .line 309
    const/4 v11, 0x7

    sput v11, Lorg/brickred/socialauth/android/Util;->UI_SIZE:I

    goto :goto_0

    .line 312
    :cond_3
    const/16 v11, 0xa

    sput v11, Lorg/brickred/socialauth/android/Util;->UI_SIZE:I

    .line 313
    const/4 v11, 0x1

    sput v11, Lorg/brickred/socialauth/android/Util;->UI_YAHOO_ALLOW:I

    goto :goto_0

    .line 320
    :sswitch_2
    const/16 v11, 0xf0

    sput v11, Lorg/brickred/socialauth/android/Util;->UI_DENSITY:I

    .line 321
    const/16 v11, 0x177

    sput v11, Lorg/brickred/socialauth/android/Util;->UI_YAHOO_ALLOW:I

    goto :goto_0

    .line 325
    :sswitch_3
    const/16 v11, 0x140

    sput v11, Lorg/brickred/socialauth/android/Util;->UI_DENSITY:I

    .line 327
    const/4 v11, 0x7

    if-ge v6, v11, :cond_4

    .line 328
    const/16 v11, 0x37

    sput v11, Lorg/brickred/socialauth/android/Util;->UI_YAHOO_ALLOW:I

    goto :goto_0

    .line 330
    :cond_4
    const/16 v11, 0x2d0

    if-lt v7, v11, :cond_5

    const/16 v11, 0x500

    if-ge v7, v11, :cond_5

    .line 331
    const/4 v11, 0x7

    sput v11, Lorg/brickred/socialauth/android/Util;->UI_SIZE:I

    .line 332
    const/16 v11, 0x1db

    sput v11, Lorg/brickred/socialauth/android/Util;->UI_YAHOO_ALLOW:I

    goto :goto_0

    .line 333
    :cond_5
    const/16 v11, 0x500

    if-lt v7, v11, :cond_6

    .line 334
    const/16 v11, 0xa

    sput v11, Lorg/brickred/socialauth/android/Util;->UI_SIZE:I

    .line 335
    const/4 v11, 0x1

    sput v11, Lorg/brickred/socialauth/android/Util;->UI_YAHOO_ALLOW:I

    goto :goto_0

    .line 337
    :cond_6
    const/4 v11, 0x1

    sput v11, Lorg/brickred/socialauth/android/Util;->UI_YAHOO_ALLOW:I

    goto :goto_0

    .line 344
    :sswitch_4
    const/16 v11, 0xd5

    sput v11, Lorg/brickred/socialauth/android/Util;->UI_DENSITY:I

    .line 345
    const/16 v11, 0x5f

    sput v11, Lorg/brickred/socialauth/android/Util;->UI_YAHOO_ALLOW:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 279
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xd5 -> :sswitch_4
        0xf0 -> :sswitch_2
        0x140 -> :sswitch_3
    .end sparse-switch
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 159
    const-string v3, "android.permission.INTERNET"

    invoke-virtual {p0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v2

    .line 163
    :cond_1
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 165
    .local v0, "connMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 166
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static parseUrl(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    const-string v3, "fbconnect"

    const-string v4, "http"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 126
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 127
    .local v2, "u":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/brickred/socialauth/android/Util;->decodeUrl(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 128
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/brickred/socialauth/android/Util;->decodeUrl(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "u":Ljava/net/URL;
    :goto_0
    return-object v1

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method
