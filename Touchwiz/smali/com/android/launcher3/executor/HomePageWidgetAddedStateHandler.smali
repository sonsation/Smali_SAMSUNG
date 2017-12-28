.class Lcom/android/launcher3/executor/HomePageWidgetAddedStateHandler;
.super Lcom/android/launcher3/executor/AbstractStateHandler;
.source "HomePageWidgetAddedStateHandler.java"


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
    .locals 5
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageWidgetAddedStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/proxy/LauncherProxy;->addWidgetResultItemToHome()I

    .line 35
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v2, "Home"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "Text"

    const-string v3, "Match"

    const-string v4, "yes"

    .line 36
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/HomePageWidgetAddedStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 38
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/executor/HomePageWidgetAddedStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;II)V

    .line 39
    return-void
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 43
    const-string v0, "PARAM_CHECK_OK"

    return-object v0
.end method
