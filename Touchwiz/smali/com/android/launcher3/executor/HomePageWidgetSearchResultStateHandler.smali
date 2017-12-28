.class Lcom/android/launcher3/executor/HomePageWidgetSearchResultStateHandler;
.super Lcom/android/launcher3/executor/AbstractStateHandler;
.source "HomePageWidgetSearchResultStateHandler.java"


# instance fields
.field mIsLastState:Z

.field mSearchKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 1
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/executor/HomePageWidgetSearchResultStateHandler;->mSearchKey:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/executor/HomePageWidgetSearchResultStateHandler;->mIsLastState:Z

    .line 34
    invoke-virtual {p1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/executor/HomePageWidgetSearchResultStateHandler;->mNlgTargetState:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 7
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 53
    iget-boolean v4, p0, Lcom/android/launcher3/executor/HomePageWidgetSearchResultStateHandler;->mIsLastState:Z

    if-eqz v4, :cond_1

    move v1, v2

    .line 54
    .local v1, "ret":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageWidgetSearchResultStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/executor/HomePageWidgetSearchResultStateHandler;->mSearchKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/proxy/LauncherProxy;->searchWidgetList(Ljava/lang/String;)I

    move-result v0

    .line 55
    .local v0, "count":I
    if-ne v0, v3, :cond_2

    .line 56
    const/4 v1, 0x0

    .line 57
    iget-boolean v3, p0, Lcom/android/launcher3/executor/HomePageWidgetSearchResultStateHandler;->mIsLastState:Z

    if-eqz v3, :cond_0

    .line 58
    new-instance v3, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v4, p0, Lcom/android/launcher3/executor/HomePageWidgetSearchResultStateHandler;->mStateId:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v4}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v4, "Text"

    const-string v5, "Match"

    const-string v6, "yes"

    .line 59
    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v3

    const-string v4, "widgets_count"

    .line 60
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/executor/HomePageWidgetSearchResultStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 73
    :cond_0
    :goto_1
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/launcher3/executor/HomePageWidgetSearchResultStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;II)V

    .line 74
    return-void

    .end local v0    # "count":I
    .end local v1    # "ret":I
    :cond_1
    move v1, v3

    .line 53
    goto :goto_0

    .line 63
    .restart local v0    # "count":I
    .restart local v1    # "ret":I
    :cond_2
    if-le v0, v3, :cond_4

    .line 64
    new-instance v4, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v3, p0, Lcom/android/launcher3/executor/HomePageWidgetSearchResultStateHandler;->mStateId:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v3}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v5, "Text"

    const-string v6, "Match"

    iget-boolean v3, p0, Lcom/android/launcher3/executor/HomePageWidgetSearchResultStateHandler;->mIsLastState:Z

    if-eqz v3, :cond_3

    const-string v3, "yes"

    .line 65
    :goto_2
    invoke-virtual {v4, v5, v6, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v3

    const-string v4, "widgets_count"

    .line 67
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/executor/HomePageWidgetSearchResultStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_1

    .line 64
    :cond_3
    const-string v3, "multi"

    goto :goto_2

    .line 69
    :cond_4
    new-instance v3, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v4, p0, Lcom/android/launcher3/executor/HomePageWidgetSearchResultStateHandler;->mStateId:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v4}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v4, "Text"

    const-string v5, "Match"

    const-string v6, "no"

    .line 70
    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v3

    const-string v4, "Text"

    iget-object v5, p0, Lcom/android/launcher3/executor/HomePageWidgetSearchResultStateHandler;->mSearchKey:Ljava/lang/String;

    .line 71
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/executor/HomePageWidgetSearchResultStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_1
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 4
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 39
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Text"

    iget-object v2, p0, Lcom/android/launcher3/executor/HomePageWidgetSearchResultStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/android/launcher3/executor/StateParamHelper;->getStringParamValue(Lcom/android/launcher3/executor/AbstractStateHandler;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/executor/HomePageWidgetSearchResultStateHandler;->mSearchKey:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/executor/HomePageWidgetSearchResultStateHandler;->mIsLastState:Z

    .line 43
    iget-object v0, p0, Lcom/android/launcher3/executor/HomePageWidgetSearchResultStateHandler;->mSearchKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/android/launcher3/executor/HomePageWidgetSearchResultStateHandler;->mSearchKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v1, "HomePageWidgetSearchView"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v1, "Text"

    const-string v2, "Exist"

    const-string v3, "no"

    .line 45
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/executor/HomePageWidgetSearchResultStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 46
    const-string v0, "PARAM_CHECK_ERROR"

    .line 48
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "PARAM_CHECK_OK"

    goto :goto_0
.end method
