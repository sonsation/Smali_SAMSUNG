.class Lcom/android/server/am/SchedPolicyManager$ScpmUpdateThread;
.super Ljava/lang/Thread;
.source "SchedPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SchedPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScpmUpdateThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/SchedPolicyManager;

.field what:I


# direct methods
.method constructor <init>(Lcom/android/server/am/SchedPolicyManager;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/SchedPolicyManager;
    .param p2, "_what"    # I

    .prologue
    .line 490
    iput-object p1, p0, Lcom/android/server/am/SchedPolicyManager$ScpmUpdateThread;->this$0:Lcom/android/server/am/SchedPolicyManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput p2, p0, Lcom/android/server/am/SchedPolicyManager$ScpmUpdateThread;->what:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 494
    iget v2, p0, Lcom/android/server/am/SchedPolicyManager$ScpmUpdateThread;->what:I

    packed-switch v2, :pswitch_data_0

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 496
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/am/SchedPolicyManager$ScpmUpdateThread;->this$0:Lcom/android/server/am/SchedPolicyManager;

    invoke-static {v2}, Lcom/android/server/am/SchedPolicyManager;->-wrap3(Lcom/android/server/am/SchedPolicyManager;)V

    .line 497
    iget-object v2, p0, Lcom/android/server/am/SchedPolicyManager$ScpmUpdateThread;->this$0:Lcom/android/server/am/SchedPolicyManager;

    invoke-static {v2}, Lcom/android/server/am/SchedPolicyManager;->-get0(Lcom/android/server/am/SchedPolicyManager;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 498
    iget-object v2, p0, Lcom/android/server/am/SchedPolicyManager$ScpmUpdateThread;->this$0:Lcom/android/server/am/SchedPolicyManager;

    invoke-static {v2}, Lcom/android/server/am/SchedPolicyManager;->-get0(Lcom/android/server/am/SchedPolicyManager;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 499
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v2, p0, Lcom/android/server/am/SchedPolicyManager$ScpmUpdateThread;->this$0:Lcom/android/server/am/SchedPolicyManager;

    invoke-virtual {v2, v0}, Lcom/android/server/am/SchedPolicyManager;->applyPolicyToRecord(Lcom/android/server/am/ProcessRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 497
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v1    # "app$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .restart local v1    # "app$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_0

    .line 503
    .end local v1    # "app$iterator":Ljava/util/Iterator;
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/am/SchedPolicyManager$ScpmUpdateThread;->this$0:Lcom/android/server/am/SchedPolicyManager;

    invoke-static {v2}, Lcom/android/server/am/SchedPolicyManager;->-wrap0(Lcom/android/server/am/SchedPolicyManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 504
    iget-object v2, p0, Lcom/android/server/am/SchedPolicyManager$ScpmUpdateThread;->this$0:Lcom/android/server/am/SchedPolicyManager;

    invoke-static {v2}, Lcom/android/server/am/SchedPolicyManager;->-wrap2(Lcom/android/server/am/SchedPolicyManager;)V

    goto :goto_0

    .line 494
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
