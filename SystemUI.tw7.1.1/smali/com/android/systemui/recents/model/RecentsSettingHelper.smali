.class public Lcom/android/systemui/recents/model/RecentsSettingHelper;
.super Ljava/lang/Object;
.source "RecentsSettingHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/RecentsSettingHelper$1;,
        Lcom/android/systemui/recents/model/RecentsSettingHelper$DesktopModeListenerImpl;,
        Lcom/android/systemui/recents/model/RecentsSettingHelper$MultiWindowEventListener;
    }
.end annotation


# instance fields
.field private mAppLockObserver:Landroid/database/ContentObserver;

.field private mApplicationNameControlEnabled:Z

.field private mContext:Landroid/content/Context;

.field private mDesktopModeListener:Lcom/android/systemui/recents/model/RecentsSettingHelper$DesktopModeListenerImpl;

.field private mEmergencyModeEnabled:Z

.field private mEmergencyModeObserver:Landroid/database/ContentObserver;

.field private mHideSecureFolderFlag:I

.field private mHideSecureFolderObserver:Landroid/database/ContentObserver;

.field private mIconTrayObserver:Landroid/database/ContentObserver;

.field private mIconTraySetting:I

.field private mIsDesktopMode:Z

.field private final mKnoxStateMonitorCallback:Lcom/android/keyguard/KnoxStateMonitorCallback;

.field private mMobileKeyboardEnabled:Z

.field private mMobileKeyboardObserver:Landroid/database/ContentObserver;

.field private mMultiWindowSettingEnabled:Z

.field private mNeedDarkFont:Z

.field private mNeedDarkFontObserver:Landroid/database/ContentObserver;

.field private mPrivateModeEnabled:Z

.field private mPrivateModeObserver:Landroid/database/ContentObserver;

.field private mShowButtonShape:Z

.field private mShowButtonShapeObserver:Landroid/database/ContentObserver;

.field private mUPSModeEnabled:Z

.field private mUPSModeObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/model/RecentsSettingHelper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/model/RecentsSettingHelper;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mIconTraySetting:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/recents/model/RecentsSettingHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mApplicationNameControlEnabled:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/recents/model/RecentsSettingHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mEmergencyModeEnabled:Z

    return p1
.end method

