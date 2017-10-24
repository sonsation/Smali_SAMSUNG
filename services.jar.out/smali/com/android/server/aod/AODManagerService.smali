.class public final Lcom/android/server/aod/AODManagerService;
.super Lcom/android/server/SystemService;
.source "AODManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/aod/AODManagerService$1;,
        Lcom/android/server/aod/AODManagerService$2;,
        Lcom/android/server/aod/AODManagerService$AODConnection;,
        Lcom/android/server/aod/AODManagerService$AODConnectionCause;,
        Lcom/android/server/aod/AODManagerService$AODHandler;,
        Lcom/android/server/aod/AODManagerService$BinderService;,
        Lcom/android/server/aod/AODManagerService$LocalService;,
        Lcom/android/server/aod/AODManagerService$SettingsObserver;
    }
.end annotation


# static fields
.field private static final AOD_CONNECTION_TIMEOUT:I = 0x1388

.field private static final AOD_DEBUG:Z

.field private static AOD_SHOW_STATE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

.field private final mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

.field private mAODSettings:Lcom/android/server/aod/settings/AODSettings;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private mEffectiveUserId:I

.field private mIsAODModeEnabled:Z

.field private final mLock:Ljava/lang/Object;

.field private mNewUserId:I

.field private mNotiCount:I

.field private mNotificationKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsObserver:Lcom/android/server/aod/AODManagerService$SettingsObserver;

.field private final mStopCurrentConnectionRunnable:Ljava/lang/Runnable;

.field private final mStopUnconnectedAODRunnable:Ljava/lang/Runnable;

