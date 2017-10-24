.class public final Lcom/android/keyguard/KnoxStateMonitor;
.super Ljava/lang/Object;
.source "KnoxStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KnoxStateMonitor$-void__init__android_content_Context_context_LambdaImpl0;,
        Lcom/android/keyguard/KnoxStateMonitor$1;,
        Lcom/android/keyguard/KnoxStateMonitor$2;,
        Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;,
        Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;,
        Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;,
        Lcom/android/keyguard/KnoxStateMonitor$SdpMonitor;,
        Lcom/android/keyguard/KnoxStateMonitor$SharedDeviceMonitor;,
        Lcom/android/keyguard/KnoxStateMonitor$UcmMonitor;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/keyguard/KnoxStateMonitor;


# instance fields
.field private final DEBUG:Z

.field private final mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/keyguard/KnoxStateMonitorCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContainerMonitor:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

.field private mContext:Landroid/content/Context;

.field private mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

.field private mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

.field private final mHandler:Landroid/os/Handler;

.field private mSdpMonitor:Lcom/android/keyguard/KnoxStateMonitor$SdpMonitor;

.field private mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

.field private mSharedDeviceMonitor:Lcom/android/keyguard/KnoxStateMonitor$SharedDeviceMonitor;

.field private mUcmMonitor:Lcom/android/keyguard/KnoxStateMonitor$UcmMonitor;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/KnoxStateMonitor;)Lcom/android/keyguard/util/SettingsHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/KnoxStateMonitor;)Lcom/android/keyguard/KnoxStateMonitor$UcmMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mUcmMonitor:Lcom/android/keyguard/KnoxStateMonitor$UcmMonitor;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor;->handleDPMPasswordChanged()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor;->handleDisableDeviceWhenReachMaxFailed()V

    return-void
.end method

