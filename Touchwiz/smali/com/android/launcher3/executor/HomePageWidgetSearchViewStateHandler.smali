.class Lcom/android/launcher3/executor/HomePageWidgetSearchViewStateHandler;
.super Lcom/android/launcher3/executor/AbstractStateHandler;
.source "HomePageWidgetSearchViewStateHandler.java"


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 0
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 29
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    .line 38
    const/4 v0, 0x0

    .line 39
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageWidgetSearchViewStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/proxy/LauncherProxy;->enterWidgetSearchState()I

    .line 40
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/executor/HomePageWidgetSearchViewStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    .line 41
    return-void
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 33
    const-string v0, "PARAM_CHECK_OK"

    return-object v0
.end method
