.class Lcom/android/launcher3/executor/AppsPageMoveStateHandler;
.super Lcom/android/launcher3/executor/AbstractAppsStateHandler;
.source "AppsPageMoveStateHandler.java"


# instance fields
.field private mPage:I

.field private mPageDirection:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 1
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    const/16 v0, -0x3e7

    .line 30
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractAppsStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 27
    iput v0, p0, Lcom/android/launcher3/executor/AppsPageMoveStateHandler;->mPage:I

    iput v0, p0, Lcom/android/launcher3/executor/AppsPageMoveStateHandler;->mPageDirection:I

    .line 31
    const-string v0, "AppsPageView"

    iput-object v0, p0, Lcom/android/launcher3/executor/AppsPageMoveStateHandler;->mNlgTargetState:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 6
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    .line 60
    const/4 v1, 0x0

    .line 61
    .local v1, "ret":I
    iget v2, p0, Lcom/android/launcher3/executor/AppsPageMoveStateHandler;->mPage:I

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsPageMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/executor/AppsPageMoveStateHandler;->mPage:I

    iget v4, p0, Lcom/android/launcher3/executor/AppsPageMoveStateHandler;->mPageDirection:I

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/proxy/LauncherProxy;->isAppsValidPage(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsPageMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsPageCount()I

    move-result v0

    .line 63
    .local v0, "pageCount":I
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v3, p0, Lcom/android/launcher3/executor/AppsPageMoveStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "PageLocation"

    const-string v4, "Valid"

    const-string v5, "no"

    .line 64
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    const-string v3, "page_count"

    .line 65
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/AppsPageMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 66
    const/4 v1, 0x1

    .line 69
    .end local v0    # "pageCount":I
    :cond_0
    if-nez v1, :cond_1

    .line 70
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v3, p0, Lcom/android/launcher3/executor/AppsPageMoveStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "PageLocation"

    const-string v4, "Valid"

    const-string v5, "yes"

    .line 71
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    const-string v3, "PageLocation"

    iget v4, p0, Lcom/android/launcher3/executor/AppsPageMoveStateHandler;->mPage:I

    add-int/lit8 v4, v4, 0x1

    .line 72
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/AppsPageMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 73
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsPageMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/executor/AppsPageMoveStateHandler;->mPage:I

    iget v4, p0, Lcom/android/launcher3/executor/AppsPageMoveStateHandler;->mPageDirection:I

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/proxy/LauncherProxy;->moveAppsPage(II)I

    .line 75
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/executor/AppsPageMoveStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    .line 76
    return-void
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 5
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    const/16 v4, -0x3e7

    .line 36
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Page"

    iget-object v2, p0, Lcom/android/launcher3/executor/AppsPageMoveStateHandler;->mNlgTargetState:Ljava/lang/String;

    const-string v3, "PageLocation"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/launcher3/executor/StateParamHelper;->getIntParamValue(Lcom/android/launcher3/executor/AbstractStateHandler;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/executor/AppsPageMoveStateHandler;->mPage:I

    .line 38
    iget v0, p0, Lcom/android/launcher3/executor/AppsPageMoveStateHandler;->mPage:I

    if-ne v0, v4, :cond_0

    .line 39
    const-string v0, "PARAM_CHECK_ERROR"

    .line 55
    :goto_0
    return-object v0

    .line 42
    :cond_0
    iget v0, p0, Lcom/android/launcher3/executor/AppsPageMoveStateHandler;->mPage:I

    if-gez v0, :cond_1

    .line 43
    iget v0, p0, Lcom/android/launcher3/executor/AppsPageMoveStateHandler;->mPage:I

    iput v0, p0, Lcom/android/launcher3/executor/AppsPageMoveStateHandler;->mPageDirection:I

    .line 44
    iput v4, p0, Lcom/android/launcher3/executor/AppsPageMoveStateHandler;->mPage:I

    .line 49
    :goto_1
    iget v0, p0, Lcom/android/launcher3/executor/AppsPageMoveStateHandler;->mPage:I

    if-ne v0, v4, :cond_2

    iget v0, p0, Lcom/android/launcher3/executor/AppsPageMoveStateHandler;->mPageDirection:I

    if-ne v0, v4, :cond_2

    .line 50
    new-instance v0, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v1, p0, Lcom/android/launcher3/executor/AppsPageMoveStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v1, "PageLocation"

    const-string v2, "Exist"

    const-string v3, "no"

    .line 51
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/executor/AppsPageMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 52
    const-string v0, "PARAM_CHECK_ERROR"

    goto :goto_0

    .line 46
    :cond_1
    iget v0, p0, Lcom/android/launcher3/executor/AppsPageMoveStateHandler;->mPage:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/launcher3/executor/AppsPageMoveStateHandler;->mPage:I

    goto :goto_1

    .line 55
    :cond_2
    const-string v0, "PARAM_CHECK_OK"

    goto :goto_0
.end method
