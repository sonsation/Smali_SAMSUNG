.class Lcom/android/launcher3/executor/AppsSingleAppPutToSleepModeStateHandler;
.super Lcom/android/launcher3/executor/AbstractAppsStateHandler;
.source "AppsSingleAppPutToSleepModeStateHandler.java"


# instance fields
.field mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 2
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractAppsStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 34
    sget-object v0, Lcom/android/launcher3/executor/StateAppInfoHolder;->INSTANCE:Lcom/android/launcher3/executor/StateAppInfoHolder;

    invoke-virtual {v0}, Lcom/android/launcher3/executor/StateAppInfoHolder;->getStateAppInfo()Lcom/android/launcher3/executor/StateAppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/executor/AppsSingleAppPutToSleepModeStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 35
    iget-object v0, p0, Lcom/android/launcher3/executor/AppsSingleAppPutToSleepModeStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StateAppInfo is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    const-string v0, "AppsPageView"

    iput-object v0, p0, Lcom/android/launcher3/executor/AppsSingleAppPutToSleepModeStateHandler;->mNlgTargetState:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsSingleAppPutToSleepModeStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/executor/AppsSingleAppPutToSleepModeStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/proxy/LauncherProxy;->hasItemInApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 55
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsSingleAppPutToSleepModeStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/executor/AppsSingleAppPutToSleepModeStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/proxy/LauncherProxy;->isAlreadySleepMode(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v2, p0, Lcom/android/launcher3/executor/AppsSingleAppPutToSleepModeStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "PutToSleep"

    const-string v3, "AlreadySet"

    const-string v4, "yes"

    .line 57
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    const-string v2, "SingleApp"

    iget-object v3, p0, Lcom/android/launcher3/executor/AppsSingleAppPutToSleepModeStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 58
    invoke-virtual {v3}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/AppsSingleAppPutToSleepModeStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 59
    const/4 v0, 0x1

    .line 79
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/executor/AppsSingleAppPutToSleepModeStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    .line 80
    return-void

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsSingleAppPutToSleepModeStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/executor/AppsSingleAppPutToSleepModeStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/proxy/LauncherProxy;->isAvailableSleepMode(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsSingleAppPutToSleepModeStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/executor/AppsSingleAppPutToSleepModeStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/proxy/LauncherProxy;->putAppToSleep(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I

    .line 63
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v2, "AppsSingleAppPutToSleepPopUp"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "PutToSleep"

    const-string v3, "Available"

    const-string v4, "yes"

    .line 64
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    const-string v2, "SingleApp"

    iget-object v3, p0, Lcom/android/launcher3/executor/AppsSingleAppPutToSleepModeStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 65
    invoke-virtual {v3}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/AppsSingleAppPutToSleepModeStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0

    .line 67
    :cond_1
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v2, p0, Lcom/android/launcher3/executor/AppsSingleAppPutToSleepModeStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "PutToSleep"

    const-string v3, "Available"

    const-string v4, "no"

    .line 68
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    const-string v2, "SingleApp"

    iget-object v3, p0, Lcom/android/launcher3/executor/AppsSingleAppPutToSleepModeStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 69
    invoke-virtual {v3}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/AppsSingleAppPutToSleepModeStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 70
    const/4 v0, 0x1

    goto :goto_0

    .line 74
    :cond_2
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v2, p0, Lcom/android/launcher3/executor/AppsSingleAppPutToSleepModeStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "SingleApp"

    const-string v3, "Match"

    const-string v4, "no"

    .line 75
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    const-string v2, "SingleApp"

    iget-object v3, p0, Lcom/android/launcher3/executor/AppsSingleAppPutToSleepModeStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 76
    invoke-virtual {v3}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/AppsSingleAppPutToSleepModeStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 77
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 44
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v0

    .line 45
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/samsung/android/sdk/bixby/data/Parameter;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-gez v1, :cond_1

    .line 46
    :cond_0
    const-string v1, "PARAM_CHECK_ERROR"

    .line 48
    :goto_0
    return-object v1

    :cond_1
    const-string v1, "PARAM_CHECK_OK"

    goto :goto_0
.end method
