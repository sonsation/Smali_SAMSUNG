.class Lcom/android/server/am/ActivityManagerService$3;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 2875
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 44
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2878
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 2877
    return-void

    .line 2880
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v40

    .line 2881
    .local v40, "start":J
    const/16 v31, 0x0

    .line 2882
    .local v31, "memInfo":Lcom/android/internal/util/MemInfoReader;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2883
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mFullPssPending:Z

    if-eqz v2, :cond_0

    .line 2884
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/am/ActivityManagerService;->mFullPssPending:Z

    .line 2885
    new-instance v31, Lcom/android/internal/util/MemInfoReader;

    .end local v31    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    invoke-direct/range {v31 .. v31}, Lcom/android/internal/util/MemInfoReader;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    .line 2882
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2888
    if-eqz v31, :cond_5

    .line 2889
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 2890
    const-wide/16 v12, 0x0

    .line 2891
    .local v12, "nativeTotalPss":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v3

    .line 2892
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v14

    .line 2893
    .local v14, "N":I
    const/16 v30, 0x0

    .local v30, "j":I
    :goto_0
    move/from16 v0, v30

    if-ge v0, v14, :cond_4

    .line 2894
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    move/from16 v0, v30

    invoke-virtual {v2, v0}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v38

    .line 2895
    .local v38, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move-object/from16 v0, v38

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_1

    move-object/from16 v0, v38

    iget v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v4, 0x2710

    if-lt v2, v4, :cond_2

    .line 2893
    :cond_1
    :goto_1
    add-int/lit8 v30, v30, 0x1

    goto :goto_0

    .line 2882
    .end local v12    # "nativeTotalPss":J
    .end local v14    # "N":I
    .end local v30    # "j":I
    .end local v38    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :catchall_0
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 2899
    .restart local v12    # "nativeTotalPss":J
    .restart local v14    # "N":I
    .restart local v30    # "j":I
    .restart local v38    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2900
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    move-object/from16 v0, v38

    iget v5, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->indexOfKey(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v2

    if-ltz v2, :cond_3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 2891
    .end local v14    # "N":I
    .end local v30    # "j":I
    .end local v38    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v14    # "N":I
    .restart local v30    # "j":I
    .restart local v38    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_3
    :try_start_5
    monitor-exit v4

    .line 2905
    move-object/from16 v0, v38

    iget v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v4

    add-long/2addr v12, v4

    goto :goto_1

    .line 2899
    :catchall_2
    move-exception v2

    monitor-exit v4

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v38    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_4
    monitor-exit v3

    .line 2908
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 2909
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v15

    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2912
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v26

    .line 2913
    .local v26, "cachedKb":J
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v28

    .line 2914
    .local v28, "freeKb":J
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v42

    .line 2915
    .local v42, "zramKb":J
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v32

    .line 2916
    .local v32, "kernelKb":J
    const-wide/16 v2, 0x400

    mul-long v2, v2, v26

    const-wide/16 v4, 0x400

    mul-long v4, v4, v28

    const-wide/16 v6, 0x400

    mul-long v6, v6, v42

    .line 2917
    const-wide/16 v8, 0x400

    mul-long v8, v8, v32

    const-wide/16 v10, 0x400

    mul-long/2addr v10, v12

    .line 2916
    invoke-static/range {v2 .. v11}, Lcom/android/server/am/EventLogTags;->writeAmMeminfo(JJJJJ)V

    .line 2918
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    move-wide/from16 v4, v26

    move-wide/from16 v6, v28

    move-wide/from16 v8, v42

    move-wide/from16 v10, v32

    invoke-virtual/range {v3 .. v13}, Lcom/android/server/am/ProcessStatsService;->addSysMemUsageLocked(JJJJJ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    monitor-exit v15

    .line 2909
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2923
    .end local v12    # "nativeTotalPss":J
    .end local v14    # "N":I
    .end local v26    # "cachedKb":J
    .end local v28    # "freeKb":J
    .end local v30    # "j":I
    .end local v32    # "kernelKb":J
    .end local v42    # "zramKb":J
    :cond_5
    const/16 v36, 0x0

    .line 2924
    .local v36, "num":I
    const/4 v2, 0x2

    new-array v0, v2, [J

    move-object/from16 v39, v0

    .line 2930
    .local v39, "tmp":[J
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2931
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_8

    .line 2932
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mTestPssMode:Z

    if-nez v2, :cond_7

    .line 2935
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    monitor-exit v3

    .line 2930
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2936
    return-void

    .line 2909
    .end local v36    # "num":I
    .end local v39    # "tmp":[J
    .restart local v12    # "nativeTotalPss":J
    .restart local v14    # "N":I
    .restart local v30    # "j":I
    :catchall_3
    move-exception v2

    monitor-exit v15

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 2932
    .end local v12    # "nativeTotalPss":J
    .end local v14    # "N":I
    .end local v30    # "j":I
    .restart local v36    # "num":I
    .restart local v39    # "tmp":[J
    :cond_7
    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get1()Ljava/lang/String;

    move-result-object v2

    .line 2933
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Collected PSS of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " processes in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2934
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v40

    .line 2933
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2934
    const-string/jumbo v5, "ms"

    .line 2933
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2932
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_3

    .line 2930
    :catchall_4
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 2938
    :cond_8
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/ProcessRecord;

    .line 2939
    .local v16, "proc":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    move/from16 v17, v0

    .line 2940
    .local v17, "procState":I
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    move-wide/from16 v34, v0

    .line 2941
    .local v34, "lastPssTime":J
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_a

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    move/from16 v0, v17

    if-ne v0, v2, :cond_a

    .line 2942
    const-wide/16 v4, 0x3e8

    add-long v4, v4, v34

    .line 2943
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2942
    cmp-long v2, v4, v6

    if-gez v2, :cond_a

    .line 2944
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v37, v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .end local v16    # "proc":Lcom/android/server/am/ProcessRecord;
    .local v37, "pid":I
    :goto_4
    monitor-exit v3

    .line 2930
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2950
    if-eqz v16, :cond_6

    .line 2951
    const/4 v2, 0x0

    move/from16 v0, v37

    move-object/from16 v1, v39

    invoke-static {v0, v1, v2}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v18

    .line 2952
    .local v18, "pss":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2953
    const-wide/16 v4, 0x0

    cmp-long v2, v18, v4

    if-eqz v2, :cond_9

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_9

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    move/from16 v0, v17

    if-ne v2, v0, :cond_9

    .line 2954
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v0, v37

    if-ne v2, v0, :cond_9

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    cmp-long v2, v4, v34

    if-nez v2, :cond_9

    .line 2955
    add-int/lit8 v36, v36, 0x1

    .line 2956
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    aget-wide v20, v39, v2

    const/4 v2, 0x1

    aget-wide v22, v39, v2

    .line 2957
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    .line 2956
    invoke-virtual/range {v15 .. v25}, Lcom/android/server/am/ActivityManagerService;->recordPssSampleLocked(Lcom/android/server/am/ProcessRecord;IJJJJ)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :cond_9
    monitor-exit v3

    .line 2952
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_2

    .line 2946
    .end local v18    # "pss":J
    .end local v37    # "pid":I
    .restart local v16    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_a
    const/16 v16, 0x0

    .line 2947
    .local v16, "proc":Lcom/android/server/am/ProcessRecord;
    const/16 v37, 0x0

    .restart local v37    # "pid":I
    goto :goto_4

    .line 2952
    .end local v16    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v18    # "pss":J
    :catchall_5
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 2878
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
