.class public final Lcom/samsung/android/app/music/service/PlayerSettingManager;
.super Ljava/lang/Object;
.source "PlayerSettingManager.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV"

.field private static final TAG:Ljava/lang/String; = "SV"

.field private static volatile sInstance:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mServicePreferences:Landroid/content/SharedPreferences;

.field private final mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/samsung/android/app/music/service/PlayerSettingManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/PlayerSettingManager$1;-><init>(Lcom/samsung/android/app/music/service/PlayerSettingManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/PlayerSettingManager;->mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    .line 53
    iput-object p1, p0, Lcom/samsung/android/app/music/service/PlayerSettingManager;->mContext:Landroid/content/Context;

    .line 54
    const-string v0, "music_service_pref"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/PlayerSettingManager;->mServicePreferences:Landroid/content/SharedPreferences;

    .line 56
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    sget-object v0, Lcom/samsung/android/app/music/service/PlayerSettingManager;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    if-nez v0, :cond_1

    .line 36
    const-class v1, Lcom/samsung/android/app/music/service/PlayerSettingManager;

    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/music/service/PlayerSettingManager;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/samsung/android/app/music/service/PlayerSettingManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/PlayerSettingManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/app/music/service/PlayerSettingManager;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    .line 40
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/service/PlayerSettingManager;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getPreferencesBoolean(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 434
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerSettingManager;->mServicePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 435
    .local v0, "realValue":Z
    const-string v1, "SMUSIC-SV"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreferencesBoolean key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    return v0
.end method

.method private getPreferencesFloat(Ljava/lang/String;F)F
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 428
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerSettingManager;->mServicePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 429
    .local v0, "realValue":F
    const-string v1, "SMUSIC-SV"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreferencesFloat key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    return v0
.end method

.method private getSettingManager()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    return-object v0
.end method

.method private getUIMultiProcessPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 388
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerSettingManager;->mContext:Landroid/content/Context;

    const-string v1, "music_player_pref"

    const/4 v2, 0x4

    .line 389
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private savePreferences(Ljava/lang/String;F)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 407
    const-string v1, "SMUSIC-SV"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "savePreferences key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerSettingManager;->mServicePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 409
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 410
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 411
    return-void
.end method

.method private savePreferences(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 414
    const-string v1, "SMUSIC-SV"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "savePreferences key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerSettingManager;->mServicePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 416
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 417
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 418
    return-void
.end method


# virtual methods
.method public getActiveQueueType()I
    .locals 3

    .prologue
    .line 371
    const-string v1, "queue_type"

    const/4 v2, 0x0

    .line 372
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->getPreferencesInt(Ljava/lang/String;I)I

    move-result v0

    .line 374
    .local v0, "queueType":I
    return v0
.end method

.method public getBargeIn()Z
    .locals 2

    .prologue
    .line 329
    const-string v0, "barge_in"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->getPreferencesBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getDuplicateOption()Z
    .locals 1

    .prologue
    .line 358
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-nez v0, :cond_0

    .line 359
    const/4 v0, 0x0

    .line 361
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->getDuplicateOption()Z

    move-result v0

    goto :goto_0
.end method

.method public getEdgeLighting()Z
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x1

    return v0
.end method

.method public getFlacSupportNetwork()I
    .locals 3

    .prologue
    .line 134
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "flac_support_network"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getForceStreamingPermission()Z
    .locals 3

    .prologue
    .line 147
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "force_streaming_permission"

    const/4 v2, 0x0

    .line 148
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getListenQuality(I)I
    .locals 4
    .param p1, "cpAttrs"    # I

    .prologue
    .line 115
    sparse-switch p1, :sswitch_data_0

    .line 125
    const/4 v0, 0x0

    .line 128
    .local v0, "quality":I
    :goto_0
    const-string v1, "SV"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getListenQuality "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return v0

    .line 117
    .end local v0    # "quality":I
    :sswitch_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v1

    const-string v2, "quality_when_listen"

    const/4 v3, 0x0

    .line 118
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 120
    .restart local v0    # "quality":I
    goto :goto_0

    .line 122
    .end local v0    # "quality":I
    :sswitch_1
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerSettingManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->getAudioQualityIndex(Landroid/content/Context;)I

    move-result v0

    .line 123
    .restart local v0    # "quality":I
    goto :goto_0

    .line 115
    :sswitch_data_0
    .sparse-switch
        0x40002 -> :sswitch_0
        0x80002 -> :sswitch_1
    .end sparse-switch
.end method

.method public getLockScreen()Z
    .locals 3

    .prologue
    .line 283
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerSettingManager;->mServicePreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/PlayerSettingManager;->mContext:Landroid/content/Context;

    .line 284
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/library/framework/PackageManagerCompat;->checkLockScreenDefaultValue(Landroid/content/SharedPreferences;Landroid/content/Context;)Z

    move-result v0

    .line 285
    .local v0, "defaultValue":Z
    const-string v1, "lock_screen"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->getPreferencesBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getPlaySpeed()F
    .locals 2

    .prologue
    .line 158
    const-string v0, "play_speed"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->getPreferencesFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getPreferencesInt(Ljava/lang/String;I)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 440
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerSettingManager;->mServicePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 441
    .local v0, "realValue":I
    const-string v1, "SMUSIC-SV"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreferencesInt key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    return v0
.end method

.method public getPreferencesString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 446
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerSettingManager;->mServicePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, "realValue":Ljava/lang/String;
    const-string v1, "SMUSIC-SV"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreferencesString key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    return-object v0
.end method

.method public getQueryKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 245
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerSettingManager;->mServicePreferences:Landroid/content/SharedPreferences;

    const-string v1, "query_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerSettingManager;->mServicePreferences:Landroid/content/SharedPreferences;

    const-string v1, "queue"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueuePosition()I
    .locals 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerSettingManager;->mServicePreferences:Landroid/content/SharedPreferences;

    const-string v1, "list_position"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getQueueVersion()J
    .locals 4

    .prologue
    .line 217
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerSettingManager;->mServicePreferences:Landroid/content/SharedPreferences;

    const-string v1, "queue_version"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRecentlyQueue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerSettingManager;->mServicePreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "recently_queue"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRepeat()I
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerSettingManager;->mServicePreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "repeat"

    const/4 v2, 0x0

    .line 180
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getScreenOffMusic()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 295
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerSettingManager;->mServicePreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "screen_off_music"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerSettingManager;->mServicePreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "screen_off_music"

    .line 297
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 298
    .local v0, "legacyValue":Z
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->setScreenOffMusic(Z)V

    .line 299
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerSettingManager;->mServicePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "screen_off_music"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 300
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 304
    .end local v0    # "legacyValue":Z
    :goto_0
    return v0

    .line 303
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v1

    const-string/jumbo v2, "screen_off_music"

    .line 304
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public getShuffle()I
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerSettingManager;->mServicePreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "shuffle"

    const/4 v2, 0x0

    .line 169
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSkipSilence()Z
    .locals 2

    .prologue
    .line 314
    const-string/jumbo v0, "skip_silences"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->getPreferencesBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getSmartVolume()Z
    .locals 2

    .prologue
    .line 273
    const-string/jumbo v0, "smart_volume"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->getPreferencesBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getSortMode()I
    .locals 4

    .prologue
    .line 201
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v1

    const-string/jumbo v2, "sort"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 202
    .local v0, "sortMode":I
    return v0
.end method

.method public getStreamingCacheSize()J
    .locals 2

    .prologue
    .line 109
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->getMaxStreamingCacheSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUnionShuffleRepeat()I
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public getUriType()I
    .locals 4

    .prologue
    .line 238
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerSettingManager;->mServicePreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "uri_type"

    const/4 v3, 0x1

    .line 239
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 240
    .local v0, "uriType":I
    return v0
.end method

.method public getUserType()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, -0x1

    return v0
.end method

.method public isDataUsageAgreed()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public isLegalAgreed()Z
    .locals 5

    .prologue
    .line 79
    sget-boolean v2, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-nez v2, :cond_0

    .line 80
    const/4 v0, 0x1

    .line 86
    :goto_0
    return v0

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->getUIMultiProcessPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 83
    .local v1, "uiPreference":Landroid/content/SharedPreferences;
    const-string v2, "legal_information_agreed"

    const/4 v3, 0x0

    .line 84
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 85
    .local v0, "agreed":Z
    const-string v2, "SV"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isLegalAgreed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isLocalMode()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 379
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-nez v1, :cond_0

    .line 384
    :goto_0
    return v0

    .line 382
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->getSettingManager()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v1

    const-string v2, "my_music_mode"

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 383
    .local v0, "mode":Z
    const-string v1, "SV"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " isLocalMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isMobileDataOn()Z
    .locals 4

    .prologue
    .line 96
    .line 97
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->getSettingManager()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v1

    const-string v2, "mobile_data"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 98
    .local v0, "mobileData":Z
    const-string v1, "SV"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " isMobileDataOn "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return v0
.end method

.method public isStreamingCacheEnabled()Z
    .locals 3

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->getSettingManager()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string/jumbo v1, "streaming_cache_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public resetAutoOffValue()V
    .locals 2

    .prologue
    .line 263
    const-string v0, "music_auto_off"

    const-string v1, "off"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->savePreferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method public savePreferences(Ljava/lang/String;I)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 393
    const-string v1, "SMUSIC-SV"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "savePreferences key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerSettingManager;->mServicePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 395
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 396
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 397
    return-void
.end method

.method public savePreferences(Ljava/lang/String;J)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 400
    const-string v1, "SMUSIC-SV"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "savePreferences key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerSettingManager;->mServicePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 402
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 403
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 404
    return-void
.end method

.method public savePreferences(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 421
    const-string v1, "SMUSIC-SV"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "savePreferences key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerSettingManager;->mServicePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 423
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 424
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 425
    return-void
.end method

.method public setActiveQueueType(I)V
    .locals 1
    .param p1, "queueType"    # I

    .prologue
    .line 366
    const-string v0, "queue_type"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->savePreferences(Ljava/lang/String;I)V

    .line 367
    return-void
.end method

.method public setAutoOffValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 319
    const-string v0, "music_auto_off"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->savePreferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method public setBargeIn(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 324
    const-string v0, "barge_in"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->savePreferences(Ljava/lang/String;Z)V

    .line 325
    return-void
.end method

.method public setDuplicateOption(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 353
    invoke-static {p1}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->setDuplicateOption(Z)V

    .line 354
    return-void
.end method

.method public setEdgeLighting(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->getSettingManager()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "edge_lighting"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    .line 340
    return-void
.end method

.method public setForceStreamingPermission(Z)V
    .locals 2
    .param p1, "hasPermission"    # Z

    .prologue
    .line 140
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "force_streaming_permission"

    .line 141
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    .line 143
    return-void
.end method

.method public setLockScreen(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 278
    const-string v0, "lock_screen"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->savePreferences(Ljava/lang/String;Z)V

    .line 279
    return-void
.end method

.method public setPlaySpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .prologue
    .line 153
    const-string v0, "play_speed"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->savePreferences(Ljava/lang/String;F)V

    .line 154
    return-void
.end method

.method public setQueueInformation(JLjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 3
    .param p1, "queueVersion"    # J
    .param p3, "queue"    # Ljava/lang/String;
    .param p4, "recentlyQueue"    # Ljava/lang/String;
    .param p5, "position"    # I
    .param p6, "uriType"    # I
    .param p7, "keyword"    # Ljava/lang/String;

    .prologue
    .line 251
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerSettingManager;->mServicePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 252
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "queue"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 253
    const-string/jumbo v1, "recently_queue"

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 254
    const-string v1, "list_position"

    invoke-interface {v0, v1, p5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 255
    const-string/jumbo v1, "uri_type"

    invoke-interface {v0, v1, p6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 256
    const-string v1, "query_key"

    invoke-interface {v0, v1, p7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 257
    const-string v1, "queue_version"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 258
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 259
    return-void
.end method

.method public setQueuePosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 207
    const-string v0, "list_position"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->savePreferences(Ljava/lang/String;I)V

    .line 208
    return-void
.end method

.method public setQueueVersion(J)V
    .locals 3
    .param p1, "queueVersion"    # J

    .prologue
    .line 222
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerSettingManager;->mServicePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "queue_version"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 223
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 224
    return-void
.end method

.method public setRepeat(I)V
    .locals 1
    .param p1, "repeat"    # I

    .prologue
    .line 174
    const-string/jumbo v0, "repeat"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->savePreferences(Ljava/lang/String;I)V

    .line 175
    return-void
.end method

.method public setScreenOffMusic(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 290
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string/jumbo v1, "screen_off_music"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    .line 291
    return-void
.end method

.method public setShuffle(I)V
    .locals 1
    .param p1, "shuffle"    # I

    .prologue
    .line 163
    const-string/jumbo v0, "shuffle"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->savePreferences(Ljava/lang/String;I)V

    .line 164
    return-void
.end method

.method public setSkipSilence(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 309
    const-string/jumbo v0, "skip_silences"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->savePreferences(Ljava/lang/String;Z)V

    .line 310
    return-void
.end method

.method public setSmartVolume(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 268
    const-string/jumbo v0, "smart_volume"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->savePreferences(Ljava/lang/String;Z)V

    .line 269
    return-void
.end method

.method public setSortMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 195
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string/jumbo v1, "sort"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putInt(Ljava/lang/String;I)V

    .line 196
    return-void
.end method

.method public setSupportAod(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 334
    const-string/jumbo v0, "support_aod"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->savePreferences(Ljava/lang/String;I)V

    .line 335
    return-void
.end method

.method public setUnionShuffleRepeat(I)V
    .locals 0
    .param p1, "union"    # I

    .prologue
    .line 186
    return-void
.end method

.method public startObserving()V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->getSettingManager()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerSettingManager;->mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;)V

    .line 70
    return-void
.end method

.method public stopObserving()V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->getSettingManager()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerSettingManager;->mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;)V

    .line 75
    return-void
.end method
