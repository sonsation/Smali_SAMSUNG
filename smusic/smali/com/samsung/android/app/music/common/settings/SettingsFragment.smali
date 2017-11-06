.class public Lcom/samsung/android/app/music/common/settings/SettingsFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;
    }
.end annotation


# static fields
.field public static final ACTION_TAB_SETTING_CHANGED:Ljava/lang/String; = "com.sec.android.app.music.TAB_SETTING_CHANGED"

.field public static final REQUEST_CODE_CHANGED_ADAPT_SOUND:I = 0x1

.field private static final TAB_MENU_ENABLED:Z = true

.field public static final TAG:Ljava/lang/String; = "MusicSettings"


# instance fields
.field private mActiveQueueType:I

.field private mAdaptSound:Landroid/preference/Preference;

.field private mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

.field private mBargeIn:Landroid/preference/SwitchPreference;

.field private mCacheSize:Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;

.field private mCoreMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private mDeviceManagement:Landroid/preference/Preference;

.field private mDownloadAudioQuality:Landroid/preference/Preference;

.field private mDrmLicense:Landroid/preference/Preference;

.field private mDrmLicenseTestMenu:Landroid/preference/Preference;

.field private mDuplicateOption:Landroid/preference/SwitchPreference;

.field private mEdgeLighting:Landroid/preference/SwitchPreference;

.field private mEnqueueOption:Landroid/preference/Preference;

.field private mExplicit:Lcom/samsung/android/app/music/common/settings/preference/ExplicitPreference;

.field private final mHandler:Landroid/os/Handler;

.field private mImageGetter:Landroid/text/Html$ImageGetter;

.field private mLockScreen:Landroid/preference/SwitchPreference;

.field private mLockScreenDefaultValue:Z

.field private mMobileData:Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;

.field private mMusicAutoOff:Landroid/preference/Preference;

.field private mMyMusicMode:Landroid/preference/SwitchPreference;

.field private final mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mPlayOption:Landroid/preference/Preference;

.field private mPlaySpeed:Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;

.field private mPrefScreen:Landroid/preference/PreferenceScreen;

.field private final mPreferencesUpdaterReceiver:Landroid/content/BroadcastReceiver;

.field private mPushNotification:Landroid/preference/SwitchPreference;

.field private mScreenOffMusic:Landroid/preference/SwitchPreference;

.field private mSimilarStation:Landroid/preference/SwitchPreference;

.field private mSkipSilences:Landroid/preference/SwitchPreference;

.field private mSmartVolume:Landroid/preference/SwitchPreference;

.field private mSoundAlive:Landroid/preference/Preference;

.field private mStreamingAudioQuality:Landroid/preference/Preference;

.field private mTabMenuSetting:Lcom/samsung/android/app/music/common/settings/preference/MusicCustomPreference;

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;

