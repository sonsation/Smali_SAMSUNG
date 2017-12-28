.class public Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;
.super Ljava/lang/Object;
.source "MultiWindowManagerBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;,
        Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$Utils;
    }
.end annotation


# static fields
.field public static final ANIM_RELAUNCH_FROM_FREEFORM:I = 0x2

.field public static final ANIM_RELAUNCH_NONE:I = 0x0

.field public static final ANIM_RELAUNCH_TO_FREEFORM:I = 0x1

.field public static final AUTO_RESIZE_NONE:I = -0x63

.field public static final BIXBY_RESULT_FAILED_ALREADY_OPENED_FREEFORM:I = 0x5

.field public static final BIXBY_RESULT_FAILED_NO_HAVE_TASK:I = 0x2

.field public static final BIXBY_RESULT_FAILED_NO_MATCHED_PACAKGE:I = 0x3

.field public static final BIXBY_RESULT_FAILED_NO_SUPPORT_RESIZEABLE:I = 0x4

.field public static final BIXBY_RESULT_SUCCESS:I = 0x1

.field public static final DEX_COMPAT_LOG_PREFIX:Ljava/lang/String; = "[DexCompat] "

.field public static final DEX_COMPAT_UI_CUSTOM:I = 0x2

.field public static final DEX_COMPAT_UI_DEFAULT:I = 0x1

.field public static final DEX_COMPAT_UI_FULLSCREEN:I = 0x3

.field public static final DIRECTION_PUSH_LEFT:I = 0x1

.field public static final DIRECTION_PUSH_NONE:I = 0x0

.field public static final DIRECTION_PUSH_RIGHT:I = 0x2

.field public static final DIRECTION_PUSH_UNDEFIND:I = -0x1

.field public static final FLAG_FREEFORM_TASK_CURRENT_USER:I = 0x1

.field public static final FLAG_FREEFORM_TASK_MINIMIZE:I = 0x2

.field public static final FREEFORM_DEFAULT_LONG_SIZE_RATIO:F = 0.5f

.field public static final FREEFORM_DEFAULT_LONG_SIZE_RATIO_FOR_TABLET:F = 0.5f

.field public static final FREEFORM_DEFAULT_SHORT_SIZE_RATIO:F = 0.67f

.field public static final FREEFORM_DEFAULT_SHORT_SIZE_RATIO_FOR_TABLET:F = 0.5f

.field public static final FREEFORM_DIM_TYPE_NONE:I = 0x0

.field public static final FREEFORM_DIM_TYPE_ROUNDED:I = 0x1

.field public static final FREEFORM_DIM_TYPE_SQUARED:I = 0x2

.field public static final FREEFORM_HIDDEN_MINIMIZE:I = 0x1

.field public static final FREEFORM_HIDDEN_MOVE_BACK:I = 0x2

.field public static final FREEFORM_HIDDEN_NONE:I = 0x0

.field public static final FREEFORM_TRANSIT_MINIMIZE:I = 0x1

.field public static final FREEFORM_TRANSIT_NONE:I = 0x0

.field public static final FREEFORM_TRANSIT_UNMINIIZE:I = 0x2

.field public static final LAUNCHING_DEFAULT_TASK_HEIGHT_FOR_DEX:I = 0x2d0

.field public static final LAUNCHING_DEFAULT_TASK_WIDTH_FOR_DEX:I = 0x3c0

.field public static final METADATA_DEX_LAUNCH_HEIGHT:Ljava/lang/String; = "com.samsung.android.sdk.multiwindow.dex.launchheight"

.field public static final METADATA_DEX_LAUNCH_WIDTH:Ljava/lang/String; = "com.samsung.android.sdk.multiwindow.dex.launchwidth"

.field public static final METADATA_FREEFORM_DENSITY_CHANGE:Ljava/lang/String; = "com.samsung.android.sdk.multiwindow.freeform.densitychange"

.field public static final METADATA_MULTIWINDOW_FLOATING_FORCE_HIDE:Ljava/lang/String; = "com.samsung.android.sdk.multiwindow.force_hide_floating_multiwindow"

.field public static final METADATA_MULTIWINDOW_FREEFORM_BORDER:Ljava/lang/String; = "com.samsung.android.sdk.multiwindow.freeform.border"

.field public static final METADATA_MULTIWINDOW_LAUNCH_IN_FOCUSEDSTACK:Ljava/lang/String; = "com.samsung.android.sdk.multiwindow.freeform.launch_in_focusedstack"

