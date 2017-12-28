.class Lcom/android/launcher3/executor/HomePageRemovePageStateHandler;
.super Lcom/android/launcher3/executor/HomePageRemovePopupStateHandler;
.source "HomePageRemovePageStateHandler.java"


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 0
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/HomePageRemovePopupStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 30
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 6
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    .line 39
    const/4 v1, 0x0

    .line 40
    .local v1, "ret":I
    const/4 v0, 0x1

    .line 42
    .local v0, "needGoHome":Z
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageRemovePageStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    sget v3, Lcom/android/launcher3/executor/HomePageRemovePageStateHandler;->sPage:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/proxy/LauncherProxy;->isHomeValidPageInOverview(IZ)Z

    move-result v2

    if-nez v2, :cond_1

    .line 43
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v3, p0, Lcom/android/launcher3/executor/HomePageRemovePageStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "PageLocation"

    const-string v4, "Valid"

    const-string v5, "no"

    .line 44
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    const-string v3, "page_count"

    .line 45
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageRemovePageStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomePageCountInOverviewMode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/HomePageRemovePageStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 46
    const/4 v1, 0x1

    .line 63
    :goto_0
    if-nez v1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageRemovePageStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/proxy/LauncherProxy;->removeHomeCurrentPage()I

    .line 65
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageRemovePageStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/proxy/LauncherProxy;->goHome()I

    .line 70
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/executor/HomePageRemovePageStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    .line 71
    return-void

    .line 48
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageRemovePageStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    sget v3, Lcom/android/launcher3/executor/HomePageRemovePageStateHandler;->sPage:I

    invoke-virtual {v2, v3}, Lcom/android/launcher3/proxy/LauncherProxy;->moveToHomePage(I)I

    .line 49
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageRemovePageStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    sget v3, Lcom/android/launcher3/executor/HomePageRemovePageStateHandler;->sPage:I

    invoke-virtual {v2, v3}, Lcom/android/launcher3/proxy/LauncherProxy;->hasPageDeleteButton(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 50
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v3, p0, Lcom/android/launcher3/executor/HomePageRemovePageStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "RemoveButton"

    const-string v4, "Available"

    const-string v5, "no"

    .line 51
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/HomePageRemovePageStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 52
    const/4 v1, 0x1

    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageRemovePageStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    sget v3, Lcom/android/launcher3/executor/HomePageRemovePageStateHandler;->sPage:I

    invoke-virtual {v2, v3}, Lcom/android/launcher3/proxy/LauncherProxy;->isEmptyPage(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 54
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v3, "Home"

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "Shortcuts"

    const-string v4, "InPage"

    const-string v5, "no"

    .line 55
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/HomePageRemovePageStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0

    .line 57
    :cond_3
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v3, "HomePageRemovePopup"

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "Shortcuts"

    const-string v4, "InPage"

    const-string v5, "yes"

    .line 58
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/HomePageRemovePageStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 59
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 34
    const-string v0, "PARAM_CHECK_OK"

    return-object v0
.end method
