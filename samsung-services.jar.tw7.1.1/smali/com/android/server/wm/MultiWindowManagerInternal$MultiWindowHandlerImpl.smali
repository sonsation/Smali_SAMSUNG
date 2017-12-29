.class final Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;
.super Landroid/os/Handler;
.source "MultiWindowManagerInternal.java"

# interfaces
.implements Lcom/android/server/wm/IMultiWindowManagerInternalBridge$MultiWindowHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MultiWindowManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MultiWindowHandlerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MultiWindowManagerInternal;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MultiWindowManagerInternal;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/MultiWindowManagerInternal;

    .prologue
    .line 2866
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2869
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    .line 2868
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2871
    :pswitch_1
    sget-boolean v19, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v19, :cond_0

    .line 2872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$ResizeInfo;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiWindowManagerInternal;->enterFreeformTask(Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$ResizeInfo;)V

    goto :goto_0

    .line 2878
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 2879
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v19, v0

    const-string v21, "complete"

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/MultiWindowManagerInternal;->setFreeformRelaunchAnimState(Ljava/util/ArrayList;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    monitor-exit v20

    goto :goto_0

    .line 2878
    :catchall_0
    move-exception v19

    monitor-exit v20

    throw v19

    .line 2886
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 2887
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v19, v0

    const-string v21, "timeout"

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/MultiWindowManagerInternal;->setFreeformRelaunchAnimState(Ljava/util/ArrayList;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 2886
    :catchall_1
    move-exception v19

    monitor-exit v20

    throw v19

    .line 2893
    :pswitch_4
    sget-boolean v19, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v19, :cond_0

    .line 2894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 2895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/TaskPositioner;->hideDimLayer()V

    goto/16 :goto_0

    .line 2901
    :pswitch_5
    sget-boolean v19, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v19, :cond_0

    .line 2902
    sget-boolean v19, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SLIDE_MODE:Z

    .line 2901
    if-eqz v19, :cond_0

    .line 2903
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    .line 2904
    .local v18, "taskId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    const/4 v15, 0x1

    .line 2905
    .local v15, "slide":Z
    :goto_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/graphics/Rect;

    .line 2907
    .local v16, "slideBounds":Landroid/graphics/Rect;
    :try_start_2
    new-instance v14, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v14}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    .line 2908
    .local v14, "mw":Lcom/samsung/android/multiwindow/MultiWindowManager;
    move/from16 v0, v18

    invoke-virtual {v14, v0, v15}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setSlideMode(IZ)V

    .line 2909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    move-object/from16 v19, v0

    .line 2910
    const/16 v20, 0x1

    .line 2909
    move-object/from16 v0, v19

    move/from16 v1, v18

    move-object/from16 v2, v16

    move/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->resizeTask(ILandroid/graphics/Rect;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 2911
    .end local v14    # "mw":Lcom/samsung/android/multiwindow/MultiWindowManager;
    :catch_0
    move-exception v8

    .line 2912
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 2904
    .end local v8    # "e":Landroid/os/RemoteException;
    .end local v15    # "slide":Z
    .end local v16    # "slideBounds":Landroid/graphics/Rect;
    :cond_2
    const/4 v15, 0x0

    .restart local v15    # "slide":Z
    goto :goto_2

    .line 2920
    .end local v15    # "slide":Z
    .end local v18    # "taskId":I
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 2921
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 2922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/ScreenFreezeAnimation;->timeout()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_1

    .line 2920
    :catchall_2
    move-exception v19

    monitor-exit v20

    throw v19

    .line 2930
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 2931
    const/16 v19, 0x8

    :try_start_4
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->removeMessages(I)V

    .line 2932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v19, v0

    const-string v21, "complete"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/server/wm/MultiWindowManagerInternal;->-wrap0(Lcom/android/server/wm/MultiWindowManagerInternal;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto/16 :goto_1

    .line 2930
    :catchall_3
    move-exception v19

    monitor-exit v20

    throw v19

    .line 2939
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 2940
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v19, v0

    const-string v21, "timeout"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/server/wm/MultiWindowManagerInternal;->-wrap0(Lcom/android/server/wm/MultiWindowManagerInternal;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto/16 :goto_1

    .line 2939
    :catchall_4
    move-exception v19

    monitor-exit v20

    throw v19

    .line 2948
    :pswitch_9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    .line 2949
    .restart local v18    # "taskId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 2950
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get1(Lcom/android/server/wm/MultiWindowManagerInternal;)Ljava/util/HashMap;

    move-result-object v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 2951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get1(Lcom/android/server/wm/MultiWindowManagerInternal;)Ljava/util/HashMap;

    move-result-object v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2952
    const-string v19, "MultiWindowManagerInternal"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "MULTIWINDOW_ENTER_FREEFORM_TASK_TIMEOUT, taskId="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto/16 :goto_1

    .line 2949
    :catchall_5
    move-exception v19

    monitor-exit v20

    throw v19

    .line 2960
    .end local v18    # "taskId":I
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    .line 2961
    .local v7, "bundle":Landroid/os/Bundle;
    const-string v19, "appid"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2962
    .local v5, "appId":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 2963
    const-string v19, "feature"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2964
    .local v11, "feature":Ljava/lang/String;
    const-string v19, "extra"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2965
    .local v9, "extra":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v5, v0, v11, v9}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIM(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2967
    .end local v9    # "extra":Ljava/lang/String;
    .end local v11    # "feature":Ljava/lang/String;
    :cond_3
    const-string v19, "features"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 2968
    .local v12, "features":[Ljava/lang/String;
    const-string v19, "extras"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 2969
    .local v10, "extras":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v5, v0, v12, v10}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIM(Ljava/lang/String;Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2976
    .end local v5    # "appId":Ljava/lang/String;
    .end local v7    # "bundle":Landroid/os/Bundle;
    .end local v10    # "extras":[Ljava/lang/String;
    .end local v12    # "features":[Ljava/lang/String;
    :pswitch_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    const/4 v4, 0x1

    .line 2977
    .local v4, "adjustForIme":Z
    :goto_3
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Rect;

    .line 2978
    .local v6, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowManagerService:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v6, v4}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->ensureDockedResize(Landroid/graphics/Rect;Z)V

    goto/16 :goto_0

    .line 2976
    .end local v4    # "adjustForIme":Z
    .end local v6    # "bounds":Landroid/graphics/Rect;
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "adjustForIme":Z
    goto :goto_3

    .line 2984
    .end local v4    # "adjustForIme":Z
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowManagerService:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->ensureDockedStackVisible()V

    goto/16 :goto_0

    .line 2991
    :pswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/server/wm/Task;

    .line 2992
    .local v17, "task":Lcom/android/server/wm/Task;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    .line 2993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->dismiss()V

    .line 2994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/server/wm/MultiWindowManagerInternal;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    .line 2996
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v19, v0

    new-instance v20, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/server/wm/MultiWindowManagerInternal;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    .line 2997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->isAttached()Z

    move-result v19

    if-nez v19, :cond_0

    .line 2998
    const-string v19, "MultiWindowManagerInternal"

    const-string v20, "TAP_OUTSIDE_TASK_MAKE_GUIDE_WINDOW: Show Guide"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->initialize()V

    .line 3000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideState(I)V

    .line 3001
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 3002
    .local v13, "guideWindowRect":Landroid/graphics/Rect;
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 3003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->show(Landroid/graphics/Rect;Z)V

    goto/16 :goto_0

    .line 3010
    .end local v13    # "guideWindowRect":Landroid/graphics/Rect;
    .end local v17    # "task":Lcom/android/server/wm/Task;
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 3011
    const-string v19, "MultiWindowManagerInternal"

    const-string v20, "TAP_OUTSIDE_TASK_DESTROY_GUIDE_WINDOW: Dismiss Guide"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->dismiss()V

    .line 3013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/server/wm/MultiWindowManagerInternal;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    goto/16 :goto_0

    .line 3020
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 3021
    const-string v19, "MultiWindowManagerInternal"

    const-string v20, "TAP_OUTSIDE_TASK_DESTROY_GUIDE_WINDOW_TIMEOUT: Dismiss Guide"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->dismiss()V

    .line 3023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/server/wm/MultiWindowManagerInternal;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    goto/16 :goto_0

    .line 3031
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 3032
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v19

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DockedStackDividerController;->setForceHideForDivider(Z)V

    .line 3033
    const-string v19, "MultiWindowManagerInternal"

    const-string v21, "MULTIWINDOW_DEPRESS_DIVIDER_VISIBLE_TIMEOUT: force hide Divider is false."

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto/16 :goto_1

    .line 3031
    :catchall_6
    move-exception v19

    monitor-exit v20

    throw v19

    nop

    .line 2869
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_10
    .end packed-switch
.end method
