.class Lcom/android/launcher3/executor/HomeFolderAddIconSearchViewResultStateHandler;
.super Lcom/android/launcher3/executor/AbstractStateHandler;
.source "HomeFolderAddIconSearchViewResultStateHandler.java"


# instance fields
.field private mSearchText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 0
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 18
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderAddIconSearchViewResultStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/executor/HomeFolderAddIconSearchViewResultStateHandler;->mSearchText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/proxy/LauncherProxy;->setAddAppsSearchText(Ljava/lang/String;)I

    .line 44
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/executor/HomeFolderAddIconSearchViewResultStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    .line 45
    return-void
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 6
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 22
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v1

    .line 23
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/samsung/android/sdk/bixby/data/Parameter;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-gez v2, :cond_1

    .line 24
    :cond_0
    const-string v2, "PARAM_CHECK_ERROR"

    .line 36
    :goto_0
    return-object v2

    .line 26
    :cond_1
    invoke-static {v1}, Lcom/android/launcher3/executor/StateParamHelper;->newHelper(Ljava/util/Map;)Lcom/android/launcher3/executor/StateParamHelper;

    move-result-object v0

    .line 28
    .local v0, "helper":Lcom/android/launcher3/executor/StateParamHelper;
    const-string v2, "Text"

    sget-object v3, Lcom/android/launcher3/executor/StateParamHelper$Type;->STRING:Lcom/android/launcher3/executor/StateParamHelper$Type;

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/executor/StateParamHelper;->hasSlotValue(Ljava/lang/String;Lcom/android/launcher3/executor/StateParamHelper$Type;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 29
    const-string v2, "Text"

    invoke-virtual {v0, v2}, Lcom/android/launcher3/executor/StateParamHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/HomeFolderAddIconSearchViewResultStateHandler;->mSearchText:Ljava/lang/String;

    .line 36
    const-string v2, "PARAM_CHECK_OK"

    goto :goto_0

    .line 31
    :cond_2
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v3, Lcom/android/launcher3/executor/ExecutorState;->HOME_FOLDER_ADD_ICON_SEARCH_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v3}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "Text"

    const-string v4, "Exist"

    const-string v5, "no"

    .line 32
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/HomeFolderAddIconSearchViewResultStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 33
    const-string v2, "PARAM_CHECK_ERROR"

    goto :goto_0
.end method
