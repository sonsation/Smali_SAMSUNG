.class public Lcom/android/launcher3/common/model/DeferredHandler$Impl;
.super Landroid/os/Handler;
.source "DeferredHandler.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/model/DeferredHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Impl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 49
    invoke-static {}, Lcom/android/launcher3/common/model/DeferredHandler;->access$000()Ljava/util/LinkedList;

    move-result-object v2

    monitor-enter v2

    .line 50
    :try_start_0
    invoke-static {}, Lcom/android/launcher3/common/model/DeferredHandler;->access$000()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 51
    monitor-exit v2

    .line 59
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-static {}, Lcom/android/launcher3/common/model/DeferredHandler;->access$000()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 54
    .local v0, "r":Ljava/lang/Runnable;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 55
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 56
    invoke-static {}, Lcom/android/launcher3/common/model/DeferredHandler;->access$000()Ljava/util/LinkedList;

    move-result-object v2

    monitor-enter v2

    .line 57
    :try_start_1
    invoke-static {}, Lcom/android/launcher3/common/model/DeferredHandler;->scheduleNextLocked()V

    .line 58
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 54
    .end local v0    # "r":Ljava/lang/Runnable;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public queueIdle()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/model/DeferredHandler$Impl;->handleMessage(Landroid/os/Message;)V

    .line 63
    const/4 v0, 0x0

    return v0
.end method