.field public static final METADATA_MULTIWINDOW_MAX_HEIGHT:Ljava/lang/String; = "com.samsung.android.sdk.multiwindow.maxHeight"

.field public static final METADATA_MULTIWINDOW_MAX_WIDTH:Ljava/lang/String; = "com.samsung.android.sdk.multiwindow.maxWidth"

.field public static final METADATA_SUPPORT_MULTIWINDOW:Ljava/lang/String; = "com.samsung.android.sdk.multiwindow.enable"

.field public static final METADATA_SUPPORT_MULTIWINDOW_BEFORE_HERO:Ljava/lang/String; = "com.sec.android.support.multiwindow"

.field public static final MINIMIZE_CONTAINER_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.multiwindow.minimizecontainer.MinimizeContainerService"

.field public static final MINIMIZE_CONTAINER_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.multiwindow"

.field public static final MULTIWINDOW_DOCKED_SIZE_DEFAULT:I = 0x0

.field public static final MULTIWINDOW_DOCKED_SIZE_MAXIMAL:I = 0x2

.field public static final MULTIWINDOW_DOCKED_SIZE_MINIMAL:I = 0x1

.field private static final MULTIWINDOW_MANAGER_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.multiwindow.MultiWindowManager"

.field public static final MULTIWINDOW_MODE_DOCKED_STATE:I = 0x2

.field public static final MULTIWINDOW_MODE_FREEFORM_STATE:I = 0x1

.field public static final MULTIWINDOW_MODE_NONE_STATE:I = 0x0

.field public static final MULTIWINDOW_MODE_PINNED_STATE:I = 0x4

.field public static final MW_ANIMATION_RESIZE:I = 0xc9

.field public static final MW_ANIMATION_SWAP:I = 0xca

.field public static final MW_DIVIDER_RESIZE_MARGIN:I = 0x1e

.field public static MW_FLAG_DIVIDER_BUTTON_INVISIBLE:I = 0x0

.field public static MW_FLAG_SWAPPING:I = 0x0

.field public static final NOTIFY_REASON_FORCE_CLEAR_MINIMIZE:I = 0x3

.field public static final NOTIFY_REASON_MINIMIZE:I = 0x1

.field public static final NOTIFY_REASON_UNMINIMIZE:I = 0x2

.field public static final RESIZE_OVERLAP_AREA_IN_DP:I = 0x8

.field public static final SLIDE_FREEFORM_ACCELERATION:I = 0xa

.field public static final SNAP_TARGET_A:I = 0x1

.field public static final SNAP_TARGET_B:I = 0x2

.field public static final SNAP_TARGET_FULL:I = 0x3

.field public static final SNAP_TARGET_UNSET:I = 0x0

.field public static final SNAP_WINDOW_GUIDE_VIEW_RATIO_16_9:I = 0x2

.field public static final SNAP_WINDOW_GUIDE_VIEW_RATIO_21_9:I = 0x3

.field public static final SNAP_WINDOW_GUIDE_VIEW_SIZE_DEFAULT:I = 0x0

.field public static final SNAP_WINDOW_GUIDE_VIEW_SIZE_MINIMAL:I = 0x1

.field public static final SNAP_WINDOW_INVISBLE_CALLER:Ljava/lang/String; = "finish"

.field public static final SNAP_WINDOW_VISBLE_CALLER_APP_REQUEST:Ljava/lang/String; = "appRequest"

.field public static final SNAP_WINDOW_VISBLE_CALLER_FULLAPP:Ljava/lang/String; = "fromFullApp"

.field public static final SNAP_WINDOW_VISBLE_CALLER_RECENT:Ljava/lang/String; = "fromRecent"

.field public static final SNAP_WINDOW_VISBLE_CALLER_SPLIT:Ljava/lang/String; = "fromSplit"

.field public static final SNAP_WINDOW_VISBLE_CALLER_UNSET:Ljava/lang/String; = ""

.field public static final TAG:Ljava/lang/String; = "MultiWindowManagerBridge"

.field public static final UNSNAP_REASON_DIVIDER_DISABLE_BUTTON:I = 0x3

.field public static final UNSNAP_REASON_EXPAND_A:I = 0x2

.field public static final UNSNAP_REASON_SPLIT_RESIZE:I = 0x1

.field public static final UNSNAP_REASON_UNSET:I

