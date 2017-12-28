.class Lcom/android/launcher3/executor/HomePageMoveStateHandler;
.super Lcom/android/launcher3/executor/AbstractStateHandler;
.source "HomePageMoveStateHandler.java"


# instance fields
.field protected mPage:I

.field protected mPageDirection:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 1
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    const/16 v0, -0x3e7

    .line 32
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 28
    iput v0, p0, Lcom/android/launcher3/executor/HomePageMoveStateHandler;->mPage:I

    iput v0, p0, Lcom/android/launcher3/executor/HomePageMoveStateHandler;->mPageDirection:I

    .line 33
    const-string v0, "Home"

    iput-object v0, p0, Lcom/android/launcher3/executor/HomePageMoveStateHandler;->mNlgTargetState:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "ret":I
    iget v1, p0, Lcom/android/launcher3/executor/HomePageMoveStateHandler;->mPage:I

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/executor/HomePageMoveStateHandler;->mPage:I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/proxy/LauncherProxy;->isHomeValidPage(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v2, p0, Lcom/android/launcher3/executor/HomePageMoveStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "PageLocation"

    const-string v3, "Valid"

    const-string v4, "no"

    .line 67
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/HomePageMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 68
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, -0x6

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/proxy/LauncherProxy;->moveToHomePage(II)I

    .line 69
    const/4 v0, 0x1

    .line 72
    :cond_0
    if-nez v0, :cond_1

    .line 73
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v2, p0, Lcom/android/launcher3/executor/HomePageMoveStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "PageLocation"

    const-string v3, "Valid"

    const-string v4, "yes"

    .line 74
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/HomePageMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 75
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/executor/HomePageMoveStateHandler;->mPage:I

    iget v3, p0, Lcom/android/launcher3/executor/HomePageMoveStateHandler;->mPageDirection:I

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/proxy/LauncherProxy;->moveToHomePage(II)I

    .line 77
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/executor/HomePageMoveStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    .line 78
    return-void
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 7
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    const/4 v6, -0x1

    const/4 v5, -0x6

    const/16 v4, -0x3e7

    .line 38
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Page"

    iget-object v2, p0, Lcom/android/launcher3/executor/HomePageMoveStateHandler;->mNlgTargetState:Ljava/lang/String;

    const-string v3, "PageLocation"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/launcher3/executor/StateParamHelper;->getIntParamValue(Lcom/android/launcher3/executor/AbstractStateHandler;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/executor/HomePageMoveStateHandler;->mPage:I

    .line 40
    iget v0, p0, Lcom/android/launcher3/executor/HomePageMoveStateHandler;->mPage:I

    if-ne v0, v4, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v0

    invoke-virtual {v0, v6, v5}, Lcom/android/launcher3/proxy/LauncherProxy;->moveToHomePage(II)I

    .line 42
    const-string v0, "PARAM_CHECK_ERROR"

    .line 59
    :goto_0
    return-object v0

    .line 45
    :cond_0
    iget v0, p0, Lcom/android/launcher3/executor/HomePageMoveStateHandler;->mPage:I

    if-gez v0, :cond_1

    .line 46
    iget v0, p0, Lcom/android/launcher3/executor/HomePageMoveStateHandler;->mPage:I

    iput v0, p0, Lcom/android/launcher3/executor/HomePageMoveStateHandler;->mPageDirection:I

    .line 47
    iput v4, p0, Lcom/android/launcher3/executor/HomePageMoveStateHandler;->mPage:I

    .line 52
    :goto_1
    iget v0, p0, Lcom/android/launcher3/executor/HomePageMoveStateHandler;->mPage:I

    if-ne v0, v4, :cond_2

    iget v0, p0, Lcom/android/launcher3/executor/HomePageMoveStateHandler;->mPageDirection:I

    if-ne v0, v4, :cond_2

    .line 53
    new-instance v0, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v1, p0, Lcom/android/launcher3/executor/HomePageMoveStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v1, "PageLocation"

    const-string v2, "Exist"

    const-string v3, "no"

    .line 54
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/executor/HomePageMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 55
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v0

    invoke-virtual {v0, v6, v5}, Lcom/android/launcher3/proxy/LauncherProxy;->moveToHomePage(II)I

    .line 56
    const-string v0, "PARAM_CHECK_ERROR"

    goto :goto_0

    .line 49
    :cond_1
    iget v0, p0, Lcom/android/launcher3/executor/HomePageMoveStateHandler;->mPage:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/launcher3/executor/HomePageMoveStateHandler;->mPage:I

    goto :goto_1

    .line 59
    :cond_2
    const-string v0, "PARAM_CHECK_OK"

    goto :goto_0
.end method
