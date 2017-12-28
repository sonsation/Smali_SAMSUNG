.class Lcom/android/launcher3/executor/HomeFolderViewStateHandler;
.super Lcom/android/launcher3/executor/AbstractStateHandler;
.source "HomeFolderViewStateHandler.java"


# instance fields
.field mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 2
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 28
    new-instance v0, Lcom/android/launcher3/executor/StateAppInfo;

    invoke-direct {v0}, Lcom/android/launcher3/executor/StateAppInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeFolderViewStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 33
    sget-object v0, Lcom/android/launcher3/executor/StateAppInfoHolder;->INSTANCE:Lcom/android/launcher3/executor/StateAppInfoHolder;

    iget-object v1, p0, Lcom/android/launcher3/executor/HomeFolderViewStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/executor/StateAppInfoHolder;->setStateAppInfo(Lcom/android/launcher3/executor/StateAppInfo;)V

    .line 34
    const-string v0, "Home"

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeFolderViewStateHandler;->mNlgTargetState:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 6
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    .line 51
    const/4 v1, 0x0

    .line 53
    .local v1, "ret":I
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderViewStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeFolderViewStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/proxy/LauncherProxy;->hasFolderInHome(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 54
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeFolderViewStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "FolderName"

    const-string v4, "Match"

    const-string v5, "no"

    .line 55
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/HomeFolderViewStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 56
    const/4 v1, 0x1

    .line 74
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/executor/HomeFolderViewStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    .line 75
    return-void

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderViewStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeFolderViewStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomeFolderItemCountByTitle(Ljava/lang/String;)I

    move-result v0

    .line 59
    .local v0, "folderItemCount":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 60
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeFolderViewStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "FolderName"

    const-string v4, "Match"

    const-string v5, "multi"

    .line 61
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    const-string v3, "FolderName_count"

    .line 62
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    const-string v3, "FolderName"

    iget-object v4, p0, Lcom/android/launcher3/executor/HomeFolderViewStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 63
    invoke-virtual {v4}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/HomeFolderViewStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 64
    const/4 v1, 0x1

    .line 67
    :cond_2
    if-nez v1, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderViewStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeFolderViewStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/proxy/LauncherProxy;->openHomeFolder(Ljava/lang/String;)I

    .line 69
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v3, "HomeFolderView"

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "FolderName"

    const-string v4, "Match"

    const-string v5, "yes"

    .line 70
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/HomeFolderViewStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 4
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 39
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "FolderName"

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeFolderViewStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-static {p0, v1, v2, v3}, Lcom/android/launcher3/executor/StateParamHelper;->getStringParamValue(Lcom/android/launcher3/executor/AbstractStateHandler;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher3/executor/HomeFolderViewStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/executor/StateAppInfo;->setName(Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/android/launcher3/executor/HomeFolderViewStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/StateAppInfo;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    const-string v1, "PARAM_CHECK_ERROR"

    .line 46
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "PARAM_CHECK_OK"

    goto :goto_0
.end method
