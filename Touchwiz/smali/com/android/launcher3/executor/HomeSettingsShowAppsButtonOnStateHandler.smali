.class Lcom/android/launcher3/executor/HomeSettingsShowAppsButtonOnStateHandler;
.super Lcom/android/launcher3/executor/AbstractStateHandler;
.source "HomeSettingsShowAppsButtonOnStateHandler.java"


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 0
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 30
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSettingsShowAppsButtonOnStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/proxy/LauncherProxy;->isHomeOnlyMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    const/4 v0, 0x1

    .line 42
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v2, "HomeSettingsView"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "HomeAndAppsScreen"

    const-string v3, "AlreadySet"

    const-string v4, "no"

    .line 43
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/HomeSettingsShowAppsButtonOnStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 56
    :goto_0
    const/16 v1, 0x64

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/executor/HomeSettingsShowAppsButtonOnStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;II)V

    .line 57
    return-void

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSettingsShowAppsButtonOnStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/proxy/LauncherProxy;->isEnableAppsButton()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    const/4 v0, 0x1

    .line 47
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v2, "AppsButtonSettingsView"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "AppsButton"

    const-string v3, "AlreadyOn"

    const-string v4, "yes"

    .line 48
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/HomeSettingsShowAppsButtonOnStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSettingsShowAppsButtonOnStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/proxy/LauncherProxy;->enableAppsButton(Z)I

    .line 51
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v2, "Home"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "AppsButton"

    const-string v3, "AlreadyOn"

    const-string v4, "no"

    .line 52
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/HomeSettingsShowAppsButtonOnStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 34
    const-string v0, "PARAM_CHECK_OK"

    return-object v0
.end method
