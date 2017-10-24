.class final Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;
.super Landroid/os/Handler;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActivityStackSupervisorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 4890
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    .line 4891
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4890
    return-void
.end method


# virtual methods
.method activityIdleInternal(Lcom/android/server/am/ActivityRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v0, 0x0

    .line 4895
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4896
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->activityIdleInternalLocked(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)Lcom/android/server/am/ActivityRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 4895
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4894
    return-void

    .line 4895
    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4902
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    packed-switch v13, :pswitch_data_0

    .line 4901
    :cond_0
    :goto_0
    return-void

    .line 4904
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v14, v13, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v14

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4905
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v13, v13, Lcom/android/server/am/ActivityStackSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v8, v13, -0x1

    .local v8, "i":I
    :goto_1
    if-ltz v8, :cond_1

    .line 4906
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v13, v13, Lcom/android/server/am/ActivityStackSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActivityRecord;

    .line 4907
    .local v10, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v10}, Lcom/android/server/am/ActivityRecord;->scheduleMultiWindowModeChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4905
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .end local v10    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    monitor-exit v14

    .line 4904
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_0

    .end local v8    # "i":I
    :catchall_0
    move-exception v13

    monitor-exit v14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v13

    .line 4912
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v14, v13, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v14

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4913
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v13, v13, Lcom/android/server/am/ActivityStackSupervisor;->mPipModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v8, v13, -0x1

    .restart local v8    # "i":I
    :goto_2
    if-ltz v8, :cond_2

    .line 4914
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v13, v13, Lcom/android/server/am/ActivityStackSupervisor;->mPipModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActivityRecord;

    .line 4915
    .restart local v10    # "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v10}, Lcom/android/server/am/ActivityRecord;->schedulePictureInPictureModeChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4913
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .end local v10    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    monitor-exit v14

    .line 4912
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_0

    .end local v8    # "i":I
    :catchall_1
    move-exception v13

    monitor-exit v14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v13

    .line 4922
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v13, v13, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v13, v13, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v13, :cond_3

    .line 4923
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v13, v13, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v14, 0x0

    iput-boolean v14, v13, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 4924
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v13, v13, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v14, 0x64

    invoke-virtual {v13, v14}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 4925
    .local v9, "nmsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v13, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4926
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v13, v13, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v14, 0x2710

    invoke-virtual {v13, v9, v14, v15}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4927
    return-void

    .line 4931
    .end local v9    # "nmsg":Landroid/os/Message;
    :cond_3
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->activityIdleInternal(Lcom/android/server/am/ActivityRecord;)V

    goto/16 :goto_0

    .line 4935
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->activityIdleInternal(Lcom/android/server/am/ActivityRecord;)V

    goto/16 :goto_0

    .line 4938
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v14, v13, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v14

    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4939
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v13}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v14

    .line 4938
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :catchall_2
    move-exception v13

    monitor-exit v14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v13

    .line 4943
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v14, v13, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v14

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4944
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v13, v13, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v13}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 4945
    invoke-static {}, Lcom/android/server/am/ActivityStackSupervisor;->-get0()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v15, "Sleep timeout!  Sleeping now."

    invoke-static {v13, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4946
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v15, 0x1

    iput-boolean v15, v13, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    .line 4947
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v13}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_4
    monitor-exit v14

    .line 4943
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :catchall_3
    move-exception v13

    monitor-exit v14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v13

    .line 4952
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v13, v13, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v13, v13, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v13, :cond_5

    .line 4953
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v13, v13, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v14, 0x0

    iput-boolean v14, v13, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 4954
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v13, v13, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v14, 0x2710

    const/16 v16, 0x68

    move/from16 v0, v16

    invoke-virtual {v13, v0, v14, v15}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 4955
    return-void

    .line 4957
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v14, v13, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v14

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4958
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v13, v13, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 4959
    invoke-static {}, Lcom/android/server/am/ActivityStackSupervisor;->-get0()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v15, "Launch timeout has expired, giving up wake lock!"

    invoke-static {v13, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4964
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v13, v13, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :cond_6
    monitor-exit v14

    .line 4957
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :catchall_4
    move-exception v13

    monitor-exit v14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v13

    .line 4969
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    invoke-static {v13, v14}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap3(Lcom/android/server/am/ActivityStackSupervisor;I)V

    goto/16 :goto_0

    .line 4972
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    invoke-static {v13, v14}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap4(Lcom/android/server/am/ActivityStackSupervisor;I)V

    goto/16 :goto_0

    .line 4975
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    invoke-static {v13, v14}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap5(Lcom/android/server/am/ActivityStackSupervisor;I)V

    goto/16 :goto_0

    .line 4978
    :pswitch_a
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 4979
    .local v3, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v2, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mCallback:Landroid/app/IActivityContainerCallback;

    .line 4980
    .local v2, "callback":Landroid/app/IActivityContainerCallback;
    if-eqz v2, :cond_0

    .line 4982
    :try_start_5
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->asBinder()Landroid/os/IBinder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    const/4 v15, 0x1

    if-ne v13, v15, :cond_7

    const/4 v13, 0x1

    :goto_3
    invoke-interface {v2, v14, v13}, Landroid/app/IActivityContainerCallback;->setVisible(Landroid/os/IBinder;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 4983
    :catch_0
    move-exception v4

    .local v4, "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    .line 4982
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_7
    const/4 v13, 0x0

    goto :goto_3

    .line 4990
    .end local v2    # "callback":Landroid/app/IActivityContainerCallback;
    .end local v3    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :pswitch_b
    :try_start_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v13}, Lcom/android/server/am/ActivityStackSupervisor;->-get3(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v13

    if-nez v13, :cond_8

    .line 4991
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v14, Lcom/android/server/am/LockTaskNotify;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v15, v15, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Lcom/android/server/am/LockTaskNotify;-><init>(Landroid/content/Context;)V

    invoke-static {v13, v14}, Lcom/android/server/am/ActivityStackSupervisor;->-set1(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/LockTaskNotify;)Lcom/android/server/am/LockTaskNotify;

    .line 4993
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v13}, Lcom/android/server/am/ActivityStackSupervisor;->-get3(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/server/am/LockTaskNotify;->show(Z)V

    .line 4994
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    invoke-static {v13, v14}, Lcom/android/server/am/ActivityStackSupervisor;->-set0(Lcom/android/server/am/ActivityStackSupervisor;I)I

    .line 4995
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v13}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap2(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v13

    if-eqz v13, :cond_a

    .line 4996
    const/4 v7, 0x0

    .line 4997
    .local v7, "flags":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v13}, Lcom/android/server/am/ActivityStackSupervisor;->-get2(Lcom/android/server/am/ActivityStackSupervisor;)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_c

    .line 4998
    const/high16 v7, 0x3bf0000

    .line 5006
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v13}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap2(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v14}, Lcom/android/server/am/ActivityStackSupervisor;->-get5(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;

    move-result-object v14

    .line 5007
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v15, v15, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 5006
    invoke-interface {v13, v7, v14, v15}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 5009
    .end local v7    # "flags":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v13, v13, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v14}, Lcom/android/server/am/ActivityStackSupervisor;->-get5(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;

    move-result-object v14

    const-string/jumbo v15, "Lock-to-App"

    invoke-virtual {v13, v14, v15}, Lcom/android/server/wm/WindowManagerService;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 5010
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v13}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap0(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v13

    if-eqz v13, :cond_b

    .line 5011
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v13}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap0(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v14

    .line 5012
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    .line 5011
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v14, v0, v13, v15}, Landroid/app/admin/IDevicePolicyManager;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    .line 5015
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v13, v13, Lcom/android/server/am/ActivityStackSupervisor;->mBridge:Lcom/android/server/am/IActivityManagerServiceBridge;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v14}, Lcom/android/server/am/ActivityStackSupervisor;->-get2(Lcom/android/server/am/ActivityStackSupervisor;)I

    move-result v14

    invoke-interface {v13, v14}, Lcom/android/server/am/IActivityManagerServiceBridge;->onLockTaskModeChanged(I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 5017
    :catch_1
    move-exception v6

    .line 5018
    .local v6, "ex":Landroid/os/RemoteException;
    new-instance v13, Ljava/lang/RuntimeException;

    invoke-direct {v13, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    .line 5000
    .end local v6    # "ex":Landroid/os/RemoteException;
    .restart local v7    # "flags":I
    :cond_c
    :try_start_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v13}, Lcom/android/server/am/ActivityStackSupervisor;->-get2(Lcom/android/server/am/ActivityStackSupervisor;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_9

    .line 5001
    const/high16 v7, 0x29f0000

    goto :goto_4

    .line 5024
    .end local v7    # "flags":I
    :pswitch_c
    :try_start_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v13}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap2(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v13

    if-eqz v13, :cond_d

    .line 5025
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v13}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap2(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v14}, Lcom/android/server/am/ActivityStackSupervisor;->-get5(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;

    move-result-object v14

    .line 5026
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v15, v15, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    .line 5025
    const/16 v17, 0x0

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-interface {v13, v0, v14, v15, v1}, Lcom/android/internal/statusbar/IStatusBarService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 5028
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v13, v13, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v14}, Lcom/android/server/am/ActivityStackSupervisor;->-get5(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/server/wm/WindowManagerService;->reenableKeyguard(Landroid/os/IBinder;)V

    .line 5029
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v13}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap0(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v13

    if-eqz v13, :cond_e

    .line 5030
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v13}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap0(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v13

    .line 5031
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 5030
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v13, v15, v0, v14}, Landroid/app/admin/IDevicePolicyManager;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    .line 5033
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v13}, Lcom/android/server/am/ActivityStackSupervisor;->-get3(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v13

    if-nez v13, :cond_f

    .line 5034
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v14, Lcom/android/server/am/LockTaskNotify;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v15, v15, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Lcom/android/server/am/LockTaskNotify;-><init>(Landroid/content/Context;)V

    invoke-static {v13, v14}, Lcom/android/server/am/ActivityStackSupervisor;->-set1(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/LockTaskNotify;)Lcom/android/server/am/LockTaskNotify;

    .line 5036
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v13}, Lcom/android/server/am/ActivityStackSupervisor;->-get3(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/server/am/LockTaskNotify;->show(Z)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 5039
    :try_start_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v13, v13, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 5040
    const-string/jumbo v14, "lock_to_app_exit_locked"

    .line 5038
    invoke-static {v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_12

    const/4 v12, 0x1

    .line 5041
    .local v12, "shouldLockKeyguard":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v13}, Lcom/android/server/am/ActivityStackSupervisor;->-get2(Lcom/android/server/am/ActivityStackSupervisor;)I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_11

    if-eqz v12, :cond_11

    .line 5042
    const/4 v11, 0x0

    .line 5045
    .local v11, "rp":Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    const-string/jumbo v13, "restriction_policy"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    .line 5044
    invoke-static {v13}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v11

    .line 5047
    .local v11, "rp":Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    if-eqz v11, :cond_10

    const/4 v13, 0x0

    invoke-interface {v11, v13}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isScreenPinningAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 5048
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v13, v13, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    .line 5049
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v13, v13, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v13}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard()V

    .line 5050
    new-instance v13, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v14, v14, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v13, v14}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 5051
    const/4 v14, -0x1

    .line 5050
    invoke-virtual {v13, v14}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V
    :try_end_9
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 5062
    .end local v11    # "rp":Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    .end local v12    # "shouldLockKeyguard":Z
    :cond_11
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/android/server/am/ActivityStackSupervisor;->-set0(Lcom/android/server/am/ActivityStackSupervisor;I)I

    .line 5064
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v13, v13, Lcom/android/server/am/ActivityStackSupervisor;->mBridge:Lcom/android/server/am/IActivityManagerServiceBridge;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v14}, Lcom/android/server/am/ActivityStackSupervisor;->-get2(Lcom/android/server/am/ActivityStackSupervisor;)I

    move-result v14

    invoke-interface {v13, v14}, Lcom/android/server/am/IActivityManagerServiceBridge;->onLockTaskModeChanged(I)V

    goto/16 :goto_0

    .line 5038
    :cond_12
    const/4 v12, 0x0

    .restart local v12    # "shouldLockKeyguard":Z
    goto :goto_5

    .line 5053
    .restart local v11    # "rp":Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    :cond_13
    :try_start_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v13, v13, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v13}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard()V
    :try_end_a
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_a .. :try_end_a} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_6

    .line 5056
    .end local v11    # "rp":Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    .end local v12    # "shouldLockKeyguard":Z
    :catch_2
    move-exception v5

    .local v5, "e":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_6

    .line 5059
    .end local v5    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :catch_3
    move-exception v6

    .line 5060
    .restart local v6    # "ex":Landroid/os/RemoteException;
    :try_start_b
    new-instance v13, Ljava/lang/RuntimeException;

    invoke-direct {v13, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v13
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 5061
    .end local v6    # "ex":Landroid/os/RemoteException;
    :catchall_5
    move-exception v13

    .line 5062
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/android/server/am/ActivityStackSupervisor;->-set0(Lcom/android/server/am/ActivityStackSupervisor;I)I

    .line 5064
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v14, v14, Lcom/android/server/am/ActivityStackSupervisor;->mBridge:Lcom/android/server/am/IActivityManagerServiceBridge;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v15}, Lcom/android/server/am/ActivityStackSupervisor;->-get2(Lcom/android/server/am/ActivityStackSupervisor;)I

    move-result v15

    invoke-interface {v14, v15}, Lcom/android/server/am/IActivityManagerServiceBridge;->onLockTaskModeChanged(I)V

    .line 5061
    throw v13

    .line 5069
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v13}, Lcom/android/server/am/ActivityStackSupervisor;->-get3(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v13

    if-nez v13, :cond_14

    .line 5070
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v14, Lcom/android/server/am/LockTaskNotify;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v15, v15, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Lcom/android/server/am/LockTaskNotify;-><init>(Landroid/content/Context;)V

    invoke-static {v13, v14}, Lcom/android/server/am/ActivityStackSupervisor;->-set1(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/LockTaskNotify;)Lcom/android/server/am/LockTaskNotify;

    .line 5072
    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v13}, Lcom/android/server/am/ActivityStackSupervisor;->-get3(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v13

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Lcom/android/server/am/LockTaskNotify;->showToast(I)V

    goto/16 :goto_0

    .line 5075
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 5076
    .restart local v3    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v2, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mCallback:Landroid/app/IActivityContainerCallback;

    .line 5077
    .restart local v2    # "callback":Landroid/app/IActivityContainerCallback;
    if-eqz v2, :cond_0

    .line 5079
    :try_start_c
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->asBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-interface {v2, v13}, Landroid/app/IActivityContainerCallback;->onAllActivitiesComplete(Landroid/os/IBinder;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_0

    .line 5080
    :catch_4
    move-exception v4

    .restart local v4    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    .line 5085
    .end local v2    # "callback":Landroid/app/IActivityContainerCallback;
    .end local v3    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .end local v4    # "e":Landroid/os/RemoteException;
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v14, v13, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v14

    :try_start_d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 5086
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/IBinder;

    invoke-static {v13}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    .line 5087
    .restart local v10    # "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v10, :cond_15

    .line 5088
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v13, v10}, Lcom/android/server/am/ActivityStackSupervisor;->handleLaunchTaskBehindCompleteLocked(Lcom/android/server/am/ActivityRecord;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :cond_15
    monitor-exit v14

    .line 5085
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    .end local v10    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_6
    move-exception v13

    monitor-exit v14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v13

    .line 4902
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
