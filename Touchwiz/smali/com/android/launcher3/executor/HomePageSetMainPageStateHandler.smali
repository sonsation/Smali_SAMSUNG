.class Lcom/android/launcher3/executor/HomePageSetMainPageStateHandler;
.super Lcom/android/launcher3/executor/AbstractStateHandler;
.source "HomePageSetMainPageStateHandler.java"


# instance fields
.field private mPage:I

.field private mPageDirection:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 1
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    const/16 v0, -0x3e7

    .line 31
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 28
    iput v0, p0, Lcom/android/launcher3/executor/HomePageSetMainPageStateHandler;->mPage:I

    iput v0, p0, Lcom/android/launcher3/executor/HomePageSetMainPageStateHandler;->mPageDirection:I

    .line 32
    const-string v0, "HomePageEditView"

    iput-object v0, p0, Lcom/android/launcher3/executor/HomePageSetMainPageStateHandler;->mNlgTargetState:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 58
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageSetMainPageStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/executor/HomePageSetMainPageStateHandler;->mPage:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/proxy/LauncherProxy;->isHomeValidPageInOverview(IZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v2, "HomePageEditView"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "PageLocation"

    const-string v3, "Valid"

    const-string v4, "no"

    .line 60
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    const-string v2, "page_count"

    .line 61
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageSetMainPageStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomePageCountInOverviewMode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/HomePageSetMainPageStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 62
    const/4 v0, 0x1

    .line 65
    :cond_0
    if-nez v0, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageSetMainPageStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/executor/HomePageSetMainPageStateHandler;->mPage:I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/proxy/LauncherProxy;->moveToHomePage(I)I

    .line 67
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageSetMainPageStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/proxy/LauncherProxy;->setHomeCurrentAsMainPage()I

    .line 68
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageSetMainPageStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/proxy/LauncherProxy;->goHome()I

    .line 69
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v2, "Home"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "PageLocation"

    const-string v3, "Valid"

    const-string v4, "yes"

    .line 70
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/HomePageSetMainPageStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 73
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/executor/HomePageSetMainPageStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    .line 74
    return-void
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 4
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 37
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Page"

    iget-object v2, p0, Lcom/android/launcher3/executor/HomePageSetMainPageStateHandler;->mNlgTargetState:Ljava/lang/String;

    const-string v3, "PageLocation"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/launcher3/executor/StateParamHelper;->getIntParamValue(Lcom/android/launcher3/executor/AbstractStateHandler;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/executor/HomePageSetMainPageStateHandler;->mPage:I

    .line 39
    iget v0, p0, Lcom/android/launcher3/executor/HomePageSetMainPageStateHandler;->mPage:I

    const/16 v1, -0x3e7

    if-ne v0, v1, :cond_0

    .line 40
    new-instance v0, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v1, "HomePageEditView"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v1, "PageLocation"

    const-string v2, "Exist"

    const-string v3, "no"

    .line 41
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    const-string v1, "page_count"

    .line 42
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageSetMainPageStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomePageCountInOverviewMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/executor/HomePageSetMainPageStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 43
    const-string v0, "PARAM_CHECK_ERROR"

    .line 51
    :goto_0
    return-object v0

    .line 46
    :cond_0
    iget v0, p0, Lcom/android/launcher3/executor/HomePageSetMainPageStateHandler;->mPage:I

    if-gez v0, :cond_1

    .line 47
    iget v0, p0, Lcom/android/launcher3/executor/HomePageSetMainPageStateHandler;->mPage:I

    iput v0, p0, Lcom/android/launcher3/executor/HomePageSetMainPageStateHandler;->mPageDirection:I

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageSetMainPageStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/executor/HomePageSetMainPageStateHandler;->mPage:I

    iget v2, p0, Lcom/android/launcher3/executor/HomePageSetMainPageStateHandler;->mPageDirection:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberInOverview(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/executor/HomePageSetMainPageStateHandler;->mPage:I

    .line 51
    const-string v0, "PARAM_CHECK_OK"

    goto :goto_0
.end method
