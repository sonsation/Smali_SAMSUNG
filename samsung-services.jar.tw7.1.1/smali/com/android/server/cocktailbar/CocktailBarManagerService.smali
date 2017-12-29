.class public Lcom/android/server/cocktailbar/CocktailBarManagerService;
.super Lcom/android/server/SystemService;
.source "CocktailBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;,
        Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeLightingLocalService;,
        Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;,
        Lcom/android/server/cocktailbar/CocktailBarManagerService$Sales;,
        Lcom/android/server/cocktailbar/CocktailBarManagerService$TurnOffWakeUpCocktailBarRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CocktailBarManagerService"


# instance fields
.field private final mCocktailBarService:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

.field private final mContext:Landroid/content/Context;

.field private mEdgeLightingManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

.field private final mHandler:Landroid/os/Handler;

.field private mTurnOffWakeUpCocktailBarRunnable:Lcom/android/server/cocktailbar/CocktailBarManagerService$TurnOffWakeUpCocktailBarRunnable;


# direct methods
.method static synthetic -get0(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarService:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mEdgeLightingManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getCocktaiBarWakeUpStateFromWindowManagerInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/cocktailbar/CocktailBarManagerService;ILjava/lang/String;)V
    .locals 0
    .param p1, "flag"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->turnOffWakupCocktailBarFromPowerManagerInternal(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/cocktailbar/CocktailBarManagerService;I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->updateCocktailBarStateFromWindowManagerInternal(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/cocktailbar/CocktailBarManagerService;Z)V
    .locals 0
    .param p1, "disable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->updateSysfsGripDisableFromWindowManagerInternal(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/cocktailbar/CocktailBarManagerService;ZII)V
    .locals 0
    .param p1, "bEnable"    # Z
    .param p2, "keyCode"    # I
    .param p3, "reason"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->wakupCocktailBarFromWindowManagerInternal(ZII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mTurnOffWakeUpCocktailBarRunnable:Lcom/android/server/cocktailbar/CocktailBarManagerService$TurnOffWakeUpCocktailBarRunnable;

    .line 51
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mContext:Landroid/content/Context;

    .line 52
    new-instance v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-direct {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarService:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mHandler:Landroid/os/Handler;

    .line 55
    new-instance v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    invoke-direct {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mEdgeLightingManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    .line 49
    return-void
.end method

.method private getCocktaiBarWakeUpStateFromWindowManagerInternal()Z
    .locals 2

    .prologue
    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarService:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getCocktaiBarWakeUpState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 151
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method private turnOffWakupCocktailBarFromPowerManagerInternal(ILjava/lang/String;)V
    .locals 4
    .param p1, "flag"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 117
    sget-boolean v0, Lcom/android/server/cocktailbar/CocktailBarManagerService$Sales;->JAPAN:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailPanel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarService:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getCocktaiBarWakeUpStateInternal()Z

    move-result v0

    .line 117
    if-eqz v0, :cond_0

    .line 119
    const v0, 0xffff

    and-int/2addr v0, p1

    packed-switch v0, :pswitch_data_0

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 121
    :pswitch_0
    const-string v0, "AreaMailNotificationWakeLock"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    const-string v0, "AlertOnKeyguard"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 121
    if-nez v0, :cond_1

    .line 123
    const-string v0, "jp.co.nttdocomo.lcsapp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 121
    if-eqz v0, :cond_0

    .line 124
    :cond_1
    const-string v0, "CocktailBarManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turnOffWakupCocktailBarFromPowerManagerInternal : flag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mTurnOffWakeUpCocktailBarRunnable:Lcom/android/server/cocktailbar/CocktailBarManagerService$TurnOffWakeUpCocktailBarRunnable;

    if-nez v0, :cond_2

    .line 126
    new-instance v0, Lcom/android/server/cocktailbar/CocktailBarManagerService$TurnOffWakeUpCocktailBarRunnable;

    invoke-direct {v0, p0, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerService$TurnOffWakeUpCocktailBarRunnable;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;Lcom/android/server/cocktailbar/CocktailBarManagerService$TurnOffWakeUpCocktailBarRunnable;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mTurnOffWakeUpCocktailBarRunnable:Lcom/android/server/cocktailbar/CocktailBarManagerService$TurnOffWakeUpCocktailBarRunnable;

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mTurnOffWakeUpCocktailBarRunnable:Lcom/android/server/cocktailbar/CocktailBarManagerService$TurnOffWakeUpCocktailBarRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 129
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mTurnOffWakeUpCocktailBarRunnable:Lcom/android/server/cocktailbar/CocktailBarManagerService$TurnOffWakeUpCocktailBarRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch
.end method

.method private updateCocktailBarStateFromWindowManagerInternal(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarService:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->updateCocktailBarStateFromSystemInternal(I)V

    .line 144
    return-void
.end method

.method private updateSysfsGripDisableFromWindowManagerInternal(Z)V
    .locals 0
    .param p1, "disable"    # Z

    .prologue
    .line 141
    invoke-static {p1}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;->updateSysfsGripDisable(Z)V

    .line 140
    return-void
.end method

.method private wakupCocktailBarFromWindowManagerInternal(ZII)V
    .locals 1
    .param p1, "bEnable"    # Z
    .param p2, "keyCode"    # I
    .param p3, "reason"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarService:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->wakeupCocktailBarInternal(ZII)V

    .line 136
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .prologue
    .line 71
    const/16 v0, 0x258

    if-ne p1, v0, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v0

    .line 71
    if-eqz v0, :cond_1

    .line 73
    const-string v0, "CocktailBarManagerService"

    const-string v1, "PHASE_THIRD_PARTY_APPS_CAN_START"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarService:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->isSafeMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->systemRunning(Z)V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    const-string v0, "CocktailBarManagerService"

    const-string v1, "PHASE_BOOT_COMPLETED"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarService:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->isSafeMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->systemRunning(Z)V

    .line 79
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mEdgeLightingManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->onBootCompleted()V

    goto :goto_0
.end method

.method public onCleanupUser(I)V
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onCleanupUser(I)V

    .line 86
    const-string v0, "CocktailBarManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartUser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 60
    const-string v0, "CocktailBarService"

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarService:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 61
    const-class v0, Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    new-instance v1, Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 64
    const-string v0, "edge"

    new-instance v1, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 65
    const-class v0, Lcom/samsung/android/edge/EdgeManagerInternal;

    new-instance v1, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeLightingLocalService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeLightingLocalService;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeLightingLocalService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method public onStartUser(I)V
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onStartUser(I)V

    .line 92
    const-string v0, "CocktailBarManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartUser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method

.method public onStopUser(I)V
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onStopUser(I)V

    .line 98
    const-string v0, "CocktailBarManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopUser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onSwitchUser(I)V

    .line 104
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarService:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->onUserSwitched(I)V

    .line 105
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mEdgeLightingManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->onSwitchUser(I)V

    .line 106
    const-string v0, "CocktailBarManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSwitchUser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onUnlockUser(I)V

    .line 112
    const-string v0, "CocktailBarManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUnlockUser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarService:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->onUnlockUser(I)V

    .line 110
    return-void
.end method
