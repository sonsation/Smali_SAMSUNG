.class public Lcom/samsung/android/app/music/common/gcm/PPMT/PpmtController;
.super Lcom/samsung/android/app/music/common/gcm/PPMT/PpmtConstants;
.source "PpmtController.java"


# static fields
.field private static final DEV:Z

.field public static final LOG_TAG:Ljava/lang/String; = "PpmtController"

.field private static final enableFeature:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/DebugCompat;->isProductDev()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/samsung/android/app/music/common/gcm/PPMT/PpmtController;->DEV:Z

    .line 39
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    sput-boolean v0, Lcom/samsung/android/app/music/common/gcm/PPMT/PpmtController;->enableFeature:Z

    return-void

    .line 37
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/gcm/PPMT/PpmtConstants;-><init>()V

    return-void
.end method

.method public static changeGenre(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 148
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v2, "plist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 152
    :cond_0
    const-string v4, "genre_name"

    .line 153
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 152
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "genre":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 158
    .end local v1    # "genre":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "\u00b6"

    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, "re":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;-><init>()V

    .line 160
    .local v0, "builder":Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;
    const-string/jumbo v4, "p_selected_genre"

    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;->setData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;

    .line 161
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;->build()Lcom/samsung/android/sdk/ppmt/PpmtData;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/samsung/android/sdk/ppmt/PpmtData;->send(Landroid/content/Context;)V

    .line 163
    const-string v4, "PpmtController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chagneGenre"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public static changeMyMusicMode(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # Z

    .prologue
    .line 168
    new-instance v0, Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;-><init>()V

    .line 169
    .local v0, "builder":Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;
    const-string/jumbo v2, "p_my_music_mode"

    if-eqz p1, :cond_0

    const-string v1, "True"

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;->setData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;

    .line 170
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;->build()Lcom/samsung/android/sdk/ppmt/PpmtData;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/android/sdk/ppmt/PpmtData;->send(Landroid/content/Context;)V

    .line 171
    return-void

    .line 169
    :cond_0
    const-string v1, "False"

    goto :goto_0
.end method

.method private static getBirthdayToTimeStamp(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "birth"    # Ljava/lang/String;

    .prologue
    .line 198
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyyMMddHHmmss"

    sget-object v5, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v1, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 200
    .local v1, "df":Ljava/text/SimpleDateFormat;
    const-string v2, ""

    .line 202
    .local v2, "ts":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 203
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 204
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 205
    .local v3, "tsLong":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 209
    .end local v0    # "date":Ljava/util/Date;
    .end local v3    # "tsLong":Ljava/lang/Long;
    :cond_0
    :goto_0
    return-object v2

    .line 207
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private static getUserType(Lcom/samsung/android/app/music/common/model/UserInfo;)Ljava/lang/String;
    .locals 2
    .param p0, "userinfo"    # Lcom/samsung/android/app/music/common/model/UserInfo;

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserStatus()I

    move-result v0

    if-nez v0, :cond_0

    .line 176
    const-string v0, "Free"

    .line 192
    :goto_0
    return-object v0

    .line 177
    :cond_0
    const-string v0, "1"

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->drmProductUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    const-string v0, "1"

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->downloadableUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    const-string v0, "DRM_MP3"

    goto :goto_0

    .line 181
    :cond_1
    const-string v0, "DRM"

    goto :goto_0

    .line 183
    :cond_2
    const-string v0, "1"

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->streamingUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 184
    const-string v0, "1"

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->downloadableUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 185
    const-string v0, "Streaming_MP3"

    goto :goto_0

    .line 187
    :cond_3
    const-string v0, "Streaming"

    goto :goto_0

    .line 189
    :cond_4
    const-string v0, "1"

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/UserInfo;->downloadableUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 190
    const-string v0, "MP3"

    goto :goto_0

    .line 192
    :cond_5
    const-string v0, "Free"

    goto :goto_0
.end method

.method public static initPPMT(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    sget-boolean v0, Lcom/samsung/android/app/music/common/gcm/PPMT/PpmtController;->enableFeature:Z

    if-nez v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 46
    :cond_0
    const-string v0, "PpmtController"

    const-string v1, "initPPMT"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v0, "PpmtController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initPPMT COUNTRY_ISO_CODE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/feature/SystemPropertyFeatures;->COUNTRY_ISO_CODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v0, "G1NKcnt2QA"

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/feature/SystemPropertyFeatures;->COUNTRY_ISO_CODE:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/Ppmt;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const v0, 0x7f02036d

    invoke-static {v0}, Lcom/samsung/android/sdk/ppmt/PpmtConfiguration;->setNotifSmallIcon(I)V

    goto :goto_0
.end method

.method public static moveToPage(Landroid/content/Context;I)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "page"    # I

    .prologue
    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 129
    .local v2, "tsLong":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "ts":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;-><init>()V

    .line 133
    .local v0, "builder":Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 134
    const-string/jumbo v3, "p_store_last_used"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;->setData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;

    .line 143
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;->build()Lcom/samsung/android/sdk/ppmt/PpmtData;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/samsung/android/sdk/ppmt/PpmtData;->send(Landroid/content/Context;)V

    .line 144
    :goto_1
    return-void

    .line 135
    :cond_0
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 136
    const-string/jumbo v3, "p_radio_last_used"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;->setData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;

    goto :goto_0

    .line 137
    :cond_1
    if-nez p1, :cond_2

    .line 138
    const-string/jumbo v3, "p_mymusic_last_used"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;->setData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;

    goto :goto_0

    .line 140
    :cond_2
    const-string v3, "PpmtController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveToPage unknown page : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static sendMessage(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 237
    sget-boolean v2, Lcom/samsung/android/app/music/common/gcm/PPMT/PpmtController;->enableFeature:Z

    if-nez v2, :cond_0

    .line 252
    :goto_0
    return-void

    .line 241
    :cond_0
    const-string v2, "PpmtController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onMessageReceived"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string/jumbo v2, "ppmt"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "appData":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 245
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 246
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 247
    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Lcom/samsung/android/sdk/ppmt/Ppmt;->messageReceived(Landroid/content/Context;Landroid/content/Intent;I)V

    goto :goto_0

    .line 250
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v2, "PpmtController"

    const-string/jumbo v3, "onMessageReceived this push is not from PPMT"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setPushAgreement(Landroid/content/Context;Z)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "optin"    # Z

    .prologue
    .line 78
    sget-boolean v3, Lcom/samsung/android/app/music/common/gcm/PPMT/PpmtController;->enableFeature:Z

    if-nez v3, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    const-string v3, "PpmtController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPushAgreement agreement : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/Ppmt;->setMktPushAgreement(Landroid/content/Context;Z)V

    .line 84
    if-eqz p1, :cond_0

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 86
    .local v2, "tsLong":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "ts":Ljava/lang/String;
    const-string v3, "PpmtController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPushAgreement  agree timestamp : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v0, Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;-><init>()V

    .line 89
    .local v0, "builder":Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;
    const-string/jumbo v3, "p_ma_agree_date"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;->setData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;

    .line 90
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;->build()Lcom/samsung/android/sdk/ppmt/PpmtData;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/samsung/android/sdk/ppmt/PpmtData;->send(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static setPushToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 95
    sget-boolean v0, Lcom/samsung/android/app/music/common/gcm/PPMT/PpmtController;->enableFeature:Z

    if-nez v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    const-string v0, "PpmtController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPushToken token : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Lcom/samsung/android/sdk/ppmt/Ppmt;->setPushToken(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static setUserProfileBySA(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/UserInfo;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userinfo"    # Lcom/samsung/android/app/music/common/model/UserInfo;

    .prologue
    .line 103
    sget-boolean v2, Lcom/samsung/android/app/music/common/gcm/PPMT/PpmtController;->enableFeature:Z

    if-nez v2, :cond_0

    .line 125
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/samsung/android/sdk/ppmt/Ppmt;->setUserId(Landroid/content/Context;Ljava/lang/String;)V

    .line 108
    new-instance v1, Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;-><init>()V

    .line 110
    .local v1, "builder":Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserStatus()I

    move-result v2

    if-nez v2, :cond_1

    .line 111
    const-string/jumbo v2, "p_user_type_e"

    const-string v3, "Device"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;->setData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;

    .line 122
    :goto_1
    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;->build()Lcom/samsung/android/sdk/ppmt/PpmtData;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/samsung/android/sdk/ppmt/PpmtData;->send(Landroid/content/Context;)V

    .line 124
    const-string v2, "PpmtController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setUserProfileBySA userid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_1
    const-string/jumbo v2, "p_email"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/UserInfo;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;->setData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;

    .line 115
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/UserInfo;->getBirthday()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/common/gcm/PPMT/PpmtController;->getBirthdayToTimeStamp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "birthday":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 117
    const-string/jumbo v2, "p_birthday"

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;->setData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;

    .line 119
    :cond_2
    const-string/jumbo v2, "p_user_type_e"

    invoke-static {p1}, Lcom/samsung/android/app/music/common/gcm/PPMT/PpmtController;->getUserType(Lcom/samsung/android/app/music/common/model/UserInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;->setData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;

    goto :goto_1
.end method

.method public static startPPMT(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 55
    sget-boolean v1, Lcom/samsung/android/app/music/common/gcm/PPMT/PpmtController;->enableFeature:Z

    if-nez v1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 59
    :cond_0
    const-string v1, "PpmtController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startPPMT from : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/music/common/gcm/RegistrationIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 66
    invoke-static {p0, v4}, Lcom/samsung/android/sdk/ppmt/Ppmt;->setTncAgreement(Landroid/content/Context;Z)V

    .line 68
    sget-boolean v1, Lcom/samsung/android/app/music/common/gcm/PPMT/PpmtController;->DEV:Z

    if-eqz v1, :cond_1

    .line 69
    invoke-static {v4}, Lcom/samsung/android/sdk/ppmt/Ppmt;->setDebug(Z)V

    .line 74
    :goto_1
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/Ppmt;->appStarted(Landroid/content/Context;)V

    goto :goto_0

    .line 71
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/android/sdk/ppmt/Ppmt;->setDebug(Z)V

    goto :goto_1
.end method
