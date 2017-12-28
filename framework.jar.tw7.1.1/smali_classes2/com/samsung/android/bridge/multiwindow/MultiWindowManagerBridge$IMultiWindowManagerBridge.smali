.class public interface abstract Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;
.super Ljava/lang/Object;
.source "MultiWindowManagerBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IMultiWindowManagerBridge"
.end annotation


# virtual methods
.method public abstract alignTasksToStackBounds()V
.end method

.method public abstract completeToggleSplitScreen()V
.end method

.method public abstract enterFreeformTask(I)V
.end method

.method public abstract exitMultiWindow(Landroid/os/IBinder;)Z
.end method

.method public abstract getMultiWindowModeStates(I)I
.end method

.method public abstract getRunningTasksInfo(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSnapTargetAspectRatioRect()Landroid/graphics/Rect;
.end method

.method public abstract getTargetStackRect(I)Landroid/graphics/Rect;
.end method

.method public abstract getTopRunningTaskInfo(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isForceResizable(Landroid/content/pm/ActivityInfo;)Z
.end method

.method public abstract isLaunchableForMultiInstance(Landroid/content/pm/ActivityInfo;)Z
.end method

.method public abstract isResizable(Landroid/content/pm/ResolveInfo;)Z
.end method

.method public abstract isSnapTargetHideStatusbar()Z
.end method

.method public abstract isSnapTargetTranslucentNavigationBar()Z
.end method

.method public abstract isSnapWindowRunning()Z
.end method

.method public abstract isSnapWindowTarget(I)Z
.end method

.method public abstract isStatusBarVisible()Z
.end method

.method public abstract maximizeStackByDivider(Z)V
.end method

.method public abstract maximizeTopTask()Z
.end method

.method public abstract minimizeTopTask()Z
.end method

.method public abstract moveMultiWindowTasksToFullScreen()V
.end method

.method public abstract registerMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V
.end method

.method public abstract removeFocusedTask()Z
.end method

.method public abstract removeSearchedTask(Ljava/lang/String;)Z
.end method

.method public abstract removeTaskIfNeeded(Z)Z
.end method

.method public abstract setAutoResizeAnimating(Z)V
.end method

.method public abstract setDividerButtonsDimLayer(ZFI)V
.end method

.method public abstract setDockedStackDividerButtonsTouchRegion(Landroid/graphics/Rect;)V
.end method

.method public abstract setMultiWindowEnabled(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V
.end method

.method public abstract setSnapWindow(ZLandroid/graphics/Rect;ILjava/lang/String;)V
.end method

.method public abstract showRecentApps()V
.end method

.method public abstract showSnapWindowGuideView(I)V
.end method

.method public abstract startDividerDragging()V
.end method

.method public abstract startFreeform()I
.end method

.method public abstract startPairActivities(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;ILandroid/os/UserHandle;Landroid/os/UserHandle;)V
.end method

.method public abstract stopDividerDragging()V
.end method

.method public abstract updateTaskPositionInTaskBar(Ljava/util/HashMap;)V
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
.end method
