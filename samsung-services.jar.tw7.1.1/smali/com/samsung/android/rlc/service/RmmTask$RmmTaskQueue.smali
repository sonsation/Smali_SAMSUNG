.class public Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;
.super Ljava/lang/Object;
.source "RmmTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/rlc/service/RmmTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RmmTaskQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;
    }
.end annotation


# instance fields
.field private queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/samsung/android/rlc/service/RmmTask$RmmTaskObject;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/rlc/service/RmmTask;

.field private thread:Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method public constructor <init>(Lcom/samsung/android/rlc/service/RmmTask;Landroid/content/Context;Ljava/util/concurrent/BlockingQueue;)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/rlc/service/RmmTask;
    .param p2, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/samsung/android/rlc/service/RmmTask$RmmTaskObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "Que":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/samsung/android/rlc/service/RmmTask$RmmTaskObject;>;"
    const/4 v1, 0x0

    .line 411
    iput-object p1, p0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;->this$0:Lcom/samsung/android/rlc/service/RmmTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    iput-object v1, p0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 392
    iput-object v1, p0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;->thread:Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;

    .line 413
    :try_start_0
    iput-object p3, p0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 414
    invoke-static {p1, p2}, Lcom/samsung/android/rlc/service/RmmTask;->-set0(Lcom/samsung/android/rlc/service/RmmTask;Landroid/content/Context;)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :goto_0
    return-void

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized add(Lcom/samsung/android/rlc/service/RmmTask$RmmTaskObject;)V
    .locals 4
    .param p1, "intent"    # Lcom/samsung/android/rlc/service/RmmTask$RmmTaskObject;

    .prologue
    monitor-enter p0

    .line 396
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;->thread:Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;->thread:Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 397
    :cond_0
    sget-object v1, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    const-string v2, "[RmmTask] Thread is null"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    new-instance v1, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;

    invoke-direct {v1, p0}, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;-><init>(Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;)V

    iput-object v1, p0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;->thread:Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;

    .line 399
    iget-object v1, p0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;->thread:Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 408
    :goto_0
    :try_start_2
    sget-object v1, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RmmTask] queue size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 394
    return-void

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
