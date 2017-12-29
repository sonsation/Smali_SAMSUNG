.class public Lcom/samsung/android/settings/notification/VibrationIntensitySettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "VibrationIntensitySettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/VibrationIntensitySettings$1;,
        Lcom/samsung/android/settings/notification/VibrationIntensitySettings$2;,
        Lcom/samsung/android/settings/notification/VibrationIntensitySettings$3;,
        Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;,
        Lcom/samsung/android/settings/notification/VibrationIntensitySettings$5;,
        Lcom/samsung/android/settings/notification/VibrationIntensitySettings$6;,
        Lcom/samsung/android/settings/notification/VibrationIntensitySettings$7;,
        Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;
    }
.end annotation


# static fields
.field private static final ACTIONS:[Ljava/lang/String;

.field private static final DEBUG:Z

.field private static final KEYS:[Ljava/lang/String;

.field private static final NLG_PARAMS:[Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static final VIBRATION_CONTROL_TARGETS:[Ljava/lang/String;

.field private static mPowerManager:Landroid/os/PowerManager;


# instance fields
.field private mAoBleChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mBixbyMsgHandler:Landroid/os/Handler;

.field private mCallVibObserver:Landroid/database/ContentObserver;

.field private mCallVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

.field private mContext:Landroid/content/Context;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mForceTouchPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

.field private mForceTouchVibObserver:Landroid/database/ContentObserver;

.field private mNotiVibObserver:Landroid/database/ContentObserver;

.field private mNotiVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

.field private mSystemVibObserver:Landroid/database/ContentObserver;

.field private mSystemVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

.field private mVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->KEYS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->NLG_PARAMS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mBixbyMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mCallVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mForceTouchPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mNotiVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mSystemVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;I)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;
    .locals 1
    .param p1, "eventId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->findTarget(I)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;Ljava/lang/String;)I
    .locals 1
    .param p1, "stateId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->findEventId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "stateId"    # Ljava/lang/String;
    .param p2, "eventId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->findAction(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 64
    const-string/jumbo v0, "VibrationIntensity"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->DEBUG:Z

    .line 306
    new-instance v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$6;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$6;-><init>()V

    .line 305
    sput-object v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    .line 402
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 403
    const-string/jumbo v1, "VibrationIncomingCall"

    aput-object v1, v0, v4

    const-string/jumbo v1, "VibrationNotifications"

    aput-object v1, v0, v5

    const-string/jumbo v1, "VibrationFeedback"

    aput-object v1, v0, v6

    const-string/jumbo v1, "HardPressVibrationFeedback"

    aput-object v1, v0, v3

    const-string/jumbo v1, "VibrationAll"

    aput-object v1, v0, v7

    .line 402
    sput-object v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->VIBRATION_CONTROL_TARGETS:[Ljava/lang/String;

    .line 406
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "ring_vibration"

    aput-object v1, v0, v4

    const-string/jumbo v1, "notification_vibration"

    aput-object v1, v0, v5

    const-string/jumbo v1, "system_vibration"

    aput-object v1, v0, v6

    const-string/jumbo v1, "force_touch"

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->KEYS:[Ljava/lang/String;

    .line 409
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 410
    const-string/jumbo v1, "Level"

    aput-object v1, v0, v4

    const-string/jumbo v1, "UpByPercentage"

    aput-object v1, v0, v5

    const-string/jumbo v1, "DownByPercentage"

    aput-object v1, v0, v6

    const-string/jumbo v1, "Up"

    aput-object v1, v0, v3

    const-string/jumbo v1, "Down"

    aput-object v1, v0, v7

    const-string/jumbo v1, "Max"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "Min"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 409
    sput-object v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->ACTIONS:[Ljava/lang/String;

    .line 413
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 414
    const-string/jumbo v1, "VibrationIncomingCall"

    aput-object v1, v0, v4

    const-string/jumbo v1, "VibrationNotification"

    aput-object v1, v0, v5

    const-string/jumbo v1, "VibrationFeedback"

    aput-object v1, v0, v6

    const-string/jumbo v1, "HardPressVibrationFeedback"

    aput-object v1, v0, v3

    const-string/jumbo v1, "AllVibrationIntensity"

    aput-object v1, v0, v7

    .line 413
    sput-object v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->NLG_PARAMS:[Ljava/lang/String;

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 78
    iput-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mCallVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    .line 79
    iput-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mNotiVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    .line 80
    iput-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mSystemVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    .line 81
    iput-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mForceTouchPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    .line 84
    new-instance v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$1;-><init>(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mCallVibObserver:Landroid/database/ContentObserver;

    .line 91
    new-instance v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$2;-><init>(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mNotiVibObserver:Landroid/database/ContentObserver;

    .line 98
    new-instance v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$3;-><init>(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mSystemVibObserver:Landroid/database/ContentObserver;

    .line 105
    new-instance v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;-><init>(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mForceTouchVibObserver:Landroid/database/ContentObserver;

    .line 112
    new-instance v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$5;-><init>(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mAoBleChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 383
    new-instance v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$7;-><init>(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 426
    new-instance v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;-><init>(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mBixbyMsgHandler:Landroid/os/Handler;

    .line 61
    return-void
.end method

.method private findAction(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p1, "stateId"    # Ljava/lang/String;
    .param p2, "eventId"    # I

    .prologue
    .line 370
    sget-object v1, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->VIBRATION_CONTROL_TARGETS:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    const-string/jumbo v1, "Level"

    return-object v1

    .line 374
    :cond_0
    sget-object v2, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->ACTIONS:[Ljava/lang/String;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 375
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 376
    return-object v0

    .line 374
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 379
    .end local v0    # "action":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private findEventId(Ljava/lang/String;)I
    .locals 10
    .param p1, "stateId"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v2, 0x0

    .line 338
    sget-object v3, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->VIBRATION_CONTROL_TARGETS:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_5

    aget-object v0, v3, v1

    .line 339
    .local v0, "target":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 340
    sget-object v5, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->VIBRATION_CONTROL_TARGETS:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 341
    return v2

    .line 342
    :cond_0
    sget-object v5, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->VIBRATION_CONTROL_TARGETS:[Ljava/lang/String;

    aget-object v5, v5, v7

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 343
    return v7

    .line 344
    :cond_1
    sget-object v5, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->VIBRATION_CONTROL_TARGETS:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 345
    sget-object v5, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->VIBRATION_CONTROL_TARGETS:[Ljava/lang/String;

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 346
    return v8

    .line 347
    :cond_2
    sget-object v5, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->VIBRATION_CONTROL_TARGETS:[Ljava/lang/String;

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 348
    return v6

    .line 349
    :cond_3
    sget-object v5, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->VIBRATION_CONTROL_TARGETS:[Ljava/lang/String;

    aget-object v5, v5, v9

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 350
    return v9

    .line 338
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 354
    .end local v0    # "target":Ljava/lang/String;
    :cond_5
    const/4 v1, -0x1

    return v1
.end method

.method private findTarget(I)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;
    .locals 1
    .param p1, "eventId"    # I

    .prologue
    .line 359
    packed-switch p1, :pswitch_data_0

    .line 366
    const/4 v0, 0x0

    return-object v0

    .line 360
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mCallVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    return-object v0

    .line 361
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mNotiVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    return-object v0

    .line 362
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mSystemVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    return-object v0

    .line 363
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mForceTouchPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    return-object v0

    .line 364
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mCallVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    return-object v0

    .line 359
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private initVibrationPreference(Ljava/lang/String;I)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 276
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    .line 277
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    invoke-virtual {v0, p2}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->setType(I)V

    .line 278
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    return-object v0
.end method

.method private stopAllVibration()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mCallVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->stopVibration()V

    .line 298
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mNotiVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->stopVibration()V

    .line 299
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mSystemVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->stopVibration()V

    .line 300
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mForceTouchPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->stopVibration()V

    .line 296
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0134

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f080146

    .line 169
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 170
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mContext:Landroid/content/Context;

    .line 172
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "power"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    sput-object v4, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mPowerManager:Landroid/os/PowerManager;

    .line 173
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->addPreferencesFromResource(I)V

    .line 175
    const-string/jumbo v4, "ring_vibration"

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->initVibrationPreference(Ljava/lang/String;I)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mCallVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    .line 176
    const-string/jumbo v4, "notification_vibration"

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->initVibrationPreference(Ljava/lang/String;I)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mNotiVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    .line 177
    const-string/jumbo v4, "system_vibration"

    const/4 v5, 0x2

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->initVibrationPreference(Ljava/lang/String;I)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mSystemVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    .line 178
    const-string/jumbo v4, "force_touch"

    const/4 v5, 0x3

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->initVibrationPreference(Ljava/lang/String;I)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mForceTouchPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    .line 180
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "UPSM"

    invoke-static {v4, v6, v5}, Lcom/android/settings/Utils;->getRemovePreferenceInOtherMode(Landroid/content/Context;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 182
    .local v2, "removelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 183
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "list$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 184
    .local v0, "list":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->removePreference(Ljava/lang/String;)V

    goto :goto_0

    .line 188
    .end local v0    # "list":Ljava/lang/String;
    .end local v1    # "list$iterator":Ljava/util/Iterator;
    .end local v2    # "removelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 189
    const-string/jumbo v4, "ring_vibration"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->removePreference(Ljava/lang/String;)V

    .line 192
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isCoinDcPMIC(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 193
    const-string/jumbo v4, "system_vibration"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->removePreference(Ljava/lang/String;)V

    .line 196
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "vibrator"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    .line 197
    .local v3, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v3}, Landroid/os/Vibrator;->semIsForceTouchSupported()Z

    move-result v4

    if-nez v4, :cond_3

    .line 198
    const-string/jumbo v4, "force_touch"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->removePreference(Ljava/lang/String;)V

    .line 202
    :cond_3
    new-instance v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 168
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 283
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 282
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 288
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 294
    const/4 v0, 0x0

    return v0

    .line 290
    :pswitch_0
    const-string/jumbo v0, "VibrationIntensity"

    const-string/jumbo v1, "onOptionsItemSelected : home"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->stopAllVibration()V

    .line 292
    const/4 v0, 0x1

    return v0

    .line 288
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 249
    const-string/jumbo v0, "VibrationIntensity"

    const-string/jumbo v1, "onPause : "

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 251
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->stopAllVibration()V

    .line 262
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mCallVibObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 263
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mNotiVibObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 264
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mSystemVibObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 265
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mForceTouchVibObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 266
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Vibrationintensity"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 248
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 207
    const-string/jumbo v0, "VibrationIntensity"

    const-string/jumbo v1, "onResume : "

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 239
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "VIB_RECVCALL_MAGNITUDE"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mCallVibObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 240
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "SEM_VIBRATION_NOTIFICATION_INTENSITY"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mNotiVibObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 241
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "VIB_FEEDBACK_MAGNITUDE"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mSystemVibObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 242
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "SEM_VIBRATION_FORCE_TOUCH_INTENSITY"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mForceTouchVibObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 244
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "Vibrationintensity"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 206
    return-void
.end method
