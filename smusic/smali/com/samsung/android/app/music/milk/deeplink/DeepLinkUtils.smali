.class public Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;
.super Ljava/lang/Object;
.source "DeepLinkUtils.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .param p0, "key"    # Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 62
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    .line 64
    return-object p2
.end method

.method public static decodeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 68
    if-eqz p0, :cond_0

    .line 70
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 75
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    :goto_0
    return-object p0

    .line 71
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_0
    move-exception v0

    .line 72
    .restart local v0    # "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getActionType(Landroid/net/Uri;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 47
    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->ACTION:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v1, p0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->getActionType(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    move-result-object v1

    return-object v1
.end method

.method public static getHostType(Landroid/net/Uri;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 39
    if-nez p0, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 43
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;->getHostType(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    move-result-object v0

    goto :goto_0
.end method

.method public static getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 52
    if-nez p1, :cond_0

    .line 53
    const/4 v1, 0x0

    .line 58
    :goto_0
    return-object v1

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->decodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSchemeType(Landroid/net/Uri;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 31
    if-nez p0, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->getSchemeType(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    move-result-object v0

    goto :goto_0
.end method

.method public static isRadio(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 143
    sget-boolean v5, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-nez v5, :cond_1

    move v3, v4

    .line 159
    :cond_0
    :goto_0
    return v3

    .line 146
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v1

    .line 147
    .local v1, "dataCenter":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/IMediaDataCenter;
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/IMediaDataCenter;->isActivated()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 148
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/IMediaDataCenter;->getMusicExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 149
    .local v0, "activeQueue":I
    sget-object v5, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isRadio - dataCenter activated : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    if-eq v0, v3, :cond_0

    move v3, v4

    goto :goto_0

    .line 153
    .end local v0    # "activeQueue":I
    :cond_2
    const-string v5, "music_service_pref"

    const/4 v6, 0x4

    .line 154
    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 156
    .local v2, "pref":Landroid/content/SharedPreferences;
    const-string/jumbo v5, "queue_type"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 158
    .restart local v0    # "activeQueue":I
    sget-object v5, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isRadio - dataCenter not activated : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    if-eq v0, v3, :cond_0

    move v3, v4

    goto :goto_0
.end method

.method public static launchMainActivity(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 122
    if-nez p1, :cond_0

    .line 123
    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->LOG_TAG:Ljava/lang/String;

    const-string v3, "launchMainActivity - Broadcast received, but uri is null."

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 128
    .local v0, "builder":Landroid/net/Uri$Builder;
    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;->MAIN:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 130
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 131
    .local v1, "uiIntent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 132
    const-class v2, Lcom/samsung/android/app/music/common/ActivityLauncher;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 133
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 136
    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launchMainActivity - Broadcast received, but cannot run in background : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 137
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static parseDeepLinkSeedListString(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "seedString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/DeepLinkSeed;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v1, "deepLinkSeedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/DeepLinkSeed;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 118
    :cond_0
    return-object v1

    .line 101
    :cond_1
    const-string v7, "@"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, "itemList":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v5

    if-ge v3, v7, :cond_0

    .line 104
    aget-object v4, v5, v3

    .line 105
    .local v4, "item":Ljava/lang/String;
    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 108
    .local v6, "seedParams":[Ljava/lang/String;
    :try_start_0
    new-instance v0, Lcom/samsung/android/app/music/common/model/DeepLinkSeed;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/DeepLinkSeed;-><init>()V

    .line 109
    .local v0, "deepLinkSeed":Lcom/samsung/android/app/music/common/model/DeepLinkSeed;
    const/4 v7, 0x0

    aget-object v7, v6, v7

    iput-object v7, v0, Lcom/samsung/android/app/music/common/model/DeepLinkSeed;->seedType:Ljava/lang/String;

    .line 110
    const/4 v7, 0x1

    aget-object v7, v6, v7

    iput-object v7, v0, Lcom/samsung/android/app/music/common/model/DeepLinkSeed;->seedID:Ljava/lang/String;

    .line 111
    const/4 v7, 0x2

    aget-object v7, v6, v7

    invoke-static {v7}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->decodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/app/music/common/model/DeepLinkSeed;->seedName:Ljava/lang/String;

    .line 112
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v0    # "deepLinkSeed":Lcom/samsung/android/app/music/common/model/DeepLinkSeed;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 113
    :catch_0
    move-exception v2

    .line 114
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static parseSeedListString(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .param p0, "seedString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/Seed;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 79
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    :goto_0
    return-object v4

    .line 83
    :cond_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v11, "seedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Seed;>;"
    invoke-static {p0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->parseDeepLinkSeedListString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 86
    .local v9, "deepLinkSeedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/DeepLinkSeed;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/app/music/common/model/DeepLinkSeed;

    .line 87
    .local v10, "item":Lcom/samsung/android/app/music/common/model/DeepLinkSeed;
    const/4 v0, 0x1

    iget-object v1, v10, Lcom/samsung/android/app/music/common/model/DeepLinkSeed;->seedType:Ljava/lang/String;

    iget-object v2, v10, Lcom/samsung/android/app/music/common/model/DeepLinkSeed;->seedID:Ljava/lang/String;

    iget-object v3, v10, Lcom/samsung/android/app/music/common/model/DeepLinkSeed;->seedName:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v5, v4

    move-object v6, v4

    move-object v8, v4

    .line 88
    invoke-static/range {v0 .. v8}, Lcom/samsung/android/app/music/common/model/Seed;->createSeed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)Lcom/samsung/android/app/music/common/model/Seed;

    move-result-object v0

    .line 87
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v10    # "item":Lcom/samsung/android/app/music/common/model/DeepLinkSeed;
    :cond_1
    move-object v4, v11

    .line 92
    goto :goto_0
.end method
