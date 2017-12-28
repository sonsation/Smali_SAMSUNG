.class Lcom/android/launcher3/executor/HomeSingleAppLockStateHandler;
.super Lcom/android/launcher3/executor/AbstractStateHandler;
.source "HomeSingleAppLockStateHandler.java"


# instance fields
.field mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 2
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 21
    invoke-virtual {p1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HomeSingleAppLock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    const-string v0, "HomeSingleAppLock"

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeSingleAppLockStateHandler;->mNlgTargetState:Ljava/lang/String;

    .line 26
    :goto_0
    sget-object v0, Lcom/android/launcher3/executor/StateAppInfoHolder;->INSTANCE:Lcom/android/launcher3/executor/StateAppInfoHolder;

    invoke-virtual {v0}, Lcom/android/launcher3/executor/StateAppInfoHolder;->getStateAppInfo()Lcom/android/launcher3/executor/StateAppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeSingleAppLockStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 27
    iget-object v0, p0, Lcom/android/launcher3/executor/HomeSingleAppLockStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    if-nez v0, :cond_1

    .line 28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StateAppInfo is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_0
    const-string v0, "AppsSingleAppLock"

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeSingleAppLockStateHandler;->mNlgTargetState:Ljava/lang/String;

    goto :goto_0

    .line 30
    :cond_1
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 7
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    const/4 v5, 0x0

    .line 39
    const/4 v2, 0x0

    .line 40
    .local v2, "ret":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-object v3, p0, Lcom/android/launcher3/executor/HomeSingleAppLockStateHandler;->mNlgTargetState:Ljava/lang/String;

    const-string v4, "HomeSingleAppLock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 42
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSingleAppLockStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/executor/HomeSingleAppLockStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomeItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v1

    .line 46
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 47
    :cond_0
    new-instance v3, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v4, p0, Lcom/android/launcher3/executor/HomeSingleAppLockStateHandler;->mStateId:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v4}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v4, "SingleApp"

    const-string v5, "Match"

    const-string v6, "no"

    .line 48
    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/executor/HomeSingleAppLockStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 49
    const/4 v2, 0x1

    .line 67
    :goto_1
    invoke-virtual {p0, p1, v2}, Lcom/android/launcher3/executor/HomeSingleAppLockStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    .line 68
    return-void

    .line 44
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSingleAppLockStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/executor/HomeSingleAppLockStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 51
    :cond_2
    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v0

    .line 52
    .local v0, "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v3, :cond_4

    .line 53
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isLockedApp(Lcom/android/launcher3/common/base/item/IconInfo;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 54
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSingleAppLockStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v4

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v4, v3}, Lcom/android/launcher3/proxy/LauncherProxy;->lockSingleApp(Lcom/android/launcher3/common/base/item/ItemInfo;)I

    .line 55
    new-instance v3, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v4, p0, Lcom/android/launcher3/executor/HomeSingleAppLockStateHandler;->mStateId:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v4}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v4, "SingleApp"

    const-string v5, "Already locked"

    const-string v6, "no"

    .line 56
    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/executor/HomeSingleAppLockStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_1

    .line 58
    :cond_3
    new-instance v3, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v4, p0, Lcom/android/launcher3/executor/HomeSingleAppLockStateHandler;->mStateId:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v4}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v4, "SingleApp"

    const-string v5, "Already locked"

    const-string v6, "yes"

    .line 59
    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/executor/HomeSingleAppLockStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_1

    .line 62
    :cond_4
    new-instance v3, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v4, "Home"

    invoke-direct {v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v4, "SingleApp"

    const-string v5, "Match"

    const-string v6, "no"

    .line 63
    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/executor/HomeSingleAppLockStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 64
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 34
    const-string v0, "PARAM_CHECK_OK"

    return-object v0
.end method
