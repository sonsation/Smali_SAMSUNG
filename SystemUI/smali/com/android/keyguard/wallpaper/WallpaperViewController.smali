.class public Lcom/android/keyguard/wallpaper/WallpaperViewController;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "WallpaperViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/wallpaper/WallpaperViewController$1;,
        Lcom/android/keyguard/wallpaper/WallpaperViewController$2;,
        Lcom/android/keyguard/wallpaper/WallpaperViewController$3;,
        Lcom/android/keyguard/wallpaper/WallpaperViewController$OMCWallpaperUpdatedReceiver;,
        Lcom/android/keyguard/wallpaper/WallpaperViewController$WallpaperChangedReceiver;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected final mHandler:Landroid/os/Handler;

.field protected mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsCinematicWallpaper:Z

.field protected mIsDesktopMode:Z

.field mKnoxStateCallback:Lcom/android/keyguard/KnoxStateMonitorCallback;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOMCWallpaperUpdatedReceiver:Lcom/android/keyguard/wallpaper/WallpaperViewController$OMCWallpaperUpdatedReceiver;

.field protected mRootView:Landroid/view/ViewGroup;

.field protected mScreenOn:Z

.field protected mService:Landroid/app/IWallpaperManager;

.field private mSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

.field private mSettingsValueList:[Landroid/net/Uri;

.field private mStatusBarWindow:Landroid/view/View;

.field protected mVisibility:I

.field private mWallpaperChangedReceiver:Lcom/android/keyguard/wallpaper/WallpaperViewController$WallpaperChangedReceiver;

.field private mWallpaperType:I

.field protected mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;


# direct methods
.method static synthetic -set0(Lcom/android/keyguard/wallpaper/WallpaperViewController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mIsCinematicWallpaper:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/wallpaper/WallpaperViewController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/WallpaperViewController;->isCinematicWallpaper()Z

    move-result v0

    return v0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 133
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    .line 59
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mVisibility:I

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mWallpaperType:I

    .line 64
    iput-boolean v2, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mIsDesktopMode:Z

    .line 71
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/net/Uri;

    .line 72
    const-string/jumbo v1, "lockscreen_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v2

    .line 73
    const-string/jumbo v1, "ultra_powersaving_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 74
    const-string/jumbo v1, "emergency_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 71
    iput-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mSettingsValueList:[Landroid/net/Uri;

    .line 93
    new-instance v0, Lcom/android/keyguard/wallpaper/WallpaperViewController$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/wallpaper/WallpaperViewController$1;-><init>(Lcom/android/keyguard/wallpaper/WallpaperViewController;)V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mHandler:Landroid/os/Handler;

    .line 114
    new-instance v0, Lcom/android/keyguard/wallpaper/WallpaperViewController$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/wallpaper/WallpaperViewController$2;-><init>(Lcom/android/keyguard/wallpaper/WallpaperViewController;)V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 124
    new-instance v0, Lcom/android/keyguard/wallpaper/WallpaperViewController$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/wallpaper/WallpaperViewController$3;-><init>(Lcom/android/keyguard/wallpaper/WallpaperViewController;)V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mKnoxStateCallback:Lcom/android/keyguard/KnoxStateMonitorCallback;

    .line 134
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mContext:Landroid/content/Context;

    .line 137
    const-string/jumbo v0, "wallpaper"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 136
    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mService:Landroid/app/IWallpaperManager;

    .line 138
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 139
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 141
    new-instance v0, Lcom/android/keyguard/wallpaper/WallpaperViewController$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/wallpaper/WallpaperViewController$4;-><init>(Lcom/android/keyguard/wallpaper/WallpaperViewController;)V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    .line 149
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/SettingsHelper;->registerCallback(Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 152
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/WallpaperViewController;->registerOMCWallpaperUpdatedReceiver()V

    .line 155
    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_CINEMATIC_WALLPAPER:Z

    if-eqz v0, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/WallpaperViewController;->registerWallpaperChangedReceiver()V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mKnoxStateCallback:Lcom/android/keyguard/KnoxStateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KnoxStateMonitor;->registerCallback(Lcom/android/keyguard/KnoxStateMonitorCallback;)V

    .line 133
    return-void
.end method

.method private isCinematicWallpaper()Z
    .locals 10

    .prologue
    .line 379
    const/4 v1, 0x0

    .line 380
    .local v1, "isCinematicWallpaper":Z
    iget-object v7, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v6

    .line 381
    .local v6, "wm":Landroid/app/WallpaperManager;
    if-eqz v6, :cond_0

    .line 382
    invoke-virtual {v6}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v5

    .line 383
    .local v5, "wi":Landroid/app/WallpaperInfo;
    if-eqz v5, :cond_0

    .line 384
    invoke-virtual {v5}, Landroid/app/WallpaperInfo;->getServiceName()Ljava/lang/String;

    move-result-object v4

    .line 385
    .local v4, "wallpeperServiceName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 386
    const v8, 0x10700a4

    .line 385
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 387
    .local v3, "wallpeperServiceList":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v7, v3

    if-ge v0, v7, :cond_0

    .line 388
    aget-object v2, v3, v0

    .line 389
    .local v2, "serviceName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 390
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 391
    const/4 v1, 0x1

    .line 398
    .end local v0    # "i":I
    .end local v2    # "serviceName":Ljava/lang/String;
    .end local v3    # "wallpeperServiceList":[Ljava/lang/String;
    .end local v4    # "wallpeperServiceName":Ljava/lang/String;
    .end local v5    # "wi":Landroid/app/WallpaperInfo;
    :cond_0
    const-string/jumbo v7, "WallpaperViewController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isCinematicWallpaper = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    return v1

    .line 387
    .restart local v0    # "i":I
    .restart local v2    # "serviceName":Ljava/lang/String;
    .restart local v3    # "wallpeperServiceList":[Ljava/lang/String;
    .restart local v4    # "wallpeperServiceName":Ljava/lang/String;
    .restart local v5    # "wi":Landroid/app/WallpaperInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private registerOMCWallpaperUpdatedReceiver()V
    .locals 3

    .prologue
    .line 313
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 314
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.samsung.intent.action.RSCUPDATE_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 315
    new-instance v1, Lcom/android/keyguard/wallpaper/WallpaperViewController$OMCWallpaperUpdatedReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/wallpaper/WallpaperViewController$OMCWallpaperUpdatedReceiver;-><init>(Lcom/android/keyguard/wallpaper/WallpaperViewController;Lcom/android/keyguard/wallpaper/WallpaperViewController$OMCWallpaperUpdatedReceiver;)V

    iput-object v1, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mOMCWallpaperUpdatedReceiver:Lcom/android/keyguard/wallpaper/WallpaperViewController$OMCWallpaperUpdatedReceiver;

    .line 316
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mOMCWallpaperUpdatedReceiver:Lcom/android/keyguard/wallpaper/WallpaperViewController$OMCWallpaperUpdatedReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 312
    return-void
.end method

.method private registerWallpaperChangedReceiver()V
    .locals 3

    .prologue
    .line 345
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 346
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 347
    new-instance v1, Lcom/android/keyguard/wallpaper/WallpaperViewController$WallpaperChangedReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/wallpaper/WallpaperViewController$WallpaperChangedReceiver;-><init>(Lcom/android/keyguard/wallpaper/WallpaperViewController;Lcom/android/keyguard/wallpaper/WallpaperViewController$WallpaperChangedReceiver;)V

    iput-object v1, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mWallpaperChangedReceiver:Lcom/android/keyguard/wallpaper/WallpaperViewController$WallpaperChangedReceiver;

    .line 348
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mWallpaperChangedReceiver:Lcom/android/keyguard/wallpaper/WallpaperViewController$WallpaperChangedReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 344
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/16 v1, 0x25d

    .line 307
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 308
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 306
    return-void
.end method

.method protected handleCleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 215
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    invoke-interface {v0}, Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;->cleanUp()V

    .line 220
    iput-object v1, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    .line 214
    :cond_1
    return-void
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    invoke-interface {v0, p1}, Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;->handleTouchEvent(Landroid/view/MotionEvent;)V

    .line 292
    :cond_0
    return-void
.end method

.method protected handleWallpaperImageChanged()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 210
    return-void

    .line 208
    :cond_0
    return-void
.end method

.method protected handleWallpaperTypeChanged()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 204
    return-void

    .line 202
    :cond_0
    return-void
.end method

.method protected onBootCompleted()V
    .locals 4

    .prologue
    .line 173
    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_CINEMATIC_WALLPAPER:Z

    if-eqz v1, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/WallpaperViewController;->isCinematicWallpaper()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mIsCinematicWallpaper:Z

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mService:Landroid/app/IWallpaperManager;

    if-eqz v1, :cond_1

    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v1}, Landroid/app/IWallpaperManager;->getLockWallpaperType()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mWallpaperType:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :cond_1
    :goto_0
    const-string/jumbo v1, "WallpaperViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBootCompleted mWallpaperType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mWallpaperType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "WallpaperViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "System dead?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_0

    .line 287
    const-string/jumbo v0, "WallpaperViewController"

    const-string/jumbo v1, "mWallpaperView.onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    invoke-interface {v0}, Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;->onPause()V

    .line 285
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_0

    .line 280
    const-string/jumbo v0, "WallpaperViewController"

    const-string/jumbo v1, "mWallpaperView.onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    invoke-interface {v0}, Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;->onResume()V

    .line 278
    :cond_0
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .prologue
    .line 273
    const-string/jumbo v0, "WallpaperViewController"

    const-string/jumbo v1, "onScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mScreenOn:Z

    .line 275
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/WallpaperViewController;->onPause()V

    .line 272
    return-void
.end method

.method public onScreenTurningOn()V
    .locals 2

    .prologue
    .line 265
    const-string/jumbo v0, "WallpaperViewController"

    const-string/jumbo v1, "onScreenTurningOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mScreenOn:Z

    .line 267
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/WallpaperViewController;->onResume()V

    .line 264
    :cond_0
    return-void
.end method

.method protected onUserSwitching(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 166
    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/WallpaperViewController;->onWallpaperChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onWallpaperChanged()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x25a

    const/16 v6, 0x259

    .line 226
    const/4 v2, -0x1

    .line 227
    .local v2, "type":I
    const/4 v1, 0x0

    .line 228
    .local v1, "isDesktopMode":Z
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mService:Landroid/app/IWallpaperManager;

    if-eqz v3, :cond_0

    .line 230
    :try_start_0
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v3}, Landroid/app/IWallpaperManager;->getLockWallpaperType()I

    move-result v2

    .line 231
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v3}, Landroid/app/IWallpaperManager;->isDesktopMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 236
    .end local v1    # "isDesktopMode":Z
    :cond_0
    :goto_0
    const-string/jumbo v3, "WallpaperViewController"

    const-string/jumbo v4, "onWallpaperChanged() called"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-boolean v3, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mIsDesktopMode:Z

    if-eq v3, v1, :cond_1

    .line 239
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 240
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 251
    :goto_1
    iput v2, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mWallpaperType:I

    .line 252
    iput-boolean v1, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mIsDesktopMode:Z

    .line 225
    return-void

    .line 232
    .restart local v1    # "isDesktopMode":Z
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "WallpaperViewController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "System dead?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 242
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "isDesktopMode":Z
    :cond_1
    iget v3, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mWallpaperType:I

    if-eq v3, v2, :cond_2

    .line 243
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 244
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 246
    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 247
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_0

    .line 301
    const-string/jumbo v0, "WallpaperViewController"

    const-string/jumbo v1, "mWallpaperView.reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    invoke-interface {v0}, Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;->reset()V

    .line 299
    :cond_0
    return-void
.end method

.method public sendWallpaperCommand(Ljava/lang/String;)V
    .locals 7
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 366
    iget-boolean v2, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mIsCinematicWallpaper:Z

    if-eqz v2, :cond_0

    .line 367
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    .line 368
    .local v0, "wm":Landroid/app/WallpaperManager;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mStatusBarWindow:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 369
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mStatusBarWindow:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 370
    .local v1, "windowToken":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    move-object v2, p1

    move v4, v3

    move v5, v3

    .line 371
    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 372
    const-string/jumbo v2, "WallpaperViewController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendWallpaperCommand() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    .end local v0    # "wm":Landroid/app/WallpaperManager;
    .end local v1    # "windowToken":Landroid/os/IBinder;
    :cond_0
    return-void
.end method

.method protected setBackground()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 196
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_0

    .line 197
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 193
    :cond_0
    return-void
.end method

.method public setRootView(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    .line 258
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 256
    :cond_0
    return-void
.end method

.method public setStatusBarWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "statusBarWindow"    # Landroid/view/View;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mStatusBarWindow:Landroid/view/View;

    .line 361
    return-void
.end method
