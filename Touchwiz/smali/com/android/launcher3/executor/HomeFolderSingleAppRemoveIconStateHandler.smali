.class Lcom/android/launcher3/executor/HomeFolderSingleAppRemoveIconStateHandler;
.super Lcom/android/launcher3/executor/AbstractStateHandler;
.source "HomeFolderSingleAppRemoveIconStateHandler.java"


# instance fields
.field private mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 1
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 17
    sget-object v0, Lcom/android/launcher3/executor/StateAppInfoHolder;->INSTANCE:Lcom/android/launcher3/executor/StateAppInfoHolder;

    invoke-virtual {v0}, Lcom/android/launcher3/executor/StateAppInfoHolder;->getStateAppInfo()Lcom/android/launcher3/executor/StateAppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeFolderSingleAppRemoveIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 18
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 7
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    const/4 v6, 0x1

    .line 31
    iget-object v2, p0, Lcom/android/launcher3/executor/HomeFolderSingleAppRemoveIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    if-eqz v2, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderSingleAppRemoveIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeFolderSingleAppRemoveIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppNamebyComponentName(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "appName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/launcher3/executor/HomeFolderSingleAppRemoveIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/executor/StateAppInfo;->setName(Ljava/lang/String;)V

    .line 36
    .end local v0    # "appName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderSingleAppRemoveIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeFolderSingleAppRemoveIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/proxy/LauncherProxy;->getFolderItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/ArrayList;

    move-result-object v1

    .line 38
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 39
    :cond_1
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v3, Lcom/android/launcher3/executor/ExecutorState;->HOME_FOLDER_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v3}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "SingleApp"

    const-string v4, "Match"

    const-string v5, "no"

    .line 40
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/HomeFolderSingleAppRemoveIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 41
    invoke-virtual {p0, p1, v6}, Lcom/android/launcher3/executor/HomeFolderSingleAppRemoveIconStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    .line 56
    :goto_0
    return-void

    .line 45
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v6, :cond_3

    .line 46
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v3, Lcom/android/launcher3/executor/ExecutorState;->HOME_FOLDER_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v3}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "SingleApp"

    const-string v4, "Match"

    const-string v5, "multi"

    .line 47
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/HomeFolderSingleAppRemoveIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 48
    invoke-virtual {p0, p1, v6}, Lcom/android/launcher3/executor/HomeFolderSingleAppRemoveIconStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    goto :goto_0

    .line 52
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderSingleAppRemoveIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeFolderSingleAppRemoveIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/proxy/LauncherProxy;->removeFolderItem(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I

    .line 53
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v3, Lcom/android/launcher3/executor/ExecutorState;->HOME_FOLDER_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v3}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "SingleApp"

    const-string v4, "Match"

    const-string v5, "yes"

    .line 54
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/HomeFolderSingleAppRemoveIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 55
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/android/launcher3/executor/HomeFolderSingleAppRemoveIconStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    goto :goto_0
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/launcher3/executor/HomeFolderSingleAppRemoveIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    if-nez v0, :cond_0

    .line 23
    const-string v0, "PARAM_CHECK_ERROR"

    .line 25
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "PARAM_CHECK_OK"

    goto :goto_0
.end method
