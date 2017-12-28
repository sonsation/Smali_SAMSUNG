.class Lcom/android/launcher3/executor/AppsFolderRemoveStateHandler;
.super Lcom/android/launcher3/executor/AbstractAppsStateHandler;
.source "AppsFolderRemoveStateHandler.java"


# instance fields
.field private mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 2
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractAppsStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 16
    sget-object v0, Lcom/android/launcher3/executor/StateAppInfoHolder;->INSTANCE:Lcom/android/launcher3/executor/StateAppInfoHolder;

    invoke-virtual {v0}, Lcom/android/launcher3/executor/StateAppInfoHolder;->getStateAppInfo()Lcom/android/launcher3/executor/StateAppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/executor/AppsFolderRemoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 17
    iget-object v0, p0, Lcom/android/launcher3/executor/AppsFolderRemoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StateAppInfo is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_0
    const-string v0, "AppsFolderRemovePopup"

    iput-object v0, p0, Lcom/android/launcher3/executor/AppsFolderRemoveStateHandler;->mNlgTargetState:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    .line 31
    const/4 v0, 0x0

    .line 32
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderRemoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/executor/AppsFolderRemoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/proxy/LauncherProxy;->showAppsFolderRemovePopUp(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I

    .line 33
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v2, p0, Lcom/android/launcher3/executor/AppsFolderRemoveStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "FolderName"

    const-string v3, "Match"

    const-string v4, "yes"

    .line 34
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    const-string v2, "FolderName"

    iget-object v3, p0, Lcom/android/launcher3/executor/AppsFolderRemoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 35
    invoke-virtual {v3}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/AppsFolderRemoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 36
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/executor/AppsFolderRemoveStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    .line 37
    return-void
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 26
    const-string v0, "PARAM_CHECK_OK"

    return-object v0
.end method
