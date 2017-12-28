.class Lcom/android/launcher3/executor/HomeFolderChangeBackgroundColorSelectViewStateHandler;
.super Lcom/android/launcher3/executor/AbstractStateHandler;
.source "HomeFolderChangeBackgroundColorSelectViewStateHandler.java"


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 2
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 30
    invoke-virtual {p1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HomeFolderChangeBackgroundColorSelectView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const-string v0, "HomeFolderChangeBackgroundColorSelectView"

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeFolderChangeBackgroundColorSelectViewStateHandler;->mNlgTargetState:Ljava/lang/String;

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    const-string v0, "AppsFolderChangeBackgroundColorSelectView"

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeFolderChangeBackgroundColorSelectViewStateHandler;->mNlgTargetState:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderChangeBackgroundColorSelectViewStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/proxy/LauncherProxy;->openFolderColorPanel()I

    move-result v0

    .line 45
    .local v0, "ret":I
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v2, p0, Lcom/android/launcher3/executor/HomeFolderChangeBackgroundColorSelectViewStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "FolderName"

    const-string v3, "Match"

    const-string v4, "yes"

    .line 46
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/HomeFolderChangeBackgroundColorSelectViewStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 47
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/executor/HomeFolderChangeBackgroundColorSelectViewStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    .line 48
    return-void
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 39
    const-string v0, "PARAM_CHECK_OK"

    return-object v0
.end method