.method static synthetic -wrap10(Lcom/android/keyguard/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor;->handleUpdateLockTypeOverride()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/keyguard/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor;->handleUpdateLockscreenHiddenItems()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/keyguard/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor;->handleUpdateNavigationBarHidden()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/keyguard/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor;->handleUpdateQuickPanelButtonUsers()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/keyguard/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor;->handleUpdateQuickPanelButtons()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/keyguard/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor;->handleUpdateQuickPanelEdit()V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/keyguard/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor;->handleUpdateQuickPanelItems()V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/keyguard/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor;->handleUpdateStatusBarBatteryColour()V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/keyguard/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor;->handleUpdateStatusBarHidden()V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/keyguard/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor;->handleUpdateStatusBarIcons()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/KnoxStateMonitor;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KnoxStateMonitor;->handleDoKeyguard(I)V

    return-void
.end method

.method static synthetic -wrap20(Lcom/android/keyguard/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor;->handleUpdateStatusBarText()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor;->handleEnableMDMWallpaper()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/keyguard/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor;->handleEnableUCMLock()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/keyguard/KnoxStateMonitor;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KnoxStateMonitor;->handlePersonaLaunch(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/keyguard/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor;->handlePersonaStateChange()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/keyguard/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor;->handleRCPPolicyChange()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/keyguard/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor;->handleUpdateContainerKioskmode()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/keyguard/KnoxStateMonitor;Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KnoxStateMonitor;->handleUpdateKnoxKeyguardState(Z)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor;->DEBUG:Z

    .line 118
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 191
    new-instance v1, Lcom/android/keyguard/KnoxStateMonitor$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KnoxStateMonitor$1;-><init>(Lcom/android/keyguard/KnoxStateMonitor;)V

    iput-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 220
    new-instance v1, Lcom/android/keyguard/KnoxStateMonitor$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KnoxStateMonitor$2;-><init>(Lcom/android/keyguard/KnoxStateMonitor;)V

    iput-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor;->mHandler:Landroid/os/Handler;

    .line 142
    iput-object p1, p0, Lcom/android/keyguard/KnoxStateMonitor;->mContext:Landroid/content/Context;

    .line 147
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/keyguard/KnoxStateMonitor$-void__init__android_content_Context_context_LambdaImpl0;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KnoxStateMonitor$-void__init__android_content_Context_context_LambdaImpl0;-><init>(Lcom/android/keyguard/KnoxStateMonitor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 152
    .local v0, "loader":Ljava/lang/Thread;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 153
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 141
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 157
    sget-object v0, Lcom/android/keyguard/KnoxStateMonitor;->sInstance:Lcom/android/keyguard/KnoxStateMonitor;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lcom/android/keyguard/KnoxStateMonitor;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KnoxStateMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/KnoxStateMonitor;->sInstance:Lcom/android/keyguard/KnoxStateMonitor;

    .line 160
    :cond_0
    sget-object v0, Lcom/android/keyguard/KnoxStateMonitor;->sInstance:Lcom/android/keyguard/KnoxStateMonitor;

    return-object v0
.end method

.method private handleDPMPasswordChanged()V
    .locals 4

    .prologue
    .line 315
    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "handleDPMPasswordChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 317
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KnoxStateMonitorCallback;

    .line 318
    .local v0, "cb":Lcom/android/keyguard/KnoxStateMonitorCallback;
    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitorCallback;->onDPMPasswordChanged()V

    .line 316
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 314
    .end local v0    # "cb":Lcom/android/keyguard/KnoxStateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleDisableDeviceWhenReachMaxFailed()V
    .locals 4

    .prologue
    .line 485
    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "handleDisableDeviceWhenReachMaxFailed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 487
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KnoxStateMonitorCallback;

    .line 488
    .local v0, "cb":Lcom/android/keyguard/KnoxStateMonitorCallback;
    if-eqz v0, :cond_0

    .line 489
    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitorCallback;->onDisableDeviceWhenReachMaxFailed()V

    .line 486
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 484
    .end local v0    # "cb":Lcom/android/keyguard/KnoxStateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleDoKeyguard(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 305
    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "handleDoKeyguard"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 307
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KnoxStateMonitorCallback;

    .line 308
    .local v0, "cb":Lcom/android/keyguard/KnoxStateMonitorCallback;
    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KnoxStateMonitorCallback;->onDoKeyguard(I)V

    .line 306
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    .end local v0    # "cb":Lcom/android/keyguard/KnoxStateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleEnableMDMWallpaper()V
    .locals 4

    .prologue
    .line 495
    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "handleEnableMDMWallpaper"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 497
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KnoxStateMonitorCallback;

    .line 498
    .local v0, "cb":Lcom/android/keyguard/KnoxStateMonitorCallback;
    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitorCallback;->onEnableMDMWallpaper()V

    .line 496
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 494
    .end local v0    # "cb":Lcom/android/keyguard/KnoxStateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleEnableUCMLock()V
    .locals 4

    .prologue
    .line 325
    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "handleEnableUCMLock"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 327
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KnoxStateMonitorCallback;

    .line 328
    .local v0, "cb":Lcom/android/keyguard/KnoxStateMonitorCallback;
    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitorCallback;->onEnableUCMLock()V

    .line 326
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 324
    .end local v0    # "cb":Lcom/android/keyguard/KnoxStateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handlePersonaLaunch(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 345
    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "handlePersonaLaunch"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 347
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KnoxStateMonitorCallback;

    .line 348
    .local v0, "cb":Lcom/android/keyguard/KnoxStateMonitorCallback;
    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KnoxStateMonitorCallback;->onPersonaLaunch(I)V

    .line 346
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 344
    .end local v0    # "cb":Lcom/android/keyguard/KnoxStateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handlePersonaStateChange()V
    .locals 4

    .prologue
    .line 335
    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "handlePersonaStateChange"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 337
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KnoxStateMonitorCallback;

    .line 338
    .local v0, "cb":Lcom/android/keyguard/KnoxStateMonitorCallback;
    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitorCallback;->onPersonaStateChange()V

    .line 336
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 334
    .end local v0    # "cb":Lcom/android/keyguard/KnoxStateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleRCPPolicyChange()V
    .locals 4

    .prologue
    .line 355
    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "handleRCPPolicyChange"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 357
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KnoxStateMonitorCallback;

    .line 358
    .local v0, "cb":Lcom/android/keyguard/KnoxStateMonitorCallback;
    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitorCallback;->onRCPPolicyChange()V

    .line 356
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 354
    .end local v0    # "cb":Lcom/android/keyguard/KnoxStateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleUpdateContainerKioskmode()V
    .locals 4

    .prologue
    .line 475
    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "handleUpdateContainerKioskmode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 477
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KnoxStateMonitorCallback;

    .line 478
    .local v0, "cb":Lcom/android/keyguard/KnoxStateMonitorCallback;
    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitorCallback;->onUpdateContainerKioskmode()V

    .line 476
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 474
    .end local v0    # "cb":Lcom/android/keyguard/KnoxStateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleUpdateKnoxKeyguardState(Z)V
    .locals 4
    .param p1, "state"    # Z

    .prologue
    .line 295
    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "handleUpdateKnoxKeyguardState"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 297
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KnoxStateMonitorCallback;

    .line 298
    .local v0, "cb":Lcom/android/keyguard/KnoxStateMonitorCallback;
    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KnoxStateMonitorCallback;->onUpdateKnoxKeyguardState(Z)V

    .line 296
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 294
    .end local v0    # "cb":Lcom/android/keyguard/KnoxStateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleUpdateLockTypeOverride()V
    .locals 4

    .prologue
    .line 375
    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "handleUpdateLockTypeOverride"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 377
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KnoxStateMonitorCallback;

    .line 378
    .local v0, "cb":Lcom/android/keyguard/KnoxStateMonitorCallback;
    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitorCallback;->onUpdateLockTypeOverride()V

    .line 376
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 374
    .end local v0    # "cb":Lcom/android/keyguard/KnoxStateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleUpdateLockscreenHiddenItems()V
    .locals 4

    .prologue
    .line 365
    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "handleUpdateLockscreenHiddenItems"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 367
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KnoxStateMonitorCallback;

    .line 368
    .local v0, "cb":Lcom/android/keyguard/KnoxStateMonitorCallback;
    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitorCallback;->onUpdateLockscreenHiddenItems()V

    .line 366
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 364
    .end local v0    # "cb":Lcom/android/keyguard/KnoxStateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleUpdateNavigationBarHidden()V
    .locals 4

    .prologue
    .line 465
    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "handleUpdateNavigationBarHidden"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 467
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KnoxStateMonitorCallback;

    .line 468
    .local v0, "cb":Lcom/android/keyguard/KnoxStateMonitorCallback;
    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitorCallback;->onUpdateNavigationBarHidden()V

    .line 466
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 464
    .end local v0    # "cb":Lcom/android/keyguard/KnoxStateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleUpdateQuickPanelButtonUsers()V
    .locals 4

    .prologue
    .line 395
    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "handleUpdateQuickPanelButtonUsers"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 397
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KnoxStateMonitorCallback;

    .line 398
    .local v0, "cb":Lcom/android/keyguard/KnoxStateMonitorCallback;
    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitorCallback;->onUpdateQuickPanelButtonUsers()V

    .line 396
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 394
    .end local v0    # "cb":Lcom/android/keyguard/KnoxStateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleUpdateQuickPanelButtons()V
    .locals 4

    .prologue
    .line 385
    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "handleUpdateQuickPanelButtons"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 387
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KnoxStateMonitorCallback;

    .line 388
    .local v0, "cb":Lcom/android/keyguard/KnoxStateMonitorCallback;
    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitorCallback;->onUpdateQuickPanelButtons()V

    .line 386
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 384
    .end local v0    # "cb":Lcom/android/keyguard/KnoxStateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleUpdateQuickPanelEdit()V
    .locals 4

    .prologue
    .line 405
    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "handleUpdateQuickPanelEdit"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 407
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KnoxStateMonitorCallback;

    .line 408
    .local v0, "cb":Lcom/android/keyguard/KnoxStateMonitorCallback;
    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitorCallback;->onUpdateQuickPanelEdit()V

    .line 406
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 404
    .end local v0    # "cb":Lcom/android/keyguard/KnoxStateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleUpdateQuickPanelItems()V
    .locals 4

    .prologue
    .line 415
    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "handleUpdateQuickPanelItems"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 417
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KnoxStateMonitorCallback;

    .line 418
    .local v0, "cb":Lcom/android/keyguard/KnoxStateMonitorCallback;
    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitorCallback;->onUpdateQuickPanelItems()V

    .line 416
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 414
    .end local v0    # "cb":Lcom/android/keyguard/KnoxStateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleUpdateStatusBarBatteryColour()V
    .locals 4

    .prologue
    .line 445
    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "handleUpdateStatusBarBatteryColour"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 447
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KnoxStateMonitorCallback;

    .line 448
    .local v0, "cb":Lcom/android/keyguard/KnoxStateMonitorCallback;
    if-eqz v0, :cond_0

    .line 449
    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitorCallback;->onUpdateStatusBarBatteryColour()V

    .line 446
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 444
    .end local v0    # "cb":Lcom/android/keyguard/KnoxStateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleUpdateStatusBarHidden()V
    .locals 4

    .prologue
    .line 455
    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "handleUpdateStatusBarHidden"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 457
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KnoxStateMonitorCallback;

    .line 458
    .local v0, "cb":Lcom/android/keyguard/KnoxStateMonitorCallback;
    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitorCallback;->onUpdateStatusBarHidden()V

    .line 456
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 454
    .end local v0    # "cb":Lcom/android/keyguard/KnoxStateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleUpdateStatusBarIcons()V
    .locals 4

    .prologue
    .line 435
    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "handleUpdateStatusBarIcons"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 437
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KnoxStateMonitorCallback;

    .line 438
    .local v0, "cb":Lcom/android/keyguard/KnoxStateMonitorCallback;
    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitorCallback;->onUpdateStatusBarIcons()V

    .line 436
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 434
    .end local v0    # "cb":Lcom/android/keyguard/KnoxStateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleUpdateStatusBarText()V
    .locals 4

    .prologue
    .line 425
    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "handleUpdateStatusBarText"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 427
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KnoxStateMonitorCallback;

    .line 428
    .local v0, "cb":Lcom/android/keyguard/KnoxStateMonitorCallback;
    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitorCallback;->onUpdateStatusBarText()V

    .line 426
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 424
    .end local v0    # "cb":Lcom/android/keyguard/KnoxStateMonitorCallback;
    :cond_1
    return-void
.end method

.method private setUpIntentReceiver()V
    .locals 3

    .prologue
    .line 179
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 180
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.sec.knox.keyguard.show"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    const-string/jumbo v1, "com.samsung.android.knox.intent.action.DO_KEYGUARD_INTERNAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    const-string/jumbo v1, "android.app.action.DEVICE_POLICY_MANAGER_PASSWORD_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    const-string/jumbo v1, "com.samsung.ucs.ucsservice.stateblocked"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 178
    return-void
.end method

.method private setUpKnoxClass()V
    .locals 1

    .prologue
    .line 170
    new-instance v0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;-><init>(Lcom/android/keyguard/KnoxStateMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    .line 171
    new-instance v0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;-><init>(Lcom/android/keyguard/KnoxStateMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mContainerMonitor:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    .line 172
    new-instance v0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;-><init>(Lcom/android/keyguard/KnoxStateMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    .line 173
    new-instance v0, Lcom/android/keyguard/KnoxStateMonitor$SharedDeviceMonitor;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KnoxStateMonitor$SharedDeviceMonitor;-><init>(Lcom/android/keyguard/KnoxStateMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mSharedDeviceMonitor:Lcom/android/keyguard/KnoxStateMonitor$SharedDeviceMonitor;

    .line 174
    new-instance v0, Lcom/android/keyguard/KnoxStateMonitor$SdpMonitor;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KnoxStateMonitor$SdpMonitor;-><init>(Lcom/android/keyguard/KnoxStateMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mSdpMonitor:Lcom/android/keyguard/KnoxStateMonitor$SdpMonitor;

    .line 175
    new-instance v0, Lcom/android/keyguard/KnoxStateMonitor$UcmMonitor;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KnoxStateMonitor$UcmMonitor;-><init>(Lcom/android/keyguard/KnoxStateMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mUcmMonitor:Lcom/android/keyguard/KnoxStateMonitor$UcmMonitor;

    .line 169
    return-void
.end method

.method private setUpSettingsObserver()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    .line 187
    return-void
.end method


# virtual methods
.method synthetic -com_android_keyguard_KnoxStateMonitor_lambda$1()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor;->setUpKnoxClass()V

    .line 149
    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor;->setUpIntentReceiver()V

    .line 150
    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor;->setUpSettingsObserver()V

    return-void
.end method

.method public checkSdpCondition(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 2389
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor;->mSdpMonitor:Lcom/android/keyguard/KnoxStateMonitor$SdpMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KnoxStateMonitor$SdpMonitor;->isSdpSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2390
    invoke-virtual {p0}, Lcom/android/keyguard/KnoxStateMonitor;->isPwdChangeRequested()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 2392
    .local v0, "res":Z
    :goto_0
    return v0

    .line 2391
    .end local v0    # "res":Z
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor;->mSdpMonitor:Lcom/android/keyguard/KnoxStateMonitor$SdpMonitor;

    invoke-virtual {v2, p1}, Lcom/android/keyguard/KnoxStateMonitor$SdpMonitor;->isKnoxWorkspace(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/keyguard/KnoxStateMonitor;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 527
    const-string/jumbo v0, "CustomSdkMonitor state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 528
    const-string/jumbo v0, "-mKnoxCustomLockScreenHiddenItems="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->-get5(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 529
    const-string/jumbo v0, "-mKnoxCustomLockScreenOverrideMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->-get6(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 530
    const-string/jumbo v0, "-mKnoxCustomUnlockSimOnBootState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->-get10(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 531
    const-string/jumbo v0, "-mUnlockSimPin="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->-get19(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 532
    const-string/jumbo v0, "-mKnoxCustomQuickPanelButtons="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->-get8(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 533
    const-string/jumbo v0, "-mKnoxCustomQuickPanelButtonUsers="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->-get7(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 534
    const-string/jumbo v0, "-mKnoxCustomQuickPanelEditMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->-get9(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 535
    const-string/jumbo v0, "-mQuickPanelItems="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->-get11(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 536
    const-string/jumbo v0, "-mKnoxCustomDoubleTapState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->-get4(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 537
    const-string/jumbo v0, "-mStatusBarText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->-get15(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 538
    const-string/jumbo v0, "-mStatusBarMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->-get13(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 539
    const-string/jumbo v0, "-mStatusBarTextStyle="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->-get17(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 540
    const-string/jumbo v0, "-mStatusBarTextSize="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->-get16(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 541
    const-string/jumbo v0, "-mStatusBarTextWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->-get18(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 542
    const-string/jumbo v0, "-mStatusBarIconsState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->-get12(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 543
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)Lcom/samsung/android/knox/custom/StatusbarIconItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 544
    const-string/jumbo v0, "-mBatteryLevelColourItem="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)Lcom/samsung/android/knox/custom/StatusbarIconItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/StatusbarIconItem;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 549
    :goto_0
    const-string/jumbo v0, "-mHideNotificationMessages="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->-get2(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 550
    const-string/jumbo v0, "-mStatusBarNotificationsState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->-get14(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 551
    const-string/jumbo v0, "-mChargerConnectionSoundEnabledState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 552
    const-string/jumbo v0, "-mVolumePanelEnabledState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->-get20(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 553
    const-string/jumbo v0, "-mIsCustomSdkStatusBarHidden="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->-get3(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 555
    const-string/jumbo v0, "ContainerMonitor state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 556
    const-string/jumbo v0, "-mIsContainerKioskMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mContainerMonitor:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->-get3(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 558
    const-string/jumbo v0, "EdmMonitor state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 559
    const-string/jumbo v0, "-mIsStatusBarHidden="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->-get9(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 560
    const-string/jumbo v0, "-mIsNavigationBarHidden="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->-get8(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 561
    const-string/jumbo v0, "-mIsMDMKioskMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->-get7(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 562
    const-string/jumbo v0, "-mWipeExcludeExternalStorage="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->-get21(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 563
    const-string/jumbo v0, "-mLockDelay="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->-get11(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 564
    const-string/jumbo v0, "-mMaxNumFailedAttemptForDisable="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->-get12(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 565
    const-string/jumbo v0, "-mIsDeviceDisableForMaxFailedAttempt="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->-get4(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 566
    const-string/jumbo v0, "-mPwdChangeRequest="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->-get15(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 567
    const-string/jumbo v0, "-mSettingsChangesAllowed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->-get16(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 568
    const-string/jumbo v0, "-mStatusBarExpandAllowed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->-get17(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 569
    const-string/jumbo v0, "-mAirplaneModeAllowed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 570
    const-string/jumbo v0, "-mCellularDataAllowed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->-get2(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 571
    const-string/jumbo v0, "-mNFCAllowed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->-get13(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 572
    const-string/jumbo v0, "-mWifiTetheringAllowed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->-get20(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 573
    const-string/jumbo v0, "-mBluetoothAllowed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 574
    const-string/jumbo v0, "-mNFCStateChangeAllowed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->-get14(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 575
    const-string/jumbo v0, "-mWifiStateChangeAllowed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->-get19(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 576
    const-string/jumbo v0, "-mWifiAllowed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->-get18(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 577
    const-string/jumbo v0, "-mLocationProviderAllowed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->-get10(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 578
    const-string/jumbo v0, "-mGPSStateChangeAllowed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->-get3(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 579
    const-string/jumbo v0, "-mIsLockscreenInvisibleOverlayConfigured="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->-get5(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 580
    const-string/jumbo v0, "-mIsLockscreenWallpaperConfigured="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->-get6(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 582
    const-string/jumbo v0, "SharedDeviceMonitor state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 583
    const-string/jumbo v0, "-getSharedDeviceStatus()="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mSharedDeviceMonitor:Lcom/android/keyguard/KnoxStateMonitor$SharedDeviceMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$SharedDeviceMonitor;->getSharedDeviceStatus()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 524
    return-void

    .line 547
    :cond_0
    const-string/jumbo v0, "-mBatteryLevelColourItem=null"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public filterOutForKnoxContainer(ILjava/lang/String;Z)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "isLockscreenPublicMode"    # Z

    .prologue
    .line 2059
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mContainerMonitor:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->filterOutForKnoxContainer(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBatteryLevelColourItem()Lcom/samsung/android/knox/custom/StatusbarIconItem;
    .locals 1

    .prologue
    .line 2131
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->getBatteryLevelColourItem()Lcom/samsung/android/knox/custom/StatusbarIconItem;

    move-result-object v0

    return-object v0
.end method

.method public getContainerIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2075
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mContainerMonitor:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->-wrap5(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getKnoxName(I)Ljava/lang/String;
    .locals 1
    .param p1, "personaID"    # I

    .prologue
    .line 2079
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mContainerMonitor:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v0, p1}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->-wrap4(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLockDelay()I
    .locals 1

    .prologue
    .line 2242
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->getLockDelay()I

    move-result v0

    return v0
.end method

.method public getQuickPanelItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2103
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->getQuickPanelItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStatusBarText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2111
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->getStatusBarText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusBarTextSize()I
    .locals 1

    .prologue
    .line 2119
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->getStatusBarTextSize()I

    move-result v0

    return v0
.end method

.method public getStatusBarTextStyle()I
    .locals 1

    .prologue
    .line 2115
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->getStatusBarTextStyle()I

    move-result v0

    return v0
.end method

.method public getStatusBarTextWidth()I
    .locals 1

    .prologue
    .line 2123
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->getStatusBarTextWidth()I

    move-result v0

    return v0
.end method

.method public getUCMVendor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2384
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mUcmMonitor:Lcom/android/keyguard/KnoxStateMonitor$UcmMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$UcmMonitor;->getUCMVendor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnlockSimPin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2210
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->getUnlockSimPin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAirplaneModeTileBlocked()Z
    .locals 1

    .prologue
    .line 2246
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isAirplaneModeTileBlocked()Z

    move-result v0

    return v0
.end method

.method public isBatteryNotificationEnabled()Z
    .locals 1

    .prologue
    .line 2140
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->isBatteryNotificationEnabled()Z

    move-result v0

    return v0
.end method

.method public isBlockedEdmSettingsChange()Z
    .locals 2

    .prologue
    .line 2329
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isBlueLightFilterTileBlocked()Z
    .locals 1

    .prologue
    .line 2274
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isBlueLightFilterTileBlocked()Z

    move-result v0

    return v0
.end method

.method public isBluetoothTileBlocked()Z
    .locals 1

    .prologue
    .line 2250
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isBluetoothTileBlocked()Z

    move-result v0

    return v0
.end method

.method public isBrightnessBlocked()Z
    .locals 1

    .prologue
    .line 2290
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isBrightnessBlocked()Z

    move-result v0

    return v0
.end method

.method public isBrightnessControllerEnabled()Z
    .locals 1

    .prologue
    .line 2083
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->isBrightnessControllerEnabled()Z

    move-result v0

    return v0
.end method

.method public isCarrierTextEnabled()Z
    .locals 1

    .prologue
    .line 2144
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->isCarrierTextEnabled()Z

    move-result v0

    return v0
.end method

.method public isChargerConnectionSoundEnabledState()Z
    .locals 1

    .prologue
    .line 2367
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->isChargerConnectionSoundEnabledState()Z

    move-result v0

    return v0
.end method

.method public isContainerKioskMode()Z
    .locals 1

    .prologue
    .line 2071
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mContainerMonitor:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->-wrap0(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Z

    move-result v0

    return v0
.end method

.method public isDetailsSettingBlocked()Z
    .locals 1

    .prologue
    .line 2286
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isDetailsSettingBlocked()Z

    move-result v0

    return v0
.end method

.method public isDeviceDisabledForMaxFailedAttempt()Z
    .locals 1

    .prologue
    .line 2230
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    return v0
.end method

.method public isDndTileBlocked()Z
    .locals 1

    .prologue
    .line 2282
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isDndTileBlocked()Z

    move-result v0

    return v0
.end method

.method public isEmergencyCallButtonEnabled()Z
    .locals 1

    .prologue
    .line 2148
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->isEmergencyCallButtonEnabled()Z

    move-result v0

    return v0
.end method

.method public isFlashlightTileBlocked()Z
    .locals 1

    .prologue
    .line 2294
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isFlashlightTileBlocked()Z

    move-result v0

    return v0
.end method

.method public isKnoxNotificationSanitizeNeeded(IILjava/lang/String;ZZ)Z
    .locals 6
    .param p1, "userId"    # I
    .param p2, "currentUserId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "isRemoteViewProvided"    # Z
    .param p5, "isLockscreenPublicMode"    # Z

    .prologue
    .line 2054
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mContainerMonitor:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->isKnoxNotificationSanitizeNeeded(IILjava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public isLocationTileBlocked()Z
    .locals 1

    .prologue
    .line 2266
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isLocationTileBlocked()Z

    move-result v0

    return v0
.end method

.method public isLockScreenDisabledbyKNOX()Z
    .locals 1

    .prologue
    .line 2172
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isForcedLock()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2173
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->isLockScreenDisabledbyKNOX()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2174
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mSharedDeviceMonitor:Lcom/android/keyguard/KnoxStateMonitor$SharedDeviceMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$SharedDeviceMonitor;->isLockScreenDisabledbyKNOX()Z

    move-result v0

    .line 2173
    if-nez v0, :cond_0

    .line 2175
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mContainerMonitor:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->isLockScreenDisabledbyKNOX()Z

    move-result v0

    .line 2172
    :goto_0
    return v0

    .line 2173
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2172
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLockScreenDisabledbyKNOXForBoot()Z
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2179
    iget-object v4, p0, Lcom/android/keyguard/KnoxStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isForcedLock()Z

    move-result v0

    .line 2180
    .local v0, "forceLock":Z
    if-eqz v0, :cond_0

    .line 2181
    return v6

    .line 2183
    :cond_0
    const/4 v1, 0x0

    .line 2185
    .local v1, "isDisable":Z
    invoke-static {}, Lcom/samsung/android/knox/custom/SystemManager;->getInstance()Lcom/samsung/android/knox/custom/SystemManager;

    move-result-object v2

    .line 2186
    .local v2, "knoxCustomSystemManager":Lcom/samsung/android/knox/custom/SystemManager;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/knox/custom/SystemManager;->getLockScreenOverrideMode()I

    move-result v4

    if-ne v4, v8, :cond_1

    const/4 v1, 0x1

    .line 2189
    :goto_0
    if-eqz v1, :cond_2

    .line 2190
    return v7

    .line 2186
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2192
    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/KnoxStateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "shared_device_status"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 2194
    .local v3, "sharedDeviceState":I
    if-eq v3, v7, :cond_3

    if-ne v3, v8, :cond_4

    .line 2195
    :cond_3
    const/4 v1, 0x1

    .line 2198
    :cond_4
    return v1
.end method

.method public isLockScreenOverlayEnabled()Z
    .locals 1

    .prologue
    .line 2333
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isLockScreenOverlayEnabled()Z

    move-result v0

    return v0
.end method

.method public isLockscreenBatteryInfoEnabled()Z
    .locals 1

    .prologue
    .line 2156
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->isLockscreenBatteryInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public isLockscreenClockEnabled()Z
    .locals 1

    .prologue
    .line 2160
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->isLockscreenClockEnabled()Z

    move-result v0

    return v0
.end method

.method public isLockscreenDateEnabled()Z
    .locals 1

    .prologue
    .line 2164
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->isLockscreenDateEnabled()Z

    move-result v0

    return v0
.end method

.method public isLockscreenHelpTextEnabled()Z
    .locals 1

    .prologue
    .line 2152
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->isLockscreenHelpTextEnabled()Z

    move-result v0

    return v0
.end method

.method public isLockscreenOwnerInfoEnabled()Z
    .locals 1

    .prologue
    .line 2168
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->isLockscreenOwnerInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public isMDMWallpaperEnabled()Z
    .locals 1

    .prologue
    .line 2337
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isMDMWallpaperEnabled()Z

    move-result v0

    return v0
.end method

.method public isMobileDataTileBlocked()Z
    .locals 1

    .prologue
    .line 2258
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isMobileDataTileBlocked()Z

    move-result v0

    return v0
.end method

.method public isNeedtoSetupAirplaneModeTileDialog()Z
    .locals 2

    .prologue
    .line 2341
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mSharedDeviceMonitor:Lcom/android/keyguard/KnoxStateMonitor$SharedDeviceMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$SharedDeviceMonitor;->getSharedDeviceStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotificationRowHide()Z
    .locals 2

    .prologue
    .line 2345
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mSharedDeviceMonitor:Lcom/android/keyguard/KnoxStateMonitor$SharedDeviceMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$SharedDeviceMonitor;->getSharedDeviceStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPanelExpandEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2135
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->isPanelExpandEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isPanelExpandEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2136
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isStatusBarHidden()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2135
    :cond_0
    :goto_0
    return v0

    .line 2136
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPersona(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 2045
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mContainerMonitor:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v0, p1}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->-wrap1(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;I)Z

    move-result v0

    return v0
.end method

.method public isPwdChangeRequested()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2375
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->getPwdChangeRequest()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isQuickConnectEnabled()Z
    .locals 1

    .prologue
    .line 2033
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mContainerMonitor:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->isQuickConnectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->isQuickConnectEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQuickSettingEditEnabled()Z
    .locals 1

    .prologue
    .line 2091
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->isQuickSettingEditEnabled()Z

    move-result v0

    return v0
.end method

.method public isRotationLockTileBlocked()Z
    .locals 1

    .prologue
    .line 2270
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isRotationLockTileBlocked()Z

    move-result v0

    return v0
.end method

.method public isSFinderEnabled()Z
    .locals 1

    .prologue
    .line 2087
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->isSFinderEnabled()Z

    move-result v0

    return v0
.end method

.method public isSFinderTileBlocked()Z
    .locals 1

    .prologue
    .line 2313
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isSFinderTileBlocked()Z

    move-result v0

    return v0
.end method

.method public isSafetyWarningDialogEnabled()Z
    .locals 1

    .prologue
    .line 2363
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->isSafetyWarningDialogEnabled()Z

    move-result v0

    return v0
.end method

.method public isSetToSwipeLock()Z
    .locals 1

    .prologue
    .line 2202
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isForcedLock()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->isSetToSwipeLock()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSharedDeviceEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2358
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor;->mSharedDeviceMonitor:Lcom/android/keyguard/KnoxStateMonitor$SharedDeviceMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KnoxStateMonitor$SharedDeviceMonitor;->getSharedDeviceStatus()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 2359
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor;->mSharedDeviceMonitor:Lcom/android/keyguard/KnoxStateMonitor$SharedDeviceMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KnoxStateMonitor$SharedDeviceMonitor;->getSharedDeviceStatus()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 2358
    :cond_0
    :goto_0
    return v0

    .line 2359
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSkipShowingNotificationForHeadsUp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2067
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mContainerMonitor:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->isSkipShowingNotificationForHeadsUp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSoundModeTileBlocked()Z
    .locals 1

    .prologue
    .line 2278
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isSoundModeTileBlocked()Z

    move-result v0

    return v0
.end method

.method public isStatusBarDoubleTapEnabled()Z
    .locals 1

    .prologue
    .line 2099
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->isStatusBarDoubleTapEnabled()Z

    move-result v0

    return v0
.end method

.method public isStatusBarHidden()Z
    .locals 1

    .prologue
    .line 2214
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->isStatusBarHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isStatusBarHidden()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isStatusBarIconsEnabled()Z
    .locals 1

    .prologue
    .line 2127
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->isStatusBarIconsEnabled()Z

    move-result v0

    return v0
.end method

.method public isSubIdLockedByMDM()Z
    .locals 1

    .prologue
    .line 2432
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isSubIdLockedByAdmin()Z

    move-result v0

    return v0
.end method

.method public isUCMKeyguardEnabled()Z
    .locals 1

    .prologue
    .line 2380
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mUcmMonitor:Lcom/android/keyguard/KnoxStateMonitor$UcmMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$UcmMonitor;->isUCMKeyguardEnabled()Z

    move-result v0

    return v0
.end method

.method public isUDSTileBlocked()Z
    .locals 2

    .prologue
    .line 2254
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isUnlockSimOnBootState()Z
    .locals 1

    .prologue
    .line 2206
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->isUnlockSimOnBootState()Z

    move-result v0

    return v0
.end method

.method public isUsersEnabled()Z
    .locals 1

    .prologue
    .line 2095
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->isUsersEnabled()Z

    move-result v0

    return v0
.end method

.method public isVolumeDialogEnabled()Z
    .locals 1

    .prologue
    .line 2371
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->isVolumePanelEnabledState()Z

    move-result v0

    return v0
.end method

.method public isWifiCallingTileBlocked()Z
    .locals 1

    .prologue
    .line 2325
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isWifiCallingTileBlocked()Z

    move-result v0

    return v0
.end method

.method public isWifiHotspotTileBlocked()Z
    .locals 1

    .prologue
    .line 2317
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isWifiHotspotTileBlocked()Z

    move-result v0

    return v0
.end method

.method public isWifiTileBlocked()Z
    .locals 1

    .prologue
    .line 2321
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isWifiTileBlocked()Z

    move-result v0

    return v0
.end method

.method public knoxContainerInLockMode(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 2063
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mContainerMonitor:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v0, p1}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->-wrap2(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;I)Z

    move-result v0

    return v0
.end method

.method public knoxContainerInSuperLockMode(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 2049
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mContainerMonitor:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v0, p1}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->-wrap3(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;I)Z

    move-result v0

    return v0
.end method

.method public lockSdp()V
    .locals 2

    .prologue
    .line 2396
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/keyguard/KnoxStateMonitor$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KnoxStateMonitor$3;-><init>(Lcom/android/keyguard/KnoxStateMonitor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2395
    return-void
.end method

.method public registerCallback(Lcom/android/keyguard/KnoxStateMonitorCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/keyguard/KnoxStateMonitorCallback;

    .prologue
    .line 515
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 516
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 517
    return-void

    .line 515
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 520
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KnoxStateMonitor;->removeCallback(Lcom/android/keyguard/KnoxStateMonitorCallback;)V

    .line 512
    return-void
.end method

.method public removeCallback(Lcom/android/keyguard/KnoxStateMonitorCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/keyguard/KnoxStateMonitorCallback;

    .prologue
    .line 505
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 506
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 507
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 505
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 504
    :cond_1
    return-void
.end method

.method public unlockSdp()V
    .locals 2

    .prologue
    .line 2414
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/keyguard/KnoxStateMonitor$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KnoxStateMonitor$4;-><init>(Lcom/android/keyguard/KnoxStateMonitor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2413
    return-void
.end method

.method public updateFailedUnlockAttemptForDeviceDisabled()V
    .locals 1

    .prologue
    .line 2234
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor;->mEdmMonitor:Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->updateFailedUnlockAttemptForDeviceDisabled()V

    .line 2233
    return-void
.end method
