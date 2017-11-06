.class final Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$1;
.super Ljava/lang/Thread;
.source "SamsungAnalyticsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings;->setSettingsAnalytics(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 86
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$1;->val$context:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings;->access$000(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 89
    .local v6, "musicServicePref":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$1;->val$context:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string/jumbo v21, "settings_localMusicOnlyMode"

    .line 91
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v19

    if-eqz v19, :cond_0

    const-string v19, "On"

    .line 89
    :goto_0
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$1;->val$context:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string/jumbo v21, "settings_mobileData"

    .line 96
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v19

    const-string v22, "mobile_data"

    const/16 v23, 0x0

    .line 97
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_1

    const-string v19, "On"

    .line 95
    :goto_1
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 102
    .local v7, "myMusicTab":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v13, Ljava/util/StringTokenizer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$1;->val$context:Landroid/content/Context;

    move-object/from16 v19, v0

    .line 103
    invoke-static/range {v19 .. v19}, Lcom/samsung/android/app/music/common/util/TabUtils;->getAllTabs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "|"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v13, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .local v13, "strTokenAllTabs":Ljava/util/StringTokenizer;
    :goto_2
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 106
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .line 107
    .local v16, "token":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 108
    .local v17, "type":I
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 265
    .end local v6    # "musicServicePref":Landroid/content/SharedPreferences;
    .end local v7    # "myMusicTab":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v13    # "strTokenAllTabs":Ljava/util/StringTokenizer;
    .end local v16    # "token":Ljava/lang/String;
    .end local v17    # "type":I
    :catch_0
    move-exception v4

    .line 266
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 268
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_3
    return-void

    .line 91
    .restart local v6    # "musicServicePref":Landroid/content/SharedPreferences;
    :cond_0
    :try_start_1
    const-string v19, "Off"

    goto :goto_0

    .line 97
    :cond_1
    const-string v19, "Off"

    goto :goto_1

    .line 110
    .restart local v7    # "myMusicTab":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v13    # "strTokenAllTabs":Ljava/util/StringTokenizer;
    :cond_2
    new-instance v14, Ljava/util/StringTokenizer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$1;->val$context:Landroid/content/Context;

    move-object/from16 v19, v0

    .line 111
    invoke-static/range {v19 .. v19}, Lcom/samsung/android/app/music/common/util/TabUtils;->getEnabledTabs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "|"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v14, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .local v14, "strTokenEnabledTabs":Ljava/util/StringTokenizer;
    :goto_4
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 113
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .line 114
    .restart local v16    # "token":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 115
    .restart local v17    # "type":I
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 119
    .end local v16    # "token":Ljava/lang/String;
    .end local v17    # "type":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$1;->val$context:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string/jumbo v21, "settings_manageMyMusicTabs_heart"

    const v19, 0x10030

    .line 121
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    if-lez v19, :cond_8

    const-string v19, "On"

    .line 119
    :goto_5
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$1;->val$context:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string/jumbo v21, "settings_manageMyMusicTabs_playlists"

    const v19, 0x10004

    .line 125
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    if-lez v19, :cond_9

    const-string v19, "On"

    .line 123
    :goto_6
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$1;->val$context:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string/jumbo v21, "settings_manageMyMusicTabs_tracks"

    const v19, 0x110001

    .line 129
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    if-lez v19, :cond_a

    const-string v19, "On"

    .line 127
    :goto_7
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$1;->val$context:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string/jumbo v21, "settings_manageMyMusicTabs_albums"

    const v19, 0x10002

    .line 133
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    if-lez v19, :cond_b

    const-string v19, "On"

    .line 131
    :goto_8
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$1;->val$context:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string/jumbo v21, "settings_manageMyMusicTabs_artists"

    const v19, 0x10003

    .line 137
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    if-lez v19, :cond_c

    const-string v19, "On"

    .line 135
    :goto_9
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$1;->val$context:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string/jumbo v21, "settings_manageMyMusicTabs_genres"

    const v19, 0x10006

    .line 141
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    if-lez v19, :cond_d

    const-string v19, "On"

    .line 139
    :goto_a
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$1;->val$context:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string/jumbo v21, "settings_manageMyMusicTabs_folders"

    const v19, 0x10007

    .line 145
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    if-lez v19, :cond_e

    const-string v19, "On"

    .line 143
    :goto_b
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$1;->val$context:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string/jumbo v21, "settings_manageMyMusicTabs_composers"

    const v19, 0x10008

    .line 149
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    if-lez v19, :cond_f

    const-string v19, "On"

    .line 147
    :goto_c
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$1;->val$context:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string/jumbo v21, "settings_controlViaLockScreen"

    const-string v19, "lock_screen"

    const/16 v22, 0x0

    .line 153
    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_10

    const-string v19, "On"

    .line 152
    :goto_d
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$1;->val$context:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string/jumbo v21, "settings_screenOffMusic"

    const-string/jumbo v19, "screen_off_music"

    const/16 v22, 0x0

    .line 157
    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_11

    const-string v19, "On"

    .line 156
    :goto_e
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getSettingsPlaySpeed()F

    move-result v9

    .line 161
    .local v9, "playSpeed":F
    const/16 v19, 0x0

    cmpg-float v19, v9, v19

    if-gtz v19, :cond_4

    .line 162
    const/high16 v9, 0x3f800000    # 1.0f

    .line 164
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$1;->val$context:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "settings_PlaySpeed"

    invoke-static {v9}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings;->access$100(F)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$1;->val$context:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings;->access$200(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    const-string v20, "music_auto_off_entry_position"

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 168
    .local v10, "position":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$1;->val$context:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string/jumbo v21, "settings_sleepTimer"

    sget-object v19, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$SleepTimer;->VALUES:Ljava/util/List;

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$1;->val$context:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string/jumbo v21, "settings_smartVolume"

    const-string/jumbo v19, "smart_volume"

    const/16 v22, 0x0

    .line 172
    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_12

    const-string v19, "On"

    .line 171
    :goto_f
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$1;->val$context:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string/jumbo v21, "settings_skipSilences"

    const-string/jumbo v19, "skip_silences"

    const/16 v22, 0x0

    .line 176
    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_13

    const-string v19, "On"

    .line 175
    :goto_10
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v19

    const-string v20, "milk_streaming_quality_mobile"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 180
    .local v5, "mobileQualityType":I
    const/4 v12, 0x0

    .line 181
    .local v12, "strMobileQuality":Ljava/lang/String;
    packed-switch v5, :pswitch_data_0

    .line 192
    const/4 v12, 0x0

    .line 195
    :goto_11
    if-eqz v12, :cond_5

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$1;->val$context:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "settings_streamingAudioQuality_mobile"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v12}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_5
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v19

    const-string v20, "milk_streaming_quality_wifi"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 201
    .local v18, "wifiQualityType":I
    const/4 v15, 0x0

    .line 202
    .local v15, "strWifiQuality":Ljava/lang/String;
    packed-switch v18, :pswitch_data_1

    .line 213
    const/4 v15, 0x0

    .line 216
    :goto_12
    if-eqz v15, :cond_6

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$1;->val$context:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "settings_streamingAudioQuality_wifi"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v15}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_6
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v19

    const-string v20, "milk_download_quality"

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 223
    .local v3, "downloadQualityType":I
    const/4 v11, 0x0

    .line 224
    .local v11, "strDownloadQuality":Ljava/lang/String;
    packed-switch v3, :pswitch_data_2

    .line 232
    const/4 v11, 0x0

    .line 235
    :goto_13
    if-eqz v11, :cond_7

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$1;->val$context:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "settings_downloadingAudioQuality"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v11}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_7
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v19

    const-string/jumbo v20, "play_option"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 241
    .local v8, "playOptionType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$1;->val$context:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "settings_playlistOrderingOption"

    invoke-static {v8}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaySetting;->getDetailByPosition(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$1;->val$context:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string/jumbo v21, "settings_deleteDuplicatedTrackLists"

    .line 246
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->getDuplicateOption()Z

    move-result v19

    if-eqz v19, :cond_14

    const-string v19, "On"

    .line 245
    :goto_14
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$1;->val$context:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string/jumbo v21, "settings_explicitContents"

    .line 251
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v19

    const-string v22, "explicit_option"

    const/16 v23, 0x0

    .line 252
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_15

    const-string v19, "On"

    .line 250
    :goto_15
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$1;->val$context:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string/jumbo v21, "settings_playSimilarStations"

    .line 257
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->getSimilarStationOption()Z

    move-result v19

    if-eqz v19, :cond_16

    const-string v19, "On"

    .line 256
    :goto_16
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$1;->val$context:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string/jumbo v21, "settigns_allowPushNotifications"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$1;->val$context:Landroid/content/Context;

    move-object/from16 v19, v0

    .line 262
    invoke-static/range {v19 .. v19}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings;->access$200(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    const-string/jumbo v22, "push_notification"

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_17

    const-string v19, "On"

    .line 261
    :goto_17
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$1;->val$context:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "is_default_setting_value"

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->setValue(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 121
    .end local v3    # "downloadQualityType":I
    .end local v5    # "mobileQualityType":I
    .end local v8    # "playOptionType":I
    .end local v9    # "playSpeed":F
    .end local v10    # "position":I
    .end local v11    # "strDownloadQuality":Ljava/lang/String;
    .end local v12    # "strMobileQuality":Ljava/lang/String;
    .end local v15    # "strWifiQuality":Ljava/lang/String;
    .end local v18    # "wifiQualityType":I
    :cond_8
    const-string v19, "Off"

    goto/16 :goto_5

    .line 125
    :cond_9
    const-string v19, "Off"

    goto/16 :goto_6

    .line 129
    :cond_a
    const-string v19, "Off"

    goto/16 :goto_7

    .line 133
    :cond_b
    const-string v19, "Off"

    goto/16 :goto_8

    .line 137
    :cond_c
    const-string v19, "Off"

    goto/16 :goto_9

    .line 141
    :cond_d
    const-string v19, "Off"

    goto/16 :goto_a

    .line 145
    :cond_e
    const-string v19, "Off"

    goto/16 :goto_b

    .line 149
    :cond_f
    const-string v19, "Off"

    goto/16 :goto_c

    .line 153
    :cond_10
    const-string v19, "Off"

    goto/16 :goto_d

    .line 157
    :cond_11
    const-string v19, "Off"

    goto/16 :goto_e

    .line 172
    .restart local v9    # "playSpeed":F
    .restart local v10    # "position":I
    :cond_12
    const-string v19, "Off"

    goto/16 :goto_f

    .line 176
    :cond_13
    const-string v19, "Off"

    goto/16 :goto_10

    .line 183
    .restart local v5    # "mobileQualityType":I
    .restart local v12    # "strMobileQuality":Ljava/lang/String;
    :pswitch_0
    sget-object v19, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->LOW_AAC:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->getDetailValue()Ljava/lang/String;

    move-result-object v12

    .line 184
    goto/16 :goto_11

    .line 186
    :pswitch_1
    sget-object v19, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->MIDDLE_192:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->getDetailValue()Ljava/lang/String;

    move-result-object v12

    .line 187
    goto/16 :goto_11

    .line 189
    :pswitch_2
    sget-object v19, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->HIGH_320:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->getDetailValue()Ljava/lang/String;

    move-result-object v12

    .line 190
    goto/16 :goto_11

    .line 204
    .restart local v15    # "strWifiQuality":Ljava/lang/String;
    .restart local v18    # "wifiQualityType":I
    :pswitch_3
    sget-object v19, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->LOW_AAC:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->getDetailValue()Ljava/lang/String;

    move-result-object v15

    .line 205
    goto/16 :goto_12

    .line 207
    :pswitch_4
    sget-object v19, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->MIDDLE_192:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->getDetailValue()Ljava/lang/String;

    move-result-object v15

    .line 208
    goto/16 :goto_12

    .line 210
    :pswitch_5
    sget-object v19, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->HIGH_320:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->getDetailValue()Ljava/lang/String;

    move-result-object v15

    .line 211
    goto/16 :goto_12

    .line 226
    .restart local v3    # "downloadQualityType":I
    .restart local v11    # "strDownloadQuality":Ljava/lang/String;
    :pswitch_6
    sget-object v19, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->MIDDLE_192:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->getDetailValue()Ljava/lang/String;

    move-result-object v11

    .line 227
    goto/16 :goto_13

    .line 229
    :pswitch_7
    sget-object v19, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->HIGH_320:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->getDetailValue()Ljava/lang/String;

    move-result-object v11

    .line 230
    goto/16 :goto_13

    .line 246
    .restart local v8    # "playOptionType":I
    :cond_14
    const-string v19, "Off"

    goto/16 :goto_14

    .line 252
    :cond_15
    const-string v19, "Off"

    goto/16 :goto_15

    .line 257
    :cond_16
    const-string v19, "Off"

    goto/16 :goto_16

    .line 262
    :cond_17
    const-string v19, "Off"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_17

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 202
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 224
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
