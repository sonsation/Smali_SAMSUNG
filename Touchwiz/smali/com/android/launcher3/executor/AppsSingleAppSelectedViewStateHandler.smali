.class Lcom/android/launcher3/executor/AppsSingleAppSelectedViewStateHandler;
.super Lcom/android/launcher3/executor/AbstractAppsStateHandler;
.source "AppsSingleAppSelectedViewStateHandler.java"


# instance fields
.field private mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

.field private mObjectName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 2
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractAppsStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 31
    new-instance v0, Lcom/android/launcher3/executor/StateAppInfo;

    invoke-direct {v0}, Lcom/android/launcher3/executor/StateAppInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/executor/AppsSingleAppSelectedViewStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 36
    sget-object v0, Lcom/android/launcher3/executor/StateAppInfoHolder;->INSTANCE:Lcom/android/launcher3/executor/StateAppInfoHolder;

    iget-object v1, p0, Lcom/android/launcher3/executor/AppsSingleAppSelectedViewStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/executor/StateAppInfoHolder;->setStateAppInfo(Lcom/android/launcher3/executor/StateAppInfo;)V

    .line 37
    const-string v0, "AppName"

    iput-object v0, p0, Lcom/android/launcher3/executor/AppsSingleAppSelectedViewStateHandler;->mObjectName:Ljava/lang/String;

    .line 38
    const-string v0, "AppsPageView"

    iput-object v0, p0, Lcom/android/launcher3/executor/AppsSingleAppSelectedViewStateHandler;->mNlgTargetState:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 6
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    .line 62
    const/4 v1, 0x1

    .line 63
    .local v1, "ret":I
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsSingleAppSelectedViewStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/executor/AppsSingleAppSelectedViewStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v0

    .line 64
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 65
    :cond_0
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v3, p0, Lcom/android/launcher3/executor/AppsSingleAppSelectedViewStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "SingleApp"

    const-string v4, "Match"

    const-string v5, "no"

    .line 66
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    const-string v3, "SingleApp"

    iget-object v4, p0, Lcom/android/launcher3/executor/AppsSingleAppSelectedViewStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 67
    invoke-virtual {v4}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/AppsSingleAppSelectedViewStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 77
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/executor/AppsSingleAppSelectedViewStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    .line 78
    return-void

    .line 69
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/executor/AppsSingleAppSelectedViewStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/executor/StateAppInfo;->setItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 70
    iget-object v2, p0, Lcom/android/launcher3/executor/AppsSingleAppSelectedViewStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/executor/StateAppInfo;->getItemInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 71
    const/4 v1, 0x0

    goto :goto_0

    .line 73
    :cond_2
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v3, p0, Lcom/android/launcher3/executor/AppsSingleAppSelectedViewStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "SingleApp"

    const-string v4, "Match"

    const-string v5, "no"

    .line 74
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/AppsSingleAppSelectedViewStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 6
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 43
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/executor/AppsSingleAppSelectedViewStateHandler;->mObjectName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/launcher3/executor/AppsSingleAppSelectedViewStateHandler;->mNlgTargetState:Ljava/lang/String;

    const-string v5, "SingleApp"

    invoke-static {p0, v2, v3, v4, v5}, Lcom/android/launcher3/executor/StateParamHelper;->getStringParamValue(Lcom/android/launcher3/executor/AbstractStateHandler;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/launcher3/executor/AppsSingleAppSelectedViewStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/executor/StateAppInfo;->setComponentName(Ljava/lang/String;)V

    .line 47
    iget-object v2, p0, Lcom/android/launcher3/executor/AppsSingleAppSelectedViewStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/executor/StateAppInfo;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    const-string v2, "PARAM_CHECK_ERROR"

    .line 57
    :goto_0
    return-object v2

    .line 51
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/executor/AppsSingleAppSelectedViewStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/executor/StateAppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/executor/AppsSingleAppSelectedViewStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 52
    invoke-virtual {v2}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u00a0"

    if-ne v2, v3, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsSingleAppSelectedViewStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/executor/AppsSingleAppSelectedViewStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppNamebyComponentName(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "appName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/launcher3/executor/AppsSingleAppSelectedViewStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/executor/StateAppInfo;->setName(Ljava/lang/String;)V

    .line 57
    .end local v0    # "appName":Ljava/lang/String;
    :cond_1
    const-string v2, "PARAM_CHECK_OK"

    goto :goto_0
.end method
