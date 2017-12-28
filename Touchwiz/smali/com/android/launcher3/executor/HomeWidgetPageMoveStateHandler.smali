.class Lcom/android/launcher3/executor/HomeWidgetPageMoveStateHandler;
.super Lcom/android/launcher3/executor/AbstractStateHandler;
.source "HomeWidgetPageMoveStateHandler.java"


# instance fields
.field mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 2
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 30
    new-instance v0, Lcom/android/launcher3/executor/StateAppInfo;

    invoke-direct {v0}, Lcom/android/launcher3/executor/StateAppInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeWidgetPageMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 34
    const-string v0, "Home"

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeWidgetPageMoveStateHandler;->mNlgTargetState:Ljava/lang/String;

    .line 35
    sget-object v0, Lcom/android/launcher3/executor/StateAppInfoHolder;->INSTANCE:Lcom/android/launcher3/executor/StateAppInfoHolder;

    iget-object v1, p0, Lcom/android/launcher3/executor/HomeWidgetPageMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/executor/StateAppInfoHolder;->setStateAppInfo(Lcom/android/launcher3/executor/StateAppInfo;)V

    .line 36
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 6
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    .line 55
    const/4 v1, 0x0

    .line 56
    .local v1, "ret":I
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeWidgetPageMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeWidgetPageMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomeWidgetItemInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/ArrayList;

    move-result-object v0

    .line 57
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeWidgetPageMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeWidgetPageMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/proxy/LauncherProxy;->moveHomePageByWidgetItem(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I

    .line 59
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeWidgetPageMoveStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "Widget"

    const-string v4, "Match"

    const-string v5, "yes"

    .line 60
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/HomeWidgetPageMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 66
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/executor/HomeWidgetPageMoveStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    .line 67
    return-void

    .line 62
    :cond_0
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeWidgetPageMoveStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "Widget"

    const-string v4, "Match"

    const-string v5, "no"

    .line 63
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/HomeWidgetPageMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 64
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 5
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 40
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "WidgetName"

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeWidgetPageMoveStateHandler;->mNlgTargetState:Ljava/lang/String;

    const-string v4, "Widget"

    invoke-static {p0, v1, v2, v3, v4}, Lcom/android/launcher3/executor/StateParamHelper;->getStringParamValue(Lcom/android/launcher3/executor/AbstractStateHandler;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher3/executor/HomeWidgetPageMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/executor/StateAppInfo;->setComponentName(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/android/launcher3/executor/HomeWidgetPageMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/StateAppInfo;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    const-string v1, "PARAM_CHECK_ERROR"

    .line 50
    :goto_0
    return-object v1

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/executor/HomeWidgetPageMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-static {p0, v1}, Lcom/android/launcher3/executor/StateParamHelper;->setWidgetNamebyComponentName(Lcom/android/launcher3/executor/AbstractStateHandler;Lcom/android/launcher3/executor/StateAppInfo;)V

    .line 50
    const-string v1, "PARAM_CHECK_OK"

    goto :goto_0
.end method
