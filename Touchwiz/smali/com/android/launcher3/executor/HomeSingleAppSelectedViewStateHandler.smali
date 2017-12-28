.class Lcom/android/launcher3/executor/HomeSingleAppSelectedViewStateHandler;
.super Lcom/android/launcher3/executor/AbstractStateHandler;
.source "HomeSingleAppSelectedViewStateHandler.java"


# instance fields
.field protected mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

.field protected mObjectName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 2
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 31
    new-instance v0, Lcom/android/launcher3/executor/StateAppInfo;

    invoke-direct {v0}, Lcom/android/launcher3/executor/StateAppInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeSingleAppSelectedViewStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 37
    sget-object v0, Lcom/android/launcher3/executor/StateAppInfoHolder;->INSTANCE:Lcom/android/launcher3/executor/StateAppInfoHolder;

    iget-object v1, p0, Lcom/android/launcher3/executor/HomeSingleAppSelectedViewStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/executor/StateAppInfoHolder;->setStateAppInfo(Lcom/android/launcher3/executor/StateAppInfo;)V

    .line 38
    const-string v0, "AppName"

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeSingleAppSelectedViewStateHandler;->mObjectName:Ljava/lang/String;

    .line 39
    const-string v0, "Home"

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeSingleAppSelectedViewStateHandler;->mNlgTargetState:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 7
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    const/4 v6, 0x0

    .line 63
    const/4 v1, 0x1

    .line 64
    .local v1, "ret":I
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSingleAppSelectedViewStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeSingleAppSelectedViewStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomeItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v0

    .line 65
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 66
    :cond_0
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v3, "Home"

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "SingleApp"

    const-string v4, "Match"

    const-string v5, "no"

    .line 67
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    const-string v3, "SingleApp"

    iget-object v4, p0, Lcom/android/launcher3/executor/HomeSingleAppSelectedViewStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 68
    invoke-virtual {v4}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/HomeSingleAppSelectedViewStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 80
    :goto_0
    invoke-virtual {p0, p1, v1, v6}, Lcom/android/launcher3/executor/HomeSingleAppSelectedViewStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;II)V

    .line 81
    return-void

    .line 70
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/executor/HomeSingleAppSelectedViewStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/executor/StateAppInfo;->setItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 71
    iget-object v2, p0, Lcom/android/launcher3/executor/HomeSingleAppSelectedViewStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/executor/StateAppInfo;->getItemInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 72
    const/4 v1, 0x0

    goto :goto_0

    .line 74
    :cond_2
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v3, "Home"

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "SingleApp"

    const-string v4, "Match"

    const-string v5, "no"

    .line 75
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    const-string v3, "SingleApp"

    iget-object v4, p0, Lcom/android/launcher3/executor/HomeSingleAppSelectedViewStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 76
    invoke-virtual {v4}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/HomeSingleAppSelectedViewStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0
.end method

.method protected getAppInfo()Lcom/android/launcher3/executor/StateAppInfo;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/launcher3/executor/HomeSingleAppSelectedViewStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    return-object v0
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 6
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 44
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeSingleAppSelectedViewStateHandler;->mObjectName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/launcher3/executor/HomeSingleAppSelectedViewStateHandler;->mNlgTargetState:Ljava/lang/String;

    const-string v5, "SingleApp"

    invoke-static {p0, v2, v3, v4, v5}, Lcom/android/launcher3/executor/StateParamHelper;->getStringParamValue(Lcom/android/launcher3/executor/AbstractStateHandler;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/launcher3/executor/HomeSingleAppSelectedViewStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/executor/StateAppInfo;->setComponentName(Ljava/lang/String;)V

    .line 48
    iget-object v2, p0, Lcom/android/launcher3/executor/HomeSingleAppSelectedViewStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/executor/StateAppInfo;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    const-string v2, "PARAM_CHECK_ERROR"

    .line 58
    :goto_0
    return-object v2

    .line 52
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/executor/HomeSingleAppSelectedViewStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/executor/StateAppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/executor/HomeSingleAppSelectedViewStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 53
    invoke-virtual {v2}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u00a0"

    if-ne v2, v3, :cond_1

    .line 54
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSingleAppSelectedViewStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeSingleAppSelectedViewStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppNamebyComponentName(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "appName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/launcher3/executor/HomeSingleAppSelectedViewStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/executor/StateAppInfo;->setName(Ljava/lang/String;)V

    .line 58
    .end local v0    # "appName":Ljava/lang/String;
    :cond_1
    const-string v2, "PARAM_CHECK_OK"

    goto :goto_0
.end method
