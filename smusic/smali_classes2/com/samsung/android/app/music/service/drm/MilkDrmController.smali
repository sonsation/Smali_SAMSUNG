.class Lcom/samsung/android/app/music/service/drm/MilkDrmController;
.super Ljava/lang/Object;
.source "MilkDrmController.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;


# static fields
.field private static final DEFAULT_OPEN_MODE:Ljava/lang/String; = "default"

.field private static final EMPTY_BYTE:[B

.field private static final TAG:Ljava/lang/String; = "MilkDrmController"


# instance fields
.field private mClientId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDeviceKey:Ljava/lang/String;

.field private mDrmManager:LMarkany/MILK/DRM/DRMManager;

.field private final mLcodePattern:Ljava/util/regex/Pattern;

.field private final mValidPeriodFormat:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->EMPTY_BYTE:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMddhhmmss"

    .line 44
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->mValidPeriodFormat:Ljava/text/DateFormat;

    .line 46
    const-string v0, "((m|l)mp(\\d{11}))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->mLcodePattern:Ljava/util/regex/Pattern;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->mDrmManager:LMarkany/MILK/DRM/DRMManager;

    .line 59
    iput-object p1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method

.method private getLCodeInternal(Lcom/markany/drm/xsync/LicenseData;)Ljava/lang/String;
    .locals 6
    .param p1, "licenseData"    # Lcom/markany/drm/xsync/LicenseData;

    .prologue
    .line 237
    invoke-virtual {p1}, Lcom/markany/drm/xsync/LicenseData;->getCID()Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, "strLcode":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->mLcodePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 240
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 241
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 246
    .end local v1    # "m":Ljava/util/regex/Matcher;
    :goto_0
    return-object v3

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "MilkDrmController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLCodeInternal - parse lcode failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v3, ""

    goto :goto_0
.end method

.method private getPlayingUriInternal(Lcom/markany/drm/xsync/DRMSession;)Landroid/net/Uri;
    .locals 1
    .param p1, "session"    # Lcom/markany/drm/xsync/DRMSession;

    .prologue
    .line 262
    invoke-virtual {p1}, Lcom/markany/drm/xsync/DRMSession;->GetUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getSourceIdInternal(Ljava/lang/String;)I
    .locals 9
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 250
    iget-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "source_id"

    aput-object v3, v2, v8

    const-string v3, "_data=?"

    new-array v4, v4, [Ljava/lang/String;

    .line 252
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v8

    .line 250
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 254
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 255
    const-string/jumbo v0, "source_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    .line 257
    if-eqz v6, :cond_0

    if-eqz v5, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 258
    :cond_0
    :goto_0
    return v0

    .line 257
    :catch_0
    move-exception v1

    invoke-virtual {v5, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    if-eqz v5, :cond_4

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 258
    :cond_3
    :goto_1
    const/4 v0, -0x1

    goto :goto_0

    .line 257
    :catch_1
    move-exception v0

    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 250
    :catch_2
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 257
    :catchall_0
    move-exception v1

    move-object v5, v0

    move-object v0, v1

    :goto_2
    if-eqz v6, :cond_5

    if-eqz v5, :cond_6

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v5, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method private getValidPeriodInternal(Lcom/markany/drm/xsync/LicenseData;)J
    .locals 6
    .param p1, "licenseData"    # Lcom/markany/drm/xsync/LicenseData;

    .prologue
    .line 266
    invoke-virtual {p1}, Lcom/markany/drm/xsync/LicenseData;->getEndDate()Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "strValidity":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 269
    iget-object v3, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->mValidPeriodFormat:Ljava/text/DateFormat;

    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 270
    .local v2, "validity":Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 275
    .end local v2    # "validity":Ljava/util/Date;
    :goto_0
    return-wide v4

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "MilkDrmController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getValidPeriodInternal: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-wide/16 v4, -0x1

    goto :goto_0
.end method


# virtual methods
.method public close(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V
    .locals 3
    .param p1, "content"    # Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 223
    const-string v2, "DRM_CONTENT_KEY_SESSION"

    invoke-interface {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 224
    .local v0, "obj":Ljava/lang/Object;
    instance-of v2, v0, Lcom/markany/drm/xsync/DRMSession;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 225
    check-cast v1, Lcom/markany/drm/xsync/DRMSession;

    .line 226
    .local v1, "session":Lcom/markany/drm/xsync/DRMSession;
    iget-object v2, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->mDrmManager:LMarkany/MILK/DRM/DRMManager;

    invoke-virtual {v2, v1}, LMarkany/MILK/DRM/DRMManager;->closeSession(Lcom/markany/drm/xsync/DRMSession;)V

    .line 227
    invoke-virtual {v1}, Lcom/markany/drm/xsync/DRMSession;->delete()V

    .line 229
    .end local v1    # "session":Lcom/markany/drm/xsync/DRMSession;
    :cond_0
    return-void
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method public getLyrics(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)[B
    .locals 9
    .param p1, "content"    # Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 203
    const/4 v5, 0x0

    .line 204
    .local v5, "lyric":Ljava/lang/String;
    const-string v7, "DRM_CONTENT_KEY_META_BUFFER"

    invoke-interface {p1, v7}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "customData":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 207
    .local v4, "jsonObjectRoot":Lorg/json/JSONObject;
    new-instance v3, Lorg/json/JSONObject;

    const-string v7, "SoribadaApiResponse"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 209
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v7, "uslt"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "encodedLyric":Ljava/lang/String;
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v2, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "lyric":Ljava/lang/String;
    .local v6, "lyric":Ljava/lang/String;
    move-object v5, v6

    .line 215
    .end local v2    # "encodedLyric":Ljava/lang/String;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "jsonObjectRoot":Lorg/json/JSONObject;
    .end local v6    # "lyric":Ljava/lang/String;
    .restart local v5    # "lyric":Ljava/lang/String;
    :goto_0
    if-eqz v5, :cond_0

    .line 216
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 218
    :goto_1
    return-object v7

    .line 211
    :catch_0
    move-exception v1

    .line 212
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "MilkDrmController"

    const-string v8, "Error! lyric parsing failed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 218
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public open(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
    .locals 25
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->mDrmManager:LMarkany/MILK/DRM/DRMManager;

    if-nez v2, :cond_0

    .line 110
    const/16 v2, -0x2710

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/drm/InvalidDrmContent;->obtain(I)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    move-result-object v10

    .line 198
    :goto_0
    return-object v10

    .line 113
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    const-string v2, "MilkDrmController"

    const-string v3, "open : filePath is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v2, -0x1

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/drm/InvalidDrmContent;->obtain(I)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    move-result-object v10

    goto :goto_0

    .line 119
    :cond_1
    :try_start_0
    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v0, v2

    move/from16 v19, v0

    .line 120
    .local v19, "length":I
    const/16 v2, 0x190

    move/from16 v0, v19

    if-le v0, v2, :cond_2

    .line 121
    const-string v2, "MilkDrmController"

    const-string v3, "open : API_MAX_PATH error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/16 v2, -0x270f

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/drm/InvalidDrmContent;->obtain(I)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    goto :goto_0

    .line 124
    .end local v19    # "length":I
    :catch_0
    move-exception v12

    .line 125
    .local v12, "e":Ljava/lang/Exception;
    const-string v2, "MilkDrmController"

    const-string v3, "filePath.getBytes(UTF-8)"

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v2, "MilkDrmController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " filePath : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string v2, "MilkDrmController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mClientId : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->mClientId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",  mDeviceKey : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->mDeviceKey:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->mDrmManager:LMarkany/MILK/DRM/DRMManager;

    const-string v3, "default"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "file://"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, LMarkany/MILK/DRM/DRMManager;->openSession(Ljava/lang/String;Ljava/lang/String;)Lcom/markany/drm/xsync/DRMSession;

    move-result-object v8

    .line 134
    .local v8, "drmSession":Lcom/markany/drm/xsync/DRMSession;
    const/4 v7, 0x0

    .line 135
    .local v7, "customMeta":Ljava/lang/String;
    if-eqz v8, :cond_7

    .line 136
    const-string v2, "MilkDrmController"

    const-string v3, " drmSession != null "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {v8}, Lcom/markany/drm/xsync/DRMSession;->IsDRMFile()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 139
    invoke-virtual {v8}, Lcom/markany/drm/xsync/DRMSession;->GetCustomDataLength()I

    move-result v11

    .line 140
    .local v11, "dataSize":I
    if-lez v11, :cond_3

    .line 141
    new-array v9, v11, [B

    .line 142
    .local v9, "buffer":[B
    invoke-virtual {v8, v9}, Lcom/markany/drm/xsync/DRMSession;->GetCustomData([B)I

    .line 143
    new-instance v7, Ljava/lang/String;

    .end local v7    # "customMeta":Ljava/lang/String;
    invoke-direct {v7, v9}, Ljava/lang/String;-><init>([B)V

    .line 146
    .end local v9    # "buffer":[B
    .restart local v7    # "customMeta":Ljava/lang/String;
    :cond_3
    const/4 v14, 0x0

    .line 149
    .local v14, "hasValidLicense":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->mDrmManager:LMarkany/MILK/DRM/DRMManager;

    invoke-virtual {v2, v8}, LMarkany/MILK/DRM/DRMManager;->getLicense(Lcom/markany/drm/xsync/DRMSession;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v14

    .line 154
    :goto_1
    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->mClientId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 155
    :cond_4
    invoke-static {}, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->killServer()V

    .line 156
    const-string v2, "MilkDrmController"

    const-string v3, "No valid License Found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/16 v2, -0xc8

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/drm/InvalidDrmContent;->obtain(I)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    move-result-object v10

    goto/16 :goto_0

    .line 150
    :catch_1
    move-exception v12

    .line 151
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string v2, "MilkDrmController"

    const-string v3, "Exception Found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 159
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_5
    const-string v2, "MilkDrmController"

    const-string v3, "Session has valid license"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .end local v11    # "dataSize":I
    .end local v14    # "hasValidLicense":Z
    :cond_6
    new-instance v20, Lcom/markany/drm/xsync/LicenseData;

    invoke-direct/range {v20 .. v20}, Lcom/markany/drm/xsync/LicenseData;-><init>()V

    .line 167
    .local v20, "licenseData":Lcom/markany/drm/xsync/LicenseData;
    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/markany/drm/xsync/DRMSession;->GetLicense(Lcom/markany/drm/xsync/LicenseData;)I

    move-result v17

    .line 168
    .local v17, "lRet":I
    const-string v2, "MilkDrmController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLicense return lRet : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v2, "MilkDrmController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLicense return getCID : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Lcom/markany/drm/xsync/LicenseData;->getCID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v2, "MilkDrmController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLicense return getStartDate : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Lcom/markany/drm/xsync/LicenseData;->getStartDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v2, "MilkDrmController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLicense return getEndDate : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Lcom/markany/drm/xsync/LicenseData;->getEndDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-string v2, "MilkDrmController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLicense return getUID : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Lcom/markany/drm/xsync/LicenseData;->getUID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string v2, "MilkDrmController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLicense return getDeviceKey : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Lcom/markany/drm/xsync/LicenseData;->getDeviceKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->mDrmManager:LMarkany/MILK/DRM/DRMManager;

    invoke-virtual {v2}, LMarkany/MILK/DRM/DRMManager;->getLastErrorCode()I

    move-result v13

    .line 176
    .local v13, "error":I
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->getPlayingUriInternal(Lcom/markany/drm/xsync/DRMSession;)Landroid/net/Uri;

    move-result-object v6

    .line 177
    .local v6, "playingUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->getLCodeInternal(Lcom/markany/drm/xsync/LicenseData;)Ljava/lang/String;

    move-result-object v18

    .line 178
    .local v18, "lcode":Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->getSourceIdInternal(Ljava/lang/String;)I

    move-result v21

    .line 179
    .local v21, "sourceId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->getValidPeriodInternal(Lcom/markany/drm/xsync/LicenseData;)J

    move-result-wide v22

    .line 180
    .local v22, "validity":J
    invoke-virtual/range {v20 .. v20}, Lcom/markany/drm/xsync/LicenseData;->getCID()Ljava/lang/String;

    move-result-object v4

    .line 182
    .local v4, "trackId":Ljava/lang/String;
    :try_start_2
    new-instance v16, Lorg/json/JSONObject;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 183
    .local v16, "jsonObjectRoot":Lorg/json/JSONObject;
    new-instance v15, Lorg/json/JSONObject;

    const-string v2, "SoribadaApiResponse"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v15, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 184
    .local v15, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v2, "tkey"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    .line 189
    .end local v15    # "jsonObject":Lorg/json/JSONObject;
    .end local v16    # "jsonObjectRoot":Lorg/json/JSONObject;
    :goto_2
    new-instance v2, Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Lcom/markany/drm/xsync/DRMSession;)V

    .line 192
    invoke-virtual {v2, v13}, Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;->setError(I)Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;

    move-result-object v2

    .line 193
    move/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;->setSourceId(I)Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;

    move-result-object v2

    .line 194
    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;->setLcode(Ljava/lang/String;)Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;

    move-result-object v2

    .line 195
    move-wide/from16 v0, v22

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;->setValidity(J)Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/drm/MilkDrmContent$Builder;->build()Lcom/samsung/android/app/music/service/drm/MilkDrmContent;

    move-result-object v10

    .line 197
    .local v10, "content":Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
    const-string v2, "MilkDrmController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "open : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 162
    .end local v4    # "trackId":Ljava/lang/String;
    .end local v6    # "playingUri":Landroid/net/Uri;
    .end local v10    # "content":Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
    .end local v13    # "error":I
    .end local v17    # "lRet":I
    .end local v18    # "lcode":Ljava/lang/String;
    .end local v20    # "licenseData":Lcom/markany/drm/xsync/LicenseData;
    .end local v21    # "sourceId":I
    .end local v22    # "validity":J
    :cond_7
    const-string v2, "MilkDrmController"

    const-string v3, " drmSession == null "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/16 v2, -0x2710

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/drm/InvalidDrmContent;->obtain(I)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    move-result-object v10

    goto/16 :goto_0

    .line 185
    .restart local v4    # "trackId":Ljava/lang/String;
    .restart local v6    # "playingUri":Landroid/net/Uri;
    .restart local v13    # "error":I
    .restart local v17    # "lRet":I
    .restart local v18    # "lcode":Ljava/lang/String;
    .restart local v20    # "licenseData":Lcom/markany/drm/xsync/LicenseData;
    .restart local v21    # "sourceId":I
    .restart local v22    # "validity":J
    :catch_2
    move-exception v12

    .line 186
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string v2, "MilkDrmController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error! JSONObject load failed"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public startServer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "deviceKey"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v2, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->mContext:Landroid/content/Context;

    invoke-static {v2}, LMarkany/MILK/DRM/DRMManager;->getInstance(Landroid/content/Context;)LMarkany/MILK/DRM/DRMManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->mDrmManager:LMarkany/MILK/DRM/DRMManager;

    .line 66
    const-string v2, "MilkDrmController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startServer getState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->mDrmManager:LMarkany/MILK/DRM/DRMManager;

    invoke-virtual {v4}, LMarkany/MILK/DRM/DRMManager;->getState()Lcom/markany/drm/xsync/State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sget-object v2, Lcom/markany/drm/xsync/State;->Stopped:Lcom/markany/drm/xsync/State;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->mDrmManager:LMarkany/MILK/DRM/DRMManager;

    invoke-virtual {v3}, LMarkany/MILK/DRM/DRMManager;->getState()Lcom/markany/drm/xsync/State;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/markany/drm/xsync/State;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    iget-object v2, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->mDrmManager:LMarkany/MILK/DRM/DRMManager;

    invoke-virtual {v2}, LMarkany/MILK/DRM/DRMManager;->isDBOpened()Z

    move-result v2

    if-nez v2, :cond_1

    .line 69
    const-string v2, "MilkDrmController"

    const-string/jumbo v3, "startServer : DRMManager DB is not opened"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->mClientId:Ljava/lang/String;

    .line 75
    iget-object v2, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->mClientId:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 76
    iget-object v2, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->mContext:Landroid/content/Context;

    const-string v3, "com.sec.samsung.music.app.KEY_MILK_DRM_SUBSCRIPTION_ORDERID"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->mClientId:Ljava/lang/String;

    .line 78
    :cond_2
    iput-object p2, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->mDeviceKey:Ljava/lang/String;

    .line 80
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->mDrmManager:LMarkany/MILK/DRM/DRMManager;

    invoke-virtual {v2, p2}, LMarkany/MILK/DRM/DRMManager;->setDeviceKey(Ljava/lang/String;)V

    .line 81
    iget-object v2, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->mDrmManager:LMarkany/MILK/DRM/DRMManager;

    invoke-virtual {v2, p1}, LMarkany/MILK/DRM/DRMManager;->setUserId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    const/4 v1, 0x0

    .line 90
    .local v1, "result":Z
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->mDrmManager:LMarkany/MILK/DRM/DRMManager;

    invoke-virtual {v2}, LMarkany/MILK/DRM/DRMManager;->runServer()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 95
    :goto_1
    if-nez v1, :cond_0

    .line 96
    const-string v2, "MilkDrmController"

    const-string/jumbo v3, "startServer : DrmServer start failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    .end local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    const-string v2, "MilkDrmController"

    const-string/jumbo v3, "startServer : deviceKey or UserId setting is failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "result":Z
    :catch_1
    move-exception v0

    .line 92
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "MilkDrmController"

    const-string/jumbo v3, "startServer : runServer is failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public stopServer()V
    .locals 2

    .prologue
    .line 102
    const-string v0, "MilkDrmController"

    const-string/jumbo v1, "stopServer : called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->mDrmManager:LMarkany/MILK/DRM/DRMManager;

    invoke-virtual {v0}, LMarkany/MILK/DRM/DRMManager;->delete()V

    .line 104
    return-void
.end method
