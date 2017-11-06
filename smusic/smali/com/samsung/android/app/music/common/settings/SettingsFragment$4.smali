.class Lcom/samsung/android/app/music/common/settings/SettingsFragment$4;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/settings/SettingsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    .prologue
    .line 1325
    iput-object p1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$4;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 10
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1329
    iget-object v6, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$4;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1331
    .local v0, "context":Landroid/content/Context;
    const/4 v6, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v6, :pswitch_data_0

    .line 1458
    :cond_1
    :goto_1
    return-void

    .line 1331
    :sswitch_0
    const-string/jumbo v7, "smart_volume"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v7, "skip_silences"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :sswitch_2
    const-string v7, "lock_screen"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v7, "screen_off_music"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x3

    goto :goto_0

    :sswitch_4
    const-string v7, "barge_in"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :sswitch_5
    const-string v7, "edge_lighting"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x5

    goto :goto_0

    :sswitch_6
    const-string v7, "my_music_mode"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x6

    goto :goto_0

    :sswitch_7
    const-string v7, "mobile_data"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x7

    goto :goto_0

    :sswitch_8
    const-string v7, "duplicate_option"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v6, 0x8

    goto :goto_0

    :sswitch_9
    const-string v7, "explicit_option"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v6, 0x9

    goto :goto_0

    :sswitch_a
    const-string/jumbo v7, "similar_station"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v6, 0xa

    goto :goto_0

    :sswitch_b
    const-string/jumbo v7, "push_notification"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v6, 0xb

    goto/16 :goto_0

    .line 1333
    :pswitch_0
    iget-object v6, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$4;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    invoke-static {v6, p1}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->access$700(Lcom/samsung/android/app/music/common/settings/SettingsFragment;Landroid/content/SharedPreferences;)V

    .line 1334
    iget-object v8, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$4;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    const-string v9, "5006"

    const/4 v6, 0x0

    .line 1335
    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    const-wide/16 v6, 0x1

    .line 1334
    :goto_2
    invoke-static {v8, v9, v6, v7}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->access$800(Lcom/samsung/android/app/music/common/settings/SettingsFragment;Ljava/lang/String;J)V

    .line 1337
    const-string/jumbo v7, "settings_smartVolume"

    const/4 v6, 0x0

    .line 1339
    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "On"

    .line 1337
    :goto_3
    invoke-static {v0, v7, v6}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1335
    :cond_2
    const-wide/16 v6, 0x0

    goto :goto_2

    .line 1339
    :cond_3
    const-string v6, "Off"

    goto :goto_3

    .line 1343
    :pswitch_1
    iget-object v6, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$4;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    invoke-static {v6, p1}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->access$900(Lcom/samsung/android/app/music/common/settings/SettingsFragment;Landroid/content/SharedPreferences;)V

    .line 1344
    iget-object v8, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$4;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    const-string v9, "5007"

    const/4 v6, 0x0

    .line 1345
    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    const-wide/16 v6, 0x1

    .line 1344
    :goto_4
    invoke-static {v8, v9, v6, v7}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->access$800(Lcom/samsung/android/app/music/common/settings/SettingsFragment;Ljava/lang/String;J)V

    .line 1347
    const-string/jumbo v7, "settings_skipSilences"

    const/4 v6, 0x0

    .line 1349
    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "On"

    .line 1347
    :goto_5
    invoke-static {v0, v7, v6}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1345
    :cond_4
    const-wide/16 v6, 0x0

    goto :goto_4

    .line 1349
    :cond_5
    const-string v6, "Off"

    goto :goto_5

    .line 1353
    :pswitch_2
    iget-object v6, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$4;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    invoke-static {v6, p1}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->access$1000(Lcom/samsung/android/app/music/common/settings/SettingsFragment;Landroid/content/SharedPreferences;)V

    .line 1354
    iget-object v8, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$4;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    const-string v9, "5002"

    const/4 v6, 0x0

    .line 1355
    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_6

    const-wide/16 v6, 0x1

    .line 1354
    :goto_6
    invoke-static {v8, v9, v6, v7}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->access$800(Lcom/samsung/android/app/music/common/settings/SettingsFragment;Ljava/lang/String;J)V

    .line 1357
    const-string/jumbo v7, "settings_controlViaLockScreen"

    const/4 v6, 0x0

    .line 1359
    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "On"

    .line 1357
    :goto_7
    invoke-static {v0, v7, v6}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1355
    :cond_6
    const-wide/16 v6, 0x0

    goto :goto_6

    .line 1359
    :cond_7
    const-string v6, "Off"

    goto :goto_7

    .line 1363
    :pswitch_3
    iget-object v6, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$4;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    invoke-static {v6, p1}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->access$1100(Lcom/samsung/android/app/music/common/settings/SettingsFragment;Landroid/content/SharedPreferences;)V

    .line 1364
    iget-object v8, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$4;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    const-string v9, "5003"

    const/4 v6, 0x0

    .line 1365
    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_8

    const-wide/16 v6, 0x1

    .line 1364
    :goto_8
    invoke-static {v8, v9, v6, v7}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->access$800(Lcom/samsung/android/app/music/common/settings/SettingsFragment;Ljava/lang/String;J)V

    .line 1367
    const-string/jumbo v7, "settings_screenOffMusic"

    const/4 v6, 0x0

    .line 1369
    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "On"

    .line 1367
    :goto_9
    invoke-static {v0, v7, v6}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1365
    :cond_8
    const-wide/16 v6, 0x0

    goto :goto_8

    .line 1369
    :cond_9
    const-string v6, "Off"

    goto :goto_9

    .line 1373
    :pswitch_4
    iget-object v6, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$4;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    invoke-static {v6, p1}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->access$1200(Lcom/samsung/android/app/music/common/settings/SettingsFragment;Landroid/content/SharedPreferences;)V

    goto/16 :goto_1

    .line 1376
    :pswitch_5
    iget-object v6, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$4;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    invoke-static {v6, p1}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->access$1300(Lcom/samsung/android/app/music/common/settings/SettingsFragment;Landroid/content/SharedPreferences;)V

    goto/16 :goto_1

    .line 1379
    :pswitch_6
    const/4 v6, 0x0

    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 1380
    .local v5, "value":Z
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v6

    if-eq v5, v6, :cond_1

    .line 1381
    iget-object v6, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$4;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x0

    .line 1382
    invoke-interface {p1, p2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 1381
    invoke-static {v6, v7}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->setMyMusicModeWithConfirmDialog(Landroid/app/Activity;Z)V

    goto/16 :goto_1

    .line 1386
    .end local v5    # "value":Z
    :pswitch_7
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v6

    const-string v7, "mobile_data"

    iget-object v8, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$4;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    .line 1387
    invoke-static {v8}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->access$1400(Lcom/samsung/android/app/music/common/settings/SettingsFragment;)Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;->getKey()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 1386
    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    .line 1388
    iget-object v8, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$4;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    const-string v9, "5202"

    const/4 v6, 0x0

    .line 1389
    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_a

    const-wide/16 v6, 0x1

    .line 1388
    :goto_a
    invoke-static {v8, v9, v6, v7}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->access$800(Lcom/samsung/android/app/music/common/settings/SettingsFragment;Ljava/lang/String;J)V

    .line 1391
    const-string/jumbo v7, "settings_mobileData"

    const/4 v6, 0x0

    .line 1393
    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "On"

    .line 1391
    :goto_b
    invoke-static {v0, v7, v6}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1389
    :cond_a
    const-wide/16 v6, 0x0

    goto :goto_a

    .line 1393
    :cond_b
    const-string v6, "Off"

    goto :goto_b

    .line 1397
    :pswitch_8
    const/4 v6, 0x0

    .line 1398
    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->setDuplicateOption(Z)V

    .line 1399
    iget-object v8, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$4;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    const-string v9, "5207"

    const/4 v6, 0x0

    .line 1400
    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_c

    const-wide/16 v6, 0x1

    .line 1399
    :goto_c
    invoke-static {v8, v9, v6, v7}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->access$800(Lcom/samsung/android/app/music/common/settings/SettingsFragment;Ljava/lang/String;J)V

    .line 1402
    const-string/jumbo v7, "settings_deleteDuplicatedTrackLists"

    const/4 v6, 0x0

    .line 1404
    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_d

    const-string v6, "On"

    .line 1402
    :goto_d
    invoke-static {v0, v7, v6}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1400
    :cond_c
    const-wide/16 v6, 0x0

    goto :goto_c

    .line 1404
    :cond_d
    const-string v6, "Off"

    goto :goto_d

    .line 1408
    :pswitch_9
    iget-object v8, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$4;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    const-string v9, "5208"

    const/4 v6, 0x0

    .line 1409
    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_e

    const-wide/16 v6, 0x1

    .line 1408
    :goto_e
    invoke-static {v8, v9, v6, v7}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->access$800(Lcom/samsung/android/app/music/common/settings/SettingsFragment;Ljava/lang/String;J)V

    .line 1411
    const-string/jumbo v7, "settings_explicitContents"

    const/4 v6, 0x0

    .line 1413
    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_f

    const-string v6, "On"

    .line 1411
    :goto_f
    invoke-static {v0, v7, v6}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    iget-object v6, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$4;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    invoke-static {v6, p1}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->access$1500(Lcom/samsung/android/app/music/common/settings/SettingsFragment;Landroid/content/SharedPreferences;)V

    goto/16 :goto_1

    .line 1409
    :cond_e
    const-wide/16 v6, 0x0

    goto :goto_e

    .line 1413
    :cond_f
    const-string v6, "Off"

    goto :goto_f

    .line 1419
    :pswitch_a
    iget-object v6, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$4;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    invoke-static {v6, p1}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->access$1600(Lcom/samsung/android/app/music/common/settings/SettingsFragment;Landroid/content/SharedPreferences;)V

    .line 1420
    iget-object v8, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$4;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    const-string v9, "5209"

    const/4 v6, 0x0

    .line 1421
    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_10

    const-wide/16 v6, 0x1

    .line 1420
    :goto_10
    invoke-static {v8, v9, v6, v7}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->access$800(Lcom/samsung/android/app/music/common/settings/SettingsFragment;Ljava/lang/String;J)V

    .line 1423
    const-string/jumbo v7, "settings_playSimilarStations"

    const/4 v6, 0x0

    .line 1425
    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_11

    const-string v6, "On"

    .line 1423
    :goto_11
    invoke-static {v0, v7, v6}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1421
    :cond_10
    const-wide/16 v6, 0x0

    goto :goto_10

    .line 1425
    :cond_11
    const-string v6, "Off"

    goto :goto_11

    .line 1430
    :pswitch_b
    iget-object v6, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$4;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    .line 1431
    invoke-static {v6}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->access$1700(Lcom/samsung/android/app/music/common/settings/SettingsFragment;)Landroid/preference/SwitchPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1432
    .local v2, "isOptIn":Z
    iget-object v6, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$4;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->setPushAgreement(Landroid/content/Context;Z)V

    .line 1436
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy/MM/dd"

    sget-object v7, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v1, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1438
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v6, "GMT"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1439
    new-instance v6, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 1440
    .local v4, "time":Ljava/lang/String;
    if-eqz v2, :cond_12

    iget-object v6, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$4;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0a0388

    .line 1441
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1445
    .local v3, "str":Ljava/lang/String;
    :goto_12
    iget-object v6, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$4;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    .line 1446
    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 1445
    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 1446
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 1448
    iget-object v8, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$4;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    const-string v9, "5210"

    const/4 v6, 0x0

    .line 1449
    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_13

    const-wide/16 v6, 0x1

    .line 1448
    :goto_13
    invoke-static {v8, v9, v6, v7}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->access$800(Lcom/samsung/android/app/music/common/settings/SettingsFragment;Ljava/lang/String;J)V

    .line 1451
    const-string/jumbo v7, "settigns_allowPushNotifications"

    const/4 v6, 0x0

    .line 1453
    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_14

    const-string v6, "On"

    .line 1451
    :goto_14
    invoke-static {v0, v7, v6}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1441
    .end local v3    # "str":Ljava/lang/String;
    :cond_12
    iget-object v6, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$4;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    .line 1442
    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0a0387

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_12

    .line 1449
    .restart local v3    # "str":Ljava/lang/String;
    :cond_13
    const-wide/16 v6, 0x0

    goto :goto_13

    .line 1453
    :cond_14
    const-string v6, "Off"

    goto :goto_14

    .line 1331
    nop

    :sswitch_data_0
    .sparse-switch
        -0x682d180d -> :sswitch_4
        -0x5b66d4b2 -> :sswitch_5
        -0x4e55d2d9 -> :sswitch_7
        -0x42ab8320 -> :sswitch_9
        -0x291aecbe -> :sswitch_3
        -0x16c21e00 -> :sswitch_2
        -0xc6215b0 -> :sswitch_0
        0x27c01df0 -> :sswitch_b
        0x397362e0 -> :sswitch_a
        0x431e57f0 -> :sswitch_6
        0x6e13aab2 -> :sswitch_1
        0x7ac68629 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
