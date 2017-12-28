.class Lcom/android/launcher3/executor/HomePageAddPageStateHandler;
.super Lcom/android/launcher3/executor/AbstractStateHandler;
.source "HomePageAddPageStateHandler.java"


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
    .locals 3
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageAddPageStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/proxy/LauncherProxy;->addNewHomePageInOverViewMode()I

    .line 41
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageAddPageStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/proxy/LauncherProxy;->goHome()I

    .line 42
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v2, "Home"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/launcher3/executor/HomePageAddPageStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 43
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/executor/HomePageAddPageStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    .line 44
    return-void
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 34
    const-string v0, "PARAM_CHECK_OK"

    return-object v0
.end method
