.class Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;
.super Lcom/android/launcher3/executor/AbstractStateHandler;
.source "HomePageChangeOrderStateHandler.java"


# instance fields
.field private mFromPage:I

.field private mToPage:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 1
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    const/16 v0, -0x3e7

    .line 32
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 28
    iput v0, p0, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->mFromPage:I

    .line 29
    iput v0, p0, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->mToPage:I

    .line 33
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    const/4 v3, 0x1

    .line 68
    const/4 v0, 0x0

    .line 70
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->mFromPage:I

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/proxy/LauncherProxy;->isHomeValidPageInOverview(IZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v2, Lcom/android/launcher3/executor/ExecutorState;->HOME_EDIT:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v2}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "Page"

    const-string v3, "Valid"

    const-string v4, "no"

    .line 72
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    const-string v2, "page_count"

    .line 74
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomePageCountInOverviewMode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 75
    const/4 v0, 0x1

    .line 93
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    .line 94
    return-void

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->mToPage:I

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/proxy/LauncherProxy;->isHomeValidPageInOverview(IZ)Z

    move-result v1

    if-nez v1, :cond_1

    .line 77
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v2, Lcom/android/launcher3/executor/ExecutorState;->HOME_EDIT:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v2}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "PageLocation"

    const-string v3, "Valid"

    const-string v4, "no"

    .line 78
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    const-string v2, "page_count"

    .line 80
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomePageCountInOverviewMode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 81
    const/4 v0, 0x1

    goto :goto_0

    .line 82
    :cond_1
    iget v1, p0, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->mFromPage:I

    iget v2, p0, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->mToPage:I

    if-ne v1, v2, :cond_2

    .line 83
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v2, Lcom/android/launcher3/executor/ExecutorState;->HOME_EDIT:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v2}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "Page"

    const-string v3, "SameAsLocation"

    const-string v4, "yes"

    .line 84
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 85
    const/4 v0, 0x1

    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->mFromPage:I

    iget v3, p0, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->mToPage:I

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/proxy/LauncherProxy;->changeHomePageOrder(II)I

    .line 88
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/proxy/LauncherProxy;->goHome()I

    .line 89
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v2, Lcom/android/launcher3/executor/ExecutorState;->HOME:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v2}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "Page"

    const-string v3, "SameAsLocation"

    const-string v4, "no"

    .line 90
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto/16 :goto_0
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 5
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    const/16 v3, -0x3e7

    .line 37
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/executor/StateParamHelper;->newHelper(Ljava/util/Map;)Lcom/android/launcher3/executor/StateParamHelper;

    move-result-object v0

    .line 39
    .local v0, "paramHelper":Lcom/android/launcher3/executor/StateParamHelper;
    const-string v1, "Page"

    sget-object v2, Lcom/android/launcher3/executor/StateParamHelper$Type;->INTEGER:Lcom/android/launcher3/executor/StateParamHelper$Type;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/executor/StateParamHelper;->hasSlotValue(Ljava/lang/String;Lcom/android/launcher3/executor/StateParamHelper$Type;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    const-string v1, "Page"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/executor/StateParamHelper;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->mFromPage:I

    .line 42
    :cond_0
    const-string v1, "MoveLocation"

    sget-object v2, Lcom/android/launcher3/executor/StateParamHelper$Type;->INTEGER:Lcom/android/launcher3/executor/StateParamHelper$Type;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/executor/StateParamHelper;->hasSlotValue(Ljava/lang/String;Lcom/android/launcher3/executor/StateParamHelper$Type;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    const-string v1, "MoveLocation"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/executor/StateParamHelper;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->mToPage:I

    .line 46
    :cond_1
    iget v1, p0, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->mFromPage:I

    if-ne v1, v3, :cond_2

    .line 47
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v2, Lcom/android/launcher3/executor/ExecutorState;->HOME_EDIT:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v2}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "Page"

    const-string v3, "Valid"

    const-string v4, "no"

    .line 48
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    const-string v2, "page_count"

    .line 50
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomePageCountInOverviewMode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 49
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 51
    const-string v1, "PARAM_CHECK_ERROR"

    .line 63
    :goto_0
    return-object v1

    .line 52
    :cond_2
    iget v1, p0, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->mToPage:I

    if-ne v1, v3, :cond_3

    .line 53
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v2, Lcom/android/launcher3/executor/ExecutorState;->HOME_EDIT:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v2}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "PageLocation"

    const-string v3, "Valid"

    const-string v4, "no"

    .line 54
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    const-string v2, "page_count"

    .line 56
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomePageCountInOverviewMode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 55
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 57
    const-string v1, "PARAM_CHECK_ERROR"

    goto :goto_0

    .line 59
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->mFromPage:I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberInOverview(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->mFromPage:I

    .line 60
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->mToPage:I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberInOverview(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/executor/HomePageChangeOrderStateHandler;->mToPage:I

    .line 63
    const-string v1, "PARAM_CHECK_OK"

    goto :goto_0
.end method
