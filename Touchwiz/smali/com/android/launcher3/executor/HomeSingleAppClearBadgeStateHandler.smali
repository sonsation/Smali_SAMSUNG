.class Lcom/android/launcher3/executor/HomeSingleAppClearBadgeStateHandler;
.super Lcom/android/launcher3/executor/AbstractStateHandler;
.source "HomeSingleAppClearBadgeStateHandler.java"


# instance fields
.field mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 2
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 31
    sget-object v0, Lcom/android/launcher3/executor/StateAppInfoHolder;->INSTANCE:Lcom/android/launcher3/executor/StateAppInfoHolder;

    invoke-virtual {v0}, Lcom/android/launcher3/executor/StateAppInfoHolder;->getStateAppInfo()Lcom/android/launcher3/executor/StateAppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeSingleAppClearBadgeStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 32
    iget-object v0, p0, Lcom/android/launcher3/executor/HomeSingleAppClearBadgeStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StateAppInfo is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HomeSingleAppClearBadge"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    const-string v0, "Home"

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeSingleAppClearBadgeStateHandler;->mNlgTargetState:Ljava/lang/String;

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_1
    const-string v0, "AppsPageView"

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeSingleAppClearBadgeStateHandler;->mNlgTargetState:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 52
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSingleAppClearBadgeStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/executor/HomeSingleAppClearBadgeStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/proxy/LauncherProxy;->hasItemInHome(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSingleAppClearBadgeStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/executor/HomeSingleAppClearBadgeStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/proxy/LauncherProxy;->clearBadge(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I

    .line 54
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v2, p0, Lcom/android/launcher3/executor/HomeSingleAppClearBadgeStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "SingleApp"

    const-string v3, "Match"

    const-string v4, "yes"

    .line 55
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    const-string v2, "SingleApp"

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeSingleAppClearBadgeStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 56
    invoke-virtual {v3}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/HomeSingleAppClearBadgeStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 63
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/executor/HomeSingleAppClearBadgeStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    .line 64
    return-void

    .line 58
    :cond_0
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v2, p0, Lcom/android/launcher3/executor/HomeSingleAppClearBadgeStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "SingleApp"

    const-string v3, "Match"

    const-string v4, "no"

    .line 59
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    const-string v2, "SingleApp"

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeSingleAppClearBadgeStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 60
    invoke-virtual {v3}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/HomeSingleAppClearBadgeStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 61
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 45
    const-string v0, "PARAM_CHECK_OK"

    return-object v0
.end method
