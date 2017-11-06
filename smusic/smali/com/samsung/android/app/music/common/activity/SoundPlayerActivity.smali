.class public Lcom/samsung/android/app/music/common/activity/SoundPlayerActivity;
.super Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;
.source "SoundPlayerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;-><init>()V

    return-void
.end method

.method private loggingInternal(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 78
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 79
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 80
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "strUri":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    .line 83
    .local v0, "sm":Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;
    const-string v3, "content://com.sec.android.app.myfiles.FileProvider/"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 84
    const-string v3, "0024"

    const-string v4, "In my files"

    invoke-virtual {v0, v5, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .end local v0    # "sm":Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;
    .end local v1    # "strUri":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 87
    .restart local v0    # "sm":Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;
    .restart local v1    # "strUri":Ljava/lang/String;
    :cond_1
    const-string v3, "0024"

    const-string v4, "ETC"

    invoke-virtual {v0, v5, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected getPlayableId(J)J
    .locals 3
    .param p1, "audioId"    # J

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/SoundPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/music/common/util/ListUtils;->convertToMusicProviderId(Landroid/content/Context;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected isNeedToIntentForwarding()Z
    .locals 5

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/SoundPlayerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 46
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/SoundPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 47
    .local v0, "context":Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/android/app/music/common/util/ComponentDisabler;->hasMusicCommonUtility(Landroid/content/pm/PackageManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/SoundPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 49
    .local v1, "i":Landroid/content/Intent;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 50
    const-string v3, "com.sec.android.mmapp"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 52
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/ComponentDisabler;->setSoundPickerDisableSettings(Landroid/content/Context;)V

    .line 53
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-eq v3, v4, :cond_1

    .line 54
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/ComponentDisabler;->setSoundPlayerDisableSetting(Landroid/content/Context;)V

    .line 55
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/activity/SoundPlayerActivity;->startActivity(Landroid/content/Intent;)V

    .line 56
    const/4 v3, 0x1

    .line 62
    .end local v1    # "i":Landroid/content/Intent;
    :goto_0
    return v3

    .line 59
    :cond_0
    invoke-static {v2}, Lcom/samsung/android/app/music/common/util/ComponentDisabler;->hasLegacySoundPicker(Landroid/content/pm/PackageManager;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 60
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/ComponentDisabler;->setSoundPickerDisableSettings(Landroid/content/Context;)V

    .line 62
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected launchPlayer(Ljava/lang/String;JJZ)V
    .locals 10
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "playableId"    # J
    .param p4, "seekPosition"    # J
    .param p6, "play"    # Z

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/SoundPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/common/util/ListUtils;->getListFromPath(Landroid/content/Context;Ljava/lang/String;)[J

    move-result-object v2

    .line 32
    .local v2, "list":[J
    invoke-static {v2, p2, p3}, Lcom/samsung/android/app/music/common/util/ListUtils;->getListPosition([JJ)I

    move-result v3

    .line 33
    .local v3, "position":I
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-wide v6, p4

    move/from16 v8, p6

    .line 34
    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->openList(Ljava/lang/String;[JILjava/lang/String;ZJZ)V

    .line 36
    new-instance v9, Landroid/content/Intent;

    const-string v0, "com.sec.android.app.music.intent.action.LAUNCH_MUSIC"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/SoundPlayerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    invoke-virtual {p0, v9}, Lcom/samsung/android/app/music/common/activity/SoundPlayerActivity;->startActivity(Landroid/content/Intent;)V

    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/SoundPlayerActivity;->finish()V

    .line 40
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/SoundPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/activity/SoundPlayerActivity;->loggingInternal(Landroid/content/Intent;)V

    .line 69
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 74
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/activity/SoundPlayerActivity;->loggingInternal(Landroid/content/Intent;)V

    .line 75
    return-void
.end method
