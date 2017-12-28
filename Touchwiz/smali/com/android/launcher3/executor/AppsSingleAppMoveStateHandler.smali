.class Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;
.super Lcom/android/launcher3/executor/AbstractAppsStateHandler;
.source "AppsSingleAppMoveStateHandler.java"


# instance fields
.field private mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

.field private mDetailDirection:I

.field private mPage:I

.field private mPageDirection:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 2
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    const/16 v1, -0x3e7

    .line 37
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractAppsStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 30
    new-instance v0, Lcom/android/launcher3/executor/StateAppInfo;

    invoke-direct {v0}, Lcom/android/launcher3/executor/StateAppInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 31
    iput v1, p0, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->mPage:I

    .line 32
    iput v1, p0, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->mPageDirection:I

    .line 33
    iput v1, p0, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->mDetailDirection:I

    .line 38
    sget-object v0, Lcom/android/launcher3/executor/StateAppInfoHolder;->INSTANCE:Lcom/android/launcher3/executor/StateAppInfoHolder;

    iget-object v1, p0, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/executor/StateAppInfoHolder;->setStateAppInfo(Lcom/android/launcher3/executor/StateAppInfo;)V

    .line 39
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 7
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    const/16 v4, -0x3e7

    .line 79
    const/16 v1, -0x3e7

    .line 81
    .local v1, "resultPageNum":I
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/proxy/LauncherProxy;->hasItemInApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 82
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v3, Lcom/android/launcher3/executor/ExecutorState;->APPS:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v3}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "AppName"

    const-string v4, "Match"

    const-string v5, "no"

    .line 83
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    const-string v3, "AppName"

    iget-object v4, p0, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 84
    invoke-virtual {v4}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 85
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    .line 117
    :goto_0
    return-void

    .line 89
    :cond_0
    iget v2, p0, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->mPage:I

    if-ne v2, v4, :cond_1

    iget v2, p0, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->mPageDirection:I

    if-eq v2, v4, :cond_2

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->mPage:I

    iget v4, p0, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->mPageDirection:I

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/proxy/LauncherProxy;->isAppsValidPage(II)Z

    move-result v2

    if-nez v2, :cond_3

    .line 91
    :cond_2
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v3, Lcom/android/launcher3/executor/ExecutorState;->APPS:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v3}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "Page"

    const-string v4, "Exist"

    const-string v5, "no"

    .line 92
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    const-string v3, "AppName"

    iget-object v4, p0, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 93
    invoke-virtual {v4}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 96
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/proxy/LauncherProxy;->getItemPageInApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 97
    .local v0, "nextPageNum":I
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/launcher3/executor/AppsPageHelper;->findAvailablePageAndCreateNewWhenFull(Lcom/android/launcher3/proxy/LauncherProxy;I)I

    move-result v1

    .line 98
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    iget v4, p0, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->mPageDirection:I

    iget v5, p0, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->mDetailDirection:I

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/android/launcher3/proxy/LauncherProxy;->moveAppsItemToPage(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;III)I

    .line 116
    .end local v0    # "nextPageNum":I
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    goto :goto_0

    .line 100
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->mPage:I

    iget v4, p0, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->mPageDirection:I

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/proxy/LauncherProxy;->hasAppsEmptySpace(II)Z

    move-result v2

    if-nez v2, :cond_4

    .line 101
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->mPage:I

    invoke-static {v2, v3}, Lcom/android/launcher3/executor/AppsPageHelper;->findAvailablePageAndCreateNewWhenFull(Lcom/android/launcher3/proxy/LauncherProxy;I)I

    move-result v1

    .line 102
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    iget v4, p0, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->mPageDirection:I

    iget v5, p0, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->mDetailDirection:I

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/android/launcher3/proxy/LauncherProxy;->moveAppsItemToPage(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;III)I

    .line 104
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v3, Lcom/android/launcher3/executor/ExecutorState;->APPS:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v3}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "Space"

    const-string v4, "Available"

    const-string v5, "no"

    .line 105
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    const-string v3, "AppName"

    iget-object v4, p0, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 106
    invoke-virtual {v4}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    const-string v3, "ToPage"

    add-int/lit8 v4, v1, 0x1

    .line 107
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_1

    .line 109
    :cond_4
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v3, Lcom/android/launcher3/executor/ExecutorState;->APPS:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v3}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "Space"

    const-string v4, "Available"

    const-string v5, "yes"

    .line 110
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    const-string v3, "AppName"

    iget-object v4, p0, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 111
    invoke-virtual {v4}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 112
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    iget v4, p0, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->mPage:I

    iget v5, p0, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->mPageDirection:I

    iget v6, p0, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->mDetailDirection:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/launcher3/proxy/LauncherProxy;->moveAppsItemToPage(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;III)I

    goto/16 :goto_1
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 7
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 43
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v2

    .line 44
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/samsung/android/sdk/bixby/data/Parameter;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    if-gez v3, :cond_1

    .line 45
    :cond_0
    const-string v3, "PARAM_CHECK_ERROR"

    .line 74
    :goto_0
    return-object v3

    .line 48
    :cond_1
    invoke-static {v2}, Lcom/android/launcher3/executor/StateParamHelper;->newHelper(Ljava/util/Map;)Lcom/android/launcher3/executor/StateParamHelper;

    move-result-object v1

    .line 49
    .local v1, "helper":Lcom/android/launcher3/executor/StateParamHelper;
    const-string v3, "AppName"

    sget-object v4, Lcom/android/launcher3/executor/StateParamHelper$Type;->STRING:Lcom/android/launcher3/executor/StateParamHelper$Type;

    invoke-virtual {v1, v3, v4}, Lcom/android/launcher3/executor/StateParamHelper;->hasSlotValue(Ljava/lang/String;Lcom/android/launcher3/executor/StateParamHelper$Type;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 50
    iget-object v3, p0, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    const-string v4, "AppName"

    invoke-virtual {v1, v4}, Lcom/android/launcher3/executor/StateParamHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/executor/StateAppInfo;->setComponentName(Ljava/lang/String;)V

    .line 51
    iget-object v3, p0, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/executor/StateAppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 52
    invoke-virtual {v3}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u00a0"

    if-ne v3, v4, :cond_2

    .line 53
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppNamebyComponentName(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "appName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/executor/StateAppInfo;->setName(Ljava/lang/String;)V

    .line 63
    .end local v0    # "appName":Ljava/lang/String;
    :cond_2
    const-string v3, "Page"

    sget-object v4, Lcom/android/launcher3/executor/StateParamHelper$Type;->INTEGER:Lcom/android/launcher3/executor/StateParamHelper$Type;

    invoke-virtual {v1, v3, v4}, Lcom/android/launcher3/executor/StateParamHelper;->hasSlotValue(Ljava/lang/String;Lcom/android/launcher3/executor/StateParamHelper$Type;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 64
    const-string v3, "Page"

    invoke-virtual {v1, v3}, Lcom/android/launcher3/executor/StateParamHelper;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->mPage:I

    .line 67
    :cond_3
    iget v3, p0, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->mPage:I

    if-gez v3, :cond_5

    .line 68
    iget v3, p0, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->mPage:I

    iput v3, p0, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->mPageDirection:I

    .line 69
    const/16 v3, -0x3e7

    iput v3, p0, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->mPage:I

    .line 74
    :goto_1
    const-string v3, "PARAM_CHECK_OK"

    goto :goto_0

    .line 57
    :cond_4
    new-instance v3, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v4, Lcom/android/launcher3/executor/ExecutorState;->APPS:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v4}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v4, "AppName"

    const-string v5, "Exist"

    const-string v6, "no"

    .line 58
    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 60
    const-string v3, "PARAM_CHECK_ERROR"

    goto :goto_0

    .line 71
    :cond_5
    iget v3, p0, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->mPage:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/launcher3/executor/AppsSingleAppMoveStateHandler;->mPage:I

    goto :goto_1
.end method
