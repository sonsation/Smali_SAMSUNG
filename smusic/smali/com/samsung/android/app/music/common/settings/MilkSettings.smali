.class public Lcom/samsung/android/app/music/common/settings/MilkSettings;
.super Ljava/lang/Object;
.source "MilkSettings.java"


# static fields
.field private static final DEFAULT_CACHE_SIZE:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 140
    sget-object v0, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->MB_500:Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->getValue()J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/app/music/common/settings/MilkSettings;->DEFAULT_CACHE_SIZE:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAudioQualityIndex(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    const-string/jumbo v0, "streaming"

    invoke-static {p0, v0}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->getAudioQualityIndex(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getAudioQualityIndex(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 112
    const-string/jumbo v1, "streaming"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->hasDataConnection(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->getActiveNetworkType(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 115
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v1

    const-string v2, "milk_streaming_quality_wifi"

    .line 116
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 133
    .local v0, "currentQualityIndex":I
    :goto_0
    return v0

    .line 119
    .end local v0    # "currentQualityIndex":I
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v1

    const-string v2, "milk_streaming_quality_mobile"

    .line 120
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    .restart local v0    # "currentQualityIndex":I
    goto :goto_0

    .line 124
    .end local v0    # "currentQualityIndex":I
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v1

    const-string v2, "milk_streaming_quality_last_listen"

    .line 125
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    .restart local v0    # "currentQualityIndex":I
    goto :goto_0

    .line 129
    .end local v0    # "currentQualityIndex":I
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v1

    const-string v2, "milk_download_quality"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    .restart local v0    # "currentQualityIndex":I
    goto :goto_0
.end method

.method public static getDuplicateOption()Z
    .locals 3

    .prologue
    .line 46
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "duplicate_option"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getEnqueueOption()I
    .locals 4

    .prologue
    .line 32
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->getPlayOption()I

    move-result v0

    .line 33
    .local v0, "playOption":I
    if-nez v0, :cond_0

    .line 34
    const/4 v1, 0x5

    .line 37
    :goto_0
    return v1

    .line 36
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v1

    const-string v2, "enqueue_option"

    const/4 v3, 0x1

    .line 37
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method public static getMaxStreamingCacheSize()J
    .locals 4

    .prologue
    .line 143
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string/jumbo v1, "streaming_cache_size"

    sget-wide v2, Lcom/samsung/android/app/music/common/settings/MilkSettings;->DEFAULT_CACHE_SIZE:J

    .line 144
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPlayOption()I
    .locals 3

    .prologue
    .line 24
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string/jumbo v1, "play_option"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSimilarStationOption()Z
    .locals 3

    .prologue
    .line 54
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string/jumbo v1, "similar_station"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static getUiPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    const-string v0, "music_player_pref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static isMyMusicMode()Z
    .locals 3

    .prologue
    .line 62
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "my_music_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPushAgreement(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-static {p0}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->getUiPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "push_notification"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setDuplicateOption(Z)V
    .locals 2
    .param p0, "on"    # Z

    .prologue
    .line 50
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "duplicate_option"

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    .line 51
    return-void
.end method

.method public static setEnqueueOption(I)V
    .locals 2
    .param p0, "enqueueOption"    # I

    .prologue
    .line 42
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "enqueue_option"

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putInt(Ljava/lang/String;I)V

    .line 43
    return-void
.end method

.method public static setMaxStreamingCacheSize(J)V
    .locals 2
    .param p0, "size"    # J

    .prologue
    .line 137
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string/jumbo v1, "streaming_cache_size"

    invoke-virtual {v0, v1, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putLong(Ljava/lang/String;J)V

    .line 138
    return-void
.end method

.method public static setMyMusicMode(Z)V
    .locals 2
    .param p0, "isOn"    # Z

    .prologue
    .line 66
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "my_music_mode"

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    .line 67
    return-void
.end method

.method public static setMyMusicModeWithConfirmDialog(Landroid/app/Activity;Z)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "isOn"    # Z

    .prologue
    const/4 v4, 0x0

    .line 70
    if-eqz p1, :cond_1

    const-string v2, "my_music_mode_show_confirm_on"

    .line 72
    .local v2, "key":Ljava/lang/String;
    :goto_0
    const-string v3, "music_player_pref"

    .line 73
    invoke-virtual {p0, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 74
    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 75
    .local v0, "doNotShowAgain":Z
    if-nez v0, :cond_2

    .line 76
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 77
    .local v1, "fm":Landroid/app/FragmentManager;
    sget-object v3, Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_0

    .line 78
    invoke-static {p1}, Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog;->newInstance(Z)Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 83
    .end local v1    # "fm":Landroid/app/FragmentManager;
    :cond_0
    :goto_1
    return-void

    .line 70
    .end local v0    # "doNotShowAgain":Z
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    const-string v2, "my_music_mode_show_confirm_off"

    goto :goto_0

    .line 81
    .restart local v0    # "doNotShowAgain":Z
    .restart local v2    # "key":Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->setMyMusicMode(Z)V

    goto :goto_1
.end method

.method public static setPlayOption(I)V
    .locals 2
    .param p0, "playOption"    # I

    .prologue
    .line 28
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string/jumbo v1, "play_option"

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putInt(Ljava/lang/String;I)V

    .line 29
    return-void
.end method

.method public static setPushAgreement(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isOn"    # Z

    .prologue
    .line 90
    invoke-static {p0}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->getUiPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 91
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "push_notification"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/common/gcm/PPMT/PpmtController;->setPushAgreement(Landroid/content/Context;Z)V

    .line 95
    :cond_0
    return-void
.end method

.method public static setSimilarStationOption(Z)V
    .locals 2
    .param p0, "on"    # Z

    .prologue
    .line 58
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string/jumbo v1, "similar_station"

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    .line 59
    return-void
.end method