.method static synthetic -set10(Lcom/android/systemui/recents/model/RecentsSettingHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mUPSModeEnabled:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/recents/model/RecentsSettingHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mHideSecureFolderFlag:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/recents/model/RecentsSettingHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mIconTraySetting:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/recents/model/RecentsSettingHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mIsDesktopMode:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/recents/model/RecentsSettingHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mMobileKeyboardEnabled:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/systemui/recents/model/RecentsSettingHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mMultiWindowSettingEnabled:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/systemui/recents/model/RecentsSettingHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mNeedDarkFont:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/systemui/recents/model/RecentsSettingHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mPrivateModeEnabled:Z

    return p1
.end method

.method static synthetic -set9(Lcom/android/systemui/recents/model/RecentsSettingHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mShowButtonShape:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mPrivateModeObserver:Landroid/database/ContentObserver;

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mUPSModeObserver:Landroid/database/ContentObserver;

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mEmergencyModeObserver:Landroid/database/ContentObserver;

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mMobileKeyboardObserver:Landroid/database/ContentObserver;

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mAppLockObserver:Landroid/database/ContentObserver;

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mNeedDarkFontObserver:Landroid/database/ContentObserver;

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mShowButtonShapeObserver:Landroid/database/ContentObserver;

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mHideSecureFolderObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/recents/model/RecentsSettingHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/model/RecentsSettingHelper$1;-><init>(Lcom/android/systemui/recents/model/RecentsSettingHelper;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mKnoxStateMonitorCallback:Lcom/android/keyguard/KnoxStateMonitorCallback;

    iput-object p1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->register()V

    return-void
.end method


# virtual methods
.method public getHideSecureFolderFlag()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mHideSecureFolderFlag:I

    return v0
.end method

.method public isApplicationControlEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mApplicationNameControlEnabled:Z

    return v0
.end method

.method public isDesktopMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mIsDesktopMode:Z

    return v0
.end method

.method public isEmergencyModeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mEmergencyModeEnabled:Z

    return v0
.end method

.method public isMobileKeyboardEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mMobileKeyboardEnabled:Z

    return v0
.end method

.method public isMultiWindowSettingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mMultiWindowSettingEnabled:Z

    return v0
.end method

.method public isPrivateModeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mPrivateModeEnabled:Z

    return v0
.end method

.method public isUPSModeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mUPSModeEnabled:Z

    return v0
.end method

.method public needDarkFont()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mNeedDarkFont:Z

    return v0
.end method

.method public register()V
    .locals 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v5, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mPrivateModeObserver:Landroid/database/ContentObserver;

    if-nez v5, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "personal_mode_enabled"

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getSystemSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_9

    move v5, v3

    :goto_0
    iput-boolean v5, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mPrivateModeEnabled:Z

    new-instance v5, Lcom/android/systemui/recents/model/RecentsSettingHelper$2;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/systemui/recents/model/RecentsSettingHelper$2;-><init>(Lcom/android/systemui/recents/model/RecentsSettingHelper;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mPrivateModeObserver:Landroid/database/ContentObserver;

    const-string/jumbo v5, "personal_mode_enabled"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mPrivateModeObserver:Landroid/database/ContentObserver;

    const/4 v7, 0x0

    const/4 v8, -0x1

    invoke-virtual {v0, v5, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mUPSModeObserver:Landroid/database/ContentObserver;

    if-nez v5, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "ultra_powersaving_mode"

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getSystemSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-ne v5, v3, :cond_a

    move v5, v3

    :goto_1
    iput-boolean v5, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mUPSModeEnabled:Z

    new-instance v5, Lcom/android/systemui/recents/model/RecentsSettingHelper$3;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/systemui/recents/model/RecentsSettingHelper$3;-><init>(Lcom/android/systemui/recents/model/RecentsSettingHelper;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mUPSModeObserver:Landroid/database/ContentObserver;

    const-string/jumbo v5, "ultra_powersaving_mode"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mUPSModeObserver:Landroid/database/ContentObserver;

    const/4 v7, 0x0

    const/4 v8, -0x1

    invoke-virtual {v0, v5, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mEmergencyModeObserver:Landroid/database/ContentObserver;

    if-nez v5, :cond_2

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "emergency_mode"

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getSystemSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-ne v5, v3, :cond_b

    move v5, v3

    :goto_2
    iput-boolean v5, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mEmergencyModeEnabled:Z

    new-instance v5, Lcom/android/systemui/recents/model/RecentsSettingHelper$4;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/systemui/recents/model/RecentsSettingHelper$4;-><init>(Lcom/android/systemui/recents/model/RecentsSettingHelper;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mEmergencyModeObserver:Landroid/database/ContentObserver;

    const-string/jumbo v5, "emergency_mode"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mEmergencyModeObserver:Landroid/database/ContentObserver;

    const/4 v7, 0x0

    const/4 v8, -0x1

    invoke-virtual {v0, v5, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mAppLockObserver:Landroid/database/ContentObserver;

    if-nez v5, :cond_3

    new-instance v5, Lcom/android/systemui/recents/model/RecentsSettingHelper$5;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/systemui/recents/model/RecentsSettingHelper$5;-><init>(Lcom/android/systemui/recents/model/RecentsSettingHelper;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mAppLockObserver:Landroid/database/ContentObserver;

    const-string/jumbo v5, "app_lock_enabled"

    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mAppLockObserver:Landroid/database/ContentObserver;

    const/4 v7, 0x0

    const/4 v8, -0x1

    invoke-virtual {v0, v5, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_3
    invoke-static {}, Landroid/app/ActivityManager;->supportsMultiWindow()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mMultiWindowSettingEnabled:Z

    new-instance v2, Lcom/android/systemui/recents/model/RecentsSettingHelper$MultiWindowEventListener;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/model/RecentsSettingHelper$MultiWindowEventListener;-><init>(Lcom/android/systemui/recents/model/RecentsSettingHelper;)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V

    sget-boolean v5, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableDesktopMode:Z

    if-eqz v5, :cond_4

    new-instance v5, Lcom/android/systemui/recents/model/RecentsSettingHelper$DesktopModeListenerImpl;

    invoke-direct {v5, p0}, Lcom/android/systemui/recents/model/RecentsSettingHelper$DesktopModeListenerImpl;-><init>(Lcom/android/systemui/recents/model/RecentsSettingHelper;)V

    iput-object v5, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mDesktopModeListener:Lcom/android/systemui/recents/model/RecentsSettingHelper$DesktopModeListenerImpl;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mDesktopModeListener:Lcom/android/systemui/recents/model/RecentsSettingHelper$DesktopModeListenerImpl;

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerDesktopModeListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isDesktopMode()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mIsDesktopMode:Z

    :cond_4
    iget-object v5, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mMobileKeyboardObserver:Landroid/database/ContentObserver;

    if-nez v5, :cond_5

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "mobile_keyboard"

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getSystemSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-ne v5, v3, :cond_c

    move v5, v3

    :goto_3
    iput-boolean v5, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mMobileKeyboardEnabled:Z

    new-instance v5, Lcom/android/systemui/recents/model/RecentsSettingHelper$6;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/systemui/recents/model/RecentsSettingHelper$6;-><init>(Lcom/android/systemui/recents/model/RecentsSettingHelper;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mMobileKeyboardObserver:Landroid/database/ContentObserver;

    const-string/jumbo v5, "mobile_keyboard"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mMobileKeyboardObserver:Landroid/database/ContentObserver;

    const/4 v7, 0x0

    const/4 v8, -0x1

    invoke-virtual {v0, v5, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_5
    iget-object v5, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mNeedDarkFontObserver:Landroid/database/ContentObserver;

    if-nez v5, :cond_6

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "need_dark_font"

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getSystemSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-ne v5, v3, :cond_d

    move v5, v3

    :goto_4
    iput-boolean v5, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mNeedDarkFont:Z

    new-instance v5, Lcom/android/systemui/recents/model/RecentsSettingHelper$7;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/systemui/recents/model/RecentsSettingHelper$7;-><init>(Lcom/android/systemui/recents/model/RecentsSettingHelper;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mNeedDarkFontObserver:Landroid/database/ContentObserver;

    const-string/jumbo v5, "need_dark_font"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mNeedDarkFontObserver:Landroid/database/ContentObserver;

    const/4 v7, 0x0

    const/4 v8, -0x1

    invoke-virtual {v0, v5, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_6
    iget-object v5, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mIconTrayObserver:Landroid/database/ContentObserver;

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "tap_to_icon"

    const/4 v7, -0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mIconTraySetting:I

    new-instance v5, Lcom/android/systemui/recents/model/RecentsSettingHelper$8;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/systemui/recents/model/RecentsSettingHelper$8;-><init>(Lcom/android/systemui/recents/model/RecentsSettingHelper;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mIconTrayObserver:Landroid/database/ContentObserver;

    const-string/jumbo v5, "tap_to_icon"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mIconTrayObserver:Landroid/database/ContentObserver;

    const/4 v7, 0x0

    const/4 v8, -0x2

    invoke-virtual {v0, v5, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v5, "current_sec_appicon_theme_package"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mIconTrayObserver:Landroid/database/ContentObserver;

    const/4 v7, 0x0

    const/4 v8, -0x2

    invoke-virtual {v0, v5, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_7
    iget-object v5, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mShowButtonShapeObserver:Landroid/database/ContentObserver;

    if-nez v5, :cond_8

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "show_button_background"

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getSystemSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-ne v5, v3, :cond_e

    :goto_5
    iput-boolean v3, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mShowButtonShape:Z

    new-instance v3, Lcom/android/systemui/recents/model/RecentsSettingHelper$9;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/recents/model/RecentsSettingHelper$9;-><init>(Lcom/android/systemui/recents/model/RecentsSettingHelper;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mShowButtonShapeObserver:Landroid/database/ContentObserver;

    const-string/jumbo v3, "show_button_background"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mShowButtonShapeObserver:Landroid/database/ContentObserver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_8
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "hide_secure_folder_flag"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mHideSecureFolderFlag:I

    new-instance v3, Lcom/android/systemui/recents/model/RecentsSettingHelper$10;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/recents/model/RecentsSettingHelper$10;-><init>(Lcom/android/systemui/recents/model/RecentsSettingHelper;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mHideSecureFolderObserver:Landroid/database/ContentObserver;

    const-string/jumbo v3, "hide_secure_folder_flag"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mHideSecureFolderObserver:Landroid/database/ContentObserver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_6
    return-void

    :cond_9
    move v5, v4

    goto/16 :goto_0

    :cond_a
    move v5, v4

    goto/16 :goto_1

    :cond_b
    move v5, v4

    goto/16 :goto_2

    :cond_c
    move v5, v4

    goto/16 :goto_3

    :cond_d
    move v5, v4

    goto/16 :goto_4

    :cond_e
    move v3, v4

    goto :goto_5

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public showButtonShape()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper;->mShowButtonShape:Z

    return v0
.end method