.field private static sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->MW_FLAG_SWAPPING:I

    sget v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->MW_FLAG_SWAPPING:I

    sput v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->MW_FLAG_DIVIDER_BUTTON_INVISIBLE:I

    const-string v0, "com.samsung.android.multiwindow.MultiWindowManager"

    invoke-static {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->createService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    sput-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 9

    const/4 v5, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_0
    return-object v5

    :catch_0
    move-exception v2

    const-string v6, "MultiWindowManagerBridge"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not created this class : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", reason : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v3

    const-string v6, "MultiWindowManagerBridge"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not created this class : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", reason : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v4

    const-string v6, "MultiWindowManagerBridge"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not created this class : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", reason : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    move-exception v1

    const-string v6, "MultiWindowManagerBridge"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not created this class : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", reason : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public alignTasksToStackBounds()V
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->alignTasksToStackBounds()V

    :cond_0
    return-void
.end method

.method public completeToggleSplitScreen()V
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->completeToggleSplitScreen()V

    :cond_0
    return-void
.end method

.method public enterFreeformTask(I)V
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->enterFreeformTask(I)V

    :cond_0
    return-void
.end method

.method public exitMultiWindow(Landroid/os/IBinder;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->exitMultiWindow(Landroid/os/IBinder;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMultiWindowModeStates(I)I
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->getMultiWindowModeStates(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getRunningTasksInfo(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->getRunningTasksInfo(II)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getSnapTargetAspectRatioRect()Landroid/graphics/Rect;
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->getSnapTargetAspectRatioRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getTargetStackRect(I)Landroid/graphics/Rect;
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->getTargetStackRect(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getTopRunningTaskInfo(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->getTopRunningTaskInfo(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public isForceResizable(Landroid/content/pm/ActivityInfo;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->isForceResizable(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isLaunchableForMultiInstance(Landroid/content/pm/ActivityInfo;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->isLaunchableForMultiInstance(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isResizable(Landroid/content/pm/ResolveInfo;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->isResizable(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSnapTargetHideStatusbar()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->isSnapTargetHideStatusbar()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSnapTargetTranslucentNavigationBar()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->isSnapTargetTranslucentNavigationBar()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSnapWindowRunning()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->isSnapWindowRunning()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSnapWindowTarget(I)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->isSnapWindowTarget(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isStatusBarVisible()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->isStatusBarVisible()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public maximizeStackByDivider(Z)V
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->maximizeStackByDivider(Z)V

    :cond_0
    return-void
.end method

.method public maximizeTopTask()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->maximizeTopTask()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public minimizeTopTask()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->minimizeTopTask()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public moveMultiWindowTasksToFullScreen()V
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->moveMultiWindowTasksToFullScreen()V

    :cond_0
    return-void
.end method

.method public registerMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->registerMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V

    :cond_0
    return-void
.end method

.method public removeFocusedTask()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->removeFocusedTask()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeSearchedTask(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->removeSearchedTask(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeTaskIfNeeded(Z)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->removeTaskIfNeeded(Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAutoResizeAnimating(Z)V
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->setAutoResizeAnimating(Z)V

    :cond_0
    return-void
.end method

.method public setDividerButtonsDimLayer(ZFI)V
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->setDividerButtonsDimLayer(ZFI)V

    :cond_0
    return-void
.end method

.method public setDockedStackDividerButtonsTouchRegion(Landroid/graphics/Rect;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->setDockedStackDividerButtonsTouchRegion(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public setMultiWindowEnabled(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->setMultiWindowEnabled(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    :cond_0
    return-void
.end method

.method public setSnapWindow(ZLandroid/graphics/Rect;ILjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->setSnapWindow(ZLandroid/graphics/Rect;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public showRecentApps()V
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->showRecentApps()V

    :cond_0
    return-void
.end method

.method public showSnapWindowGuideView(I)V
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->showSnapWindowGuideView(I)V

    :cond_0
    return-void
.end method

.method public startDividerDragging()V
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->startDividerDragging()V

    :cond_0
    return-void
.end method

.method public startFreeform()I
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->startFreeform()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public startPairActivities(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;I)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->startPairActivities(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;ILandroid/os/UserHandle;Landroid/os/UserHandle;)V

    return-void
.end method

.method public startPairActivities(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;ILandroid/os/UserHandle;Landroid/os/UserHandle;)V
    .locals 7

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->startPairActivities(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;ILandroid/os/UserHandle;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method public stopDividerDragging()V
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->stopDividerDragging()V

    :cond_0
    return-void
.end method

.method public updateTaskPositionInTaskBar(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->updateTaskPositionInTaskBar(Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method
