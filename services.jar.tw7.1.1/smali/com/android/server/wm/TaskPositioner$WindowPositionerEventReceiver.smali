.class final Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;
.super Landroid/view/BatchedInputEventReceiver;
.source "TaskPositioner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskPositioner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WindowPositionerEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/TaskPositioner;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskPositioner;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-direct {p0, p2, p3, p4}, Landroid/view/BatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 37

    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/view/MotionEvent;

    if-eqz v4, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/InputEvent;->getSource()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object/from16 v31, p1

    check-cast v31, Landroid/view/MotionEvent;

    const/16 v28, 0x0

    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v4, :cond_2

    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SLIDE_MODE:Z

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get23(Lcom/android/server/wm/TaskPositioner;)Landroid/view/VelocityTracker;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get6(Lcom/android/server/wm/TaskPositioner;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_3

    const/16 v28, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :cond_3
    :try_start_1
    invoke-virtual/range {v31 .. v31}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    invoke-virtual/range {v31 .. v31}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    const/16 v20, -0x1

    invoke-virtual/range {v31 .. v31}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_4
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get6(Lcom/android/server/wm/TaskPositioner;)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get16(Lcom/android/server/wm/TaskPositioner;)Z

    move-result v36

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get18(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-wrap1(Lcom/android/server/wm/TaskPositioner;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    monitor-exit v5

    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v4, :cond_5

    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SLIDE_MODE:Z

    if-eqz v4, :cond_5

    if-ltz v20, :cond_5

    if-lez v20, :cond_33

    const/16 v32, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get18(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v5

    iget v5, v5, Lcom/android/server/wm/Task;->mTaskId:I

    move/from16 v0, v32

    move/from16 v1, v20

    invoke-interface {v4, v5, v0, v1}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->slideFreeformTask(IZI)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    if-eqz v36, :cond_6

    const/4 v4, -0x1

    move/from16 v0, v20

    if-ne v0, v4, :cond_6

    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get24(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_34

    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get2(Lcom/android/server/wm/TaskPositioner;)I

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get2(Lcom/android/server/wm/TaskPositioner;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_37

    const/4 v11, 0x0

    :goto_3
    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v4, :cond_3f

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get18(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get15(Lcom/android/server/wm/TaskPositioner;)Z

    move-result v4

    if-eqz v4, :cond_3a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get8(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v4

    if-eqz v4, :cond_39

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get8(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->isAttached()Z

    move-result v4

    if-eqz v4, :cond_39

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get8(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->getGuideState()I

    move-result v4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_38

    const/16 v30, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get18(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->isDesktopModeLocked()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-result v29

    :try_start_6
    monitor-exit v5

    if-eqz v30, :cond_7

    if-eqz v29, :cond_3d

    if-eqz v33, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get18(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v0, v33

    iget-object v6, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get4(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3c

    const/4 v4, 0x0

    :goto_5
    invoke-interface {v5, v6, v4}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->resizeTaskWithRelaunchAnim(Landroid/view/IApplicationToken;Landroid/graphics/Rect;)V

    :cond_7
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get8(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get8(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->dismiss()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/server/wm/TaskPositioner;->-set3(Lcom/android/server/wm/TaskPositioner;Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_8
    :goto_7
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get18(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0x28

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_9
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    :goto_8
    return-void

    :pswitch_0
    :try_start_8
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/server/wm/TaskPositioner;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_DOWN @ {"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v22

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/TaskPositioner;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Exception caught by drag handleMotion"

    move-object/from16 v0, v22

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_8

    :pswitch_1
    :try_start_a
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v4, :cond_a

    invoke-static {}, Lcom/android/server/wm/TaskPositioner;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_MOVE @ {"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v4, :cond_13

    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SLIDE_MODE:Z

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get23(Lcom/android/server/wm/TaskPositioner;)Landroid/view/VelocityTracker;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get23(Lcom/android/server/wm/TaskPositioner;)Landroid/view/VelocityTracker;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v34

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get23(Lcom/android/server/wm/TaskPositioner;)Landroid/view/VelocityTracker;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v35

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x41200000    # 10.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/server/wm/Task;->mSlideMode:Z

    if-nez v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/server/wm/Task;->mSlideMode:Z

    if-nez v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get1(Lcom/android/server/wm/TaskPositioner;)I

    move-result v4

    if-nez v4, :cond_e

    :cond_b
    const/16 v23, 0x1

    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get18(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v4}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->clearSlideOriginalBounds()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get9(Lcom/android/server/wm/TaskPositioner;)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/server/wm/Task;->mSlideMode:Z

    if-eqz v4, :cond_10

    :cond_c
    :goto_a
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v4, :cond_d

    invoke-static {}, Lcom/android/server/wm/TaskPositioner;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_MOVE @ Velocity {"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    if-eqz v23, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/server/wm/Task;->mSlideMode:Z

    if-eqz v4, :cond_11

    const/16 v20, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/wm/TaskPositioner;->-set1(Lcom/android/server/wm/TaskPositioner;Z)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v4

    :cond_e
    const/16 v23, 0x0

    goto :goto_9

    :cond_f
    const/16 v23, 0x0

    goto/16 :goto_9

    :cond_10
    :try_start_b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get18(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->-get19(Lcom/android/server/wm/TaskPositioner;)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v6}, Lcom/android/server/wm/TaskPositioner;->-get20(Lcom/android/server/wm/TaskPositioner;)F

    move-result v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v9}, Lcom/android/server/wm/TaskPositioner;->-get25(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-interface/range {v4 .. v9}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->saveOriginalBoundsBeforeSliding(FFFFLandroid/graphics/Rect;)Z

    move-result v4

    invoke-static {v10, v4}, Lcom/android/server/wm/TaskPositioner;->-set4(Lcom/android/server/wm/TaskPositioner;Z)Z

    goto/16 :goto_a

    :cond_11
    const/4 v4, 0x0

    cmpg-float v4, v34, v4

    if-gez v4, :cond_12

    const/16 v20, 0x1

    goto :goto_b

    :cond_12
    const/16 v20, 0x2

    goto :goto_b

    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get18(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v4, :cond_22

    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SLIDE_MODE:Z

    if-eqz v4, :cond_22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/server/wm/Task;->mSlideMode:Z

    if-eqz v4, :cond_22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/android/server/wm/TaskPositioner;->-set0(Lcom/android/server/wm/TaskPositioner;I)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v9}, Lcom/android/server/wm/TaskPositioner;->-get19(Lcom/android/server/wm/TaskPositioner;)F

    move-result v9

    invoke-static {v6, v9, v8}, Lcom/android/server/wm/TaskPositioner;->-wrap0(Lcom/android/server/wm/TaskPositioner;FF)Z

    move-result v6

    invoke-static {v4, v6}, Lcom/android/server/wm/TaskPositioner;->-set1(Lcom/android/server/wm/TaskPositioner;Z)Z

    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v6}, Lcom/android/server/wm/TaskPositioner;->-get22(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get18(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->getTopVisibleTaskLocked(I)Lcom/android/server/wm/Task;

    move-result-object v26

    if-eqz v26, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v6

    invoke-static {v4, v6}, Lcom/android/server/wm/TaskPositioner;->-set5(Lcom/android/server/wm/TaskPositioner;Z)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_14
    :try_start_d
    monitor-exit v5

    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v4, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get15(Lcom/android/server/wm/TaskPositioner;)Z

    move-result v4

    if-eqz v4, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get17(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_23

    :cond_15
    :goto_d
    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GUIDE_RESIZE:Z

    if-eqz v4, :cond_30

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get7(Lcom/android/server/wm/TaskPositioner;)Z

    move-result v4

    if-eqz v4, :cond_30

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get8(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->isAttached()Z

    move-result v4

    if-nez v4, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get8(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->initialize()V

    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get22(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->-get24(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get24(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->-get14(Lcom/android/server/wm/TaskPositioner;)I

    move-result v5

    if-gt v4, v5, :cond_27

    const/16 v19, 0x1

    :goto_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get24(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->-get13(Lcom/android/server/wm/TaskPositioner;)I

    move-result v5

    if-gt v4, v5, :cond_28

    const/16 v18, 0x1

    :goto_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get24(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->-get12(Lcom/android/server/wm/TaskPositioner;)I

    move-result v5

    if-lt v4, v5, :cond_29

    const/16 v17, 0x1

    :goto_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get24(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->-get11(Lcom/android/server/wm/TaskPositioner;)I

    move-result v5

    if-lt v4, v5, :cond_2a

    const/16 v16, 0x1

    :goto_11
    if-eqz v19, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get1(Lcom/android/server/wm/TaskPositioner;)I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get24(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->-get24(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v6}, Lcom/android/server/wm/TaskPositioner;->-get14(Lcom/android/server/wm/TaskPositioner;)I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->left:I

    :cond_17
    :goto_12
    if-eqz v18, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get1(Lcom/android/server/wm/TaskPositioner;)I

    move-result v4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get24(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->-get24(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v6}, Lcom/android/server/wm/TaskPositioner;->-get13(Lcom/android/server/wm/TaskPositioner;)I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->top:I

    :cond_18
    :goto_13
    if-eqz v17, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get1(Lcom/android/server/wm/TaskPositioner;)I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get24(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->-get24(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v6}, Lcom/android/server/wm/TaskPositioner;->-get12(Lcom/android/server/wm/TaskPositioner;)I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->left:I

    :cond_19
    :goto_14
    if-eqz v16, :cond_1a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get1(Lcom/android/server/wm/TaskPositioner;)I

    move-result v4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get24(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->-get24(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v6}, Lcom/android/server/wm/TaskPositioner;->-get11(Lcom/android/server/wm/TaskPositioner;)I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->top:I

    :cond_1a
    :goto_15
    if-eqz v19, :cond_1b

    if-nez v18, :cond_1c

    :cond_1b
    if-eqz v17, :cond_2f

    if-eqz v16, :cond_2f

    :cond_1c
    const/16 v27, 0x1

    :goto_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get8(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideState(I)V

    const/4 v4, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_21

    float-to-int v0, v7

    move/from16 v24, v0

    float-to-int v0, v8

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get24(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v4

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get24(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move/from16 v0, v24

    if-ge v0, v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get24(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v4

    move/from16 v0, v24

    iput v0, v4, Landroid/graphics/Rect;->left:I

    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get24(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    move/from16 v0, v24

    if-le v0, v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get24(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v4

    move/from16 v0, v24

    iput v0, v4, Landroid/graphics/Rect;->right:I

    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get24(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    move/from16 v0, v25

    if-ge v0, v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get24(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v4

    move/from16 v0, v25

    iput v0, v4, Landroid/graphics/Rect;->top:I

    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get24(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v25

    if-le v0, v4, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get24(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v4

    move/from16 v0, v25

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get8(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideState(I)V

    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get8(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->-get24(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->show(Landroid/graphics/Rect;Z)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_0

    :cond_22
    :try_start_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v6, v7, v8}, Lcom/android/server/wm/TaskPositioner;->-wrap0(Lcom/android/server/wm/TaskPositioner;FF)Z

    move-result v6

    invoke-static {v4, v6}, Lcom/android/server/wm/TaskPositioner;->-set1(Lcom/android/server/wm/TaskPositioner;Z)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_c

    :catchall_1
    move-exception v4

    :try_start_f
    monitor-exit v5

    throw v4

    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get10(Lcom/android/server/wm/TaskPositioner;)Z

    move-result v4

    if-eqz v4, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get8(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->isAttached()Z

    move-result v4

    if-nez v4, :cond_24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get8(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->initialize()V

    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get8(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideState(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get8(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->-get2(Lcom/android/server/wm/TaskPositioner;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideWindowShapeWhenDocking(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get2(Lcom/android/server/wm/TaskPositioner;)I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_26

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get17(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v4

    iget v5, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v6}, Lcom/android/server/wm/TaskPositioner;->-get5(Lcom/android/server/wm/TaskPositioner;)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->top:I

    :cond_25
    :goto_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get8(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->-get17(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->show(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get17(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_d

    :cond_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get2(Lcom/android/server/wm/TaskPositioner;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_25

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get17(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v4

    iget v5, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v6}, Lcom/android/server/wm/TaskPositioner;->-get5(Lcom/android/server/wm/TaskPositioner;)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->left:I

    goto :goto_17

    :cond_27
    const/16 v19, 0x0

    goto/16 :goto_e

    :cond_28
    const/16 v18, 0x0

    goto/16 :goto_f

    :cond_29
    const/16 v17, 0x0

    goto/16 :goto_10

    :cond_2a
    const/16 v16, 0x0

    goto/16 :goto_11

    :cond_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get24(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->-get24(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v6}, Lcom/android/server/wm/TaskPositioner;->-get14(Lcom/android/server/wm/TaskPositioner;)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->right:I

    goto/16 :goto_12

    :cond_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get24(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->-get24(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v6}, Lcom/android/server/wm/TaskPositioner;->-get13(Lcom/android/server/wm/TaskPositioner;)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_13

    :cond_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get24(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->-get24(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v6}, Lcom/android/server/wm/TaskPositioner;->-get12(Lcom/android/server/wm/TaskPositioner;)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->right:I

    goto/16 :goto_14

    :cond_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get24(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->-get24(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v6}, Lcom/android/server/wm/TaskPositioner;->-get11(Lcom/android/server/wm/TaskPositioner;)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_15

    :cond_2f
    const/16 v27, 0x0

    goto/16 :goto_16

    :cond_30
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get22(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->-get24(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "wm.TaskPositioner.resizeTask"

    const-wide/16 v12, 0x20

    invoke-static {v12, v13, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get18(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v5

    iget v5, v5, Lcom/android/server/wm/Task;->mTaskId:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v6}, Lcom/android/server/wm/TaskPositioner;->-get24(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v6

    const/4 v9, 0x1

    invoke-interface {v4, v5, v6, v9}, Landroid/app/IActivityManager;->resizeTask(ILandroid/graphics/Rect;I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :goto_18
    const-wide/16 v4, 0x20

    :try_start_11
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :pswitch_2
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v4, :cond_31

    invoke-static {}, Lcom/android/server/wm/TaskPositioner;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_UP @ {"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/wm/TaskPositioner;->-set1(Lcom/android/server/wm/TaskPositioner;Z)Z

    goto/16 :goto_0

    :pswitch_3
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v4, :cond_32

    invoke-static {}, Lcom/android/server/wm/TaskPositioner;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_CANCEL @ {"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/wm/TaskPositioner;->-set1(Lcom/android/server/wm/TaskPositioner;Z)Z

    goto/16 :goto_0

    :catchall_2
    move-exception v4

    monitor-exit v5

    throw v4
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :cond_33
    const/16 v32, 0x0

    goto/16 :goto_1

    :cond_34
    :try_start_12
    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GUIDE_RESIZE:Z

    if-eqz v4, :cond_36

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get7(Lcom/android/server/wm/TaskPositioner;)Z

    move-result v4

    if-eqz v4, :cond_36

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get24(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->-get22(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get18(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :try_start_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    move-result-object v33

    :try_start_14
    monitor-exit v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get24(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->-get25(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35

    if-eqz v33, :cond_35

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get18(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v6}, Lcom/android/server/wm/TaskPositioner;->-get24(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->resizeTaskWithRelaunchAnim(Landroid/view/IApplicationToken;Landroid/graphics/Rect;)V

    :cond_35
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/server/wm/TaskPositioner;->-set2(Lcom/android/server/wm/TaskPositioner;Z)Z

    goto/16 :goto_2

    :catch_1
    move-exception v21

    goto/16 :goto_7

    :catchall_3
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_36
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get10(Lcom/android/server/wm/TaskPositioner;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get18(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v5

    iget v5, v5, Lcom/android/server/wm/Task;->mTaskId:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v6}, Lcom/android/server/wm/TaskPositioner;->-get24(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v6

    const/4 v9, 0x3

    invoke-interface {v4, v5, v6, v9}, Landroid/app/IActivityManager;->resizeTask(ILandroid/graphics/Rect;I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_2

    :cond_37
    const/4 v11, 0x1

    goto/16 :goto_3

    :cond_38
    const/16 v30, 0x0

    goto/16 :goto_4

    :cond_39
    const/16 v30, 0x0

    goto/16 :goto_4

    :cond_3a
    :try_start_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get3(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/DimLayer;

    move-result-object v4

    if-eqz v4, :cond_3b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get3(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/DimLayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DimLayer;->isDimming()Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    move-result v30

    goto/16 :goto_4

    :cond_3b
    const/16 v30, 0x0

    goto/16 :goto_4

    :catchall_4
    move-exception v4

    :try_start_16
    monitor-exit v5

    throw v4

    :cond_3c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get4(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v4

    goto/16 :goto_5

    :cond_3d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get18(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v6}, Lcom/android/server/wm/TaskPositioner;->-get2(Lcom/android/server/wm/TaskPositioner;)I

    move-result v6

    const/4 v9, 0x4

    if-ne v6, v9, :cond_3e

    const/4 v11, 0x0

    :cond_3e
    invoke-interface {v4, v5, v11}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->enterDockedTask(Lcom/android/server/wm/Task;I)V

    goto/16 :goto_6

    :cond_3f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get18(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    iget-object v9, v4, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v4

    iget v10, v4, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {v9 .. v15}, Landroid/app/IActivityManager;->moveTaskToDockedStack(IIZZLandroid/graphics/Rect;Z)Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_1
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_6

    :catch_2
    move-exception v21

    goto/16 :goto_18

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
