.class Lcom/android/launcher3/executor/HomePageAutoReArrangeToBottomStateHandler;
.super Lcom/android/launcher3/executor/AbstractStateHandler;
.source "HomePageAutoReArrangeToBottomStateHandler.java"


# instance fields
.field private mPage:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 1
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 27
    const/16 v0, -0x3e7

    iput v0, p0, Lcom/android/launcher3/executor/HomePageAutoReArrangeToBottomStateHandler;->mPage:I

    .line 31
    const-string v0, "HomePageEditView"

    iput-object v0, p0, Lcom/android/launcher3/executor/HomePageAutoReArrangeToBottomStateHandler;->mNlgTargetState:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 6
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    const/4 v5, 0x0

    .line 56
    const/4 v0, 0x0

    .line 58
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageAutoReArrangeToBottomStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/executor/HomePageAutoReArrangeToBottomStateHandler;->mPage:I

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

    iput-object v1, p0, Lcom/android/launcher3/executor/HomePageAutoReArrangeToBottomStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 61
    const/4 v0, 0x1

    .line 64
    :cond_0
    if-nez v0, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageAutoReArrangeToBottomStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/executor/HomePageAutoReArrangeToBottomStateHandler;->mPage:I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/proxy/LauncherProxy;->moveToHomePage(I)I

    .line 66
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageAutoReArrangeToBottomStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/executor/HomePageAutoReArrangeToBottomStateHandler;->mPage:I

    invoke-virtual {v1, v2, v5}, Lcom/android/launcher3/proxy/LauncherProxy;->checkAbleAlignIcon(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 67
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageAutoReArrangeToBottomStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/executor/HomePageAutoReArrangeToBottomStateHandler;->mPage:I

    invoke-virtual {v1, v2, v5}, Lcom/android/launcher3/proxy/LauncherProxy;->alignHomeIcon(IZ)I

    .line 68
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageAutoReArrangeToBottomStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/proxy/LauncherProxy;->checkNeedDisplayAutoalignDialog()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 69
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v2, "HomePageAutoReArrangePopup"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "Popup"

    const-string v3, "Appeared"

    const-string v4, "yes"

    .line 70
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/HomePageAutoReArrangeToBottomStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 83
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/executor/HomePageAutoReArrangeToBottomStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    .line 84
    return-void

    .line 72
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageAutoReArrangeToBottomStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/proxy/LauncherProxy;->goHome()I

    .line 73
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v2, "Home"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "Popup"

    const-string v3, "Appeared"

    const-string v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/HomePageAutoReArrangeToBottomStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0

    .line 77
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageAutoReArrangeToBottomStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/proxy/LauncherProxy;->goHome()I

    .line 78
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v2, "Home"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "AlignToBottom"

    const-string v3, "Available"

    const-string v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/HomePageAutoReArrangeToBottomStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0
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

    iget-object v3, p0, Lcom/android/launcher3/executor/HomePageAutoReArrangeToBottomStateHandler;->mNlgTargetState:Ljava/lang/String;

    const-string v4, "PageLocation"

    invoke-static {p0, v1, v2, v3, v4}, Lcom/android/launcher3/executor/StateParamHelper;->getIntParamValue(Lcom/android/launcher3/executor/AbstractStateHandler;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/executor/HomePageAutoReArrangeToBottomStateHandler;->mPage:I

    .line 41
    iget v1, p0, Lcom/android/launcher3/executor/HomePageAutoReArrangeToBottomStateHandler;->mPage:I

    const/16 v2, -0x3e7

    if-ne v1, v2, :cond_0

    .line 42
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v2, "HomePageEditView"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "PageLocation"

    const-string v3, "Exist"

    const-string v4, "no"

    .line 43
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/HomePageAutoReArrangeToBottomStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 44
    const-string v1, "PARAM_CHECK_ERROR"

    .line 51
    :goto_0
    return-object v1

    .line 47
    :cond_0
    iget v1, p0, Lcom/android/launcher3/executor/HomePageAutoReArrangeToBottomStateHandler;->mPage:I

    if-gez v1, :cond_1

    .line 48
    iget v0, p0, Lcom/android/launcher3/executor/HomePageAutoReArrangeToBottomStateHandler;->mPage:I

    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageAutoReArrangeToBottomStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/executor/HomePageAutoReArrangeToBottomStateHandler;->mPage:I

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberInOverview(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/executor/HomePageAutoReArrangeToBottomStateHandler;->mPage:I

    .line 51
    const-string v1, "PARAM_CHECK_OK"

    goto :goto_0
.end method
