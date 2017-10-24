.class public Lcom/android/systemui/statusbar/tv/TvStatusBar;
.super Lcom/android/systemui/statusbar/BaseStatusBar;
.source "TvStatusBar.java"


# instance fields
.field private mLastDispatchedSystemUiVisibility:I

.field mSystemUiVisibility:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/tv/TvStatusBar;->mSystemUiVisibility:I

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/tv/TvStatusBar;->mLastDispatchedSystemUiVisibility:I

    .line 37
    return-void
.end method

.method private notifyUiVisibilityChanged(I)V
    .locals 2
    .param p1, "vis"    # I

    .prologue
    .line 287
    :try_start_0
    iget v1, p0, Lcom/android/systemui/statusbar/tv/TvStatusBar;->mLastDispatchedSystemUiVisibility:I

    if-eq v1, p1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/android/systemui/statusbar/tv/TvStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->statusBarVisibilityChanged(I)V

    .line 289
    iput p1, p0, Lcom/android/systemui/statusbar/tv/TvStatusBar;->mLastDispatchedSystemUiVisibility:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method


# virtual methods
.method public addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 0
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;
    .param p3, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 59
    return-void
.end method

.method public addQsTile(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "tile"    # Landroid/content/ComponentName;

    .prologue
    .line 244
    return-void
.end method

.method public animateCollapsePanels(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 83
    return-void
.end method

.method public animateExpandNotificationsPanel()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public animateExpandSettingsPanel(Ljava/lang/String;)V
    .locals 0
    .param p1, "subPanel"    # Ljava/lang/String;

    .prologue
    .line 176
    return-void
.end method

.method public appTransitionCancelled()V
    .locals 0

    .prologue
    .line 210
    return-void
.end method

.method public appTransitionFinished()V
    .locals 0

    .prologue
    .line 218
    return-void
.end method

.method public appTransitionPending()V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public appTransitionStarting(JJ)V
    .locals 0
    .param p1, "startTime"    # J
    .param p3, "duration"    # J

    .prologue
    .line 214
    return-void
.end method

.method public buzzBeepBlinked()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public clickTile(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "tile"    # Landroid/content/ComponentName;

    .prologue
    .line 252
    return-void
.end method

.method protected createAndAddWindows()V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public disable(IIZ)V
    .locals 0
    .param p1, "state1"    # I
    .param p2, "state2"    # I
    .param p3, "animate"    # Z

    .prologue
    .line 71
    return-void
.end method

.method protected getMaxKeyguardNotifications(Z)I
    .locals 1
    .param p1, "recompute"    # Z

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public isPanelFullyCollapsed()Z
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method protected isSnoozedPackage(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public maybeEscalateHeadsUp()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public notificationLightOff()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public notificationLightPulse(III)V
    .locals 0
    .param p1, "argb"    # I
    .param p2, "onMillis"    # I
    .param p3, "offMillis"    # I

    .prologue
    .line 113
    return-void
.end method

.method protected notifyGearVrStateChange(Z)V
    .locals 0
    .param p1, "docked"    # Z

    .prologue
    .line 144
    return-void
.end method

.method public onActivated(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    .line 188
    return-void
.end method

.method public onActivationReset(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    .line 192
    return-void
.end method

.method public onCameraLaunchGestureDetected(I)V
    .locals 0
    .param p1, "source"    # I

    .prologue
    .line 222
    return-void
.end method

.method public onDoubleTapped(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    .line 197
    return-void
.end method

.method protected refreshLayout(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .prologue
    .line 184
    return-void
.end method

.method public remQsTile(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "tile"    # Landroid/content/ComponentName;

    .prologue
    .line 248
    return-void
.end method

.method public removeIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "slot"    # Ljava/lang/String;

    .prologue
    .line 54
    return-void
.end method

.method public removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 67
    return-void
.end method

.method protected setAreThereNotifications()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method protected setHeadsUpUser(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .prologue
    .line 236
    return-void
.end method

.method public setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 50
    return-void
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;IIZ)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I
    .param p4, "showImeSwitcher"    # Z

    .prologue
    .line 97
    return-void
.end method

.method public setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "vis"    # I
    .param p2, "fullscreenStackVis"    # I
    .param p3, "dockedStackVis"    # I
    .param p4, "mask"    # I
    .param p5, "fullscreenStackBounds"    # Landroid/graphics/Rect;
    .param p6, "dockedStackBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 88
    return-void
.end method

.method public setWindowState(II)V
    .locals 0
    .param p1, "window"    # I
    .param p2, "state"    # I

    .prologue
    .line 101
    return-void
.end method

.method public showScreenPinningRequest(I)V
    .locals 0
    .param p1, "taskId"    # I

    .prologue
    .line 202
    return-void
.end method

.method public showTvPictureInPictureMenu()V
    .locals 1

    .prologue
    .line 227
    invoke-static {}, Lcom/android/systemui/tv/pip/PipManager;->getInstance()Lcom/android/systemui/tv/pip/PipManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipManager;->showTvPictureInPictureMenu()V

    .line 226
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 257
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->start()V

    .line 258
    const-class v0, Lcom/android/systemui/statusbar/tv/TvStatusBar;

    invoke-virtual {p0, v0, p0}, Lcom/android/systemui/statusbar/tv/TvStatusBar;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 256
    return-void
.end method

.method protected toggleSplitScreenMode(IIZ)V
    .locals 0
    .param p1, "metricsDockAction"    # I
    .param p2, "metricsUndockAction"    # I
    .param p3, "fromKey"    # Z

    .prologue
    .line 158
    return-void
.end method

.method public topAppWindowChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 92
    return-void
.end method

.method protected updateHeadsUp(Ljava/lang/String;Lcom/android/systemui/statusbar/NotificationData$Entry;ZZ)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p3, "shouldPeek"    # Z
    .param p4, "alertAgain"    # Z

    .prologue
    .line 232
    return-void
.end method

.method protected updateKnoxCustomStatusBarText()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method protected updateNotificationRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .param p1, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 63
    return-void
.end method

.method protected updateNotifications()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public updatePipVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 265
    if-eqz p1, :cond_0

    .line 266
    iget v0, p0, Lcom/android/systemui/statusbar/tv/TvStatusBar;->mSystemUiVisibility:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/tv/TvStatusBar;->mSystemUiVisibility:I

    .line 270
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/tv/TvStatusBar;->mSystemUiVisibility:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/tv/TvStatusBar;->notifyUiVisibilityChanged(I)V

    .line 264
    return-void

    .line 268
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/tv/TvStatusBar;->mSystemUiVisibility:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/tv/TvStatusBar;->mSystemUiVisibility:I

    goto :goto_0
.end method

.method protected updateQuickSettingPanel(Z)V
    .locals 0
    .param p1, "animate"    # Z

    .prologue
    .line 125
    return-void
.end method

.method protected updateQuickSettingPanelVisibility()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public updateRecentsVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 277
    if-eqz p1, :cond_0

    .line 278
    iget v0, p0, Lcom/android/systemui/statusbar/tv/TvStatusBar;->mSystemUiVisibility:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/android/systemui/statusbar/tv/TvStatusBar;->mSystemUiVisibility:I

    .line 282
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/tv/TvStatusBar;->mSystemUiVisibility:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/tv/TvStatusBar;->notifyUiVisibilityChanged(I)V

    .line 276
    return-void

    .line 280
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/tv/TvStatusBar;->mSystemUiVisibility:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/android/systemui/statusbar/tv/TvStatusBar;->mSystemUiVisibility:I

    goto :goto_0
.end method

.method protected updateStatusBarHidden()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method protected updateStatusBarIcons()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method