.field private mUiPreference:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;-><init>()V

    .line 224
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mHandler:Landroid/os/Handler;

    .line 226
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mActiveQueueType:I

    .line 910
    new-instance v0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment$1;-><init>(Lcom/samsung/android/app/music/common/settings/SettingsFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mImageGetter:Landroid/text/Html$ImageGetter;

    .line 1310
    new-instance v0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment$3;-><init>(Lcom/samsung/android/app/music/common/settings/SettingsFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPreferencesUpdaterReceiver:Landroid/content/BroadcastReceiver;

    .line 1324
    new-instance v0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment$4;-><init>(Lcom/samsung/android/app/music/common/settings/SettingsFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/settings/SettingsFragment;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mMusicAutoOff:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/settings/SettingsFragment;J)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/settings/SettingsFragment;
    .param p1, "x1"    # J

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getRemainingTime(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/music/common/settings/SettingsFragment;Landroid/content/SharedPreferences;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/settings/SettingsFragment;
    .param p1, "x1"    # Landroid/content/SharedPreferences;

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->setLockScreen(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/music/common/settings/SettingsFragment;Landroid/content/SharedPreferences;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/settings/SettingsFragment;
    .param p1, "x1"    # Landroid/content/SharedPreferences;

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->setScreenOffMusic(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/music/common/settings/SettingsFragment;Landroid/content/SharedPreferences;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/settings/SettingsFragment;
    .param p1, "x1"    # Landroid/content/SharedPreferences;

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->setBargeIn(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/music/common/settings/SettingsFragment;Landroid/content/SharedPreferences;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/settings/SettingsFragment;
    .param p1, "x1"    # Landroid/content/SharedPreferences;

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->setEdgeLighting(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/music/common/settings/SettingsFragment;)Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mMobileData:Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/music/common/settings/SettingsFragment;Landroid/content/SharedPreferences;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/settings/SettingsFragment;
    .param p1, "x1"    # Landroid/content/SharedPreferences;

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->setExplicit(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/android/app/music/common/settings/SettingsFragment;Landroid/content/SharedPreferences;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/settings/SettingsFragment;
    .param p1, "x1"    # Landroid/content/SharedPreferences;

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->setSimilarStation(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/samsung/android/app/music/common/settings/SettingsFragment;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPushNotification:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/settings/SettingsFragment;Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/settings/SettingsFragment;
    .param p1, "x1"    # Landroid/preference/Preference;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->setSummaryColorToPrimaryColor(Landroid/preference/Preference;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/common/settings/SettingsFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/common/settings/SettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->updateSoundAlive()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/common/settings/SettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->resetAutoOffSummary()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/common/settings/SettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->stopAutoOffTimer()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/common/settings/SettingsFragment;Landroid/content/SharedPreferences;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/settings/SettingsFragment;
    .param p1, "x1"    # Landroid/content/SharedPreferences;

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->setSmartVolume(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/common/settings/SettingsFragment;Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/settings/SettingsFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 148
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->sendLoggingDataWithValue(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/common/settings/SettingsFragment;Landroid/content/SharedPreferences;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/settings/SettingsFragment;
    .param p1, "x1"    # Landroid/content/SharedPreferences;

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->setSkipSilences(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method private getAudioQualityString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 800
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getAudioQualityValue(Ljava/lang/String;)I

    move-result v0

    .line 801
    .local v0, "quality":I
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 803
    .local v1, "valueString":Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .line 815
    :goto_0
    return-object v1

    .line 805
    :pswitch_0
    const v2, 0x7f0a0239

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 806
    goto :goto_0

    .line 808
    :pswitch_1
    const v2, 0x7f0a0235

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 809
    goto :goto_0

    .line 811
    :pswitch_2
    const v2, 0x7f0a0237

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 803
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getAudioQualityValue(Ljava/lang/String;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 821
    const-string v1, "milk_download_quality"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 822
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 827
    .local v0, "quality":I
    :goto_0
    return v0

    .line 824
    .end local v0    # "quality":I
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    .restart local v0    # "quality":I
    goto :goto_0
.end method

.method private getRemainingTime(J)Ljava/lang/String;
    .locals 11
    .param p1, "millis"    # J

    .prologue
    .line 973
    const-wide/32 v6, 0xea60

    add-long/2addr p1, v6

    .line 974
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, p1, p2}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v2

    .line 975
    .local v2, "hours":J
    sget-object v6, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    sub-long/2addr p1, v6

    .line 976
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v4

    .line 978
    .local v4, "minutes":J
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 980
    .local v0, "context":Landroid/content/Context;
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-nez v6, :cond_1

    .line 981
    const-wide/16 v6, 0x1

    cmp-long v6, v4, v6

    if-gtz v6, :cond_0

    .line 982
    const v6, 0x7f0a0162

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1003
    .local v1, "remainingTime":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 984
    .end local v1    # "remainingTime":Ljava/lang/String;
    :cond_0
    const v6, 0x7f0a0166

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "remainingTime":Ljava/lang/String;
    goto :goto_0

    .line 986
    .end local v1    # "remainingTime":Ljava/lang/String;
    :cond_1
    const-wide/16 v6, 0x1

    cmp-long v6, v2, v6

    if-nez v6, :cond_4

    .line 987
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_2

    .line 988
    const v6, 0x7f0a015f

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "remainingTime":Ljava/lang/String;
    goto :goto_0

    .line 989
    .end local v1    # "remainingTime":Ljava/lang/String;
    :cond_2
    const-wide/16 v6, 0x1

    cmp-long v6, v4, v6

    if-gtz v6, :cond_3

    .line 990
    const v6, 0x7f0a0160

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "remainingTime":Ljava/lang/String;
    goto :goto_0

    .line 992
    .end local v1    # "remainingTime":Ljava/lang/String;
    :cond_3
    const v6, 0x7f0a0161

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "remainingTime":Ljava/lang/String;
    goto :goto_0

    .line 995
    .end local v1    # "remainingTime":Ljava/lang/String;
    :cond_4
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_5

    .line 996
    const v6, 0x7f0a0163

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "remainingTime":Ljava/lang/String;
    goto :goto_0

    .line 997
    .end local v1    # "remainingTime":Ljava/lang/String;
    :cond_5
    const-wide/16 v6, 0x1

    cmp-long v6, v4, v6

    if-gtz v6, :cond_6

    .line 998
    const v6, 0x7f0a0164

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "remainingTime":Ljava/lang/String;
    goto :goto_0

    .line 1000
    .end local v1    # "remainingTime":Ljava/lang/String;
    :cond_6
    const v6, 0x7f0a0165

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "remainingTime":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private getServicePreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 1281
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "music_service_pref"

    const/4 v2, 0x4

    .line 1282
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private getSquareEffectName(I)I
    .locals 5
    .param p1, "mode"    # I

    .prologue
    .line 604
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;->values()[Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 605
    .local v0, "effect":Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;
    iget v4, v0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;->value:I

    if-ne v4, p1, :cond_0

    .line 606
    iget v1, v0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;->title:I

    .line 609
    .end local v0    # "effect":Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;
    :goto_1
    return v1

    .line 604
    .restart local v0    # "effect":Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 609
    .end local v0    # "effect":Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;
    :cond_1
    const v1, 0x7f0a0099

    goto :goto_1
.end method

.method private getStreamingQualityText()Ljava/lang/String;
    .locals 6

    .prologue
    .line 792
    const-string v0, "milk_streaming_quality_mobile"

    .line 793
    .local v0, "mobileQuality":Ljava/lang/String;
    const-string v1, "milk_streaming_quality_wifi"

    .line 795
    .local v1, "wifiQuality":Ljava/lang/String;
    const v2, 0x7f0a0465

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 796
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getAudioQualityString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getAudioQualityString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 795
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private handleVoiceSettingPref(Z)V
    .locals 5
    .param p1, "isOn"    # Z

    .prologue
    .line 1263
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1264
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1265
    .local v2, "r":Landroid/content/ContentResolver;
    if-eqz p1, :cond_2

    .line 1266
    invoke-static {v0}, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;->isVoiceSettingEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1267
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VOICE_SETTING_BARGEIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1269
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 1278
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1271
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;->isMusicSettingEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1272
    const-string/jumbo v3, "voice_input_control_music"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1276
    :cond_2
    const-string/jumbo v3, "voice_input_control_music"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private initializeSettingsMenu()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 345
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 346
    .local v1, "context":Landroid/content/Context;
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v4, "manage_tabs"

    .line 347
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/settings/preference/MusicCustomPreference;

    iput-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mTabMenuSetting:Lcom/samsung/android/app/music/common/settings/preference/MusicCustomPreference;

    .line 348
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v4, "sound_alive"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mSoundAlive:Landroid/preference/Preference;

    .line 349
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v4, "adapt_sound"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mAdaptSound:Landroid/preference/Preference;

    .line 350
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v4, "play_speed"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;

    iput-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPlaySpeed:Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;

    .line 351
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v4, "music_auto_off"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mMusicAutoOff:Landroid/preference/Preference;

    .line 352
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v4, "smart_volume"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mSmartVolume:Landroid/preference/SwitchPreference;

    .line 353
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v4, "skip_silences"

    .line 354
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mSkipSilences:Landroid/preference/SwitchPreference;

    .line 355
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v4, "lock_screen"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mLockScreen:Landroid/preference/SwitchPreference;

    .line 356
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v4, "screen_off_music"

    .line 357
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mScreenOffMusic:Landroid/preference/SwitchPreference;

    .line 358
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v4, "edge_lighting"

    .line 359
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mEdgeLighting:Landroid/preference/SwitchPreference;

    .line 362
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mEdgeLighting:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 363
    iput-object v5, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mEdgeLighting:Landroid/preference/SwitchPreference;

    .line 365
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v4, "barge_in"

    .line 366
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mBargeIn:Landroid/preference/SwitchPreference;

    .line 368
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v4, "about"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/settings/preference/AboutPreference;

    .line 369
    .local v0, "about":Lcom/samsung/android/app/music/common/settings/preference/AboutPreference;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/music/common/util/AppNameUtils;->getAboutAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/common/settings/preference/AboutPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 371
    sget-boolean v3, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_FW_SMART_VOLUME:Z

    if-nez v3, :cond_0

    .line 372
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mSmartVolume:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 373
    iput-object v5, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mSmartVolume:Landroid/preference/SwitchPreference;

    .line 375
    :cond_0
    invoke-static {v1}, Lcom/samsung/android/app/music/common/util/UiUtils;->isUPSMMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 376
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mSkipSilences:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 377
    iput-object v5, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mSkipSilences:Landroid/preference/SwitchPreference;

    .line 385
    :cond_1
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isKnoxModeOn(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->isOwnerUser()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 386
    invoke-static {}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 387
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mLockScreen:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 388
    iput-object v5, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mLockScreen:Landroid/preference/SwitchPreference;

    .line 390
    :cond_3
    sget-boolean v3, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SCREEN_OFF_MUSIC_ENABLED:Z

    if-eqz v3, :cond_4

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isKnoxModeOn(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 391
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->isOwnerUser()Z

    move-result v3

    if-nez v3, :cond_5

    .line 392
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mScreenOffMusic:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 393
    iput-object v5, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mScreenOffMusic:Landroid/preference/SwitchPreference;

    .line 396
    :cond_5
    sget-boolean v3, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_ADAPT_SOUND:Z

    if-nez v3, :cond_6

    .line 397
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mAdaptSound:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 398
    iput-object v5, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mAdaptSound:Landroid/preference/Preference;

    .line 400
    :cond_6
    invoke-static {v1}, Lcom/samsung/android/app/music/common/util/UiUtils;->isUPSMMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 401
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mAdaptSound:Landroid/preference/Preference;

    if-eqz v3, :cond_7

    .line 402
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mAdaptSound:Landroid/preference/Preference;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 404
    :cond_7
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mSoundAlive:Landroid/preference/Preference;

    if-eqz v3, :cond_8

    .line 405
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mSoundAlive:Landroid/preference/Preference;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 408
    :cond_8
    sget v3, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    const v4, 0x316a2

    if-gt v3, v4, :cond_9

    .line 409
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mMusicAutoOff:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 410
    iput-object v5, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mMusicAutoOff:Landroid/preference/Preference;

    .line 414
    :cond_9
    sget-boolean v3, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_BARGE_IN:Z

    if-eqz v3, :cond_a

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isKnoxModeOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 415
    :cond_a
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mBargeIn:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 416
    iput-object v5, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mBargeIn:Landroid/preference/SwitchPreference;

    .line 420
    :cond_b
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v4, "my_music_mode"

    .line 421
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mMyMusicMode:Landroid/preference/SwitchPreference;

    .line 422
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v4, "mobile_data"

    .line 423
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;

    iput-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mMobileData:Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;

    .line 424
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v4, "streaming_audio_quality"

    .line 425
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mStreamingAudioQuality:Landroid/preference/Preference;

    .line 426
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v4, "download_audio_quality"

    .line 427
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mDownloadAudioQuality:Landroid/preference/Preference;

    .line 428
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v4, "play_option"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPlayOption:Landroid/preference/Preference;

    .line 429
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v4, "enqueue_option"

    .line 430
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mEnqueueOption:Landroid/preference/Preference;

    .line 431
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v4, "duplicate_option"

    .line 432
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mDuplicateOption:Landroid/preference/SwitchPreference;

    .line 433
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v4, "explicit_option"

    .line 434
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/settings/preference/ExplicitPreference;

    iput-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mExplicit:Lcom/samsung/android/app/music/common/settings/preference/ExplicitPreference;

    .line 435
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v4, "similar_station"

    .line 436
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mSimilarStation:Landroid/preference/SwitchPreference;

    .line 437
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v4, "push_notification"

    .line 438
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPushNotification:Landroid/preference/SwitchPreference;

    .line 439
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v4, "cache_size"

    .line 440
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;

    iput-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mCacheSize:Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;

    .line 441
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v4, "device_management"

    .line 442
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mDeviceManagement:Landroid/preference/Preference;

    .line 444
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v4, "drm_license"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mDrmLicense:Landroid/preference/Preference;

    .line 447
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v4, "drm_license_test_menu"

    .line 448
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mDrmLicenseTestMenu:Landroid/preference/Preference;

    .line 450
    sget-boolean v3, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-nez v3, :cond_e

    .line 451
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mMyMusicMode:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 452
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mMobileData:Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 453
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mStreamingAudioQuality:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 454
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mDownloadAudioQuality:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 455
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPlayOption:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 456
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mEnqueueOption:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 457
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mDuplicateOption:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 458
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mExplicit:Lcom/samsung/android/app/music/common/settings/preference/ExplicitPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 459
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mSimilarStation:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 460
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPushNotification:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 461
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mCacheSize:Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 462
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mDeviceManagement:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 463
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mDrmLicense:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 465
    iput-object v5, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mMyMusicMode:Landroid/preference/SwitchPreference;

    .line 466
    iput-object v5, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mMobileData:Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;

    .line 467
    iput-object v5, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mStreamingAudioQuality:Landroid/preference/Preference;

    .line 468
    iput-object v5, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mDownloadAudioQuality:Landroid/preference/Preference;

    .line 469
    iput-object v5, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPlayOption:Landroid/preference/Preference;

    .line 470
    iput-object v5, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mEnqueueOption:Landroid/preference/Preference;

    .line 471
    iput-object v5, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mDuplicateOption:Landroid/preference/SwitchPreference;

    .line 472
    iput-object v5, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mExplicit:Lcom/samsung/android/app/music/common/settings/preference/ExplicitPreference;

    .line 473
    iput-object v5, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mSimilarStation:Landroid/preference/SwitchPreference;

    .line 474
    iput-object v5, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPushNotification:Landroid/preference/SwitchPreference;

    .line 475
    iput-object v5, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mCacheSize:Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;

    .line 476
    iput-object v5, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mDeviceManagement:Landroid/preference/Preference;

    .line 477
    iput-object v5, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mDrmLicense:Landroid/preference/Preference;

    .line 485
    :cond_c
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->getInstance(Landroid/content/res/Resources;)Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    move-result-object v3

    const-string v4, "drmExpiredTest"

    .line 486
    invoke-virtual {v3, v4, v6}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 488
    .local v2, "enable_test_menu":Z
    if-nez v2, :cond_d

    .line 489
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mDrmLicenseTestMenu:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 490
    iput-object v5, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mDrmLicenseTestMenu:Landroid/preference/Preference;

    .line 492
    :cond_d
    return-void

    .line 478
    .end local v2    # "enable_test_menu":Z
    :cond_e
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils;->isEnableTelephony(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 479
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mMobileData:Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 480
    iput-object v5, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mMobileData:Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;

    goto :goto_0
.end method

.method private isDmrPlaying()Z
    .locals 3

    .prologue
    .line 584
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mCoreMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    .line 585
    .local v0, "state":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isLocalOrNoList()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1296
    iget v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mActiveQueueType:I

    if-ne v3, v2, :cond_1

    .line 1300
    :cond_0
    :goto_0
    return v1

    .line 1299
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mCoreMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    .line 1300
    .local v0, "m":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isLocal()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private registerSummaryUpdateReceiver()V
    .locals 3

    .prologue
    .line 1304
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1305
    .local v0, "f":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.app.music.core.action.AUDIO_PATH_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1306
    const-string v1, "com.samsung.android.app.music.core.action.MUSIC_AUTO_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1307
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPreferencesUpdaterReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1308
    return-void
.end method

.method private resetAutoOffSummary()V
    .locals 3

    .prologue
    .line 966
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mMusicAutoOff:Landroid/preference/Preference;

    const v2, 0x7f0a0145

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->setSummaryColorToPrimaryColor(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 967
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mUiPreference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 968
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "music_auto_off_entry_position"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 969
    return-void
.end method

.method private sendLoggingData(Ljava/lang/String;)V
    .locals 2
    .param p1, "eventId"    # Ljava/lang/String;

    .prologue
    .line 1523
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "401"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    return-void
.end method

.method private sendLoggingDataWithValue(Ljava/lang/String;J)V
    .locals 2
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 1527
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "401"

    .line 1528
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1529
    return-void
.end method

.method private setBargeIn(Landroid/content/SharedPreferences;)V
    .locals 3
    .param p1, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 1095
    const-string v1, "barge_in"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1096
    .local v0, "isOn":Z
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->setBargeIn(Z)V

    .line 1097
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->handleVoiceSettingPref(Z)V

    .line 1098
    return-void
.end method

.method private setDrmLicenseExpired()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1552
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->drmLicenseExpiredTest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1553
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a048a

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1557
    :goto_0
    return-void

    .line 1555
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a0488

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private setEdgeLighting(Landroid/content/SharedPreferences;)V
    .locals 3
    .param p1, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 1090
    const-string v1, "edge_lighting"

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1091
    .local v0, "isOn":Z
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v1

    const-string v2, "edge_lighting"

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    .line 1092
    return-void
.end method

.method private setExplicit(Landroid/content/SharedPreferences;)V
    .locals 4
    .param p1, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v1, 0x0

    .line 1101
    const-string v2, "explicit_option"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1102
    .local v0, "isOn":Z
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v2

    const-string v3, "explicit_option"

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    .line 1103
    const-string v2, "explicit"

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->syncSettings(Ljava/lang/String;I)V

    .line 1105
    return-void
.end method

.method private setLockScreen(Landroid/content/SharedPreferences;)V
    .locals 3
    .param p1, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 1080
    const-string v1, "lock_screen"

    iget-boolean v2, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mLockScreenDefaultValue:Z

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1081
    .local v0, "isOn":Z
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->setLockScreen(Z)V

    .line 1082
    return-void
.end method

.method private setScreenOffMusic(Landroid/content/SharedPreferences;)V
    .locals 3
    .param p1, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 1085
    const-string/jumbo v1, "screen_off_music"

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1086
    .local v0, "isOn":Z
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->setScreenOffMusic(Z)V

    .line 1087
    return-void
.end method

.method private setSimilarStation(Landroid/content/SharedPreferences;)V
    .locals 3
    .param p1, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v1, 0x0

    .line 1108
    const-string/jumbo v2, "similar_station"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1109
    .local v0, "isOn":Z
    invoke-static {v0}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->setSimilarStationOption(Z)V

    .line 1110
    const-string v2, "auto_rotation"

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->syncSettings(Ljava/lang/String;I)V

    .line 1113
    return-void
.end method

.method private setSkipSilences(Landroid/content/SharedPreferences;)V
    .locals 3
    .param p1, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 1075
    const-string/jumbo v1, "skip_silences"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1076
    .local v0, "isSkipSilences":Z
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->setSkipSilence(Z)V

    .line 1077
    return-void
.end method

.method private setSmartVolume(Landroid/content/SharedPreferences;)V
    .locals 8
    .param p1, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1055
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1056
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v4, "smart_volume"

    invoke-interface {p1, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1057
    .local v1, "isSmartVolumeOn":Z
    if-eqz v1, :cond_0

    .line 1058
    iget-object v4, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    iget-object v5, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getVolume()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getVolumeNumber(I)I

    move-result v3

    .line 1060
    .local v3, "volumeNumber":I
    sget-boolean v4, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_FW_FINE_VOLUME:Z

    if-eqz v4, :cond_1

    .line 1061
    const v4, 0x7f0a01b8

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    .line 1062
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 1061
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1066
    .local v2, "text":Ljava/lang/String;
    :goto_0
    invoke-static {v0, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1069
    .end local v2    # "text":Ljava/lang/String;
    .end local v3    # "volumeNumber":I
    :cond_0
    const-string v5, "SVOL"

    if-eqz v1, :cond_2

    const-string v4, "On"

    :goto_1
    invoke-static {v0, v5, v4}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->setSmartVolume(Z)V

    .line 1072
    return-void

    .line 1064
    .restart local v3    # "volumeNumber":I
    :cond_1
    const v4, 0x7f0a01ba

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "text":Ljava/lang/String;
    goto :goto_0

    .line 1069
    .end local v2    # "text":Ljava/lang/String;
    .end local v3    # "volumeNumber":I
    :cond_2
    const-string v4, "Off"

    goto :goto_1
.end method

.method private setSummaryColorToPrimaryColor(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1044
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1045
    .local v2, "summary":Landroid/text/Spannable;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f11021f

    .line 1046
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 1045
    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 1047
    .local v1, "color":I
    invoke-virtual {p1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const/high16 v3, 0x437f0000    # 255.0f

    :goto_0
    float-to-int v3, v3

    int-to-byte v0, v3

    .line 1048
    .local v0, "alpha":B
    shl-int/lit8 v3, v0, 0x18

    const v4, 0xffffff

    and-int/2addr v4, v1

    or-int v1, v3, v4

    .line 1050
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v4

    invoke-interface {v2, v3, v6, v4, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1051
    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1052
    return-void

    .line 1047
    .end local v0    # "alpha":B
    :cond_0
    const/high16 v3, 0x42cc0000    # 102.0f

    goto :goto_0
.end method

.method private showAdaptSoundDialog()V
    .locals 4

    .prologue
    .line 1287
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "adapt_sound"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 1288
    .local v1, "fg":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 1289
    new-instance v0, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;-><init>()V

    .line 1290
    .local v0, "dialog":Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;
    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1291
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "adapt_sound"

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1293
    .end local v0    # "dialog":Lcom/samsung/android/app/music/common/dialog/AdaptSoundDialog;
    :cond_0
    return-void
.end method

.method private startAutoOffTimer(J)V
    .locals 9
    .param p1, "targetTime"    # J

    .prologue
    const-wide/32 v4, 0xea60

    .line 1007
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v6, p1, v0

    .line 1008
    .local v6, "remainingTime":J
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-gez v0, :cond_0

    .line 1009
    const-string v0, "MusicSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startAutoOffTimer remaining time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    :goto_0
    return-void

    .line 1012
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mMusicAutoOff:Landroid/preference/Preference;

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getRemainingTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->setSummaryColorToPrimaryColor(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 1014
    new-instance v0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/music/common/settings/SettingsFragment$2;-><init>(Lcom/samsung/android/app/music/common/settings/SettingsFragment;J)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mTimerTask:Ljava/util/TimerTask;

    .line 1027
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mTimer:Ljava/util/Timer;

    .line 1028
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mTimerTask:Ljava/util/TimerTask;

    rem-long v2, v6, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method private stopAutoOffTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1033
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 1035
    iput-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mTimerTask:Ljava/util/TimerTask;

    .line 1037
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 1038
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1039
    iput-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mTimer:Ljava/util/Timer;

    .line 1041
    :cond_1
    return-void
.end method

.method private updateAdaptSound()V
    .locals 3

    .prologue
    .line 613
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mAdaptSound:Landroid/preference/Preference;

    if-nez v1, :cond_0

    .line 623
    :goto_0
    return-void

    .line 616
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->isAdaptSoundOn(Landroid/content/Context;)Z

    move-result v0

    .line 617
    .local v0, "isChecked":Z
    if-eqz v0, :cond_1

    .line 618
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mAdaptSound:Landroid/preference/Preference;

    const v2, 0x7f0a0147

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 622
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mAdaptSound:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->isDmrPlaying()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 620
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mAdaptSound:Landroid/preference/Preference;

    const v2, 0x7f0a0145

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 622
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private updateAutoOff()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 626
    iget-object v4, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mMusicAutoOff:Landroid/preference/Preference;

    if-nez v4, :cond_0

    .line 652
    :goto_0
    return-void

    .line 629
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getServicePreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 630
    .local v1, "pref":Landroid/content/SharedPreferences;
    const-string v4, "off"

    const-string v5, "music_auto_off"

    const-string v6, "off"

    .line 631
    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 630
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 632
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->resetAutoOffSummary()V

    goto :goto_0

    .line 636
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.samsung.android.app.music.core.action.MUSIC_AUTO_OFF"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x20000000

    invoke-static {v4, v5, v6, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 639
    .local v0, "pi":Landroid/app/PendingIntent;
    if-nez v0, :cond_2

    .line 640
    const-string v4, "MusicSettings"

    const-string/jumbo v5, "updateAutoOff() : pi is null"

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->resetAutoOffSummary()V

    goto :goto_0

    .line 645
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mUiPreference:Landroid/content/SharedPreferences;

    const-string v5, "music_auto_off_target_time"

    .line 646
    invoke-interface {v4, v5, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 647
    .local v2, "targetTime":J
    cmp-long v4, v2, v8

    if-eqz v4, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v2, v4

    cmp-long v4, v4, v8

    if-gtz v4, :cond_4

    .line 648
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->resetAutoOffSummary()V

    goto :goto_0

    .line 651
    :cond_4
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->startAutoOffTimer(J)V

    goto :goto_0
.end method

.method private updateBargeIn()V
    .locals 3

    .prologue
    .line 727
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mBargeIn:Landroid/preference/SwitchPreference;

    if-nez v1, :cond_0

    .line 736
    :goto_0
    return-void

    .line 731
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;->isBargeInSettingEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 732
    .local v0, "isOn":Z
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mBargeIn:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 733
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mBargeIn:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 735
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mBargeIn:Landroid/preference/SwitchPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateDuplicateOption()V
    .locals 2

    .prologue
    .line 853
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mDuplicateOption:Landroid/preference/SwitchPreference;

    if-nez v1, :cond_1

    .line 860
    :cond_0
    :goto_0
    return-void

    .line 856
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->getDuplicateOption()Z

    move-result v0

    .line 857
    .local v0, "isOn":Z
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mDuplicateOption:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 858
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mDuplicateOption:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private updateEdgeLighting()V
    .locals 4

    .prologue
    .line 716
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mEdgeLighting:Landroid/preference/SwitchPreference;

    if-nez v1, :cond_1

    .line 724
    :cond_0
    :goto_0
    return-void

    .line 720
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v1

    const-string v2, "edge_lighting"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 721
    .local v0, "isOn":Z
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mEdgeLighting:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 722
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mEdgeLighting:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private updateExplicitOption()V
    .locals 4

    .prologue
    .line 863
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mExplicit:Lcom/samsung/android/app/music/common/settings/preference/ExplicitPreference;

    if-nez v1, :cond_1

    .line 870
    :cond_0
    :goto_0
    return-void

    .line 866
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v1

    const-string v2, "explicit_option"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 867
    .local v0, "isOn":Z
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mExplicit:Lcom/samsung/android/app/music/common/settings/preference/ExplicitPreference;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/settings/preference/ExplicitPreference;->isChecked()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 868
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mExplicit:Lcom/samsung/android/app/music/common/settings/preference/ExplicitPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/common/settings/preference/ExplicitPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private updateLockScreen()V
    .locals 4

    .prologue
    .line 695
    iget-object v2, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mLockScreen:Landroid/preference/SwitchPreference;

    if-nez v2, :cond_1

    .line 703
    :cond_0
    :goto_0
    return-void

    .line 698
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getServicePreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 699
    .local v1, "pref":Landroid/content/SharedPreferences;
    const-string v2, "lock_screen"

    iget-boolean v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mLockScreenDefaultValue:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 700
    .local v0, "isOn":Z
    iget-object v2, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mLockScreen:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eq v2, v0, :cond_0

    .line 701
    iget-object v2, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mLockScreen:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private updateMobileData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 749
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mMobileData:Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;

    if-nez v1, :cond_1

    .line 772
    :cond_0
    :goto_0
    return-void

    .line 753
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/common/util/AndroidUtils;->doesSimExist(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 754
    const-string v1, "MusicSettings"

    const-string/jumbo v2, "updateMobileData - SIM"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mMobileData:Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;->setChecked(Z)V

    .line 756
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mMobileData:Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;->setEnabled(Z)V

    goto :goto_0

    .line 758
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 759
    const-string v1, "MusicSettings"

    const-string/jumbo v2, "updateMobileData - Offline"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mMobileData:Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;->setEnabled(Z)V

    .line 767
    :goto_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 768
    .local v0, "isOn":Z
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mMobileData:Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;->isChecked()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 769
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mMobileData:Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;->setChecked(Z)V

    goto :goto_0

    .line 762
    .end local v0    # "isOn":Z
    :cond_3
    const-string v1, "MusicSettings"

    const-string/jumbo v2, "updateMobileData - Normal"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mMobileData:Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updateMyMusicMode()V
    .locals 2

    .prologue
    .line 739
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mMyMusicMode:Landroid/preference/SwitchPreference;

    if-nez v1, :cond_1

    .line 746
    :cond_0
    :goto_0
    return-void

    .line 742
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v0

    .line 743
    .local v0, "isOn":Z
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mMyMusicMode:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 744
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mMyMusicMode:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private updatePlaySpeed()V
    .locals 2

    .prologue
    .line 655
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPlaySpeed:Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;

    if-nez v0, :cond_0

    .line 663
    :goto_0
    return-void

    .line 658
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->isLocalOrNoList()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->isDmrPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 659
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPlaySpeed:Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;->setEnabled(Z)V

    goto :goto_0

    .line 661
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPlaySpeed:Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updatePushNotificationOption()V
    .locals 2

    .prologue
    .line 883
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPushNotification:Landroid/preference/SwitchPreference;

    if-nez v1, :cond_1

    .line 890
    :cond_0
    :goto_0
    return-void

    .line 886
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isPushAgreement(Landroid/content/Context;)Z

    move-result v0

    .line 887
    .local v0, "isOn":Z
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPushNotification:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 888
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPushNotification:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private updateScreenOffMusic()V
    .locals 2

    .prologue
    .line 706
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mScreenOffMusic:Landroid/preference/SwitchPreference;

    if-nez v1, :cond_1

    .line 713
    :cond_0
    :goto_0
    return-void

    .line 709
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getScreenOffMusic()Z

    move-result v0

    .line 710
    .local v0, "isOn":Z
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mScreenOffMusic:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 711
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mScreenOffMusic:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private updateSettings()V
    .locals 1

    .prologue
    .line 495
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->updateTabMenu()V

    .line 496
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->updateSoundAlive()V

    .line 497
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->updateAdaptSound()V

    .line 498
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->updatePlaySpeed()V

    .line 499
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->updateAutoOff()V

    .line 500
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->updateSmartVolume()V

    .line 501
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->updateSkipSilences()V

    .line 502
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->updateLockScreen()V

    .line 503
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->updateScreenOffMusic()V

    .line 504
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->updateEdgeLighting()V

    .line 505
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->updateBargeIn()V

    .line 507
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_0

    .line 508
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->updateMyMusicMode()V

    .line 509
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->updateMobileData()V

    .line 510
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->updateStreamingAudioQuality()V

    .line 511
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->updateDownloadAudioQuality()V

    .line 512
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->updatePlayOption()V

    .line 513
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->updateEnqueueOption()V

    .line 514
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->updateDuplicateOption()V

    .line 515
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->updateExplicitOption()V

    .line 516
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->updateSimilarStationOption()V

    .line 517
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->updatePushNotificationOption()V

    .line 518
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->updateCacheSizeOption()V

    .line 520
    :cond_0
    return-void
.end method

.method private updateSimilarStationOption()V
    .locals 2

    .prologue
    .line 873
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mSimilarStation:Landroid/preference/SwitchPreference;

    if-nez v1, :cond_1

    .line 880
    :cond_0
    :goto_0
    return-void

    .line 876
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->getSimilarStationOption()Z

    move-result v0

    .line 877
    .local v0, "isOn":Z
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mSimilarStation:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 878
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mSimilarStation:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private updateSkipSilences()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 679
    iget-object v2, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mSkipSilences:Landroid/preference/SwitchPreference;

    if-nez v2, :cond_0

    .line 692
    :goto_0
    return-void

    .line 682
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->isLocalOrNoList()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->isDmrPlaying()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 683
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mSkipSilences:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 685
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getServicePreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 686
    .local v1, "pref":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "skip_silences"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 687
    .local v0, "isOn":Z
    iget-object v2, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mSkipSilences:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eq v2, v0, :cond_3

    .line 688
    iget-object v2, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mSkipSilences:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 690
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mSkipSilences:Landroid/preference/SwitchPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateSmartVolume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 666
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mSmartVolume:Landroid/preference/SwitchPreference;

    if-nez v1, :cond_0

    .line 676
    :goto_0
    return-void

    .line 669
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->isLocalOrNoList()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->isDmrPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 670
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mSmartVolume:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 672
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getServicePreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 673
    .local v0, "pref":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mSmartVolume:Landroid/preference/SwitchPreference;

    const-string/jumbo v2, "smart_volume"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 674
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mSmartVolume:Landroid/preference/SwitchPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateSoundAlive()V
    .locals 4

    .prologue
    .line 589
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mSoundAlive:Landroid/preference/Preference;

    if-nez v1, :cond_0

    .line 597
    :goto_0
    return-void

    .line 593
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "SOUNDALIVE_GENRE_INDEX"

    sget v3, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_NORMAL:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 595
    .local v0, "genreIndex":I
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mSoundAlive:Landroid/preference/Preference;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getSquareEffectName(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 596
    iget-object v2, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mSoundAlive:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->isDmrPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateTabMenu()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 928
    iget-object v7, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mTabMenuSetting:Lcom/samsung/android/app/music/common/settings/preference/MusicCustomPreference;

    if-nez v7, :cond_0

    .line 963
    :goto_0
    return-void

    .line 931
    :cond_0
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 932
    .local v4, "summaryBuilder":Landroid/text/SpannableStringBuilder;
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 933
    .local v1, "contentDescriptionBuilder":Landroid/text/SpannableStringBuilder;
    new-instance v3, Ljava/util/StringTokenizer;

    .line 934
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/app/music/common/util/TabUtils;->getEnabledTabs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "|"

    invoke-direct {v3, v7, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    .local v3, "strToken":Ljava/util/StringTokenizer;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 937
    .local v2, "lang":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 938
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 939
    .local v5, "token":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 940
    .local v6, "type":I
    const v7, 0x10030

    if-ne v6, v7, :cond_2

    .line 941
    const-string v7, "<img src=\"favorite\">"

    iget-object v8, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mImageGetter:Landroid/text/Html$ImageGetter;

    const/4 v9, 0x0

    .line 942
    invoke-static {v7, v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/support/text/HtmlCompat;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 946
    :goto_2
    invoke-static {v6}, Lcom/samsung/android/app/music/common/util/ListUtils;->getListTypeTextResId(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 947
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 948
    const-string v7, "ar"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 949
    const-string/jumbo v7, "\u060c "

    invoke-virtual {v4, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 950
    const-string/jumbo v7, "\u060c "

    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 944
    :cond_2
    invoke-static {v6}, Lcom/samsung/android/app/music/common/util/ListUtils;->getListTypeTextResId(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    .line 952
    :cond_3
    const-string v7, ", "

    invoke-virtual {v4, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 953
    const-string v7, ", "

    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 958
    .end local v5    # "token":Ljava/lang/String;
    .end local v6    # "type":I
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f11021f

    .line 959
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    .line 958
    invoke-static {v7, v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 960
    .local v0, "color":I
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v7, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-virtual {v4, v7, v10, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 961
    iget-object v7, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mTabMenuSetting:Lcom/samsung/android/app/music/common/settings/preference/MusicCustomPreference;

    invoke-virtual {v7, v4}, Lcom/samsung/android/app/music/common/settings/preference/MusicCustomPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 962
    iget-object v7, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mTabMenuSetting:Lcom/samsung/android/app/music/common/settings/preference/MusicCustomPreference;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/app/music/common/settings/preference/MusicCustomPreference;->setSummaryContentDescription(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public clearCache()V
    .locals 2

    .prologue
    .line 902
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mCacheSize:Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;

    if-nez v0, :cond_0

    .line 903
    const-string v0, "MusicSettings"

    const-string v1, "CacheSize preference null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    :goto_0
    return-void

    .line 907
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mCacheSize:Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;->clearCache()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 327
    packed-switch p1, :pswitch_data_0

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 329
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 330
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->updateAdaptSound()V

    goto :goto_0

    .line 327
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 230
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 231
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mCoreMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 232
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 236
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 237
    const v2, 0x7f080002

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->addPreferencesFromResource(I)V

    .line 239
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 240
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    .line 241
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    .line 242
    const-string v2, "music_player_pref"

    const/4 v3, 0x0

    .line 243
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mUiPreference:Landroid/content/SharedPreferences;

    .line 245
    iget-object v2, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mCoreMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v2, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 246
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->initializeSettingsMenu()V

    .line 247
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->registerSummaryUpdateReceiver()V

    .line 249
    iget-object v2, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mLockScreen:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    .line 250
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getServicePreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 252
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-static {v1, v0}, Lcom/samsung/android/app/music/library/framework/PackageManagerCompat;->checkLockScreenDefaultValue(Landroid/content/SharedPreferences;Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mLockScreenDefaultValue:Z

    .line 255
    .end local v1    # "pref":Landroid/content/SharedPreferences;
    :cond_0
    sget-boolean v2, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v2, :cond_1

    .line 256
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v2

    const-string v3, "my_music_mode"

    invoke-virtual {v2, p0, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;Z)V

    .line 257
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v2

    const-string v3, "explicit_option"

    invoke-virtual {v2, p0, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;Z)V

    .line 258
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v2

    const-string/jumbo v3, "similar_station"

    invoke-virtual {v2, p0, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;Z)V

    .line 259
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->bindService(Landroid/content/ServiceConnection;)Z

    .line 261
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mCoreMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 315
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPreferencesUpdaterReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 316
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_0

    .line 317
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "my_music_mode"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;)V

    .line 318
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "explicit_option"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;)V

    .line 319
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string/jumbo v1, "similar_station"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 322
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;->onDestroy()V

    .line 323
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 1489
    const-string v0, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1490
    const-string v0, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mActiveQueueType:I

    .line 1492
    :cond_0
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 4
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 1463
    const-string v2, "com.samsung.android.app.music.metadata.SOUND_QUALITY_DATA"

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1464
    .local v0, "soundQualityData":J
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->isSupportPlaySpeed(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1467
    iget-object v2, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPlaySpeed:Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1472
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->updateAdaptSound()V

    .line 1473
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->updatePlaySpeed()V

    .line 1474
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->updateSmartVolume()V

    .line 1475
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->updateSkipSilences()V

    .line 1476
    return-void

    .line 1469
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPlaySpeed:Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 307
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 308
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->stopAutoOffTimer()V

    .line 309
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;->onPause()V

    .line 310
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 1480
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 525
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 527
    .local v2, "key":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 528
    .local v1, "i":Landroid/content/Intent;
    const-string v3, "manage_tabs"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 529
    const-class v3, Lcom/samsung/android/app/music/common/activity/SettingReorderActivity;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 530
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 531
    const-string v3, "5001"

    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->sendLoggingData(Ljava/lang/String;)V

    .line 580
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    .line 532
    :cond_1
    const-string/jumbo v3, "sound_alive"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 533
    sget-boolean v3, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$Version;->FX:Z

    if-eqz v3, :cond_2

    .line 534
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/music/common/legacy/soundalive/utils/LegacySoundAliveUtils;->launchSoundAlive(Landroid/app/Activity;)V

    goto :goto_0

    .line 537
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getAudioSessionId()I

    move-result v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->launchSoundAlive(Landroid/app/Activity;I)V

    goto :goto_0

    .line 539
    :cond_3
    const-string v3, "adapt_sound"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 540
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->showAdaptSoundDialog()V

    goto :goto_0

    .line 541
    :cond_4
    const-string v3, "music_auto_off"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 542
    const-class v3, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 543
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 544
    const-string v3, "5005"

    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->sendLoggingData(Ljava/lang/String;)V

    goto :goto_0

    .line 545
    :cond_5
    const-string v3, "about"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 546
    const-class v3, Lcom/samsung/android/app/music/common/activity/AboutActivity;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 547
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 548
    const-string v3, "5008"

    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->sendLoggingData(Ljava/lang/String;)V

    goto :goto_0

    .line 549
    :cond_6
    const-string/jumbo v3, "play_option"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 550
    const-class v3, Lcom/samsung/android/app/music/common/settings/PlayOptionSettingsActivity;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 551
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 552
    const-string v3, "5206"

    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->sendLoggingData(Ljava/lang/String;)V

    goto :goto_0

    .line 553
    :cond_7
    const-string v3, "enqueue_option"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 554
    const-class v3, Lcom/samsung/android/app/music/common/settings/EnqueueOptionSettingsActivity;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 555
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 556
    const-string v3, "5205"

    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->sendLoggingData(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 557
    :cond_8
    const-string/jumbo v3, "streaming_audio_quality"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 558
    const-class v3, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 559
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 560
    const-string v3, "5203"

    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->sendLoggingData(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 561
    :cond_9
    const-string v3, "download_audio_quality"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 562
    const-class v3, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 563
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 564
    const-string v3, "5204"

    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->sendLoggingData(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 565
    :cond_a
    const-string v3, "cache_size"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 566
    const-class v3, Lcom/samsung/android/app/music/common/settings/CacheSizeSettingsActivity;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 567
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 568
    const-string v3, "5211"

    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->sendLoggingData(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 569
    :cond_b
    const-string v3, "device_management"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 570
    const-class v3, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 571
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 572
    const-string v3, "5213"

    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->sendLoggingData(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 573
    :cond_c
    const-string v3, "drm_license"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 574
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksActivity$MDrmTracksLauncher;->startActivity(Landroid/app/Activity;)V

    .line 575
    const-string v3, "5214"

    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->sendLoggingData(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 576
    :cond_d
    const-string v3, "drm_license_test_menu"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 578
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->setDrmLicenseExpired()V

    goto/16 :goto_0
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "extras"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1485
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 298
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;->onResume()V

    .line 299
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->updateSettings()V

    .line 300
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 301
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 302
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 1496
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 1500
    return-void
.end method

.method public onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1504
    const-string v2, "MusicSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onChange - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->updateExplicitOption()V

    .line 1506
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->updateSimilarStationOption()V

    .line 1507
    const-string v2, "my_music_mode"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1508
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->updateMyMusicMode()V

    .line 1509
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->updateMobileData()V

    .line 1510
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v1

    .line 1511
    .local v1, "isMyMusicMode":Z
    const-string v4, "5201"

    if-eqz v1, :cond_1

    const-wide/16 v2, 0x1

    :goto_0
    invoke-direct {p0, v4, v2, v3}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->sendLoggingDataWithValue(Ljava/lang/String;J)V

    .line 1513
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1514
    .local v0, "a":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 1515
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "settings_localMusicOnlyMode"

    if-eqz v1, :cond_2

    const-string v2, "On"

    :goto_1
    invoke-static {v3, v4, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    .end local v0    # "a":Landroid/app/Activity;
    .end local v1    # "isMyMusicMode":Z
    :cond_0
    return-void

    .line 1511
    .restart local v1    # "isMyMusicMode":Z
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 1515
    .restart local v0    # "a":Landroid/app/Activity;
    :cond_2
    const-string v2, "Off"

    goto :goto_1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 265
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 267
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v1

    .line 268
    .local v1, "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    if-eqz v1, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 270
    .local v0, "activity":Landroid/app/Activity;
    const-string v2, "Settings"

    const/16 v3, 0x16

    new-array v3, v3, [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    const/4 v4, 0x0

    new-instance v5, Lcom/samsung/android/app/music/bixby/executor/settings/global/LaunchAboutExecutor;

    invoke-direct {v5, v1, v0}, Lcom/samsung/android/app/music/bixby/executor/settings/global/LaunchAboutExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/app/Activity;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Lcom/samsung/android/app/music/bixby/executor/settings/global/LaunchAutoOffExecutor;

    invoke-direct {v5, v1, v0}, Lcom/samsung/android/app/music/bixby/executor/settings/global/LaunchAutoOffExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/app/Activity;)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Lcom/samsung/android/app/music/bixby/executor/settings/global/LaunchTabSettingsExecutor;

    invoke-direct {v5, v1, v0}, Lcom/samsung/android/app/music/bixby/executor/settings/global/LaunchTabSettingsExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/app/Activity;)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Lcom/samsung/android/app/music/bixby/executor/settings/LaunchSettingsResponseExecutor;

    invoke-direct {v5, v1}, Lcom/samsung/android/app/music/bixby/executor/settings/LaunchSettingsResponseExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    new-instance v5, Lcom/samsung/android/app/music/bixby/executor/settings/global/SetLockScreenControlExecutor;

    invoke-direct {v5, v1, p0}, Lcom/samsung/android/app/music/bixby/executor/settings/global/SetLockScreenControlExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/common/settings/SettingsFragment;)V

    aput-object v5, v3, v4

    const/4 v4, 0x5

    new-instance v5, Lcom/samsung/android/app/music/bixby/executor/settings/global/SetScreenOffMusicExecutor;

    invoke-direct {v5, v1, p0}, Lcom/samsung/android/app/music/bixby/executor/settings/global/SetScreenOffMusicExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/common/settings/SettingsFragment;)V

    aput-object v5, v3, v4

    const/4 v4, 0x6

    new-instance v5, Lcom/samsung/android/app/music/bixby/executor/settings/global/SetSmartVolumeExecutor;

    invoke-direct {v5, v1, p0}, Lcom/samsung/android/app/music/bixby/executor/settings/global/SetSmartVolumeExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/common/settings/SettingsFragment;)V

    aput-object v5, v3, v4

    const/4 v4, 0x7

    new-instance v5, Lcom/samsung/android/app/music/bixby/executor/settings/global/SetSkipSilencesExecutor;

    invoke-direct {v5, v1, p0}, Lcom/samsung/android/app/music/bixby/executor/settings/global/SetSkipSilencesExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/common/settings/SettingsFragment;)V

    aput-object v5, v3, v4

    const/16 v4, 0x8

    new-instance v5, Lcom/samsung/android/app/music/bixby/executor/settings/global/SetPlaySpeedExecutor;

    invoke-direct {v5, v1, p0}, Lcom/samsung/android/app/music/bixby/executor/settings/global/SetPlaySpeedExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/common/settings/SettingsFragment;)V

    aput-object v5, v3, v4

    const/16 v4, 0x9

    new-instance v5, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetLocalMusicModeExecutor;

    invoke-direct {v5, v1, p0}, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetLocalMusicModeExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/common/settings/SettingsFragment;)V

    aput-object v5, v3, v4

    const/16 v4, 0xa

    new-instance v5, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetMobileDataExecutor;

    invoke-direct {v5, v1, p0}, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetMobileDataExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/common/settings/SettingsFragment;)V

    aput-object v5, v3, v4

    const/16 v4, 0xb

    new-instance v5, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor;

    invoke-direct {v5, v1, p0}, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/common/settings/SettingsFragment;)V

    aput-object v5, v3, v4

    const/16 v4, 0xc

    new-instance v5, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetDownloadAudioQualityExecutor;

    invoke-direct {v5, v1, p0}, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetDownloadAudioQualityExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/common/settings/SettingsFragment;)V

    aput-object v5, v3, v4

    const/16 v4, 0xd

    new-instance v5, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor;

    invoke-direct {v5, v1, p0}, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/common/settings/SettingsFragment;)V

    aput-object v5, v3, v4

    const/16 v4, 0xe

    new-instance v5, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetPlaySettingExecutor;

    invoke-direct {v5, v1, p0}, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetPlaySettingExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/common/settings/SettingsFragment;)V

    aput-object v5, v3, v4

    const/16 v4, 0xf

    new-instance v5, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetDeleteDuplicatedExecutor;

    invoke-direct {v5, v1, p0}, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetDeleteDuplicatedExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/common/settings/SettingsFragment;)V

    aput-object v5, v3, v4

    const/16 v4, 0x10

    new-instance v5, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetExplicitContentExecutor;

    invoke-direct {v5, v1, p0}, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetExplicitContentExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/common/settings/SettingsFragment;)V

    aput-object v5, v3, v4

    const/16 v4, 0x11

    new-instance v5, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetSimilarStationExecutor;

    invoke-direct {v5, v1, p0}, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetSimilarStationExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/common/settings/SettingsFragment;)V

    aput-object v5, v3, v4

    const/16 v4, 0x12

    new-instance v5, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetPushNotificationExecutor;

    invoke-direct {v5, v1, p0}, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetPushNotificationExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/common/settings/SettingsFragment;)V

    aput-object v5, v3, v4

    const/16 v4, 0x13

    new-instance v5, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor;

    invoke-direct {v5, v1, p0}, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/common/settings/SettingsFragment;)V

    aput-object v5, v3, v4

    const/16 v4, 0x14

    new-instance v5, Lcom/samsung/android/app/music/bixby/executor/settings/kr/ClearCacheExecutor;

    invoke-direct {v5, v1, p0}, Lcom/samsung/android/app/music/bixby/executor/settings/kr/ClearCacheExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/common/settings/SettingsFragment;)V

    aput-object v5, v3, v4

    const/16 v4, 0x15

    new-instance v5, Lcom/samsung/android/app/music/bixby/executor/settings/kr/LaunchDeviceManagementExecutor;

    invoke-direct {v5, v1, v0}, Lcom/samsung/android/app/music/bixby/executor/settings/kr/LaunchDeviceManagementExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/app/Activity;)V

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V

    .line 294
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    return-void
.end method

.method public setDuplicateOption(Z)Z
    .locals 2
    .param p1, "on"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1215
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mDuplicateOption:Landroid/preference/SwitchPreference;

    if-nez v1, :cond_1

    .line 1223
    :cond_0
    :goto_0
    return v0

    .line 1219
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mDuplicateOption:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eq v1, p1, :cond_0

    .line 1220
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mDuplicateOption:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1221
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setEdgeLighting(Z)Z
    .locals 2
    .param p1, "on"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1176
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mEdgeLighting:Landroid/preference/SwitchPreference;

    if-nez v1, :cond_1

    .line 1183
    :cond_0
    :goto_0
    return v0

    .line 1179
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mEdgeLighting:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eq v1, p1, :cond_0

    .line 1180
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mEdgeLighting:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1181
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setExplicitContent(Z)Z
    .locals 2
    .param p1, "on"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1227
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mExplicit:Lcom/samsung/android/app/music/common/settings/preference/ExplicitPreference;

    if-nez v1, :cond_1

    .line 1235
    :cond_0
    :goto_0
    return v0

    .line 1231
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mExplicit:Lcom/samsung/android/app/music/common/settings/preference/ExplicitPreference;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/settings/preference/ExplicitPreference;->isChecked()Z

    move-result v1

    if-eq v1, p1, :cond_0

    .line 1232
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mExplicit:Lcom/samsung/android/app/music/common/settings/preference/ExplicitPreference;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/settings/preference/ExplicitPreference;->setChecked(Z)V

    .line 1233
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setLockScreen(Z)Z
    .locals 2
    .param p1, "on"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1124
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mLockScreen:Landroid/preference/SwitchPreference;

    if-nez v1, :cond_1

    .line 1131
    :cond_0
    :goto_0
    return v0

    .line 1127
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mLockScreen:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eq v1, p1, :cond_0

    .line 1128
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mLockScreen:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1129
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setMobileData(Z)Z
    .locals 2
    .param p1, "on"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1199
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mMobileData:Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;

    if-nez v1, :cond_1

    .line 1211
    :cond_0
    :goto_0
    return v0

    .line 1203
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/common/util/AndroidUtils;->doesSimExist(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1207
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mMobileData:Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;->isChecked()Z

    move-result v1

    if-eq v1, p1, :cond_0

    .line 1208
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mMobileData:Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;->setChecked(Z)V

    .line 1209
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setMyMusicMode(Z)Z
    .locals 2
    .param p1, "on"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1187
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mMyMusicMode:Landroid/preference/SwitchPreference;

    if-nez v1, :cond_1

    .line 1195
    :cond_0
    :goto_0
    return v0

    .line 1191
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mMyMusicMode:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eq v1, p1, :cond_0

    .line 1192
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mMyMusicMode:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1193
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPlaySpeed(F)V
    .locals 1
    .param p1, "playSpeed"    # F

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPlaySpeed:Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;

    if-nez v0, :cond_0

    .line 1172
    :goto_0
    return-void

    .line 1171
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPlaySpeed:Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;->updatePlaySpeed(F)V

    goto :goto_0
.end method

.method public setPushNotification(Z)Z
    .locals 2
    .param p1, "on"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1251
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPushNotification:Landroid/preference/SwitchPreference;

    if-nez v1, :cond_1

    .line 1259
    :cond_0
    :goto_0
    return v0

    .line 1255
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPushNotification:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eq v1, p1, :cond_0

    .line 1256
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPushNotification:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1257
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setScreenOffMusic(Z)Z
    .locals 2
    .param p1, "on"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1135
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mScreenOffMusic:Landroid/preference/SwitchPreference;

    if-nez v1, :cond_1

    .line 1142
    :cond_0
    :goto_0
    return v0

    .line 1138
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mScreenOffMusic:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eq v1, p1, :cond_0

    .line 1139
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mScreenOffMusic:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1140
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setSimilarStation(Z)Z
    .locals 2
    .param p1, "on"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1239
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mSimilarStation:Landroid/preference/SwitchPreference;

    if-nez v1, :cond_1

    .line 1247
    :cond_0
    :goto_0
    return v0

    .line 1243
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mSimilarStation:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eq v1, p1, :cond_0

    .line 1244
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mSimilarStation:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1245
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setSkipSilences(Z)Z
    .locals 2
    .param p1, "on"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1157
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mSkipSilences:Landroid/preference/SwitchPreference;

    if-nez v1, :cond_1

    .line 1164
    :cond_0
    :goto_0
    return v0

    .line 1160
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mSkipSilences:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eq v1, p1, :cond_0

    .line 1161
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mSkipSilences:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1162
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setSmartVolume(Z)Z
    .locals 2
    .param p1, "on"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1146
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mSmartVolume:Landroid/preference/SwitchPreference;

    if-nez v1, :cond_1

    .line 1153
    :cond_0
    :goto_0
    return v0

    .line 1149
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mSmartVolume:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eq v1, p1, :cond_0

    .line 1150
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mSmartVolume:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1151
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected syncSettings(Ljava/lang/String;I)V
    .locals 5
    .param p1, "mapKey"    # Ljava/lang/String;
    .param p2, "settingValue"    # I

    .prologue
    const/4 v4, 0x0

    .line 1116
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1117
    .local v1, "settingMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1119
    .local v0, "mapValue":Ljava/lang/String;
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v1, v4, v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->saveSettings(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/util/HashMap;Ljava/util/ArrayList;Z)I

    .line 1121
    return-void
.end method

.method public updateCacheSizeOption()V
    .locals 2

    .prologue
    .line 893
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mCacheSize:Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;

    if-nez v0, :cond_0

    .line 894
    const-string v0, "MusicSettings"

    const-string v1, "CacheSize preference null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    :goto_0
    return-void

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mCacheSize:Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;->setValue()V

    goto :goto_0
.end method

.method public updateDownloadAudioQuality()V
    .locals 2

    .prologue
    .line 783
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mDownloadAudioQuality:Landroid/preference/Preference;

    if-nez v0, :cond_0

    .line 789
    :goto_0
    return-void

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mDownloadAudioQuality:Landroid/preference/Preference;

    const-string v1, "milk_download_quality"

    .line 788
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getAudioQualityString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 787
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->setSummaryColorToPrimaryColor(Landroid/preference/Preference;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateEnqueueOption()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 841
    iget-object v4, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mEnqueueOption:Landroid/preference/Preference;

    if-nez v4, :cond_0

    .line 850
    :goto_0
    return-void

    .line 844
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->getEnqueueOption()I

    move-result v2

    .line 845
    .local v2, "value":I
    new-instance v0, Lcom/samsung/android/app/music/common/settings/EnqueueOptionSettingsActivity$EnqueueOptionSettingItems;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/settings/EnqueueOptionSettingsActivity$EnqueueOptionSettingItems;-><init>()V

    .line 846
    .local v0, "items":Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;->getSettingItemPosition(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;->getSettingItemName(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 847
    .local v1, "summary":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mEnqueueOption:Landroid/preference/Preference;

    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->getPlayOption()I

    move-result v5

    if-ne v5, v3, :cond_1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 849
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mEnqueueOption:Landroid/preference/Preference;

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->setSummaryColorToPrimaryColor(Landroid/preference/Preference;Ljava/lang/String;)V

    goto :goto_0

    .line 847
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public updatePlayOption()V
    .locals 4

    .prologue
    .line 831
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPlayOption:Landroid/preference/Preference;

    if-nez v3, :cond_0

    .line 838
    :goto_0
    return-void

    .line 834
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->getPlayOption()I

    move-result v2

    .line 835
    .local v2, "value":I
    new-instance v0, Lcom/samsung/android/app/music/common/settings/PlayOptionSettingsActivity$PlayOptionSettingItems;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/settings/PlayOptionSettingsActivity$PlayOptionSettingItems;-><init>()V

    .line 836
    .local v0, "items":Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;->getSettingItemPosition(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;->getSettingItemName(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 837
    .local v1, "summary":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mPlayOption:Landroid/preference/Preference;

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->setSummaryColorToPrimaryColor(Landroid/preference/Preference;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateStreamingAudioQuality()V
    .locals 2

    .prologue
    .line 775
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mStreamingAudioQuality:Landroid/preference/Preference;

    if-nez v0, :cond_0

    .line 780
    :goto_0
    return-void

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->mStreamingAudioQuality:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getStreamingQualityText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->setSummaryColorToPrimaryColor(Landroid/preference/Preference;Ljava/lang/String;)V

    goto :goto_0
.end method
