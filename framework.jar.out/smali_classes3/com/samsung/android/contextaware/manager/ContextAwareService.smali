.class public Lcom/samsung/android/contextaware/manager/ContextAwareService;
.super Lcom/samsung/android/contextaware/manager/IContextAwareService$Stub;
.source "ContextAwareService.java"

# interfaces
.implements Lcom/samsung/android/contextaware/manager/IContextObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;,
        Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;,
        Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;
    }
.end annotation


# static fields
.field public static final BINDER_DIED_OPERATION:I = 0x3

.field public static final NORMAL_OPERATION:I = 0x1

.field private static final NOTIFY_WATING_TIME:I = 0x6

.field public static final RESTORE_OPERATION:I = 0x2


# instance fields
.field private handlerThread:Landroid/os/HandlerThread;

.field private volatile isVersionSetting:Z

.field private mAutoTest:Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;

.field private mCmdProcessResultNotifyCompletion:Z

.field private mContextCollectionResultNotifyCompletion:Z

.field private mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

.field private mMutex:Ljava/util/concurrent/locks/ReentrantLock;

.field private mServiceHandler:Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;

.field private mVersion:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/contextaware/manager/ContextAwareService;)Lcom/samsung/android/contextaware/manager/ContextManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/contextaware/manager/ContextAwareService;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/contextaware/manager/ContextAwareService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mCmdProcessResultNotifyCompletion:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/contextaware/manager/ContextAwareService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextCollectionResultNotifyCompletion:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 99
    invoke-direct {p0}, Lcom/samsung/android/contextaware/manager/IContextAwareService$Stub;-><init>()V

    .line 79
    iput-boolean v3, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mCmdProcessResultNotifyCompletion:Z

    .line 82
    iput-boolean v3, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextCollectionResultNotifyCompletion:Z

    .line 85
    iput v3, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mVersion:I

    .line 88
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->isVersionSetting:Z

    .line 90
    iput-object v4, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->handlerThread:Landroid/os/HandlerThread;

    .line 105
    new-instance v1, Landroid/os/HandlerThread;

    .line 106
    const-string/jumbo v2, "context_aware"

    .line 105
    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->handlerThread:Landroid/os/HandlerThread;

    .line 107
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 109
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 110
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    .line 111
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 112
    iput-object v4, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->handlerThread:Landroid/os/HandlerThread;

    .line 113
    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_LOOPER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 115
    return-void

    .line 118
    :cond_0
    new-instance v1, Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;-><init>(Lcom/samsung/android/contextaware/manager/ContextAwareService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mServiceHandler:Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;

    .line 120
    new-instance v1, Lcom/samsung/android/contextaware/manager/ContextManager;

    iget v2, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mVersion:I

    invoke-direct {v1, p1, v0, v2}, Lcom/samsung/android/contextaware/manager/ContextManager;-><init>(Landroid/content/Context;Landroid/os/Looper;I)V

    iput-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    .line 122
    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;

    invoke-direct {v1, p1}, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mAutoTest:Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;

    .line 123
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1, v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    .line 125
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v1

    .line 126
    iget-object v2, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/ContextManager;->getCreator()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    .line 125
    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->setCreator(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 128
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->initializeManager(Lcom/samsung/android/contextaware/manager/ContextManager;)V

    .line 98
    return-void
.end method

.method private displayUsedCountForService(I)V
    .locals 3
    .param p1, "service"    # I

    .prologue
    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "totalCnt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 537
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v1

    .line 538
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    .line 537
    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getUsedTotalCount(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 536
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 539
    const-string/jumbo v1, ", serviceCount = "

    .line 536
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 540
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v1

    .line 541
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    .line 540
    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getUsedServiceCount(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 536
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 542
    const-string/jumbo v1, ", subCollectionCount = "

    .line 536
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 543
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v1

    .line 545
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    .line 543
    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getUsedSubCollectionCount(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 536
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 535
    return-void
.end method

.method private doCommendProcess(Ljava/lang/String;Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V
    .locals 6
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .param p3, "service"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 405
    invoke-static {}, Lcom/samsung/android/contextaware/InterruptModeContextList;->getInstance()Lcom/samsung/android/contextaware/InterruptModeContextList;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/samsung/android/contextaware/InterruptModeContextList;->isInterruptModeType(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 407
    const-string/jumbo v0, "REGISTER_CMD_RESTORE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->isUsableService(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    :cond_0
    const-string/jumbo v0, "UNREGISTER_CMD_RESTORE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 413
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->isUsableService(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)Z

    move-result v0

    .line 412
    if-eqz v0, :cond_2

    .line 414
    return-void

    .line 409
    :cond_1
    return-void

    .line 418
    :cond_2
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v0

    .line 419
    invoke-static {p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->-get0(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;

    move-result-object v1

    .line 418
    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->registerCmdProcessResultManager(Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;)V

    .line 421
    const-string/jumbo v0, "REGISTER_CMD_RESTORE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 422
    invoke-static {p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->-get1(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 423
    invoke-static {p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->-get1(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    :cond_3
    invoke-virtual {p2, p3}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->increaseServiceCount(I)V

    .line 426
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1, p0, v5}, Lcom/samsung/android/contextaware/manager/ContextManager;->start(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;Ljava/lang/String;Lcom/samsung/android/contextaware/manager/IContextObserver;I)V

    .line 439
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->waitForNotifyOperationCheckResult()Z

    move-result v0

    if-nez v0, :cond_5

    .line 440
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_TIME_OUT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 442
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->setRestoreEnable()V

    .line 444
    :cond_5
    const-string/jumbo v0, "complete notify the operation result."

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 446
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->isRestoreEnable()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 447
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->runRestore(Ljava/lang/String;Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;ILcom/samsung/android/contextaware/manager/IContextObserver;)V

    .line 404
    :cond_6
    :goto_1
    return-void

    .line 428
    :cond_7
    const-string/jumbo v0, "UNREGISTER_CMD_RESTORE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 429
    invoke-static {p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->-get1(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 430
    invoke-virtual {p2, p3}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->decreaseServiceCount(I)V

    .line 431
    invoke-static {p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->-get1(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_8

    .line 432
    invoke-static {p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->-get1(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    .line 436
    const/4 v4, 0x0

    move-object v1, p2

    move-object v3, p0

    .line 435
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/contextaware/manager/ContextManager;->stop(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;Ljava/lang/String;Lcom/samsung/android/contextaware/manager/IContextObserver;Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;I)V

    goto :goto_0

    .line 449
    :cond_9
    const-string/jumbo v0, "REGISTER_CMD_RESTORE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 450
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextManager;->notifyInitContext(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private isUsableService(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)Z
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .param p2, "service"    # I

    .prologue
    .line 1072
    invoke-static {p1}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->-get1(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showListenerList()V
    .locals 9

    .prologue
    .line 377
    const-string/jumbo v7, "===== Context Aware Service List ====="

    invoke-static {v7}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 378
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getListenerList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 379
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    .line 378
    if-eqz v7, :cond_1

    .line 380
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    .line 381
    .local v4, "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    invoke-static {v4}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->-get1(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 382
    .local v6, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 383
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    move-object v3, v2

    .local v3, "j":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 384
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 385
    .local v5, "service":I
    invoke-static {v4}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->-get1(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 386
    .local v0, "count":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Listener : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", Service : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 387
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v8

    .line 386
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 388
    const-string/jumbo v8, "("

    .line 386
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 388
    const-string/jumbo v8, ")"

    .line 386
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 376
    .end local v0    # "count":I
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3    # "j":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v4    # "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .end local v5    # "service":I
    .end local v6    # "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_1
    return-void
.end method

.method private waitForNotifyOperationCheckResult()Z
    .locals 4

    .prologue
    .line 554
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x258

    if-ge v1, v2, :cond_0

    .line 556
    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 557
    iget-boolean v2, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mCmdProcessResultNotifyCompletion:Z

    if-eqz v2, :cond_1

    .line 558
    iget-boolean v2, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextCollectionResultNotifyCompletion:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    if-eqz v2, :cond_1

    .line 559
    const/4 v2, 0x1

    return v2

    .line 561
    :catch_0
    move-exception v0

    .line 562
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    .line 567
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 554
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 133
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 135
    :cond_0
    iput-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->handlerThread:Landroid/os/HandlerThread;

    .line 132
    return-void
.end method

.method public final getContextInfo(Landroid/os/IBinder;I)V
    .locals 8
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "service"    # I

    .prologue
    const/4 v7, 0x1

    .line 465
    iget-object v3, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 468
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[getContext 01] Mutex is locked for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 469
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v4

    .line 468
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 471
    const/4 v1, 0x0

    .line 472
    .local v1, "isListener":Z
    const/4 v2, 0x0

    .line 474
    .local v2, "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mCmdProcessResultNotifyCompletion:Z

    .line 475
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextCollectionResultNotifyCompletion:Z

    .line 477
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getListenerList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 478
    .end local v2    # "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    .line 477
    if-eqz v3, :cond_2

    .line 479
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    .line 480
    .local v2, "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->-get2(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 483
    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->-get1(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 484
    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->-get1(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    :cond_1
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v3

    .line 489
    new-instance v4, Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;

    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->-get2(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Landroid/os/IBinder;

    move-result-object v5

    .line 490
    iget-object v6, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mServiceHandler:Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;

    .line 489
    invoke-direct {v4, v5, v6}, Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;-><init>(Landroid/os/IBinder;Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;)V

    .line 487
    invoke-virtual {v3, v4}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->registerCmdProcessResultManager(Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;)V

    .line 491
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->addListener(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)V

    .line 493
    iget-object v3, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4, p0}, Lcom/samsung/android/contextaware/manager/ContextManager;->getContextInfo(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;Ljava/lang/String;Lcom/samsung/android/contextaware/manager/IContextObserver;)V

    .line 495
    const/4 v1, 0x1

    .line 499
    .end local v2    # "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    :cond_2
    if-nez v1, :cond_5

    .line 500
    sget-object v3, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_LISTENER_NOT_REGISTERED:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 507
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p0}, Lcom/samsung/android/contextaware/manager/ContextManager;->unregisterObservers(Ljava/lang/String;Lcom/samsung/android/contextaware/manager/IContextObserver;)V

    .line 510
    if-eqz v2, :cond_4

    .line 511
    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->-get1(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    if-ne v3, v7, :cond_6

    .line 512
    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->-get1(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 511
    if-eqz v3, :cond_6

    .line 513
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->removeListener(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)V

    .line 519
    :cond_4
    :goto_1
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->unregisterCmdProcessResultManager()V

    .line 522
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[getContext 02] Mutex is unlocked for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 523
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v4

    .line 522
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    iget-object v3, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 463
    return-void

    .line 502
    :cond_5
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->waitForNotifyOperationCheckResult()Z

    move-result v3

    if-nez v3, :cond_3

    .line 503
    sget-object v3, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_TIME_OUT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 524
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v1    # "isListener":Z
    :catchall_0
    move-exception v3

    .line 525
    iget-object v4, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 524
    throw v3

    .line 514
    .restart local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v1    # "isListener":Z
    :cond_6
    :try_start_2
    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->-get1(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 515
    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->-get1(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public final getVersion()I
    .locals 1

    .prologue
    .line 1189
    iget v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mVersion:I

    return v0
.end method

.method public final initializeAutoTest()V
    .locals 1

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mAutoTest:Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->initilizeAutoTest()V

    .line 1099
    return-void
.end method

.method public final registerCallback(Landroid/os/IBinder;I)V
    .locals 7
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "service"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v4, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 155
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[regi 01] Mutex is locked for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 156
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v5

    .line 155
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->initializeRestoreManager()V

    .line 159
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mCmdProcessResultNotifyCompletion:Z

    .line 160
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextCollectionResultNotifyCompletion:Z

    .line 161
    const/4 v1, 0x0

    .line 163
    .local v1, "isExistListener":Z
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getListenerList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 164
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    .line 163
    if-eqz v4, :cond_1

    .line 165
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    .line 166
    .local v3, "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    invoke-static {v3}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->-get2(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 169
    const-string/jumbo v4, "REGISTER_CMD_RESTORE"

    invoke-direct {p0, v4, v3, p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->doCommendProcess(Ljava/lang/String;Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V

    .line 171
    const/4 v1, 0x1

    .line 175
    .end local v3    # "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    :cond_1
    if-nez v1, :cond_2

    .line 176
    new-instance v2, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;-><init>(Lcom/samsung/android/contextaware/manager/ContextAwareService;Landroid/os/IBinder;)V

    .line 177
    .local v2, "listener":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    new-instance v4, Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;

    .line 178
    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->-get2(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Landroid/os/IBinder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mServiceHandler:Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;

    .line 177
    invoke-direct {v4, v5, v6}, Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;-><init>(Landroid/os/IBinder;Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;)V

    invoke-static {v2, v4}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->-set0(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;)Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;

    .line 179
    const/4 v4, 0x0

    invoke-interface {p1, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 180
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->addListener(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)V

    .line 181
    const-string/jumbo v4, "REGISTER_CMD_RESTORE"

    invoke-direct {p0, v4, v2, p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->doCommendProcess(Ljava/lang/String;Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V

    .line 185
    .end local v2    # "listener":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    :cond_2
    invoke-direct {p0, p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->displayUsedCountForService(I)V

    .line 186
    invoke-direct {p0}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->showListenerList()V

    .line 188
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->unregisterCmdProcessResultManager()V

    .line 191
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[regi 02] Mutex is unlocked for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 192
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v5

    .line 191
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    iget-object v4, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 150
    return-void

    .line 193
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v1    # "isExistListener":Z
    :catchall_0
    move-exception v4

    .line 194
    iget-object v5, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 193
    throw v4
.end method

.method public final registerWatcher(Landroid/os/IBinder;I)V
    .locals 7
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "service"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 275
    iget-object v4, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 278
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[regi 01] Mutex is locked for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 279
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v5

    .line 278
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 281
    const/4 v1, 0x0

    .line 283
    .local v1, "isExistWatcher":Z
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getWatcherList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 284
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    .line 283
    if-eqz v4, :cond_1

    .line 285
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;

    .line 286
    .local v2, "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;
    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->-get1(Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;)Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 289
    const/4 v1, 0x1

    .line 291
    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->-get0(Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 292
    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->-get0(Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    .end local v2    # "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;
    :cond_1
    if-nez v1, :cond_2

    .line 298
    new-instance v3, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;-><init>(Lcom/samsung/android/contextaware/manager/ContextAwareService;Landroid/os/IBinder;)V

    .line 299
    .local v3, "watcher":Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;
    const/4 v4, 0x0

    invoke-interface {p1, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 300
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->addWatcher(Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;)V

    .line 303
    invoke-static {v3}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->-get0(Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 304
    invoke-static {v3}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->-get0(Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .end local v3    # "watcher":Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[regi 02] Mutex is unlocked for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 309
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v5

    .line 308
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    iget-object v4, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 273
    return-void

    .line 310
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v1    # "isExistWatcher":Z
    :catchall_0
    move-exception v4

    .line 311
    iget-object v5, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 310
    throw v4
.end method

.method public final resetCAService(I)V
    .locals 2
    .param p1, "service"    # I

    .prologue
    .line 613
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 616
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[reset 01] Mutex is locked for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 617
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v1

    .line 616
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reset service : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 620
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v1

    .line 619
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextManager;->reset(Ljava/lang/String;)V

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[reset 02] Mutex is unlocked for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 624
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v1

    .line 623
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 611
    return-void

    .line 625
    :catchall_0
    move-exception v0

    .line 626
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 625
    throw v0
.end method

.method public final setCALogger(ZZIZ)V
    .locals 0
    .param p1, "isConsole"    # Z
    .param p2, "isFile"    # Z
    .param p3, "level"    # I
    .param p4, "isCaller"    # Z

    .prologue
    .line 1090
    invoke-static {p1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->setConsoleLoggingEnable(Z)V

    .line 1091
    invoke-static {p2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->setFileLoggingEnable(Z)V

    .line 1092
    invoke-static {p3, p4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->setLogOption(IZ)V

    .line 1089
    return-void
.end method

.method public final setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z
    .locals 3
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .prologue
    .line 584
    const/4 v0, 0x0

    .line 586
    .local v0, "result":Z
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 589
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[setProperty 01] Mutex is locked for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 590
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    .line 589
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 592
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3}, Lcom/samsung/android/contextaware/manager/ContextManager;->setProperty(Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v0

    .line 594
    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 595
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[setProperty 02] Mutex is unlocked for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 596
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    .line 595
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 601
    return v0

    .line 597
    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    .line 598
    iget-object v2, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 597
    throw v1
.end method

.method public final setCmdProcessResultNotifyCompletion(Z)V
    .locals 0
    .param p1, "completion"    # Z

    .prologue
    .line 1127
    iput-boolean p1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mCmdProcessResultNotifyCompletion:Z

    .line 1126
    return-void
.end method

.method public final setScenarioForDebugging(II[B)Z
    .locals 1
    .param p1, "testType"    # I
    .param p2, "delayTime"    # I
    .param p3, "packet"    # [B

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mAutoTest:Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->setScenarioForDebugging(II[B)Z

    move-result v0

    return v0
.end method

.method public final setScenarioForTest(II)Z
    .locals 1
    .param p1, "testType"    # I
    .param p2, "delayTime"    # I

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mAutoTest:Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->setScenarioForTest(II)Z

    move-result v0

    return v0
.end method

.method public final setVersion(I)V
    .locals 2
    .param p1, "version"    # I

    .prologue
    .line 1170
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->isVersionSetting:Z

    if-eqz v0, :cond_0

    .line 1171
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_VERSION_SETTING:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 1173
    return-void

    .line 1176
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Version : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 1177
    iput p1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mVersion:I

    .line 1178
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/manager/ContextManager;->setVersion(I)V

    .line 1179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->isVersionSetting:Z

    .line 1169
    return-void
.end method

.method public final startAutoTest()V
    .locals 1

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mAutoTest:Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->startAutoTest()V

    .line 1107
    return-void
.end method

.method public final stopAutoTest()V
    .locals 1

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mAutoTest:Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->stopAutoTest()V

    .line 1115
    return-void
.end method

.method public final unregisterCallback(Landroid/os/IBinder;I)Z
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "service"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 212
    const/4 v1, 0x1

    .line 214
    .local v1, "isEmptyListener":Z
    iget-object v4, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 217
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[unregi 01] Mutex is locked for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 218
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v5

    .line 217
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->initializeRestoreManager()V

    .line 221
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mCmdProcessResultNotifyCompletion:Z

    .line 222
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextCollectionResultNotifyCompletion:Z

    .line 223
    const/4 v2, 0x0

    .line 225
    .local v2, "listener":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getListenerList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 226
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    .line 225
    if-eqz v4, :cond_1

    .line 227
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    .line 228
    .local v3, "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    invoke-static {v3}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->-get2(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 231
    move-object v2, v3

    .line 232
    .local v2, "listener":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    const-string/jumbo v4, "UNREGISTER_CMD_RESTORE"

    invoke-direct {p0, v4, v3, p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->doCommendProcess(Ljava/lang/String;Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V

    .line 237
    .end local v2    # "listener":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .end local v3    # "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    :cond_1
    if-eqz v2, :cond_3

    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->-get1(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 241
    :goto_0
    if-eqz v1, :cond_2

    .line 242
    const/4 v4, 0x0

    invoke-interface {p1, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 243
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->removeListener(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)V

    .line 246
    :cond_2
    invoke-direct {p0, p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->displayUsedCountForService(I)V

    .line 247
    invoke-direct {p0}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->showListenerList()V

    .line 249
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->unregisterCmdProcessResultManager()V

    .line 252
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[unregi 02] Mutex is unlocked for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 253
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v5

    .line 252
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    iget-object v4, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 258
    return v1

    .line 238
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 254
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :catchall_0
    move-exception v4

    .line 255
    iget-object v5, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 254
    throw v4
.end method

.method public final unregisterWatcher(Landroid/os/IBinder;I)Z
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "service"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 329
    const/4 v1, 0x1

    .line 331
    .local v1, "isEmptyWatcher":Z
    iget-object v4, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 334
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[unregi 01] Mutex is locked for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 335
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v5

    .line 334
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 337
    const/4 v3, 0x0

    .line 339
    .local v3, "watcher":Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getWatcherList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 340
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    .line 339
    if-eqz v4, :cond_1

    .line 341
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;

    .line 342
    .local v2, "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;
    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->-get1(Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;)Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 345
    move-object v3, v2

    .line 346
    .local v3, "watcher":Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;
    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->-get0(Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 347
    invoke-virtual {v2, p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->decreaseServiceCount(I)V

    .line 348
    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->-get0(Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gtz v4, :cond_1

    .line 349
    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->-get0(Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    .end local v2    # "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;
    .end local v3    # "watcher":Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;
    :cond_1
    if-eqz v3, :cond_2

    invoke-static {v3}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->-get0(Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 356
    :cond_2
    const/4 v1, 0x0

    .line 359
    :cond_3
    if-eqz v1, :cond_4

    .line 360
    const/4 v4, 0x0

    invoke-interface {p1, v3, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 361
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->removeWatcher(Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;)V

    .line 364
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[unregi 02] Mutex is unlocked for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 365
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v5

    .line 364
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    iget-object v4, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 370
    return v1

    .line 366
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :catchall_0
    move-exception v4

    .line 367
    iget-object v5, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 366
    throw v4
.end method

.method public final updateContext(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    .line 640
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 641
    .local v0, "msg":Landroid/os/Message;
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceOrdinal(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 642
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 643
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mServiceHandler:Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 639
    return-void
.end method
