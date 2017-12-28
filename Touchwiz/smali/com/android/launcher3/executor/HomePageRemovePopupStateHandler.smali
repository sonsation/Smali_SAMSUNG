.class Lcom/android/launcher3/executor/HomePageRemovePopupStateHandler;
.super Lcom/android/launcher3/executor/AbstractStateHandler;
.source "HomePageRemovePopupStateHandler.java"


# static fields
.field protected static sPage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/16 v0, -0x3e7

    sput v0, Lcom/android/launcher3/executor/HomePageRemovePopupStateHandler;->sPage:I

    return-void
.end method

.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 1
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 32
    const-string v0, "HomePageEditView"

    iput-object v0, p0, Lcom/android/launcher3/executor/HomePageRemovePopupStateHandler;->mNlgTargetState:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "ret":I
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v2, "HomePageEditView"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/launcher3/executor/HomePageRemovePopupStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 60
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/executor/HomePageRemovePopupStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    .line 61
    return-void
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 5
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 37
    const/16 v0, -0x3e7

    .line 38
    .local v0, "pageDirection":I
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Page"

    iget-object v3, p0, Lcom/android/launcher3/executor/HomePageRemovePopupStateHandler;->mNlgTargetState:Ljava/lang/String;

    const-string v4, "PageLocation"

    invoke-static {p0, v1, v2, v3, v4}, Lcom/android/launcher3/executor/StateParamHelper;->getIntParamValue(Lcom/android/launcher3/executor/AbstractStateHandler;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/launcher3/executor/HomePageRemovePopupStateHandler;->sPage:I

    .line 41
    sget v1, Lcom/android/launcher3/executor/HomePageRemovePopupStateHandler;->sPage:I

    const/16 v2, -0x3e7

    if-ne v1, v2, :cond_0

    .line 42
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v2, p0, Lcom/android/launcher3/executor/HomePageRemovePopupStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "PageLocation"

    const-string v3, "Exist"

    const-string v4, "no"

    .line 43
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    const-string v2, "page_count"

    .line 44
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageRemovePopupStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomePageCountInOverviewMode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/HomePageRemovePopupStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 45
    const-string v1, "PARAM_CHECK_ERROR"

    .line 53
    :goto_0
    return-object v1

    .line 48
    :cond_0
    sget v1, Lcom/android/launcher3/executor/HomePageRemovePopupStateHandler;->sPage:I

    if-gez v1, :cond_1

    .line 49
    sget v0, Lcom/android/launcher3/executor/HomePageRemovePopupStateHandler;->sPage:I

    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageRemovePopupStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    sget v2, Lcom/android/launcher3/executor/HomePageRemovePopupStateHandler;->sPage:I

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberInOverview(II)I

    move-result v1

    sput v1, Lcom/android/launcher3/executor/HomePageRemovePopupStateHandler;->sPage:I

    .line 53
    const-string v1, "PARAM_CHECK_OK"

    goto :goto_0
.end method
