.class public Lcom/android/launcher3/executor/HomeSettingChangeToHomeAppsScreenPopupStateHandler;
.super Lcom/android/launcher3/executor/AbstractStateHandler;
.source "HomeSettingChangeToHomeAppsScreenPopupStateHandler.java"


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 0
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 27
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, "ret":I
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/executor/HomeSettingChangeToHomeAppsScreenPopupStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    .line 38
    return-void
.end method

.method public bridge synthetic isAllowedInHomeOnlyMode()Z
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/android/launcher3/executor/AbstractStateHandler;->isAllowedInHomeOnlyMode()Z

    move-result v0

    return v0
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 31
    const-string v0, "PARAM_CHECK_OK"

    return-object v0
.end method
