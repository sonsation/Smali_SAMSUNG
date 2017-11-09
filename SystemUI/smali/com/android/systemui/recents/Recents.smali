.class public Lcom/android/systemui/recents/Recents;
.super Lcom/android/systemui/SystemUI;
.source "Recents.java"

# interfaces
.implements Lcom/android/systemui/RecentsComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/Recents$1;,
        Lcom/android/systemui/recents/Recents$2;
    }
.end annotation


# static fields
.field private static sConfiguration:Lcom/android/systemui/recents/RecentsConfiguration;

.field private static sDebugFlags:Lcom/android/systemui/recents/RecentsDebugFlags;

.field private static sRecentsSettingHelper:Lcom/android/systemui/recents/model/RecentsSettingHelper;

.field private static sRecentsStatistics:Lcom/android/systemui/recents/misc/RecentsStatistics;

.field private static sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

.field private static sTaskLoader:Lcom/android/systemui/recents/model/RecentsTaskLoader;


# instance fields
.field private mDraggingInRecentsCurrentUser:I

.field private mHandler:Landroid/os/Handler;

.field private mImpl:Lcom/android/systemui/recents/RecentsImpl;

.field private final mOnConnectRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mOverrideRecentsPackageName:Ljava/lang/String;

.field private mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

.field private mUserToSystemCallbacks:Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

.field private final mUserToSystemCallbacksDeathRcpt:Landroid/os/IBinder$DeathRecipient;

.field private final mUserToSystemServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/Recents;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/Recents;)Lcom/android/systemui/recents/RecentsImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/recents/Recents;)Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mUserToSystemCallbacks:Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/recents/Recents;)Landroid/os/IBinder$DeathRecipient;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mUserToSystemCallbacksDeathRcpt:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method static synthetic -get4()Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/recents/Recents;Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;)Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/Recents;->mUserToSystemCallbacks:Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/recents/Recents;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->registerWithSystemUser()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/recents/Recents;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->runAndFlushOnConnectRunnables()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mOnConnectRunnables:Ljava/util/ArrayList;

    .line 132
    new-instance v0, Lcom/android/systemui/recents/Recents$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/Recents$1;-><init>(Lcom/android/systemui/recents/Recents;)V

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mUserToSystemCallbacksDeathRcpt:Landroid/os/IBinder$DeathRecipient;

    .line 151
    new-instance v0, Lcom/android/systemui/recents/Recents$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/Recents$2;-><init>(Lcom/android/systemui/recents/Recents;)V

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mUserToSystemServiceConnection:Landroid/content/ServiceConnection;

    .line 83
    return-void
.end method

.method public static getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lcom/android/systemui/recents/Recents;->sConfiguration:Lcom/android/systemui/recents/RecentsConfiguration;

    return-object v0
.end method

.method public static getDebugFlags()Lcom/android/systemui/recents/RecentsDebugFlags;
    .locals 1

    .prologue
    .line 203
    sget-object v0, Lcom/android/systemui/recents/Recents;->sDebugFlags:Lcom/android/systemui/recents/RecentsDebugFlags;

    return-object v0
.end method

.method private static getMetricsCounterForResizeMode(I)Ljava/lang/String;
    .locals 1
    .param p0, "resizeMode"    # I

    .prologue
    .line 569
    packed-switch p0, :pswitch_data_0

    .line 576
    const-string/jumbo v0, "window_enter_incompatible"

    return-object v0

    .line 571
    :pswitch_0
    const-string/jumbo v0, "window_enter_unsupported"

    return-object v0

    .line 574
    :pswitch_1
    const-string/jumbo v0, "window_enter_supported"

    return-object v0

    .line 569
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lcom/android/systemui/recents/Recents;->sRecentsSettingHelper:Lcom/android/systemui/recents/model/RecentsSettingHelper;

    return-object v0
.end method

.method public static getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .locals 1

    .prologue
    .line 195
    sget-object v0, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    return-object v0
.end method

.method public static getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/android/systemui/recents/Recents;->sTaskLoader:Lcom/android/systemui/recents/model/RecentsTaskLoader;

    return-object v0
