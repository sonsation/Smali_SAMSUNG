.class final Lcom/android/server/am/ActivityManagerService$LocalService;
.super Landroid/app/ActivityManagerInternal;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 26427
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/app/ActivityManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityManagerService$LocalService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$LocalService;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    return-void
.end method


# virtual methods
.method public acquireSleepToken(Ljava/lang/String;)Landroid/app/ActivityManagerInternal$SleepToken;
    .locals 10
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 26447
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26449
    const/4 v2, 0x0

    .line 26450
    .local v2, "requestedVrService":Landroid/content/ComponentName;
    const/4 v4, 0x0

    .line 26451
    .local v4, "callingVrActivity":Landroid/content/ComponentName;
    const/4 v3, -0x1

    .line 26452
    .local v3, "userId":I
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 26453
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_0

    .line 26454
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    .line 26455
    .local v2, "requestedVrService":Landroid/content/ComponentName;
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    .line 26456
    .local v4, "callingVrActivity":Landroid/content/ComponentName;
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->userId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "requestedVrService":Landroid/content/ComponentName;
    .end local v4    # "callingVrActivity":Landroid/content/ComponentName;
    :cond_0
    monitor-exit v1

    .line 26452
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 26460
    if-eqz v2, :cond_1

    .line 26461
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->-wrap3(Lcom/android/server/am/ActivityManagerService;ZLandroid/content/ComponentName;ILandroid/content/ComponentName;Z)V

    .line 26464
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 26465
    new-instance v8, Lcom/android/server/am/ActivityManagerService$SleepTokenImpl;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v8, v0, p1}, Lcom/android/server/am/ActivityManagerService$SleepTokenImpl;-><init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)V

    .line 26466
    .local v8, "token":Lcom/android/server/am/ActivityManagerService$SleepTokenImpl;
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26467
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->mEnableNetOpts:Z

    if-eqz v0, :cond_2

    .line 26468
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getLastStack()Lcom/android/server/am/ActivityStack;

    move-result-object v7

    .line 26469
    .local v7, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v7, :cond_2

    .line 26470
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 26471
    .local v6, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_2

    .line 26472
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v6, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-static {v0, v9, v5}, Lcom/android/server/am/ActivityManagerService;->-wrap9(Lcom/android/server/am/ActivityManagerService;ILjava/lang/String;)V

    .line 26476
    .end local v6    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v7    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateSleepIfNeededLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    .line 26464
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 26477
    return-object v8

    .line 26452
    .end local v8    # "token":Lcom/android/server/am/ActivityManagerService$SleepTokenImpl;
    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 26464
    :catchall_1
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 26430
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHomeActivityForUser(I)Landroid/content/ComponentName;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 26483
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 26484
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivityForUser(I)Lcom/android/server/am/ActivityRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 26485
    .local v0, "homeActivity":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_0

    :goto_0
    monitor-exit v2

    .line 26483
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 26485
    return-object v1

    :cond_0
    :try_start_1
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 26483
    .end local v0    # "homeActivity":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getTopVisibleActivities()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26535
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 26536
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getTopVisibleActivities()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    .line 26535
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 26536
    return-object v0

    .line 26535
    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public killForegroundAppsForUser(I)V
    .locals 16
    .param p1, "userHandle"    # I

    .prologue
    .line 26578
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 26579
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 26580
    .local v9, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v10}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 26581
    .local v3, "NP":I
    const/4 v8, 0x0

    .local v8, "ip":I
    :goto_0
    if-ge v8, v3, :cond_4

    .line 26582
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v10}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    .line 26583
    .local v5, "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 26584
    .local v2, "NA":I
    const/4 v7, 0x0

    .local v7, "ia":I
    :goto_1
    if-ge v7, v2, :cond_3

    .line 26585
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 26586
    .local v4, "app":Lcom/android/server/am/ProcessRecord;
    iget-boolean v10, v4, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v10, :cond_1

    .line 26584
    :cond_0
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 26590
    :cond_1
    iget-boolean v10, v4, Lcom/android/server/am/ProcessRecord;->removed:Z

    if-eqz v10, :cond_2

    .line 26591
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 26578
    .end local v2    # "NA":I
    .end local v3    # "NP":I
    .end local v4    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v5    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v7    # "ia":I
    .end local v8    # "ip":I
    .end local v9    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :catchall_0
    move-exception v10

    monitor-exit v11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v10

    .line 26592
    .restart local v2    # "NA":I
    .restart local v3    # "NP":I
    .restart local v4    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v5    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v7    # "ia":I
    .restart local v8    # "ip":I
    .restart local v9    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_2
    :try_start_1
    iget v10, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    move/from16 v0, p1

    if-ne v10, v0, :cond_0

    iget-boolean v10, v4, Lcom/android/server/am/ProcessRecord;->foregroundActivities:Z

    if-eqz v10, :cond_0

    .line 26593
    const/4 v10, 0x1

    iput-boolean v10, v4, Lcom/android/server/am/ProcessRecord;->removed:Z

    .line 26594
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 26581
    .end local v4    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 26599
    .end local v2    # "NA":I
    .end local v5    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v7    # "ia":I
    :cond_4
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 26600
    .local v1, "N":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    if-ge v6, v1, :cond_5

    .line 26601
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v13, "kill all fg"

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v12, v10, v14, v15, v13}, Lcom/android/server/am/ActivityManagerService;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26600
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    monitor-exit v11

    .line 26578
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 26577
    return-void
