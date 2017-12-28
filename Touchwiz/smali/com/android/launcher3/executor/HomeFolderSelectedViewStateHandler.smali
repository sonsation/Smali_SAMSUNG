.class Lcom/android/launcher3/executor/HomeFolderSelectedViewStateHandler;
.super Lcom/android/launcher3/executor/HomeSingleAppSelectedViewStateHandler;
.source "HomeFolderSelectedViewStateHandler.java"


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 1
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/HomeSingleAppSelectedViewStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 33
    const-string v0, "FolderName"

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeFolderSelectedViewStateHandler;->mObjectName:Ljava/lang/String;

    .line 34
    const-string v0, "Home"

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeFolderSelectedViewStateHandler;->mNlgTargetState:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 7
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    .line 51
    const/4 v2, 0x1

    .line 52
    .local v2, "ret":I
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderSelectedViewStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/executor/HomeFolderSelectedViewStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomeItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v1

    .line 53
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 54
    :cond_0
    new-instance v3, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v4, p0, Lcom/android/launcher3/executor/HomeFolderSelectedViewStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v4, "FolderName"

    const-string v5, "Match"

    const-string v6, "no"

    .line 55
    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/executor/HomeFolderSelectedViewStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 68
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, v2}, Lcom/android/launcher3/executor/HomeFolderSelectedViewStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    .line 69
    return-void

    .line 57
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 58
    .local v0, "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v0, :cond_3

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 59
    iget-object v3, p0, Lcom/android/launcher3/executor/HomeFolderSelectedViewStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/executor/StateAppInfo;->setItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 60
    iget-object v3, p0, Lcom/android/launcher3/executor/HomeFolderSelectedViewStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/executor/StateAppInfo;->getItemInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 61
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 4
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 39
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/executor/HomeFolderSelectedViewStateHandler;->mObjectName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeFolderSelectedViewStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-static {p0, v1, v2, v3}, Lcom/android/launcher3/executor/StateParamHelper;->getStringParamValue(Lcom/android/launcher3/executor/AbstractStateHandler;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher3/executor/HomeFolderSelectedViewStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/executor/StateAppInfo;->setName(Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/android/launcher3/executor/HomeFolderSelectedViewStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

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
