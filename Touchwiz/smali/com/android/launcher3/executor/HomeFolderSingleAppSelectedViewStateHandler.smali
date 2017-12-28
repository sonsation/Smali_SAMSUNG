.class Lcom/android/launcher3/executor/HomeFolderSingleAppSelectedViewStateHandler;
.super Lcom/android/launcher3/executor/AbstractStateHandler;
.source "HomeFolderSingleAppSelectedViewStateHandler.java"


# instance fields
.field private mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 2
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 10
    new-instance v0, Lcom/android/launcher3/executor/StateAppInfo;

    invoke-direct {v0}, Lcom/android/launcher3/executor/StateAppInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeFolderSingleAppSelectedViewStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 15
    sget-object v0, Lcom/android/launcher3/executor/StateAppInfoHolder;->INSTANCE:Lcom/android/launcher3/executor/StateAppInfoHolder;

    iget-object v1, p0, Lcom/android/launcher3/executor/HomeFolderSingleAppSelectedViewStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/executor/StateAppInfoHolder;->setStateAppInfo(Lcom/android/launcher3/executor/StateAppInfo;)V

    .line 16
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/executor/HomeFolderSingleAppSelectedViewStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    .line 37
    return-void
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 5
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 20
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/executor/StateParamHelper;->newHelper(Ljava/util/Map;)Lcom/android/launcher3/executor/StateParamHelper;

    move-result-object v0

    .line 22
    .local v0, "paramHelper":Lcom/android/launcher3/executor/StateParamHelper;
    const-string v1, "AppName"

    sget-object v2, Lcom/android/launcher3/executor/StateParamHelper$Type;->STRING:Lcom/android/launcher3/executor/StateParamHelper$Type;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/executor/StateParamHelper;->hasSlotValue(Ljava/lang/String;Lcom/android/launcher3/executor/StateParamHelper$Type;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v2, Lcom/android/launcher3/executor/ExecutorState;->HOME_FOLDER_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v2}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "SingleApp"

    const-string v3, "Exist"

    const-string v4, "no"

    .line 24
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/HomeFolderSingleAppSelectedViewStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 25
    const-string v1, "PARAM_CHECK_ERROR"

    .line 30
    :goto_0
    return-object v1

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/executor/HomeFolderSingleAppSelectedViewStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    const-string v2, "AppName"

    invoke-virtual {v0, v2}, Lcom/android/launcher3/executor/StateParamHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/executor/StateAppInfo;->setComponentName(Ljava/lang/String;)V

    .line 30
    const-string v1, "PARAM_CHECK_OK"

    goto :goto_0
.end method
