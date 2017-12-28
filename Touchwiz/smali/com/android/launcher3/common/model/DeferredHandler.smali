.class public Lcom/android/launcher3/common/model/DeferredHandler;
.super Ljava/lang/Object;
.source "DeferredHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/model/DeferredHandler$IdleRunnable;,
        Lcom/android/launcher3/common/model/DeferredHandler$Impl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DeferredHandler"

.field private static sHandler:Lcom/android/launcher3/common/model/DeferredHandler$Impl;

.field private static sMessageQueue:Landroid/os/MessageQueue;

.field private static sPendingQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static sQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher3/LauncherModel$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mModel:Lcom/android/launcher3/LauncherModel;

.field private mStartFlushPendingQueue:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/model/DeferredHandler;->sQueue:Ljava/util/LinkedList;

    .line 39
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/model/DeferredHandler;->sMessageQueue:Landroid/os/MessageQueue;

    .line 40
    new-instance v0, Lcom/android/launcher3/common/model/DeferredHandler$Impl;

    invoke-direct {v0}, Lcom/android/launcher3/common/model/DeferredHandler$Impl;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/model/DeferredHandler;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler$Impl;

    .line 44
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/model/DeferredHandler;->sPendingQueue:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/model/DeferredHandler;->mStartFlushPendingQueue:Z

    .line 80
    return-void
.end method

.method static synthetic access$000()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/launcher3/common/model/DeferredHandler;->sQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static scheduleNextLocked()V
    .locals 3

    .prologue
    .line 173
    sget-object v1, Lcom/android/launcher3/common/model/DeferredHandler;->sQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 174
    sget-object v1, Lcom/android/launcher3/common/model/DeferredHandler;->sQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 175
    .local v0, "peek":Ljava/lang/Runnable;
    instance-of v1, v0, Lcom/android/launcher3/common/model/DeferredHandler$IdleRunnable;

    if-eqz v1, :cond_1

    .line 176
    sget-object v1, Lcom/android/launcher3/common/model/DeferredHandler;->sMessageQueue:Landroid/os/MessageQueue;

    sget-object v2, Lcom/android/launcher3/common/model/DeferredHandler;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler$Impl;

    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    sget-object v1, Lcom/android/launcher3/common/model/DeferredHandler;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler$Impl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/model/DeferredHandler$Impl;->sendEmptyMessage(I)Z

    goto :goto_0
.end method


# virtual methods
.method public cancelAll()V
    .locals 2

    .prologue
    .line 147
    sget-object v1, Lcom/android/launcher3/common/model/DeferredHandler;->sQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 148
    :try_start_0
    sget-object v0, Lcom/android/launcher3/common/model/DeferredHandler;->sQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 149
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    sget-object v1, Lcom/android/launcher3/common/model/DeferredHandler;->sPendingQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 151
    :try_start_1
    sget-object v0, Lcom/android/launcher3/common/model/DeferredHandler;->sPendingQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 152
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 153
    return-void

    .line 149
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 152
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public flush()V
    .locals 4

    .prologue
    .line 159
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 160
    .local v0, "queue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Runnable;>;"
    sget-object v3, Lcom/android/launcher3/common/model/DeferredHandler;->sQueue:Ljava/util/LinkedList;

    monitor-enter v3

    .line 161
    :try_start_0
    sget-object v2, Lcom/android/launcher3/common/model/DeferredHandler;->sPendingQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 162
    sget-object v2, Lcom/android/launcher3/common/model/DeferredHandler;->sPendingQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 164
    sget-object v2, Lcom/android/launcher3/common/model/DeferredHandler;->sQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 165
    sget-object v2, Lcom/android/launcher3/common/model/DeferredHandler;->sQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 166
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 168
    .local v1, "r":Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 166
    .end local v1    # "r":Ljava/lang/Runnable;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 170
    :cond_0
    return-void
.end method

