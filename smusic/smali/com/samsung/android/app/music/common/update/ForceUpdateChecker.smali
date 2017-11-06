.class public final Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;
.super Ljava/lang/Object;
.source "ForceUpdateChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$ResultListener;,
        Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$StoreData;,
        Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$StartClient;,
        Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$ServerTime;,
        Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$CommonRequest;,
        Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$Common;,
        Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$Method;,
        Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$RequestID;
    }
.end annotation


# static fields
.field static final DEFAULT_HTTP_START_INFO:Ljava/lang/String; = "http://api.glb.samsungmilkradio.com/"

.field private static final LOG_TAG:Ljava/lang/String;

.field static final NOLOGINUSR:Ljava/lang/String; = "NOLOGINUSR"

.field static final PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.music"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConfigGoogleUpdate:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mCurTime:Ljava/lang/String;

.field private mForceUpdateVersion:Ljava/lang/String;

.field private final mResultListener:Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$ResultListener;

.field private mServerTime:J

.field private mShopId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    const-class v0, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->TAG:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$ResultListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resultListener"    # Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$ResultListener;

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->mServerTime:J

    .line 128
    iput-object p2, p0, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->mResultListener:Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$ResultListener;

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->mContext:Landroid/content/Context;

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->parseJsonResponse(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->mCurTime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->mConfigGoogleUpdate:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;)Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$ResultListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->mResultListener:Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$ResultListener;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->mServerTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;J)J
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;
    .param p1, "x1"    # J

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->mServerTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;Ljava/lang/String;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->getServerTime(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->httpGetStartClient()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->mForceUpdateVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->mShopId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->httpGetStoreData()V

    return-void
.end method

.method private getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 310
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, " "

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getEncodedUrlParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "param"    # Ljava/lang/String;

    .prologue
    .line 234
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 238
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    return-object p0

    .line 235
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_0
    move-exception v0

    .line 236
    .restart local v0    # "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private getServerTime(Ljava/lang/String;)J
    .locals 10
    .param p1, "strTime"    # Ljava/lang/String;

    .prologue
    .line 282
    if-nez p1, :cond_0

    .line 283
    sget-object v3, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "setServerTime received time is null"

    invoke-static {v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const-wide/16 v8, -0x1

    .line 306
    :goto_0
    return-wide v8

    .line 287
    :cond_0
    const-wide/16 v4, 0x0

    .line 289
    .local v4, "serverTime":J
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    .line 290
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v0, v3, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 291
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v3, "GMT+00:00"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 293
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .local v2, "receivedDate":Ljava/util/Date;
    if-eqz v2, :cond_1

    .line 294
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 302
    .end local v2    # "receivedDate":Ljava/util/Date;
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v6, v8, v4

    .line 303
    .local v6, "timeGap":J
    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-eqz v3, :cond_2

    .line 304
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v6

    goto :goto_0

    .line 296
    .end local v6    # "timeGap":J
    .restart local v2    # "receivedDate":Ljava/util/Date;
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v4

    goto :goto_1

    .line 298
    .end local v2    # "receivedDate":Ljava/util/Date;
    :catch_0
    move-exception v1

    .line 299
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1

    .line 306
    .end local v1    # "e":Ljava/text/ParseException;
    .restart local v6    # "timeGap":J
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    goto :goto_0
.end method

.method private getServieTimeUrl(I)Ljava/lang/String;
    .locals 3
    .param p1, "reqId"    # I

    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "http://api.glb.samsungmilkradio.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const-string v1, "basic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getStartClientUrl(I)Ljava/lang/String;
    .locals 3
    .param p1, "reqId"    # I

    .prologue
    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "http://api.glb.samsungmilkradio.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string v1, "basic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "startClient"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "deviceId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getStoreDataUrl(I)Ljava/lang/String;
    .locals 5
    .param p1, "reqId"    # I

    .prologue
    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .local v1, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->mShopId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 214
    .local v2, "shopId":I
    const-string v3, "http://api.glb.samsungmilkradio.com/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const-string v3, "basic"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "storeData"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const-string v3, "access_token"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "deviceId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "shopId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "uniqueId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .end local v2    # "shopId":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v3, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getUniqueId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 314
    iget-object v1, p0, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->getUniqueId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "udid":Ljava/lang/String;
    return-object v0
.end method

.method private httpGetServerTime()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 133
    new-instance v0, Lcom/samsung/android/app/music/common/update/HttpGetDataTask;

    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->getServieTimeUrl(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$1;-><init>(Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;)V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/common/update/HttpGetDataTask;-><init>(Ljava/lang/String;Lcom/samsung/android/app/music/common/update/HttpGetDataTask$MethodResultListener;)V

    new-array v1, v3, [Ljava/lang/Object;

    .line 145
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/update/HttpGetDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 146
    return-void
.end method

.method private httpGetStartClient()V
    .locals 4

    .prologue
    .line 149
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->mServerTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 153
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/common/update/HttpGetDataTask;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->getStartClientUrl(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$2;-><init>(Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;)V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/common/update/HttpGetDataTask;-><init>(Ljava/lang/String;Lcom/samsung/android/app/music/common/update/HttpGetDataTask$MethodResultListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 169
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/update/HttpGetDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private httpGetStoreData()V
    .locals 3

    .prologue
    .line 173
    new-instance v0, Lcom/samsung/android/app/music/common/update/HttpGetDataTask;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->getStoreDataUrl(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$3;-><init>(Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;)V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/common/update/HttpGetDataTask;-><init>(Ljava/lang/String;Lcom/samsung/android/app/music/common/update/HttpGetDataTask$MethodResultListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 185
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/update/HttpGetDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 186
    return-void
.end method

.method private parseJsonResponse(Ljava/lang/String;)V
    .locals 6
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 242
    if-nez p1, :cond_0

    .line 243
    sget-object v4, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "parseJsonResponse() json is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :goto_0
    return-void

    .line 246
    :cond_0
    new-instance v1, Landroid/util/JsonReader;

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 248
    .local v1, "jr":Landroid/util/JsonReader;
    :try_start_0
    invoke-virtual {v1}, Landroid/util/JsonReader;->beginObject()V

    .line 249
    :goto_1
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 250
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    .line 252
    .local v3, "token":Landroid/util/JsonToken;
    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    invoke-virtual {v3, v4}, Landroid/util/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 253
    invoke-virtual {v1}, Landroid/util/JsonReader;->skipValue()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 270
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "token":Landroid/util/JsonToken;
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    :try_start_2
    invoke-virtual {v1}, Landroid/util/JsonReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 275
    :catch_1
    move-exception v0

    .line 276
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 257
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "token":Landroid/util/JsonToken;
    :cond_1
    :try_start_3
    const-string v4, "curTime"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 258
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->mCurTime:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 273
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "token":Landroid/util/JsonToken;
    :catchall_0
    move-exception v4

    .line 274
    :try_start_4
    invoke-virtual {v1}, Landroid/util/JsonReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 277
    :goto_2
    throw v4

    .line 259
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "token":Landroid/util/JsonToken;
    :cond_2
    :try_start_5
    const-string/jumbo v4, "partnerAppVersion"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 260
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->mForceUpdateVersion:Ljava/lang/String;

    goto :goto_1

    .line 261
    :cond_3
    const-string/jumbo v4, "shopId"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 262
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->mShopId:Ljava/lang/String;

    goto :goto_1

    .line 263
    :cond_4
    const-string v4, "bixbyConfigGoogleUpdate"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 264
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->mConfigGoogleUpdate:Ljava/lang/String;

    goto :goto_1

    .line 266
    :cond_5
    invoke-virtual {v1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    .line 269
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "token":Landroid/util/JsonToken;
    :cond_6
    invoke-virtual {v1}, Landroid/util/JsonReader;->endObject()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 274
    :try_start_6
    invoke-virtual {v1}, Landroid/util/JsonReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 275
    :catch_2
    move-exception v0

    .line 276
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 275
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 276
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public doForceUpdateCheck()V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->httpGetServerTime()V

    .line 190
    return-void
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 4

    .prologue
    .line 228
    iget-object v0, p0, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->mContext:Landroid/content/Context;

    const-string v1, "NOLOGINUSR"

    iget-wide v2, p0, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->mServerTime:J

    .line 229
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/common/update/AppMarketUpdateUtils;->getAccessToken(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-static {v0}, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->getEncodedUrlParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
