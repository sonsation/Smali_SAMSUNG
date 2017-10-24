.class public Lcom/samsung/android/mateservice/MateService;
.super Lcom/samsung/android/mateservice/IMateService$Stub;
.source "MateService.java"


# static fields
.field private static final HISTORY_COUNT:I = 0x28

.field private static final TAG:Ljava/lang/String; = "Impl"


# instance fields
.field private mBootPhase:I

.field private final mContext:Landroid/content/Context;

.field private final mDumps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/mateservice/common/Dump;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutor:Lcom/samsung/android/mateservice/action/ActionDispatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 35
    invoke-direct {p0}, Lcom/samsung/android/mateservice/IMateService$Stub;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/samsung/android/mateservice/MateService;->mContext:Landroid/content/Context;

    .line 37
    new-instance v3, Lcom/samsung/android/mateservice/common/Logger;

    invoke-direct {p0}, Lcom/samsung/android/mateservice/MateService;->getLoggerCount()I

    move-result v5

    invoke-direct {v3, v5}, Lcom/samsung/android/mateservice/common/Logger;-><init>(I)V

    .line 38
    .local v3, "logger":Lcom/samsung/android/mateservice/common/Logger;
    new-instance v5, Lcom/samsung/android/mateservice/action/ActionDispatcher;

    invoke-direct {v5, p1, v3}, Lcom/samsung/android/mateservice/action/ActionDispatcher;-><init>(Landroid/content/Context;Lcom/samsung/android/mateservice/common/LoggerContract;)V

    iput-object v5, p0, Lcom/samsung/android/mateservice/MateService;->mExecutor:Lcom/samsung/android/mateservice/action/ActionDispatcher;

    .line 40
    new-instance v1, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;

    invoke-direct {v1, p1}, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;-><init>(Landroid/content/Context;)V

    .line 41
    .local v1, "agentSvcMgr":Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;
    new-instance v4, Lcom/samsung/android/mateservice/executable/ExecStringCrypto;

    invoke-direct {v4}, Lcom/samsung/android/mateservice/executable/ExecStringCrypto;-><init>()V

    .line 42
    .local v4, "stringCrypto":Lcom/samsung/android/mateservice/action/ActionExecutable;
    new-instance v0, Lcom/samsung/android/mateservice/executable/ExecAccessoryMgr;

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/mateservice/executable/ExecAccessoryMgr;-><init>(Lcom/samsung/android/mateservice/common/Logger;Lcom/samsung/android/mateservice/agentsvc/AgentSvcContract$ConnectionMgr;)V

    .line 43
    .local v0, "accessoryMgr":Lcom/samsung/android/mateservice/executable/ExecAccessoryMgr;
    new-instance v2, Lcom/samsung/android/mateservice/executable/ExecClientStateMgr;

    invoke-direct {v2, v3}, Lcom/samsung/android/mateservice/executable/ExecClientStateMgr;-><init>(Lcom/samsung/android/mateservice/common/Logger;)V

    .line 45
    .local v2, "clientStateMgr":Lcom/samsung/android/mateservice/executable/ExecClientStateMgr;
    iget-object v5, p0, Lcom/samsung/android/mateservice/MateService;->mExecutor:Lcom/samsung/android/mateservice/action/ActionDispatcher;

    const v6, 0x110001

    invoke-virtual {v5, v6, v8, v0}, Lcom/samsung/android/mateservice/action/ActionDispatcher;->append(IZLcom/samsung/android/mateservice/action/ActionExecutable;)V

    .line 46
    iget-object v5, p0, Lcom/samsung/android/mateservice/MateService;->mExecutor:Lcom/samsung/android/mateservice/action/ActionDispatcher;

    const v6, 0x120001

    invoke-virtual {v5, v6, v7, v0}, Lcom/samsung/android/mateservice/action/ActionDispatcher;->append(IZLcom/samsung/android/mateservice/action/ActionExecutable;)V

    .line 47
    iget-object v5, p0, Lcom/samsung/android/mateservice/MateService;->mExecutor:Lcom/samsung/android/mateservice/action/ActionDispatcher;

    const v6, 0x120002

    invoke-virtual {v5, v6, v7, v2}, Lcom/samsung/android/mateservice/action/ActionDispatcher;->append(IZLcom/samsung/android/mateservice/action/ActionExecutable;)V

    .line 48
    iget-object v5, p0, Lcom/samsung/android/mateservice/MateService;->mExecutor:Lcom/samsung/android/mateservice/action/ActionDispatcher;

    const v6, 0x120003

    invoke-virtual {v5, v6, v7, v4}, Lcom/samsung/android/mateservice/action/ActionDispatcher;->append(IZLcom/samsung/android/mateservice/action/ActionExecutable;)V

    .line 49
    iget-object v5, p0, Lcom/samsung/android/mateservice/MateService;->mExecutor:Lcom/samsung/android/mateservice/action/ActionDispatcher;

    const v6, 0x120004

    invoke-virtual {v5, v6, v7, v4}, Lcom/samsung/android/mateservice/action/ActionDispatcher;->append(IZLcom/samsung/android/mateservice/action/ActionExecutable;)V

    .line 50
    iget-object v5, p0, Lcom/samsung/android/mateservice/MateService;->mExecutor:Lcom/samsung/android/mateservice/action/ActionDispatcher;

    const v6, 0x120005

    invoke-virtual {v5, v6, v7, v1}, Lcom/samsung/android/mateservice/action/ActionDispatcher;->append(IZLcom/samsung/android/mateservice/action/ActionExecutable;)V

    .line 52
    iget-object v5, p0, Lcom/samsung/android/mateservice/MateService;->mExecutor:Lcom/samsung/android/mateservice/action/ActionDispatcher;

    new-instance v6, Lcom/samsung/android/mateservice/executable/ExecAgentSvcRelay;

    invoke-direct {v6, v3, v1}, Lcom/samsung/android/mateservice/executable/ExecAgentSvcRelay;-><init>(Lcom/samsung/android/mateservice/common/LoggerContract;Lcom/samsung/android/mateservice/agentsvc/AgentSvcContract$ConnectionMgr;)V

    invoke-virtual {v5, v8, v6}, Lcom/samsung/android/mateservice/action/ActionDispatcher;->setDefault(ZLcom/samsung/android/mateservice/action/ActionExecutable;)V

    .line 54
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/mateservice/MateService;->mDumps:Ljava/util/List;

    .line 55
    iget-object v5, p0, Lcom/samsung/android/mateservice/MateService;->mDumps:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v5, p0, Lcom/samsung/android/mateservice/MateService;->mDumps:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v5, p0, Lcom/samsung/android/mateservice/MateService;->mDumps:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method private getLoggerCount()I
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/samsung/android/mateservice/common/FwDependency;->isProductDev()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/mateservice/util/UtilLog;->isRoDebugLevelMid()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x28

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setBootPhase(I)V
    .locals 0
    .param p1, "phase"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/samsung/android/mateservice/MateService;->mBootPhase:I

    .line 90
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 96
    const-string/jumbo v1, "Impl"

    const-string/jumbo v2, "dump"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/mateservice/util/UtilLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    iget-object v1, p0, Lcom/samsung/android/mateservice/MateService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.DUMP"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    const-string/jumbo v1, "Impl"

    const-string/jumbo v2, "permission denied - pid[%d] uid[%d]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/samsung/android/mateservice/util/UtilLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    return-void

    .line 104
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/mateservice/MateService;->getDump()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/samsung/android/mateservice/util/UtilLog;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "action"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/android/mateservice/MateService;->mExecutor:Lcom/samsung/android/mateservice/action/ActionDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mateservice/action/ActionDispatcher;->execute(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method getDump()Ljava/lang/String;
    .locals 7

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "************************************************************************\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string/jumbo v3, "productDev: %s / logLevel: %d  / safeString: %s\n"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/mateservice/common/FwDependency;->isProductDev()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 78
    invoke-static {}, Lcom/samsung/android/mateservice/util/UtilLog;->logLevel()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {}, Lcom/samsung/android/mateservice/util/UtilLog;->useSafeString()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 77
    invoke-static {v3, v4}, Lcom/samsung/android/mateservice/util/UtilLog;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/mateservice/MateService;->mDumps:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "cur$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mateservice/common/Dump;

    .line 82
    .local v1, "cur":Lcom/samsung/android/mateservice/common/Dump;
    invoke-interface {v1, v0}, Lcom/samsung/android/mateservice/common/Dump;->getDump(Ljava/lang/StringBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 80
    .end local v1    # "cur":Lcom/samsung/android/mateservice/common/Dump;
    .end local v2    # "cur$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v2    # "cur$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    .line 85
    const-string/jumbo v3, "\n************************************************************************"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 61
    const-string/jumbo v0, "Impl"

    const-string/jumbo v1, "systemReady!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mateservice/util/UtilLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    return-void
.end method
