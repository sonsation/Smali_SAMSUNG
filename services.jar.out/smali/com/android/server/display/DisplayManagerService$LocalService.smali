.class final Lcom/android/server/display/DisplayManagerService$LocalService;
.super Landroid/hardware/display/DisplayManagerInternal;
.source "DisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayManagerService$LocalService$1;,
        Lcom/android/server/display/DisplayManagerService$LocalService$2;
    }
.end annotation


# instance fields
.field private blankUnblankRunnableExcuteTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

.field private final mForceBlankDisplayStateRunnable:Ljava/lang/Runnable;

.field private final mForceUnblankDisplayStateRunnable:Ljava/lang/Runnable;

.field private mRequestingBrightness:I

.field private mRequestingID:I

.field private mRequestingState:I

.field private mRequestingSubBrightness:I

.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/display/DisplayManagerService$LocalService;)Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->blankUnblankRunnableExcuteTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/display/DisplayManagerService$LocalService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->mRequestingBrightness:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/display/DisplayManagerService$LocalService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->mRequestingID:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/display/DisplayManagerService$LocalService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->mRequestingState:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/display/DisplayManagerService$LocalService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->mRequestingBrightness:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/display/DisplayManagerService$LocalService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->mRequestingID:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/display/DisplayManagerService$LocalService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->mRequestingState:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/display/DisplayManagerService$LocalService;I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService$LocalService;->isValidDisplayId(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/display/DisplayManagerService$LocalService;I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService$LocalService;->getDisplayBitById(I)I

    move-result v0

    return v0
.end method

.method private constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/display/DisplayManagerService;

    .prologue
    .line 2763
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerInternal;-><init>()V

    .line 2769
    new-instance v0, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->blankUnblankRunnableExcuteTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    .line 3004
    new-instance v0, Lcom/android/server/display/DisplayManagerService$LocalService$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayManagerService$LocalService$1;-><init>(Lcom/android/server/display/DisplayManagerService$LocalService;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->mForceUnblankDisplayStateRunnable:Ljava/lang/Runnable;

    .line 3014
    new-instance v0, Lcom/android/server/display/DisplayManagerService$LocalService$2;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayManagerService$LocalService$2;-><init>(Lcom/android/server/display/DisplayManagerService$LocalService;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->mForceBlankDisplayStateRunnable:Ljava/lang/Runnable;

    .line 2763
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$LocalService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/DisplayManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService$LocalService;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    return-void
.end method

.method private getDisplayBitById(I)I
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 2946
    const/4 v0, 0x0

    .line 2947
    .local v0, "displayBit":I
    if-nez p1, :cond_1

    .line 2948
    const/4 v0, 0x1

    .line 2956
    :cond_0
    :goto_0
    return v0

    .line 2949
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 2950
    const/4 v0, 0x2

    goto :goto_0

    .line 2951
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 2952
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private isValidDisplayId(I)Z
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2960
    if-eqz p1, :cond_0

    if-ne p1, v2, :cond_1

    .line 2962
    :cond_0
    return v2

    .line 2961
    :cond_1
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 2964
    return v1
.end method

.method private sendForceDisplayStateLocked(I)V
    .locals 2
    .param p1, "forceState"    # I

    .prologue
    .line 2994
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2995
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-get4(Lcom/android/server/display/DisplayManagerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->mForceUnblankDisplayStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2996
    return-void

    .line 2998
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2999
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-get4(Lcom/android/server/display/DisplayManagerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->mForceBlankDisplayStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3000
    return-void

    .line 2993
    :cond_1
    return-void
.end method


# virtual methods
.method public blankAllDisplaysFromPowerManager()V
    .locals 2

    .prologue
    .line 2987
    const-string/jumbo v0, "DisplayManagerService"

    const-string/jumbo v1, "ALPM : blankAllDisplaysFromPowerManager"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2988
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-get7(Lcom/android/server/display/DisplayManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2989
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService$LocalService;->sendForceDisplayStateLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 2986
    return-void

    .line 2988
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getCurrentScreenBrightnessBeforeFinal()I
    .locals 1

    .prologue
    .line 2887
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-get2(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->getCurrentScreenBrightnessBeforeFinal()I

    move-result v0

    return v0
.end method

.method public getDisplayInfo(I)Landroid/view/DisplayInfo;
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    .line 2898
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v0, p1, v1, v2}, Lcom/android/server/display/DisplayManagerService;->-wrap2(Lcom/android/server/display/DisplayManagerService;III)Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method public initPowerManagement(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;)V
    .locals 8
    .param p1, "callbacks"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "sensorManager"    # Landroid/hardware/SensorManager;

    .prologue
    .line 2775
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-get12(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v6

    monitor-enter v6

    .line 2776
    :try_start_0
    new-instance v5, Lcom/android/server/display/DisplayManagerService$LocalService$3;

    invoke-direct {v5, p0, p1}, Lcom/android/server/display/DisplayManagerService$LocalService$3;-><init>(Lcom/android/server/display/DisplayManagerService$LocalService;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;)V

    .line 2873
    .local v5, "blanker":Lcom/android/server/display/DisplayBlanker;
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    new-instance v0, Lcom/android/server/display/DisplayPowerController;

    .line 2874
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-get0(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 2873
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayPowerController;-><init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayBlanker;)V

    invoke-static {v7, v0}, Lcom/android/server/display/DisplayManagerService;->-set0(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 2774
    return-void

    .line 2775
    .end local v5    # "blanker":Lcom/android/server/display/DisplayBlanker;
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public isForceUnblankDisplay()Z
    .locals 2

    .prologue
    .line 2972
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-get7(Lcom/android/server/display/DisplayManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2973
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-get6(Lcom/android/server/display/DisplayManagerService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 2972
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isProximitySensorAvailable()Z
    .locals 1

    .prologue
    .line 2892
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-get2(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->isProximitySensorAvailable()Z

    move-result v0

    return v0
.end method

.method public performTraversalInTransactionFromWindowManager()V
    .locals 1

    .prologue
    .line 2927
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-wrap18(Lcom/android/server/display/DisplayManagerService;)V

    .line 2926
    return-void
.end method

.method public registerDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;

    .prologue
    .line 2904
    if-nez p1, :cond_0

    .line 2905
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2908
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->-wrap22(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    .line 2903
    return-void
.end method

.method public requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z
    .locals 1
    .param p1, "request"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .param p2, "waitForNegativeProximity"    # Z

    .prologue
    .line 2881
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-get2(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/DisplayPowerController;->requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z

    move-result v0

    return v0
.end method

.method public setDefaultDisplayPowerMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 3028
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->-wrap30(Lcom/android/server/display/DisplayManagerService;I)V

    .line 3027
    return-void
.end method

.method public setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "info"    # Landroid/view/DisplayInfo;

    .prologue
    .line 2922
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->-wrap31(Lcom/android/server/display/DisplayManagerService;ILandroid/view/DisplayInfo;)V

    .line 2921
    return-void
.end method

.method public setDisplayOffsets(III)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 2939
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService;->-wrap32(Lcom/android/server/display/DisplayManagerService;III)V

    .line 2938
    return-void
.end method

.method public setDisplayProperties(IZFIZ)V
    .locals 6
    .param p1, "displayId"    # I
    .param p2, "hasContent"    # Z
    .param p3, "requestedRefreshRate"    # F
    .param p4, "requestedMode"    # I
    .param p5, "inTraversal"    # Z

    .prologue
    .line 2933
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/display/DisplayManagerService;->-wrap33(Lcom/android/server/display/DisplayManagerService;IZFIZ)V

    .line 2932
    return-void
.end method

.method public setOverrideDisplaySize(III)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 3040
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService;->-wrap34(Lcom/android/server/display/DisplayManagerService;III)V

    .line 3039
    return-void
.end method

.method public swapLogicalDisplays(II)V
    .locals 1
    .param p1, "displayId1"    # I
    .param p2, "displayId2"    # I

    .prologue
    .line 3035
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->-wrap39(Lcom/android/server/display/DisplayManagerService;II)V

    .line 3034
    return-void
.end method

.method public unblankAllDisplaysFromPowerManager()V
    .locals 2

    .prologue
    .line 2979
    const-string/jumbo v0, "DisplayManagerService"

    const-string/jumbo v1, "ALPM : unblankAllDisplaysFromPowerManager"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2980
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-get7(Lcom/android/server/display/DisplayManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2981
    const/4 v1, 0x2

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService$LocalService;->sendForceDisplayStateLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 2978
    return-void

    .line 2980
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public unregisterDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;

    .prologue
    .line 2913
    if-nez p1, :cond_0

    .line 2914
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2917
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->-wrap40(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    .line 2912
    return-void
.end method
