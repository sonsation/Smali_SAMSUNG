.class Lcom/android/launcher3/executor/AppsFolderRemoveIconStateHandler;
.super Lcom/android/launcher3/executor/AbstractAppsStateHandler;
.source "AppsFolderRemoveIconStateHandler.java"


# instance fields
.field private mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

.field private mIsPageNumberSpoken:Z

.field private mPage:I

.field private mPageDirection:I

.field private mtargetPosition:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 2
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    const/16 v1, -0x3e7

    .line 20
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractAppsStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 12
    new-instance v0, Lcom/android/launcher3/executor/StateAppInfo;

    invoke-direct {v0}, Lcom/android/launcher3/executor/StateAppInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/executor/AppsFolderRemoveIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 13
    iput v1, p0, Lcom/android/launcher3/executor/AppsFolderRemoveIconStateHandler;->mPage:I

    .line 14
    iput v1, p0, Lcom/android/launcher3/executor/AppsFolderRemoveIconStateHandler;->mPageDirection:I

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/executor/AppsFolderRemoveIconStateHandler;->mtargetPosition:I

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/executor/AppsFolderRemoveIconStateHandler;->mIsPageNumberSpoken:Z

    .line 21
    sget-object v0, Lcom/android/launcher3/executor/StateAppInfoHolder;->INSTANCE:Lcom/android/launcher3/executor/StateAppInfoHolder;

    iget-object v1, p0, Lcom/android/launcher3/executor/AppsFolderRemoveIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/executor/StateAppInfoHolder;->setStateAppInfo(Lcom/android/launcher3/executor/StateAppInfo;)V

    .line 22
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 6
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    const/4 v5, 0x0

    const/16 v3, -0x3e7

    .line 58
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderRemoveIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/executor/AppsFolderRemoveIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/proxy/LauncherProxy;->hasItemInFolder(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v2, Lcom/android/launcher3/executor/ExecutorState;->APPS_FOLDER_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v2}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "AppName"

    const-string v3, "Match"

    const-string v4, "no"

    .line 60
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    const-string v2, "AppName"

    iget-object v3, p0, Lcom/android/launcher3/executor/AppsFolderRemoveIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 61
    invoke-virtual {v3}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/AppsFolderRemoveIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 62
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/executor/AppsFolderRemoveIconStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    .line 94
    :goto_0
    return-void

    .line 66
    :cond_0
    iget v1, p0, Lcom/android/launcher3/executor/AppsFolderRemoveIconStateHandler;->mPage:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/android/launcher3/executor/AppsFolderRemoveIconStateHandler;->mPageDirection:I

    if-ne v1, v3, :cond_1

    .line 67
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderRemoveIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/proxy/LauncherProxy;->getOpenedAppsFolderPage()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/executor/AppsFolderRemoveIconStateHandler;->mPage:I

    .line 68
    iput-boolean v5, p0, Lcom/android/launcher3/executor/AppsFolderRemoveIconStateHandler;->mIsPageNumberSpoken:Z

    .line 71
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderRemoveIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/executor/AppsFolderRemoveIconStateHandler;->mPage:I

    invoke-static {v1, v2}, Lcom/android/launcher3/executor/AppsPageHelper;->findAvailablePageAndCreateNewWhenFull(Lcom/android/launcher3/proxy/LauncherProxy;I)I

    move-result v0

    .line 75
    .local v0, "newPage":I
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderRemoveIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/executor/AppsFolderRemoveIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    iget v3, p0, Lcom/android/launcher3/executor/AppsFolderRemoveIconStateHandler;->mPage:I

    iget v4, p0, Lcom/android/launcher3/executor/AppsFolderRemoveIconStateHandler;->mtargetPosition:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/launcher3/proxy/LauncherProxy;->moveItemInFolderToAppsPage(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;II)I

    .line 76
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderRemoveIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/proxy/LauncherProxy;->closeFolder()I

    .line 78
    iget-boolean v1, p0, Lcom/android/launcher3/executor/AppsFolderRemoveIconStateHandler;->mIsPageNumberSpoken:Z

    if-nez v1, :cond_2

    .line 79
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v2, Lcom/android/launcher3/executor/ExecutorState;->APPS:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v2}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "Page"

    const-string v3, "Exist"

    const-string v4, "no"

    .line 80
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    const-string v2, "AppName"

    iget-object v3, p0, Lcom/android/launcher3/executor/AppsFolderRemoveIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 81
    invoke-virtual {v3}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/AppsFolderRemoveIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 93
    :goto_1
    invoke-virtual {p0, p1, v5}, Lcom/android/launcher3/executor/AppsFolderRemoveIconStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    goto :goto_0

    .line 82
    :cond_2
    iget v1, p0, Lcom/android/launcher3/executor/AppsFolderRemoveIconStateHandler;->mPage:I

    if-eq v0, v1, :cond_3

    .line 83
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v2, Lcom/android/launcher3/executor/ExecutorState;->APPS:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v2}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "Space"

    const-string v3, "Available"

    const-string v4, "no"

    .line 84
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    const-string v2, "AppName"

    iget-object v3, p0, Lcom/android/launcher3/executor/AppsFolderRemoveIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 85
    invoke-virtual {v3}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    const-string v2, "ToPage"

    add-int/lit8 v3, v0, 0x1

    .line 86
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/AppsFolderRemoveIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_1

    .line 88
    :cond_3
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v2, Lcom/android/launcher3/executor/ExecutorState;->APPS:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v2}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "Space"

    const-string v3, "Available"

    const-string v4, "yes"

    .line 89
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    const-string v2, "AppName"

    iget-object v3, p0, Lcom/android/launcher3/executor/AppsFolderRemoveIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 90
    invoke-virtual {v3}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/AppsFolderRemoveIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_1
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 6
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 26
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/executor/StateParamHelper;->newHelper(Ljava/util/Map;)Lcom/android/launcher3/executor/StateParamHelper;

    move-result-object v1

    .line 28
    .local v1, "paramHelper":Lcom/android/launcher3/executor/StateParamHelper;
    const-string v2, "AppName"

    sget-object v3, Lcom/android/launcher3/executor/StateParamHelper$Type;->STRING:Lcom/android/launcher3/executor/StateParamHelper$Type;

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/executor/StateParamHelper;->hasSlotValue(Ljava/lang/String;Lcom/android/launcher3/executor/StateParamHelper$Type;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 29
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v3, Lcom/android/launcher3/executor/ExecutorState;->APPS_FOLDER_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v3}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "AppName"

    const-string v4, "Exist"

    const-string v5, "no"

    .line 30
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/AppsFolderRemoveIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 31
    const-string v2, "PARAM_CHECK_ERROR"

    .line 53
    :goto_0
    return-object v2

    .line 33
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/executor/AppsFolderRemoveIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    const-string v3, "AppName"

    invoke-virtual {v1, v3}, Lcom/android/launcher3/executor/StateParamHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/executor/StateAppInfo;->setComponentName(Ljava/lang/String;)V

    .line 35
    iget-object v2, p0, Lcom/android/launcher3/executor/AppsFolderRemoveIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/executor/StateAppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/executor/AppsFolderRemoveIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 36
    invoke-virtual {v2}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u00a0"

    if-ne v2, v3, :cond_1

    .line 37
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderRemoveIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/executor/AppsFolderRemoveIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppNamebyComponentName(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "appName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/launcher3/executor/AppsFolderRemoveIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/executor/StateAppInfo;->setName(Ljava/lang/String;)V

    .line 42
    .end local v0    # "appName":Ljava/lang/String;
    :cond_1
    const-string v2, "Page"

    sget-object v3, Lcom/android/launcher3/executor/StateParamHelper$Type;->INTEGER:Lcom/android/launcher3/executor/StateParamHelper$Type;

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/executor/StateParamHelper;->hasSlotValue(Ljava/lang/String;Lcom/android/launcher3/executor/StateParamHelper$Type;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 43
    const-string v2, "Page"

    invoke-virtual {v1, v2}, Lcom/android/launcher3/executor/StateParamHelper;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/executor/AppsFolderRemoveIconStateHandler;->mPage:I

    .line 46
    :cond_2
    iget v2, p0, Lcom/android/launcher3/executor/AppsFolderRemoveIconStateHandler;->mPage:I

    if-gez v2, :cond_3

    .line 47
    iget v2, p0, Lcom/android/launcher3/executor/AppsFolderRemoveIconStateHandler;->mPage:I

    iput v2, p0, Lcom/android/launcher3/executor/AppsFolderRemoveIconStateHandler;->mPageDirection:I

    .line 48
    const/16 v2, -0x3e7

    iput v2, p0, Lcom/android/launcher3/executor/AppsFolderRemoveIconStateHandler;->mPage:I

    .line 53
    :goto_1
    const-string v2, "PARAM_CHECK_OK"

    goto :goto_0

    .line 50
    :cond_3
    iget v2, p0, Lcom/android/launcher3/executor/AppsFolderRemoveIconStateHandler;->mPage:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/launcher3/executor/AppsFolderRemoveIconStateHandler;->mPage:I

    goto :goto_1
.end method