.method public flushPendingQueue()V
    .locals 6

    .prologue
    .line 119
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 120
    .local v0, "queue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Runnable;>;"
    sget-object v3, Lcom/android/launcher3/common/model/DeferredHandler;->sPendingQueue:Ljava/util/LinkedList;

    monitor-enter v3

    .line 121
    :try_start_0
    sget-object v2, Lcom/android/launcher3/common/model/DeferredHandler;->sPendingQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 122
    sget-object v2, Lcom/android/launcher3/common/model/DeferredHandler;->sPendingQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 123
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 125
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 126
    .local v1, "r":Ljava/lang/Runnable;
    sget-object v3, Lcom/android/launcher3/common/model/DeferredHandler;->sQueue:Ljava/util/LinkedList;

    monitor-enter v3

    .line 127
    :try_start_1
    sget-object v4, Lcom/android/launcher3/common/model/DeferredHandler;->sQueue:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 128
    sget-object v4, Lcom/android/launcher3/common/model/DeferredHandler;->sQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 129
    invoke-static {}, Lcom/android/launcher3/common/model/DeferredHandler;->scheduleNextLocked()V

    .line 131
    :cond_0
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 123
    .end local v1    # "r":Ljava/lang/Runnable;
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 134
    :cond_1
    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 91
    iget-object v1, p0, Lcom/android/launcher3/common/model/DeferredHandler;->mModel:Lcom/android/launcher3/LauncherModel;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/common/model/DeferredHandler;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->isModelIdle()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    sget-object v2, Lcom/android/launcher3/common/model/DeferredHandler;->sPendingQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/common/model/DeferredHandler;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/android/launcher3/common/model/DeferredHandler;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherModel$Callbacks;

    .line 95
    .local v0, "callbacks":Lcom/android/launcher3/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/launcher3/LauncherModel$Callbacks;->isTrayAnimating()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    sget-object v1, Lcom/android/launcher3/common/model/DeferredHandler;->sPendingQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 97
    const-string v1, "DeferredHandler"

    const-string v3, "tray animating. add pendingQueue"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    monitor-exit v2

    .line 116
    .end local v0    # "callbacks":Lcom/android/launcher3/LauncherModel$Callbacks;
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-boolean v1, p0, Lcom/android/launcher3/common/model/DeferredHandler;->mStartFlushPendingQueue:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/launcher3/common/model/DeferredHandler;->sPendingQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 103
    sget-object v1, Lcom/android/launcher3/common/model/DeferredHandler;->sPendingQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 104
    const-string v1, "DeferredHandler"

    const-string v3, "tray animating end. but pendingQueue is not flush yet."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    monitor-exit v2

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    :cond_2
    sget-object v2, Lcom/android/launcher3/common/model/DeferredHandler;->sQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 111
    :try_start_2
    sget-object v1, Lcom/android/launcher3/common/model/DeferredHandler;->sQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v1, Lcom/android/launcher3/common/model/DeferredHandler;->sQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 113
    invoke-static {}, Lcom/android/launcher3/common/model/DeferredHandler;->scheduleNextLocked()V

    .line 115
    :cond_3
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public postIdle(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 143
    new-instance v0, Lcom/android/launcher3/common/model/DeferredHandler$IdleRunnable;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/common/model/DeferredHandler$IdleRunnable;-><init>(Lcom/android/launcher3/common/model/DeferredHandler;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 144
    return-void
.end method

.method public setCallbacks(Lcom/android/launcher3/LauncherModel;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .param p1, "model"    # Lcom/android/launcher3/LauncherModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/LauncherModel;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher3/LauncherModel$Callbacks;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p2, "callbacks":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/launcher3/LauncherModel$Callbacks;>;"
    iput-object p1, p0, Lcom/android/launcher3/common/model/DeferredHandler;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 84
    iput-object p2, p0, Lcom/android/launcher3/common/model/DeferredHandler;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 85
    return-void
.end method

.method public startPendingQueueFlush(Z)V
    .locals 0
    .param p1, "flushStart"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/launcher3/common/model/DeferredHandler;->mStartFlushPendingQueue:Z

    .line 138
    return-void
.end method