.field private mUserSwitched:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODManagerService$AODConnection;
    .locals 1

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODManagerService$AODHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/aod/AODManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/aod/AODManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/aod/AODManagerService;->mCurrentUser:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/aod/AODManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/aod/AODManagerService;->mEffectiveUserId:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/aod/AODManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/aod/AODManagerService;->mNewUserId:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/aod/AODManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/aod/AODManagerService;->mCurrentUser:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/aod/AODManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/aod/AODManagerService;->mEffectiveUserId:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/aod/AODManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/aod/AODManagerService;->mNewUserId:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/aod/AODManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/aod/AODManagerService;->mUserSwitched:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/aod/AODManagerService;IJJJJJJJJ)I
    .locals 2
    .param p1, "type"    # I
    .param p2, "en"    # J
    .param p4, "interval"    # J
    .param p6, "hour"    # J
    .param p8, "min"    # J
    .param p10, "second"    # J
    .param p12, "ms"    # J
    .param p14, "pos_x"    # J
    .param p16, "pos_y"    # J

    .prologue
    invoke-direct/range {p0 .. p17}, Lcom/android/server/aod/AODManagerService;->setLiveClockInfoInternal(IJJJJJJJJ)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/aod/AODManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystemOrSystemUI()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/aod/AODManagerService;Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/aod/AODManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->requestNotificationKeysInternal()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/aod/AODManagerService;[C)V
    .locals 0
    .param p1, "img_buf"    # [C

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->setLiveClockNeedleInternal([C)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/aod/AODManagerService;IIII)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/aod/AODManagerService;->updateAODTspRectInternal(IIII)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/aod/AODManagerService;ILjava/util/List;)V
    .locals 0
    .param p1, "notiCount"    # I
    .param p2, "keys"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/aod/AODManagerService;->updateNotificationKeysInternal(ILjava/util/List;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/aod/AODManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/String;
    .param p4, "arg2"    # Ljava/lang/String;
    .param p5, "arg3"    # Ljava/lang/String;

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/aod/AODManagerService;->writeAODCommandInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/android/server/aod/AODManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, "aod_show_state"

    sput-object v0, Lcom/android/server/aod/AODManagerService;->AOD_SHOW_STATE:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 121
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mLock:Ljava/lang/Object;

    .line 67
    iput-boolean v2, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    .line 69
    iput-object v4, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    .line 71
    iput-object v4, p0, Lcom/android/server/aod/AODManagerService;->mNotificationKeys:Ljava/util/List;

    .line 73
    iput v2, p0, Lcom/android/server/aod/AODManagerService;->mNotiCount:I

    .line 75
    iput v2, p0, Lcom/android/server/aod/AODManagerService;->mCurrentUser:I

    .line 79
    iput-boolean v2, p0, Lcom/android/server/aod/AODManagerService;->mUserSwitched:Z

    .line 81
    iput v3, p0, Lcom/android/server/aod/AODManagerService;->mEffectiveUserId:I

    .line 83
    iput v3, p0, Lcom/android/server/aod/AODManagerService;->mNewUserId:I

    .line 96
    new-instance v1, Lcom/android/server/aod/AODManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/aod/AODManagerService$1;-><init>(Lcom/android/server/aod/AODManagerService;)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mStopUnconnectedAODRunnable:Ljava/lang/Runnable;

    .line 106
    new-instance v1, Lcom/android/server/aod/AODManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/aod/AODManagerService$2;-><init>(Lcom/android/server/aod/AODManagerService;)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mStopCurrentConnectionRunnable:Ljava/lang/Runnable;

    .line 122
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    .line 123
    new-instance v1, Lcom/android/server/aod/AODManagerService$AODHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/aod/AODManagerService$AODHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    .line 124
    new-instance v1, Lcom/android/server/aod/settings/AODSettings;

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/aod/settings/AODSettings;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODSettings:Lcom/android/server/aod/settings/AODSettings;

    .line 126
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iput v1, p0, Lcom/android/server/aod/AODManagerService;->mCurrentUser:I

    .line 128
    new-instance v1, Lcom/android/server/aod/AODManagerService$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/aod/AODManagerService$SettingsObserver;-><init>(Lcom/android/server/aod/AODManagerService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mSettingsObserver:Lcom/android/server/aod/AODManagerService$SettingsObserver;

    .line 129
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mSettingsObserver:Lcom/android/server/aod/AODManagerService$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/server/aod/AODManagerService$SettingsObserver;->observe()V

    .line 132
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    new-instance v2, Lcom/android/server/aod/AODManagerService$3;

    invoke-direct {v2, p0}, Lcom/android/server/aod/AODManagerService$3;-><init>(Lcom/android/server/aod/AODManagerService;)V

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private checkCallerIsSystem()V
    .locals 3

    .prologue
    .line 755
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 756
    return-void

    .line 758
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Disallowed call for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkCallerIsSystemOrSystemUI()V
    .locals 3

    .prologue
    .line 748
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->isCallerSystemUI()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 749
    :cond_0
    return-void

    .line 751
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Disallowed call for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createAODConnection(Lcom/android/server/aod/AODManagerService$AODConnectionCause;)V
    .locals 8
    .param p1, "connectionCause"    # Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    .prologue
    .line 430
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 431
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    .line 435
    new-instance v2, Lcom/android/server/aod/AODManagerService$AODConnection;

    invoke-direct {v2, p0, p1}, Lcom/android/server/aod/AODManagerService$AODConnection;-><init>(Lcom/android/server/aod/AODManagerService;Lcom/android/server/aod/AODManagerService$AODConnectionCause;)V

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    .line 436
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.aod.AlwaysOnDisplayService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 438
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.samsung.android.app.aodservice"

    const-string/jumbo v5, "com.samsung.android.app.aodservice.AODService"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    :try_start_1
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    .line 443
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 442
    const v6, 0x4000001

    .line 441
    invoke-virtual {v2, v1, v4, v6, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 444
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "createAODConnection : bindServiceAsUser fail"

    invoke-static {v2, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v3

    .line 429
    return-void

    .line 447
    :cond_0
    :try_start_2
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "createAODConnection : bindServiceAsUser success"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mBound:Z

    .line 449
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mStopUnconnectedAODRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1388

    invoke-virtual {v2, v4, v6, v7}, Lcom/android/server/aod/AODManagerService$AODHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 451
    :catch_0
    move-exception v0

    .line 452
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_3
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to bind AODService: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 453
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v3

    .line 454
    return-void

    .line 430
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v1    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 775
    const-string/jumbo v0, "AODMANAGER (dumpsys AODManagerService)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 776
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ActivityManager.getCurrentUser()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/aod/AODManagerService;->mCurrentUser:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 779
    iget-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mUserSwitched:Z

    if-eqz v0, :cond_0

    .line 780
    const-string/jumbo v0, "   . . . Last UserSwitched : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "              mNewUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/aod/AODManagerService;->mNewUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "              mEffectiveUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/aod/AODManagerService;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 784
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAODConnection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 786
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    if-eqz v0, :cond_1

    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAODConnection mService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v1, v1, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAODConnection mBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-boolean v1, v1, Lcom/android/server/aod/AODManagerService$AODConnection;->mBound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAODConnection mConnecteded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-boolean v1, v1, Lcom/android/server/aod/AODManagerService$AODConnection;->mConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAODConnection mConnectedUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget v1, v1, Lcom/android/server/aod/AODManagerService$AODConnection;->mConnectedUser:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAODConnection mConnectionCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v1, v1, Lcom/android/server/aod/AODManagerService$AODConnection;->mConnectionCause:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 774
    :cond_1
    return-void
.end method

.method private isCallerSystem()Z
    .locals 1

    .prologue
    .line 720
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/aod/AODManagerService;->isUidSystem(I)Z

    move-result v0

    return v0
.end method

.method private isCallerSystemUI()Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 724
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 726
    .local v2, "callingUid":I
    const/4 v5, -0x1

    .line 727
    .local v5, "sysUiUid":I
    const/4 v1, 0x0

    .line 728
    .local v1, "callingPkg":Ljava/lang/String;
    const/4 v4, 0x0

    .line 729
    .local v4, "isSystemUi":Z
    const/4 v0, -0x1

    .line 731
    .local v0, "callingAppId":I
    :try_start_0
    iget-object v7, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string/jumbo v8, "com.android.systemui"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 737
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 738
    iget-object v7, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 740
    .local v1, "callingPkg":Ljava/lang/String;
    if-eqz v1, :cond_1

    const/4 v7, -0x1

    if-eq v5, v7, :cond_1

    .line 741
    const-string/jumbo v7, "android.uid.systemui"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-ne v0, v5, :cond_0

    const/4 v6, 0x1

    :cond_0
    return v6

    .line 732
    .local v1, "callingPkg":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 733
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v7, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Unable to resolve SystemUI\'s UID."

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 734
    return v6

    .line 743
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v1, "callingPkg":Ljava/lang/String;
    :cond_1
    return v6
.end method

.method private isUidSystem(I)Z
    .locals 4
    .param p1, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 715
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 716
    .local v0, "appid":I
    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private requestNotificationKeysInternal()V
    .locals 2

    .prologue
    .line 389
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    .line 391
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/aod/AODManagerService;->updateNotificationKeysInternal(ILjava/util/List;)V

    .line 388
    return-void
.end method

.method static native setLiveClockInfo(IJJJJJJJJ)I
.end method

.method private setLiveClockInfoInternal(IJJJJJJJJ)I
    .locals 1
    .param p1, "type"    # I
    .param p2, "en"    # J
    .param p4, "interval"    # J
    .param p6, "hour"    # J
    .param p8, "min"    # J
    .param p10, "second"    # J
    .param p12, "ms"    # J
    .param p14, "pos_x"    # J
    .param p16, "pos_y"    # J

    .prologue
    .line 460
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    .line 464
    const/4 v0, -0x1

    return v0
.end method

.method static native setLiveClockNeedle([C)V
.end method

.method private setLiveClockNeedleInternal([C)V
    .locals 0
    .param p1, "img_buf"    # [C

    .prologue
    .line 468
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    .line 472
    return-void
.end method

.method private updateAODTspRectInternal(IIII)V
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    .line 215
    const/4 v4, 0x0

    .line 217
    .local v4, "fos":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string/jumbo v7, "/sys/class/sec/tsp/cmd"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 221
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    .local v5, "fos":Ljava/io/OutputStream;
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    .end local v4    # "fos":Ljava/io/OutputStream;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "set_aod_rect,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 223
    .local v6, "tspCommand":Ljava/lang/String;
    const-string/jumbo v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/OutputStream;->write([B)V

    .line 224
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 231
    if-eqz v5, :cond_0

    .line 232
    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v4, v5

    .line 213
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/OutputStream;
    .end local v6    # "tspCommand":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 219
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    :cond_2
    return-void

    .line 234
    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    .restart local v6    # "tspCommand":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 227
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/OutputStream;
    .end local v6    # "tspCommand":Ljava/lang/String;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    .line 228
    .end local v4    # "fos":Ljava/io/OutputStream;
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 231
    if-eqz v4, :cond_1

    .line 232
    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 234
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 225
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    :catch_3
    move-exception v0

    .line 226
    .end local v4    # "fos":Ljava/io/OutputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 231
    if-eqz v4, :cond_1

    .line 232
    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 234
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 229
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 231
    :goto_4
    if-eqz v4, :cond_3

    .line 232
    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 229
    :cond_3
    :goto_5
    throw v7

    .line 234
    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    goto :goto_5

    .line 229
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/OutputStream;
    .local v4, "fos":Ljava/io/OutputStream;
    goto :goto_4

    .line 225
    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    :catch_6
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v4, v5

    .end local v5    # "fos":Ljava/io/OutputStream;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    goto :goto_3

    .line 227
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    :catch_7
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "fos":Ljava/io/OutputStream;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    goto :goto_2
.end method

.method private updateAODTspState(Z)V
    .locals 9
    .param p1, "enable"    # Z

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    .line 241
    const/4 v4, 0x0

    .line 243
    .local v4, "fos":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string/jumbo v7, "/sys/class/sec/tsp/cmd"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 247
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    .local v5, "fos":Ljava/io/OutputStream;
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    .end local v4    # "fos":Ljava/io/OutputStream;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "aod_enable,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p1, :cond_3

    const-string/jumbo v7, "1"

    :goto_0
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 249
    .local v6, "tspCommand":Ljava/lang/String;
    const-string/jumbo v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/OutputStream;->write([B)V

    .line 250
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 257
    if-eqz v5, :cond_0

    .line 258
    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_1
    move-object v4, v5

    .line 239
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/OutputStream;
    .end local v6    # "tspCommand":Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 245
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    :cond_2
    return-void

    .line 248
    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    :cond_3
    :try_start_3
    const-string/jumbo v7, "0"
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 260
    .restart local v6    # "tspCommand":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    goto :goto_1

    .line 253
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/OutputStream;
    .end local v6    # "tspCommand":Ljava/lang/String;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    .line 254
    .end local v4    # "fos":Ljava/io/OutputStream;
    .local v1, "e":Ljava/io/IOException;
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 257
    if-eqz v4, :cond_1

    .line 258
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 260
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 251
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    :catch_3
    move-exception v0

    .line 252
    .end local v4    # "fos":Ljava/io/OutputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 257
    if-eqz v4, :cond_1

    .line 258
    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 260
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 255
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 257
    :goto_5
    if-eqz v4, :cond_4

    .line 258
    :try_start_8
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 255
    :cond_4
    :goto_6
    throw v7

    .line 260
    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    goto :goto_6

    .line 255
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/OutputStream;
    .local v4, "fos":Ljava/io/OutputStream;
    goto :goto_5

    .line 251
    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    :catch_6
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v4, v5

    .end local v5    # "fos":Ljava/io/OutputStream;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    goto :goto_4

    .line 253
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    :catch_7
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "fos":Ljava/io/OutputStream;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    goto :goto_3
.end method

.method private updateNotificationKeysInternal(ILjava/util/List;)V
    .locals 6
    .param p1, "notiCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 395
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    .line 397
    if-eqz p2, :cond_0

    .line 398
    iput-object p2, p0, Lcom/android/server/aod/AODManagerService;->mNotificationKeys:Ljava/util/List;

    .line 400
    :cond_0
    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    .line 401
    iput p1, p0, Lcom/android/server/aod/AODManagerService;->mNotiCount:I

    .line 404
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->isAODStateInternal()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 405
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODSettings:Lcom/android/server/aod/settings/AODSettings;

    invoke-virtual {v2}, Lcom/android/server/aod/settings/AODSettings;->isAODServiceEnable()Z

    move-result v0

    .line 406
    .local v0, "aodServiceEnable":Z
    if-eqz v0, :cond_2

    .line 407
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    if-nez v2, :cond_3

    .line 408
    sget-object v2, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->AODCONNECTION_UPDATE_NOTIFICATION_KEYS:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    invoke-direct {p0, v2}, Lcom/android/server/aod/AODManagerService;->createAODConnection(Lcom/android/server/aod/AODManagerService$AODConnectionCause;)V

    .line 394
    .end local v0    # "aodServiceEnable":Z
    :cond_2
    :goto_0
    return-void

    .line 411
    .restart local v0    # "aodServiceEnable":Z
    :cond_3
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v2, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    if-eqz v2, :cond_4

    .line 413
    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v2, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    iget v3, p0, Lcom/android/server/aod/AODManagerService;->mNotiCount:I

    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mNotificationKeys:Ljava/util/List;

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/aod/IAlwaysOnDisplayService;->updateNotificationKeys(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 414
    :catch_0
    move-exception v1

    .line 416
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "mAODConnection.mService.updateNotificationKeys"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 419
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "AODConnection is disconnected..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mStopCurrentConnectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/server/aod/AODManagerService$AODHandler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 421
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mStopCurrentConnectionRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/aod/AODManagerService$AODHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private writeAODCommandInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/String;
    .param p4, "arg2"    # Ljava/lang/String;
    .param p5, "arg3"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    .line 190
    const/4 v4, 0x0

    .line 192
    .local v4, "fos":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 196
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    .local v5, "fos":Ljava/io/OutputStream;
    :try_start_1
    const-string/jumbo v6, "UTF-8"

    .end local v4    # "fos":Ljava/io/OutputStream;
    invoke-virtual {p2, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    .line 198
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 205
    if-eqz v5, :cond_0

    .line 206
    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v4, v5

    .line 188
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/OutputStream;
    :cond_1
    :goto_1
    return-void

    .line 194
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    :cond_2
    return-void

    .line 208
    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 201
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/OutputStream;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    .line 202
    .end local v4    # "fos":Ljava/io/OutputStream;
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 205
    if-eqz v4, :cond_1

    .line 206
    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 208
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 199
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    :catch_3
    move-exception v0

    .line 200
    .end local v4    # "fos":Ljava/io/OutputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 205
    if-eqz v4, :cond_1

    .line 206
    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 208
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 203
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 205
    :goto_4
    if-eqz v4, :cond_3

    .line 206
    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 203
    :cond_3
    :goto_5
    throw v6

    .line 208
    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    goto :goto_5

    .line 203
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/OutputStream;
    .local v4, "fos":Ljava/io/OutputStream;
    goto :goto_4

    .line 199
    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    :catch_6
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v4, v5

    .end local v5    # "fos":Ljava/io/OutputStream;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    goto :goto_3

    .line 201
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    :catch_7
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "fos":Ljava/io/OutputStream;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    goto :goto_2
.end method


# virtual methods
.method getEffectiveUserId(I)I
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 762
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    .line 763
    .local v2, "um":Landroid/os/UserManager;
    if-eqz v2, :cond_0

    .line 764
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 765
    .local v0, "callingIdentity":J
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result p1

    .line 766
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 771
    .end local v0    # "callingIdentity":J
    :goto_0
    return p1

    .line 768
    :cond_0
    sget-object v3, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Unable to acquire UserManager"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isAODStateInternal()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 183
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/server/aod/AODManagerService;->AOD_SHOW_STATE:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/aod/AODManagerService;->mCurrentUser:I

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 185
    .local v0, "aodState":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public onBootPhase(I)V
    .locals 6
    .param p1, "phase"    # I

    .prologue
    .line 168
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    .line 169
    const/16 v3, 0x258

    if-ne p1, v3, :cond_0

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "aodIntent":Landroid/content/Intent;
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.app.aodservice.intent.action.AOD_APP_START"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .local v1, "aodIntent":Landroid/content/Intent;
    :try_start_1
    sget-object v3, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    .end local v0    # "aodIntent":Landroid/content/Intent;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startAodService : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v3, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.samsung.android.app.aodservice"

    const-string/jumbo v5, "com.samsung.android.app.aodservice.AODService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 175
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 167
    .end local v1    # "aodIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 176
    .restart local v0    # "aodIntent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 177
    .end local v0    # "aodIntent":Landroid/content/Intent;
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 176
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "aodIntent":Landroid/content/Intent;
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v0, v1

    .end local v1    # "aodIntent":Landroid/content/Intent;
    .local v0, "aodIntent":Landroid/content/Intent;
    goto :goto_1
.end method

.method public onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 162
    const-string/jumbo v0, "AODManagerService"

    new-instance v1, Lcom/android/server/aod/AODManagerService$BinderService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/aod/AODManagerService$BinderService;-><init>(Lcom/android/server/aod/AODManagerService;Lcom/android/server/aod/AODManagerService$BinderService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/aod/AODManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 163
    const-class v0, Lcom/samsung/android/aod/AODManagerInternal;

    new-instance v1, Lcom/android/server/aod/AODManagerService$LocalService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/aod/AODManagerService$LocalService;-><init>(Lcom/android/server/aod/AODManagerService;Lcom/android/server/aod/AODManagerService$LocalService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/aod/AODManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 161
    return-void
.end method

.method public startAODInternal()Z
    .locals 6

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    .line 304
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODSettings:Lcom/android/server/aod/settings/AODSettings;

    invoke-virtual {v2}, Lcom/android/server/aod/settings/AODSettings;->isAODServiceEnable()Z

    move-result v0

    .line 305
    .local v0, "aodServiceEnable":Z
    if-eqz v0, :cond_3

    .line 306
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    if-nez v2, :cond_1

    .line 307
    sget-object v2, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->AODCONNECTION_STARTAOD:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    invoke-direct {p0, v2}, Lcom/android/server/aod/AODManagerService;->createAODConnection(Lcom/android/server/aod/AODManagerService$AODConnectionCause;)V

    .line 324
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 310
    :cond_1
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v2, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    if-eqz v2, :cond_2

    .line 312
    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v2, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    invoke-interface {v2}, Lcom/samsung/android/aod/IAlwaysOnDisplayService;->startAOD()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 313
    :catch_0
    move-exception v1

    .line 315
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startAODInternal - mAODConnection.mService.startAOD()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 318
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "AODConnection is disconnected..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mStopCurrentConnectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/server/aod/AODManagerService$AODHandler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 320
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mStopCurrentConnectionRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/aod/AODManagerService$AODHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 326
    :cond_3
    const/4 v2, 0x0

    return v2
.end method

.method public stopAODInternal()Z
    .locals 6

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    .line 333
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODSettings:Lcom/android/server/aod/settings/AODSettings;

    invoke-virtual {v2}, Lcom/android/server/aod/settings/AODSettings;->isAODServiceEnable()Z

    move-result v0

    .line 334
    .local v0, "aodServiceEnable":Z
    if-eqz v0, :cond_3

    .line 335
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    if-nez v2, :cond_1

    .line 336
    sget-object v2, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->AODCONNECTION_STOPAOD:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    invoke-direct {p0, v2}, Lcom/android/server/aod/AODManagerService;->createAODConnection(Lcom/android/server/aod/AODManagerService$AODConnectionCause;)V

    .line 353
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 339
    :cond_1
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v2, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    if-eqz v2, :cond_2

    .line 341
    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v2, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    invoke-interface {v2}, Lcom/samsung/android/aod/IAlwaysOnDisplayService;->stopAOD()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 342
    :catch_0
    move-exception v1

    .line 344
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "stopAODInternal - mAODConnection.mService.stopAOD()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 347
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "AODConnection is disconnected..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mStopCurrentConnectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/server/aod/AODManagerService$AODHandler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 349
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mStopCurrentConnectionRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/aod/AODManagerService$AODHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 355
    :cond_3
    const/4 v2, 0x0

    return v2
.end method

.method public stopConnection()V
    .locals 6

    .prologue
    .line 684
    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 685
    :try_start_0
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    if-nez v3, :cond_0

    .line 686
    sget-object v3, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "already stopped connection"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 687
    return-void

    .line 689
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    .line 690
    .local v2, "oldConnection":Lcom/android/server/aod/AODManagerService$AODConnection;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    .line 692
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    if-eqz v3, :cond_1

    .line 693
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v5, p0, Lcom/android/server/aod/AODManagerService;->mStopUnconnectedAODRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Lcom/android/server/aod/AODManagerService$AODHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 695
    :cond_1
    iget-object v3, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    .line 697
    :try_start_2
    iget-object v3, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    invoke-interface {v3}, Lcom/samsung/android/aod/IAlwaysOnDisplayService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v2, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 701
    :goto_0
    const/4 v3, 0x0

    :try_start_3
    iput-object v3, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    .line 703
    :cond_2
    iget-boolean v3, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mBound:Z

    if-eqz v3, :cond_3

    .line 704
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mBound:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 706
    :try_start_4
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    :goto_1
    monitor-exit v4

    .line 683
    return-void

    .line 707
    :catch_0
    move-exception v0

    .line 708
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 684
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "oldConnection":Lcom/android/server/aod/AODManagerService$AODConnection;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 698
    .restart local v2    # "oldConnection":Lcom/android/server/aod/AODManagerService$AODConnection;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/util/NoSuchElementException;
    goto :goto_0
.end method

.method public updateSettings()V
    .locals 6

    .prologue
    .line 289
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 290
    .local v1, "resolver":Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 292
    :try_start_0
    const-string/jumbo v2, "aod_mode"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v1, v2, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 293
    .local v0, "isAODModeEnabled":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    if-eq v2, v0, :cond_0

    .line 294
    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    .line 295
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mIsAODModeEnabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-boolean v2, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    invoke-direct {p0, v2}, Lcom/android/server/aod/AODManagerService;->updateAODTspState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    .line 288
    return-void

    .line 292
    .end local v0    # "isAODModeEnabled":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isAODModeEnabled":Z
    goto :goto_0

    .line 290
    .end local v0    # "isAODModeEnabled":Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public wakeUpInternal()Z
    .locals 6

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    .line 362
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODSettings:Lcom/android/server/aod/settings/AODSettings;

    invoke-virtual {v2}, Lcom/android/server/aod/settings/AODSettings;->isAODServiceEnable()Z

    move-result v0

    .line 363
    .local v0, "aodServiceEnable":Z
    if-eqz v0, :cond_3

    .line 364
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    if-nez v2, :cond_1

    .line 365
    sget-object v2, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->AODCONNECTION_STOPAOD:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    invoke-direct {p0, v2}, Lcom/android/server/aod/AODManagerService;->createAODConnection(Lcom/android/server/aod/AODManagerService$AODConnectionCause;)V

    .line 382
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 368
    :cond_1
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v2, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    if-eqz v2, :cond_2

    .line 370
    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v2, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    invoke-interface {v2}, Lcom/samsung/android/aod/IAlwaysOnDisplayService;->requestHide()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 371
    :catch_0
    move-exception v1

    .line 373
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 376
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "AODConnection is disconnected..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mStopCurrentConnectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/server/aod/AODManagerService$AODHandler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 378
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mStopCurrentConnectionRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/aod/AODManagerService$AODHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 384
    :cond_3
    const/4 v2, 0x0

    return v2
.end method
