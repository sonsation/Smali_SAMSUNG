.class Lcom/samsung/android/app/music/common/menu/LaunchMenu;
.super Ljava/lang/Object;
.source "LaunchMenu.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mContext:Landroid/content/Context;

.field private final mFragment:Landroid/app/Fragment;

.field private final mIsQuickConnectAudioPathSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/samsung/android/app/music/common/menu/LaunchMenu;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/menu/LaunchMenu;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/menu/LaunchMenu;->mActivity:Landroid/app/Activity;

    .line 52
    iput-object p1, p0, Lcom/samsung/android/app/music/common/menu/LaunchMenu;->mFragment:Landroid/app/Fragment;

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/LaunchMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/menu/LaunchMenu;->mContext:Landroid/content/Context;

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/LaunchMenu;->mContext:Landroid/content/Context;

    .line 55
    invoke-static {v0}, Lcom/samsung/android/app/music/common/info/features/MusicFeatures;->isQuickConnectAudioPathSupported(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/menu/LaunchMenu;->mIsQuickConnectAudioPathSupported:Z

    .line 56
    return-void
.end method

.method private static performMenuListenViaBt(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 185
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->isBtConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->changeSoundPathTo(I)V

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/LaunchUtils;->startBluetoothDevicePicker(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private static performMenuListenViaDevice()V
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->changeSoundPathTo(I)V

    .line 194
    return-void
.end method

.method private updateMenuBadgeLaunchSetting(Landroid/view/Menu;I)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "id"    # I

    .prologue
    const/4 v5, 0x0

    .line 170
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    check-cast v1, Landroid/view/SemMenuItem;

    .line 171
    .local v1, "item":Landroid/view/SemMenuItem;
    if-nez v1, :cond_0

    .line 182
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/common/menu/LaunchMenu;->mContext:Landroid/content/Context;

    const-string v4, "music_player_pref"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 176
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const-string v3, "com.sec.android.app.music.KEY_APP_UPDATE_BADGE"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 177
    .local v0, "badge":Z
    if-eqz v0, :cond_1

    .line 178
    iget-object v3, p0, Lcom/samsung/android/app/music/common/menu/LaunchMenu;->mContext:Landroid/content/Context;

    const v4, 0x7f0a04af

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/view/SemMenuItem;->setBadgeText(Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_1
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/view/SemMenuItem;->setBadgeText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateMenuVisibleListenVia(Landroid/view/Menu;I)V
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "id"    # I

    .prologue
    const v6, 0x7f1205c1

    const/4 v7, 0x0

    .line 111
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 112
    .local v3, "item":Landroid/view/MenuItem;
    if-nez v3, :cond_0

    .line 155
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-boolean v5, p0, Lcom/samsung/android/app/music/common/menu/LaunchMenu;->mIsQuickConnectAudioPathSupported:Z

    if-eqz v5, :cond_1

    .line 116
    sget-object v5, Lcom/samsung/android/app/music/common/menu/LaunchMenu;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "updateMenuVisibleListenVia() - Disabled: QuickConnect supports to change AudioPath."

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 122
    :cond_1
    if-ne p2, v6, :cond_2

    .line 123
    iget-object v5, p0, Lcom/samsung/android/app/music/common/menu/LaunchMenu;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v2

    .line 124
    .local v2, "isWfdConnected":Z
    if-eqz v2, :cond_2

    .line 125
    sget-object v5, Lcom/samsung/android/app/music/common/menu/LaunchMenu;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "updateMenuVisibleListenVia - isWfdConnected"

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 131
    .end local v2    # "isWfdConnected":Z
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/app/music/common/menu/LaunchMenu;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    move-result-object v0

    .line 132
    .local v0, "audio":Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;
    const/4 v4, 0x1

    .line 134
    .local v4, "visible":Z
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isAudioPathBT()Z

    move-result v1

    .line 135
    .local v1, "isAudioPathBT":Z
    if-ne p2, v6, :cond_4

    if-eqz v1, :cond_4

    .line 136
    sget-object v5, Lcom/samsung/android/app/music/common/menu/LaunchMenu;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "updateMenuVisibleListenVia - isAudioPathBT"

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const/4 v4, 0x0

    .line 154
    :cond_3
    :goto_1
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 138
    :cond_4
    const v5, 0x7f1205c2

    if-ne p2, v5, :cond_5

    if-nez v1, :cond_5

    .line 139
    sget-object v5, Lcom/samsung/android/app/music/common/menu/LaunchMenu;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "updateMenuVisibleListenVia - !isAudioPathBT"

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const/4 v4, 0x0

    goto :goto_1

    .line 141
    :cond_5
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isWiredHeadsetOn()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 142
    sget-object v5, Lcom/samsung/android/app/music/common/menu/LaunchMenu;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "updateMenuVisibleListenVia - isWiredHeadsetOn"

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const/4 v4, 0x0

    goto :goto_1

    .line 144
    :cond_6
    iget-object v5, p0, Lcom/samsung/android/app/music/common/menu/LaunchMenu;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isKnoxModeOn(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 145
    sget-object v5, Lcom/samsung/android/app/music/common/menu/LaunchMenu;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "updateMenuVisibleListenVia - isKnoxModeOn"

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const/4 v4, 0x0

    goto :goto_1

    .line 147
    :cond_7
    iget-object v5, p0, Lcom/samsung/android/app/music/common/menu/LaunchMenu;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isAndroidForWorkMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 148
    sget-object v5, Lcom/samsung/android/app/music/common/menu/LaunchMenu;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "updateMenuVisibleListenVia - isAndroidForWorkMode"

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/4 v4, 0x0

    goto :goto_1

    .line 150
    :cond_8
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->isDmrPlaying()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 151
    sget-object v5, Lcom/samsung/android/app/music/common/menu/LaunchMenu;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "updateMenuVisibleListenVia - isDmrPlaying"

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private updateMenuVisibleSoundAlive(Landroid/view/Menu;I)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "id"    # I

    .prologue
    .line 158
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 159
    .local v0, "item":Landroid/view/MenuItem;
    if-nez v0, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/LaunchMenu;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/util/UiUtils;->isUPSMMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 60
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x0

    .line 74
    const/4 v0, 0x1

    .line 75
    .local v0, "handled":Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 104
    const/4 v0, 0x0

    .line 107
    :goto_0
    return v0

    .line 77
    :sswitch_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/LaunchMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/menu/LaunchMenu;->performMenuListenViaBt(Landroid/app/Activity;)V

    goto :goto_0

    .line 80
    :sswitch_1
    invoke-static {}, Lcom/samsung/android/app/music/common/menu/LaunchMenu;->performMenuListenViaDevice()V

    goto :goto_0

    .line 83
    :sswitch_2
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/LaunchMenu;->mActivity:Landroid/app/Activity;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/menu/LaunchMenu;->mActivity:Landroid/app/Activity;

    const-class v5, Lcom/samsung/android/app/music/common/settings/SettingsActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 84
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/LaunchMenu;->mActivity:Landroid/app/Activity;

    const-string v3, "ESIN"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    const-string v3, "0003"

    .line 86
    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :sswitch_3
    sget-boolean v2, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$Version;->FX:Z

    if-eqz v2, :cond_1

    .line 90
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/LaunchMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/legacy/soundalive/utils/LegacySoundAliveUtils;->launchSoundAlive(Landroid/app/Activity;)V

    .line 96
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/LaunchMenu;->mFragment:Landroid/app/Fragment;

    instance-of v2, v2, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/LaunchMenu;->mFragment:Landroid/app/Fragment;

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    move-object v1, v2

    .line 99
    .local v1, "screenIdGetter":Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    .line 100
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;->getScreenId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0002"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    .end local v1    # "screenIdGetter":Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/LaunchMenu;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/menu/LaunchMenu;->mActivity:Landroid/app/Activity;

    instance-of v3, v3, Lcom/samsung/android/app/music/common/activity/PlayerActivity;

    .line 93
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getAudioSessionId()I

    move-result v4

    .line 92
    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->launchSoundAlive(Landroid/app/Activity;ZI)V

    goto :goto_1

    .line 75
    :sswitch_data_0
    .sparse-switch
        0x7f12001d -> :sswitch_3
        0x7f1205b5 -> :sswitch_2
        0x7f1205c1 -> :sswitch_0
        0x7f1205c2 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 64
    const v0, 0x7f1205c1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/common/menu/LaunchMenu;->updateMenuVisibleListenVia(Landroid/view/Menu;I)V

    .line 65
    const v0, 0x7f1205c2

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/common/menu/LaunchMenu;->updateMenuVisibleListenVia(Landroid/view/Menu;I)V

    .line 66
    const v0, 0x7f12001d

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/common/menu/LaunchMenu;->updateMenuVisibleSoundAlive(Landroid/view/Menu;I)V

    .line 67
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_APP_UPDATE_BADGE:Z

    if-eqz v0, :cond_0

    .line 68
    const v0, 0x7f1205b5

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/common/menu/LaunchMenu;->updateMenuBadgeLaunchSetting(Landroid/view/Menu;I)V

    .line 70
    :cond_0
    return-void
.end method
