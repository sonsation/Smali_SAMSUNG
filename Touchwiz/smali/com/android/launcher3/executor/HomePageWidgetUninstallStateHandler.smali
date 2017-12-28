.class public Lcom/android/launcher3/executor/HomePageWidgetUninstallStateHandler;
.super Lcom/android/launcher3/executor/AbstractStateHandler;
.source "HomePageWidgetUninstallStateHandler.java"


# instance fields
.field mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 1
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 29
    new-instance v0, Lcom/android/launcher3/executor/StateAppInfo;

    invoke-direct {v0}, Lcom/android/launcher3/executor/StateAppInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/executor/HomePageWidgetUninstallStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 34
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, "ret":I
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v2, Lcom/android/launcher3/executor/ExecutorState;->HOME_PAGE_WIDGET_UNINSALL_POPUP:Lcom/android/launcher3/executor/ExecutorState;

    .line 45
    invoke-virtual {v2}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "Widget"

    const-string v3, "Match"

    const-string v4, "yes"

    .line 46
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/HomePageWidgetUninstallStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 47
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/executor/HomePageWidgetUninstallStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;II)V

    .line 48
    return-void
.end method

.method public bridge synthetic isAllowedInHomeOnlyMode()Z
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/android/launcher3/executor/AbstractStateHandler;->isAllowedInHomeOnlyMode()Z

    move-result v0

    return v0
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 38
    const-string v0, "PARAM_CHECK_OK"

    return-object v0
.end method