.end method

.method private isUserSetup()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 836
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 837
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 838
    const-string/jumbo v2, "user_setup_complete"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 837
    :cond_0
    return v1
.end method

.method public static logDockAttempt(Landroid/content/Context;Landroid/content/ComponentName;IZ)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "activity"    # Landroid/content/ComponentName;
    .param p2, "resizeMode"    # I
    .param p3, "isDockable"    # Z

    .prologue
    const/16 v2, 0x187

    .line 556
    if-nez p2, :cond_1

    .line 558
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 557
    invoke-static {p0, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 565
    :cond_0
    :goto_0
    invoke-static {p2}, Lcom/android/systemui/recents/Recents;->getMetricsCounterForResizeMode(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 555
    return-void

    .line 560
    :cond_1
    if-nez p3, :cond_0

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "(isDockable=false)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 561
    invoke-static {p0, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private postToSystemUser(Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "onConnectRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v5, 0x1

    .line 799
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mOnConnectRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 800
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mUserToSystemCallbacks:Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    if-nez v2, :cond_1

    .line 801
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 802
    .local v1, "systemUserServiceIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/systemui/recents/RecentsSystemUserService;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 803
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    .line 804
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mUserToSystemServiceConnection:Landroid/content/ServiceConnection;

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 803
    invoke-virtual {v2, v1, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    .line 805
    .local v0, "bound":Z
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 806
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 807
    sget-object v3, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 805
    const v3, 0x8cdc

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 808
    if-nez v0, :cond_0

    .line 810
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/recents/Recents$9;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/Recents$9;-><init>(Lcom/android/systemui/recents/Recents;)V

    .line 815
    const-wide/16 v4, 0x1388

    .line 810
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 798
    .end local v0    # "bound":Z
    .end local v1    # "systemUserServiceIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 818
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->runAndFlushOnConnectRunnables()V

    goto :goto_0
.end method

.method private proxyToOverridePackage(Ljava/lang/String;)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 846
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mOverrideRecentsPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 847
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 848
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mOverrideRecentsPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 849
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 850
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 851
    const/4 v1, 0x1

    return v1

    .line 853
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private registerWithSystemUser()V
    .locals 2

    .prologue
    .line 780
    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v0

    .line 781
    .local v0, "processUser":I
    new-instance v1, Lcom/android/systemui/recents/Recents$8;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/recents/Recents$8;-><init>(Lcom/android/systemui/recents/Recents;I)V

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/Recents;->postToSystemUser(Ljava/lang/Runnable;)V

    .line 779
    return-void
.end method

.method private runAndFlushOnConnectRunnables()V
    .locals 3

    .prologue
    .line 826
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mOnConnectRunnables:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "r$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 827
    .local v0, "r":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 829
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mOnConnectRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 825
    return-void
.end method


# virtual methods
.method public cancelPreloadingRecents()V
    .locals 6

    .prologue
    .line 442
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    move-result v3

    if-nez v3, :cond_0

    .line 443
    return-void

    .line 446
    :cond_0
    sget-object v3, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v1

    .line 447
    .local v1, "currentUser":I
    sget-object v3, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 448
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v3}, Lcom/android/systemui/recents/RecentsImpl;->cancelPreloadingRecents()V

    .line 439
    :cond_1
    :goto_0
    return-void

    .line 450
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v3, :cond_1

    .line 452
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object v0

    .line 453
    .local v0, "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    if-eqz v0, :cond_3

    .line 455
    :try_start_0
    invoke-interface {v0}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->cancelPreloadingRecents()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 456
    :catch_0
    move-exception v2

    .line 457
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "Recents"

    const-string/jumbo v4, "Callback failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 460
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    const-string/jumbo v3, "Recents"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No SystemUI callbacks found for user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dockTopTask(IILandroid/graphics/Rect;IZ)Z
    .locals 15
    .param p1, "dragMode"    # I
    .param p2, "stackCreateMode"    # I
    .param p3, "initialBounds"    # Landroid/graphics/Rect;
    .param p4, "metricsDockAction"    # I
    .param p5, "showHelpPopup"    # Z

    .prologue
    .line 471
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    move-result v2

    if-nez v2, :cond_0

    .line 473
    const-string/jumbo v2, "Recents"

    const-string/jumbo v3, "Device is not initialized"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const/4 v2, 0x0

    return v2

    .line 479
    :cond_0
    const-string/jumbo v2, "Recents"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dockTopTask : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isMultiWindowSettingEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 484
    const/4 v2, 0x0

    return v2

    .line 488
    :cond_1
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    .line 489
    .local v10, "realSize":Landroid/graphics/Point;
    if-nez p3, :cond_2

    .line 490
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 492
    new-instance p3, Landroid/graphics/Rect;

    .end local p3    # "initialBounds":Landroid/graphics/Rect;
    iget v2, v10, Landroid/graphics/Point;->x:I

    iget v3, v10, Landroid/graphics/Point;->y:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-direct {v0, v4, v5, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 495
    .restart local p3    # "initialBounds":Landroid/graphics/Rect;
    :cond_2
    sget-object v2, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v7

    .line 496
    .local v7, "currentUser":I
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v13

    .line 498
    .local v13, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v2, :cond_4

    .line 499
    invoke-virtual {v13}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningFullscreenTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v11

    .line 500
    .local v11, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_0
    invoke-virtual {v13}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isScreenPinningActive()Z

    move-result v12

    .line 501
    .local v12, "screenPinningActive":Z
    if-eqz v11, :cond_5

    .line 502
    iget v2, v11, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    invoke-static {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isHomeStack(I)Z

    move-result v9

    .line 503
    :goto_1
    if-eqz v11, :cond_3

    if-eqz v9, :cond_6

    .line 546
    :cond_3
    if-eqz v9, :cond_d

    .line 547
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/recents/Recents;->showRecents(ZZ)V

    .line 548
    const/4 v2, 0x1

    return v2

    .line 499
    .end local v11    # "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v12    # "screenPinningActive":Z
    :cond_4
    invoke-virtual {v13}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v11

    .restart local v11    # "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    goto :goto_0

    .line 501
    .restart local v12    # "screenPinningActive":Z
    :cond_5
    const/4 v9, 0x0

    .local v9, "isRunningTaskInHomeStack":Z
    goto :goto_1

    .line 503
    .end local v9    # "isRunningTaskInHomeStack":Z
    :cond_6
    if-nez v12, :cond_3

    .line 504
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    iget-object v3, v11, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    iget v4, v11, Landroid/app/ActivityManager$RunningTaskInfo;->resizeMode:I

    .line 505
    iget-boolean v5, v11, Landroid/app/ActivityManager$RunningTaskInfo;->isDockable:Z

    .line 504
    invoke-static {v2, v3, v4, v5}, Lcom/android/systemui/recents/Recents;->logDockAttempt(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 506
    iget-boolean v2, v11, Landroid/app/ActivityManager$RunningTaskInfo;->isDockable:Z

    if-eqz v2, :cond_b

    .line 507
    const/4 v2, -0x1

    move/from16 v0, p4

    if-eq v0, v2, :cond_7

    .line 508
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    .line 509
    iget-object v3, v11, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    .line 508
    move/from16 v0, p4

    invoke-static {v2, v0, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 511
    :cond_7
    sget-object v2, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v2, v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 512
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    iget v2, v11, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/recents/RecentsImpl;->dockTopTask(IIILandroid/graphics/Rect;Z)V

    .line 529
    :cond_8
    :goto_2
    iput v7, p0, Lcom/android/systemui/recents/Recents;->mDraggingInRecentsCurrentUser:I

    .line 530
    const/4 v2, 0x1

    return v2

    .line 514
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v2, :cond_8

    .line 516
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    invoke-virtual {v2, v7}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object v1

    .line 517
    .local v1, "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    if-eqz v1, :cond_a

    .line 519
    :try_start_0
    iget v2, v11, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->dockTopTask(IIILandroid/graphics/Rect;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 521
    :catch_0
    move-exception v8

    .line 522
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "Recents"

    const-string/jumbo v3, "Callback failed"

    invoke-static {v2, v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 525
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_a
    const-string/jumbo v2, "Recents"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No SystemUI callbacks found for user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 533
    .end local v1    # "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    :cond_b
    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v2, :cond_c

    .line 534
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    sget v3, Lcom/samsung/android/framework/res/R$string;->dream_cant_use_this_app_in_multi_window_view_tpop:I

    .line 535
    const/4 v4, 0x0

    .line 534
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    .line 536
    .local v14, "t":Landroid/widget/Toast;
    invoke-virtual {v14}, Landroid/widget/Toast;->setShowForAllUsers()V

    .line 537
    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 543
    .end local v14    # "t":Landroid/widget/Toast;
    :goto_3
    const/4 v2, 0x0

    return v2

    .line 540
    :cond_c
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0475

    .line 541
    const/4 v4, 0x0

    .line 540
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 551
    :cond_d
    const/4 v2, 0x0

    return v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 858
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/SystemUI;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 859
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1, p2}, Lcom/android/systemui/recents/RecentsImpl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 857
    return-void
.end method

.method public getSystemUserCallbacks()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    return-object v0
.end method

.method public hideRecents(ZZ)V
    .locals 6
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    move-result v3

    if-nez v3, :cond_0

    .line 330
    const-string/jumbo v3, "Recents"

    const-string/jumbo v4, "Device is not initialized"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    return-void

    .line 336
    :cond_0
    const-string/jumbo v3, "Recents"

    const-string/jumbo v4, "hideRecents"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const-string/jumbo v3, "com.android.systemui.recents.ACTION_HIDE"

    invoke-direct {p0, v3}, Lcom/android/systemui/recents/Recents;->proxyToOverridePackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 340
    return-void

    .line 343
    :cond_1
    sget-object v3, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v1

    .line 344
    .local v1, "currentUser":I
    sget-object v3, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 345
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v3, p1, p2}, Lcom/android/systemui/recents/RecentsImpl;->hideRecents(ZZ)V

    .line 325
    :cond_2
    :goto_0
    return-void

    .line 347
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v3, :cond_2

    .line 349
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object v0

    .line 350
    .local v0, "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    if-eqz v0, :cond_4

    .line 352
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->hideRecents(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 353
    :catch_0
    move-exception v2

    .line 354
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "Recents"

    const-string/jumbo v4, "Callback failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 357
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_4
    const-string/jumbo v3, "Recents"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No SystemUI callbacks found for user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBootCompleted()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsImpl;->onBootCompleted()V

    .line 270
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;

    .prologue
    .line 767
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsImpl;->onConfigurationChanged()V

    .line 764
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DesktopModeChangedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/DesktopModeChangedEvent;

    .prologue
    .line 772
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/Recents;->hideRecents(ZZ)V

    .line 771
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;

    .prologue
    .line 732
    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v0

    .line 733
    .local v0, "processUser":I
    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 734
    new-instance v1, Lcom/android/systemui/recents/Recents$6;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/Recents$6;-><init>(Lcom/android/systemui/recents/Recents;Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;)V

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/Recents;->postToSystemUser(Ljava/lang/Runnable;)V

    .line 731
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;

    .prologue
    .line 749
    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v0

    .line 750
    .local v0, "processUser":I
    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 751
    new-instance v1, Lcom/android/systemui/recents/Recents$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/Recents$7;-><init>(Lcom/android/systemui/recents/Recents;)V

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/Recents;->postToSystemUser(Ljava/lang/Runnable;)V

    .line 748
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;

    .prologue
    .line 676
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 677
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v0

    .line 678
    .local v0, "processUser":I
    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 679
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v3, p1, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;->applicationContext:Landroid/content/Context;

    iget-boolean v4, p1, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;->visible:Z

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/recents/RecentsImpl;->onVisibilityChanged(Landroid/content/Context;Z)V

    .line 675
    :goto_0
    return-void

    .line 681
    :cond_0
    new-instance v2, Lcom/android/systemui/recents/Recents$3;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/recents/Recents$3;-><init>(Lcom/android/systemui/recents/Recents;Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;)V

    invoke-direct {p0, v2}, Lcom/android/systemui/recents/Recents;->postToSystemUser(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/ScreenPinningRequestEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/component/ScreenPinningRequestEvent;

    .prologue
    .line 698
    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v0

    .line 699
    .local v0, "processUser":I
    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 700
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v2, p1, Lcom/android/systemui/recents/events/component/ScreenPinningRequestEvent;->applicationContext:Landroid/content/Context;

    iget v3, p1, Lcom/android/systemui/recents/events/component/ScreenPinningRequestEvent;->taskId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/RecentsImpl;->onStartScreenPinning(Landroid/content/Context;I)V

    .line 697
    :goto_0
    return-void

    .line 702
    :cond_0
    new-instance v1, Lcom/android/systemui/recents/Recents$4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/Recents$4;-><init>(Lcom/android/systemui/recents/Recents;Lcom/android/systemui/recents/events/component/ScreenPinningRequestEvent;)V

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/Recents;->postToSystemUser(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/RecentsDrawnEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/RecentsDrawnEvent;

    .prologue
    .line 716
    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v0

    .line 717
    .local v0, "processUser":I
    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 718
    new-instance v1, Lcom/android/systemui/recents/Recents$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/Recents$5;-><init>(Lcom/android/systemui/recents/Recents;)V

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/Recents;->postToSystemUser(Ljava/lang/Runnable;)V

    .line 715
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 652
    sget-object v3, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v1

    .line 653
    .local v1, "currentUser":I
    sget-object v3, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 654
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v3}, Lcom/android/systemui/recents/RecentsImpl;->onConfigurationChanged()V

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 656
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v3, :cond_0

    .line 658
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object v0

    .line 659
    .local v0, "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    if-eqz v0, :cond_2

    .line 661
    :try_start_0
    invoke-interface {v0}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->onConfigurationChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 662
    :catch_0
    move-exception v2

    .line 663
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "Recents"

    const-string/jumbo v4, "Callback failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 666
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string/jumbo v3, "Recents"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No SystemUI callbacks found for user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDraggingInRecents(F)V
    .locals 5
    .param p1, "distanceFromTop"    # F

    .prologue
    .line 582
    sget-object v2, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget v3, p0, Lcom/android/systemui/recents/Recents;->mDraggingInRecentsCurrentUser:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 583
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/RecentsImpl;->onDraggingInRecents(F)V

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v2, :cond_0

    .line 587
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    .line 588
    iget v3, p0, Lcom/android/systemui/recents/Recents;->mDraggingInRecentsCurrentUser:I

    .line 587
    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object v0

    .line 589
    .local v0, "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    if-eqz v0, :cond_2

    .line 591
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->onDraggingInRecents(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 592
    :catch_0
    move-exception v1

    .line 593
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "Recents"

    const-string/jumbo v3, "Callback failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 596
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string/jumbo v2, "Recents"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No SystemUI callbacks found for user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 597
    iget v4, p0, Lcom/android/systemui/recents/Recents;->mDraggingInRecentsCurrentUser:I

    .line 596
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDraggingInRecentsEnded(F)V
    .locals 5
    .param p1, "velocity"    # F

    .prologue
    .line 605
    sget-object v2, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget v3, p0, Lcom/android/systemui/recents/Recents;->mDraggingInRecentsCurrentUser:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 606
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/RecentsImpl;->onDraggingInRecentsEnded(F)V

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 608
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v2, :cond_0

    .line 610
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    .line 611
    iget v3, p0, Lcom/android/systemui/recents/Recents;->mDraggingInRecentsCurrentUser:I

    .line 610
    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object v0

    .line 612
    .local v0, "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    if-eqz v0, :cond_2

    .line 614
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->onDraggingInRecentsEnded(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 615
    :catch_0
    move-exception v1

    .line 616
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "Recents"

    const-string/jumbo v3, "Callback failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 619
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string/jumbo v2, "Recents"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No SystemUI callbacks found for user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 620
    iget v4, p0, Lcom/android/systemui/recents/Recents;->mDraggingInRecentsCurrentUser:I

    .line 619
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public preloadRecents()V
    .locals 6

    .prologue
    .line 414
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    move-result v3

    if-nez v3, :cond_0

    .line 415
    return-void

    .line 418
    :cond_0
    sget-object v3, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v1

    .line 419
    .local v1, "currentUser":I
    sget-object v3, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 420
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v3}, Lcom/android/systemui/recents/RecentsImpl;->preloadRecents()V

    .line 411
    :cond_1
    :goto_0
    return-void

    .line 422
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v3, :cond_1

    .line 424
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object v0

    .line 425
    .local v0, "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    if-eqz v0, :cond_3

    .line 427
    :try_start_0
    invoke-interface {v0}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->preloadRecents()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 428
    :catch_0
    move-exception v2

    .line 429
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "Recents"

    const-string/jumbo v4, "Callback failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 432
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    const-string/jumbo v3, "Recents"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No SystemUI callbacks found for user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showNextAffiliatedTask()V
    .locals 1

    .prologue
    .line 630
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 631
    return-void

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsImpl;->showNextAffiliatedTask()V

    .line 627
    return-void
.end method

.method public showPrevAffiliatedTask()V
    .locals 1

    .prologue
    .line 641
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 642
    return-void

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsImpl;->showPrevAffiliatedTask()V

    .line 638
    return-void
.end method

.method public showRecents(ZZ)V
    .locals 9
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "fromHome"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 281
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    move-result v1

    if-nez v1, :cond_0

    .line 283
    const-string/jumbo v1, "Recents"

    const-string/jumbo v2, "Device is not initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return-void

    .line 289
    :cond_0
    const-string/jumbo v1, "Recents"

    const-string/jumbo v4, "showRecents"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const-string/jumbo v1, "com.android.systemui.recents.ACTION_SHOW"

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/Recents;->proxyToOverridePackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 293
    return-void

    .line 296
    :cond_1
    const-class v1, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/Recents;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/DividerView;->growsRecents()I

    move-result v6

    .line 298
    .local v6, "recentsGrowTarget":I
    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v7

    .line 299
    .local v7, "currentUser":I
    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1, v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 300
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    move v1, p1

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/RecentsImpl;->showRecents(ZZZZZI)V

    .line 278
    :cond_2
    :goto_0
    return-void

    .line 303
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v1, :cond_2

    .line 305
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    invoke-virtual {v1, v7}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object v0

    .line 306
    .local v0, "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    if-eqz v0, :cond_4

    .line 308
    const/4 v2, 0x0

    .line 309
    const/4 v3, 0x1

    const/4 v4, 0x0

    move v1, p1

    move v5, p2

    .line 308
    :try_start_0
    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->showRecents(ZZZZZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 311
    :catch_0
    move-exception v8

    .line 312
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "Recents"

    const-string/jumbo v2, "Callback failed"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 315
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_4
    const-string/jumbo v1, "Recents"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No SystemUI callbacks found for user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public start()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 214
    new-instance v3, Lcom/android/systemui/recents/RecentsDebugFlags;

    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/recents/RecentsDebugFlags;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/systemui/recents/Recents;->sDebugFlags:Lcom/android/systemui/recents/RecentsDebugFlags;

    .line 215
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .line 216
    new-instance v3, Lcom/android/systemui/recents/model/RecentsTaskLoader;

    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/systemui/recents/Recents;->sTaskLoader:Lcom/android/systemui/recents/model/RecentsTaskLoader;

    .line 217
    new-instance v3, Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/recents/RecentsConfiguration;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/systemui/recents/Recents;->sConfiguration:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 219
    new-instance v3, Lcom/android/systemui/recents/model/RecentsSettingHelper;

    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/recents/model/RecentsSettingHelper;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/systemui/recents/Recents;->sRecentsSettingHelper:Lcom/android/systemui/recents/model/RecentsSettingHelper;

    .line 220
    new-instance v3, Lcom/android/systemui/recents/misc/RecentsStatistics;

    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/recents/misc/RecentsStatistics;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/systemui/recents/Recents;->sRecentsStatistics:Lcom/android/systemui/recents/misc/RecentsStatistics;

    .line 222
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/Recents;->mHandler:Landroid/os/Handler;

    .line 223
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    .line 224
    const-string/jumbo v4, "uimode"

    .line 223
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/UiModeManager;

    .line 225
    .local v2, "uiModeManager":Landroid/app/UiModeManager;
    invoke-virtual {v2}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 226
    new-instance v3, Lcom/android/systemui/recents/tv/RecentsTvImpl;

    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/recents/tv/RecentsTvImpl;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    .line 232
    :goto_0
    const-string/jumbo v3, "userdebug"

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "eng"

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 233
    :cond_0
    const-string/jumbo v3, "persist.recents_override_pkg"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "cnStr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 235
    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mOverrideRecentsPackageName:Ljava/lang/String;

    .line 240
    .end local v0    # "cnStr":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    invoke-virtual {v3, p0, v5}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 241
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 242
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/recents/Recents;->sTaskLoader:Lcom/android/systemui/recents/model/RecentsTaskLoader;

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 244
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/recents/Recents;->sRecentsStatistics:Lcom/android/systemui/recents/misc/RecentsStatistics;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 245
    sget-object v3, Lcom/android/systemui/recents/Recents;->sConfiguration:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasSoftNavigationBar()Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/systemui/recents/RecentsConfiguration;->hasSoftNaviBar:Z

    .line 251
    sget-object v3, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v1

    .line 252
    .local v1, "processUser":I
    sget-object v3, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 255
    new-instance v3, Lcom/android/systemui/recents/RecentsSystemUser;

    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/recents/RecentsSystemUser;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/RecentsImpl;)V

    iput-object v3, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    .line 266
    :cond_2
    :goto_1
    const-class v3, Lcom/android/systemui/recents/Recents;

    invoke-virtual {p0, v3, p0}, Lcom/android/systemui/recents/Recents;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 213
    return-void

    .line 228
    .end local v1    # "processUser":I
    :cond_3
    new-instance v3, Lcom/android/systemui/recents/RecentsImpl;

    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/recents/RecentsImpl;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    goto :goto_0

    .line 258
    .restart local v1    # "processUser":I
    :cond_4
    const-string/jumbo v3, "com.android.systemui:screenshot"

    .line 259
    sget-object v4, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getAppName(I)Ljava/lang/String;

    move-result-object v4

    .line 258
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 263
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->registerWithSystemUser()V

    goto :goto_1
.end method

.method public toggleRecents(Landroid/view/Display;)V
    .locals 7
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    move-result v4

    if-nez v4, :cond_0

    .line 372
    const-string/jumbo v4, "Recents"

    const-string/jumbo v5, "Device is not initialized"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    return-void

    .line 378
    :cond_0
    const-string/jumbo v4, "Recents"

    const-string/jumbo v5, "toggleRecents"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string/jumbo v4, "com.android.systemui.recents.ACTION_TOGGLE"

    invoke-direct {p0, v4}, Lcom/android/systemui/recents/Recents;->proxyToOverridePackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 382
    return-void

    .line 385
    :cond_1
    const-class v4, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/Recents;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v4}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/stackdivider/DividerView;->growsRecents()I

    move-result v3

    .line 387
    .local v3, "growTarget":I
    sget-object v4, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v1

    .line 388
    .local v1, "currentUser":I
    sget-object v4, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v4, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 389
    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v4, v3}, Lcom/android/systemui/recents/RecentsImpl;->toggleRecents(I)V

    .line 367
    :cond_2
    :goto_0
    return-void

    .line 391
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v4, :cond_2

    .line 393
    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    invoke-virtual {v4, v1}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object v0

    .line 394
    .local v0, "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    if-eqz v0, :cond_4

    .line 396
    :try_start_0
    invoke-interface {v0, v3}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->toggleRecents(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 397
    :catch_0
    move-exception v2

    .line 398
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "Recents"

    const-string/jumbo v5, "Callback failed"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 401
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_4
    const-string/jumbo v4, "Recents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No SystemUI callbacks found for user: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
