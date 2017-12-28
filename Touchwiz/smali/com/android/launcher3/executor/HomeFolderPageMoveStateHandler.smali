.class Lcom/android/launcher3/executor/HomeFolderPageMoveStateHandler;
.super Lcom/android/launcher3/executor/HomePageMoveStateHandler;
.source "HomeFolderPageMoveStateHandler.java"


# instance fields
.field mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 2
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/HomePageMoveStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 31
    sget-object v0, Lcom/android/launcher3/executor/StateAppInfoHolder;->INSTANCE:Lcom/android/launcher3/executor/StateAppInfoHolder;

    invoke-virtual {v0}, Lcom/android/launcher3/executor/StateAppInfoHolder;->getStateAppInfo()Lcom/android/launcher3/executor/StateAppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeFolderPageMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 32
    iget-object v0, p0, Lcom/android/launcher3/executor/HomeFolderPageMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StateAppInfo is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    sget-object v0, Lcom/android/launcher3/executor/ExecutorState;->HOME_FOLDER_PAGE_MOVE:Lcom/android/launcher3/executor/ExecutorState;

    if-ne p1, v0, :cond_1

    .line 37
    sget-object v0, Lcom/android/launcher3/executor/ExecutorState;->HOME_FOLDER_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v0}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeFolderPageMoveStateHandler;->mNlgTargetState:Ljava/lang/String;

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_1
    sget-object v0, Lcom/android/launcher3/executor/ExecutorState;->APPS_FOLDER_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v0}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeFolderPageMoveStateHandler;->mNlgTargetState:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 6
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    .line 45
    const/4 v1, 0x0

    .line 46
    .local v1, "ret":I
    iget v2, p0, Lcom/android/launcher3/executor/HomeFolderPageMoveStateHandler;->mPage:I

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderPageMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/executor/HomeFolderPageMoveStateHandler;->mPage:I

    invoke-virtual {v2, v3}, Lcom/android/launcher3/proxy/LauncherProxy;->isFolderValidPage(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderPageMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/proxy/LauncherProxy;->getOpenedFolderPageCount()I

    move-result v0

    .line 49
    .local v0, "pageCount":I
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeFolderPageMoveStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "PageLocation"

    const-string v4, "Valid"

    const-string v5, "no"

    .line 50
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    const-string v3, "FolderName"

    iget-object v4, p0, Lcom/android/launcher3/executor/HomeFolderPageMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 51
    invoke-virtual {v4}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    const-string v3, "page_count"

    .line 52
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/HomeFolderPageMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 53
    const/4 v1, 0x1

    .line 63
    .end local v0    # "pageCount":I
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/executor/HomeFolderPageMoveStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    .line 64
    return-void

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderPageMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/executor/HomeFolderPageMoveStateHandler;->mPage:I

    iget v4, p0, Lcom/android/launcher3/executor/HomeFolderPageMoveStateHandler;->mPageDirection:I

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/proxy/LauncherProxy;->moveFolderPage(II)I

    .line 56
    iget-object v2, p0, Lcom/android/launcher3/executor/HomeFolderPageMoveStateHandler;->mStateId:Lcom/android/launcher3/executor/ExecutorState;

    sget-object v3, Lcom/android/launcher3/executor/ExecutorState;->APPS_FOLDER_PAGE_MOVE:Lcom/android/launcher3/executor/ExecutorState;

    if-ne v2, v3, :cond_1

    .line 57
    iget-object v2, p0, Lcom/android/launcher3/executor/HomeFolderPageMoveStateHandler;->mStateId:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v2}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/HomeFolderPageMoveStateHandler;->mNlgTargetState:Ljava/lang/String;

    .line 59
    :cond_1
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeFolderPageMoveStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "PageLocation"

    const-string v4, "Valid"

    const-string v5, "yes"

    .line 60
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/HomeFolderPageMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0
.end method
