.class Lcom/android/launcher3/executor/HomeFolderUnlockStateHandler;
.super Lcom/android/launcher3/executor/AbstractStateHandler;
.source "HomeFolderUnlockStateHandler.java"


# instance fields
.field mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 2
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 34
    sget-object v0, Lcom/android/launcher3/executor/StateAppInfoHolder;->INSTANCE:Lcom/android/launcher3/executor/StateAppInfoHolder;

    invoke-virtual {v0}, Lcom/android/launcher3/executor/StateAppInfoHolder;->getStateAppInfo()Lcom/android/launcher3/executor/StateAppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeFolderUnlockStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 35
    iget-object v0, p0, Lcom/android/launcher3/executor/HomeFolderUnlockStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StateAppInfo is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 6
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    .line 48
    const/4 v1, 0x0

    .line 50
    .local v1, "ret":I
    iget-object v2, p0, Lcom/android/launcher3/executor/HomeFolderUnlockStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/executor/StateAppInfo;->getItemInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v2, :cond_1

    .line 51
    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v0

    .line 52
    .local v0, "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    iget-object v2, p0, Lcom/android/launcher3/executor/HomeFolderUnlockStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/executor/StateAppInfo;->getItemInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isLockedFolder(Lcom/android/launcher3/folder/FolderInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderUnlockStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeFolderUnlockStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/executor/StateAppInfo;->getItemInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/proxy/LauncherProxy;->unlockFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)I

    .line 54
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeFolderUnlockStateHandler;->mStateId:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v3}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "Folder"

    const-string v4, "Already unlocked"

    const-string v5, "no"

    .line 55
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/HomeFolderUnlockStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 65
    .end local v0    # "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/executor/HomeFolderUnlockStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    .line 66
    return-void

    .line 57
    .restart local v0    # "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    :cond_0
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeFolderUnlockStateHandler;->mStateId:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v3}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "Folder"

    const-string v4, "Already unlocked"

    const-string v5, "yes"

    .line 58
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/HomeFolderUnlockStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0

    .line 61
    .end local v0    # "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    :cond_1
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v3, "Home"

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "FolderName"

    const-string v4, "Match"

    const-string v5, "no"

    .line 62
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/HomeFolderUnlockStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 63
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 43
    const-string v0, "PARAM_CHECK_OK"

    return-object v0
.end method
