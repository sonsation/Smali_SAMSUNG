.class Lcom/android/launcher3/executor/HomeSettingsAppsGridSettingViewStateHandler;
.super Lcom/android/launcher3/executor/AbstractAppsStateHandler;
.source "HomeSettingsAppsGridSettingViewStateHandler.java"


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 0
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractAppsStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 18
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    .line 27
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    new-instance v0, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->HOME_SETTINGS:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v1, "EasyMode"

    const-string v2, "On"

    const-string v3, "yes"

    .line 29
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeSettingsAppsGridSettingViewStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/executor/HomeSettingsAppsGridSettingViewStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    .line 35
    :goto_0
    return-void

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSettingsAppsGridSettingViewStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/proxy/LauncherProxy;->enterHomeSettingAppsGridSettingView()I

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/executor/HomeSettingsAppsGridSettingViewStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    goto :goto_0
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 22
    const-string v0, "PARAM_CHECK_OK"

    return-object v0
.end method