.end method

.method public notifyAppTransitionCancelled()V
    .locals 2

    .prologue
    .line 26528
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 26529
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->notifyAppTransitionDone()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 26528
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 26527
    return-void

    .line 26528
    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public notifyAppTransitionFinished()V
    .locals 2

    .prologue
    .line 26521
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 26522
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->notifyAppTransitionDone()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 26521
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 26520
    return-void

    .line 26521
    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public notifyAppTransitionStarting(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 26514
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 26515
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityMetricsLogger;->notifyTransitionStarting(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 26514
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 26513
    return-void

    .line 26514
    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public notifyDockedStackMinimizedChanged(Z)V
    .locals 2
    .param p1, "minimized"    # Z

    .prologue
    .line 26542
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 26543
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->setDockedStackMinimized(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 26542
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 26541
    return-void

    .line 26542
    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public notifyDockedStackMinimizedChanged(ZILandroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "minimized"    # Z
    .param p2, "taskId"    # I
    .param p3, "screenShot"    # Landroid/graphics/Bitmap;

    .prologue
    .line 26551
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 26552
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, p1}, Lcom/android/server/am/ActivityStackSupervisor;->setDockedStackMinimized(Z)V

    .line 26553
    const/4 v5, -0x1

    if-eq p2, v5, :cond_0

    if-eqz p3, :cond_0

    .line 26554
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 26555
    .local v0, "dockedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v4

    .line 26556
    :goto_0
    if-eqz v4, :cond_0

    .line 26557
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "taskNdx":I
    :goto_1
    if-ltz v3, :cond_0

    .line 26558
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 26559
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    iget v5, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v5, p2, :cond_2

    .line 26560
    invoke-virtual {v2, p3}, Lcom/android/server/am/TaskRecord;->setLastThumbnailLocked(Landroid/graphics/Bitmap;)Z

    .line 26561
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 26562
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_0

    .line 26563
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/android/server/am/ActivityRecord;->mUpdateTaskThumbnailWhenHidden:Z

    .line 26570
    .end local v0    # "dockedStack":Lcom/android/server/am/ActivityStack;
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    .end local v3    # "taskNdx":I
    :cond_0
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    invoke-interface {v5, p1}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->notifyDockedStackMinimizedChange(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 26551
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 26549
    return-void

    .line 26555
    .restart local v0    # "dockedStack":Lcom/android/server/am/ActivityStack;
    :cond_1
    const/4 v4, 0x0

    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    goto :goto_0

    .line 26557
    .end local v4    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .restart local v2    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v3    # "taskNdx":I
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 26551
    .end local v0    # "dockedStack":Lcom/android/server/am/ActivityStack;
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    .end local v3    # "taskNdx":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5
.end method

.method public notifyStartingWindowDrawn()V
    .locals 2

    .prologue
    .line 26507
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 26508
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityMetricsLogger;->notifyStartingWindowDrawn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 26507
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 26506
    return-void

    .line 26507
    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public onLocalVoiceInteractionStarted(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 2
    .param p1, "activity"    # Landroid/os/IBinder;
    .param p2, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p3, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    .prologue
    .line 26499
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 26500
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->onLocalVoiceInteractionStartedLocked(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 26499
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 26498
    return-void

    .line 26499
    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public onUserRemoved(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 26491
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 26492
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->onUserStoppedLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 26491
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 26490
    return-void

    .line 26491
    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public onWakefulnessChanged(I)V
    .locals 1
    .param p1, "wakefulness"    # I

    .prologue
    .line 26435
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->onWakefulnessChanged(I)V

    .line 26434
    return-void
.end method

.method public setPendingIntentWhitelistDuration(Landroid/content/IIntentSender;J)V
    .locals 4
    .param p1, "target"    # Landroid/content/IIntentSender;
    .param p2, "duration"    # J

    .prologue
    .line 26608
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    if-nez v0, :cond_0

    .line 26609
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "markAsSentFromNotification(): not a PendingIntentRecord: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26610
    return-void

    .line 26612
    :cond_0
    check-cast p1, Lcom/android/server/am/PendingIntentRecord;

    .end local p1    # "target":Landroid/content/IIntentSender;
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/PendingIntentRecord;->setWhitelistDuration(J)V

    .line 26607
    return-void
.end method

.method public startIsolatedProcess(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)I
    .locals 7
    .param p1, "entryPoint"    # Ljava/lang/String;
    .param p2, "entryPointArgs"    # [Ljava/lang/String;
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "abiOverride"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "crashHandler"    # Ljava/lang/Runnable;

    .prologue
    .line 26441
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerService;->startIsolatedProcess(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)I

    move-result v0

    return v0
.end method
