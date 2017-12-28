.class Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;
.super Lcom/android/launcher3/executor/AbstractStateHandler;
.source "HomeFolderRemoveIconStateHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

.field private mAppName:Ljava/lang/String;

.field private mDetailedDirection:I

.field private mIsPageNumberSpoken:Z

.field private mPage:I

.field private mPageDirection:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 2
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    const/4 v1, -0x1

    .line 24
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 16
    new-instance v0, Lcom/android/launcher3/executor/StateAppInfo;

    invoke-direct {v0}, Lcom/android/launcher3/executor/StateAppInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 17
    iput v1, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mPage:I

    iput v1, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mDetailedDirection:I

    .line 18
    const-string v0, "AppName"

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mAppName:Ljava/lang/String;

    .line 25
    const-string v0, "Home"

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mNlgTargetState:Ljava/lang/String;

    .line 26
    sget-object v0, Lcom/android/launcher3/executor/StateAppInfoHolder;->INSTANCE:Lcom/android/launcher3/executor/StateAppInfoHolder;

    iget-object v1, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/executor/StateAppInfoHolder;->setStateAppInfo(Lcom/android/launcher3/executor/StateAppInfo;)V

    .line 27
    return-void
.end method

.method private doMove()V
    .locals 2

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/proxy/LauncherProxy;->moveFolderItemToHome(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I

    .line 114
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/proxy/LauncherProxy;->closeFolder()I

    .line 115
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mPage:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/proxy/LauncherProxy;->moveToHomePage(I)I

    .line 116
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 6
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    const/4 v5, 0x1

    .line 71
    iget v1, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mPage:I

    const/16 v2, -0x3e7

    if-ne v1, v2, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/proxy/LauncherProxy;->getOpenedHomeFolderPage()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mPage:I

    .line 75
    :cond_0
    iget v1, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mPage:I

    if-ltz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mPage:I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/proxy/LauncherProxy;->isHomeValidPage(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 76
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v2, "HomeFolderView"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "Page"

    const-string v3, "Exist"

    const-string v4, "no"

    .line 77
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 78
    invoke-virtual {p0, p1, v5}, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    .line 109
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/proxy/LauncherProxy;->hasItemInFolder(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 83
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v2, "HomeFolderView"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "AppName"

    const-string v3, "Match"

    const-string v4, "no"

    .line 84
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 85
    invoke-virtual {p0, p1, v5}, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mPage:I

    invoke-static {v1, v2}, Lcom/android/launcher3/executor/HomePageHelper;->findAvailablePageAndCreateNewWhenFull(Lcom/android/launcher3/proxy/LauncherProxy;I)I

    move-result v0

    .line 91
    .local v0, "newPage":I
    iget v1, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mPage:I

    if-eq v0, v1, :cond_3

    iget-boolean v1, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mIsPageNumberSpoken:Z

    if-eqz v1, :cond_3

    .line 92
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v2, "Home"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "Space"

    const-string v3, "Available"

    const-string v4, "no"

    .line 93
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    const-string v2, "AppName"

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 94
    invoke-virtual {v3}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    const-string v2, "ToPage"

    add-int/lit8 v3, v0, 0x1

    .line 95
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 105
    :goto_1
    iput v0, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mPage:I

    .line 107
    invoke-direct {p0}, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->doMove()V

    .line 108
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    goto :goto_0

    .line 96
    :cond_3
    iget-boolean v1, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mIsPageNumberSpoken:Z

    if-nez v1, :cond_4

    .line 97
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v2, "Home"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "Page"

    const-string v3, "Exist"

    const-string v4, "no"

    .line 98
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    const-string v2, "AppName"

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 99
    invoke-virtual {v3}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_1

    .line 101
    :cond_4
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v2, "Home"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "Space"

    const-string v3, "Available"

    const-string v4, "yes"

    .line 102
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    const-string v2, "AppName"

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 103
    invoke-virtual {v3}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_1
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 6
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    const/16 v5, -0x3e7

    .line 31
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v1

    .line 32
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/samsung/android/sdk/bixby/data/Parameter;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-gez v2, :cond_1

    .line 33
    :cond_0
    const-string v2, "PARAM_CHECK_ERROR"

    .line 66
    :goto_0
    return-object v2

    .line 36
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mAppName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-static {p0, v1, v3, v4}, Lcom/android/launcher3/executor/StateParamHelper;->getStringParamValue(Lcom/android/launcher3/executor/AbstractStateHandler;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/executor/StateAppInfo;->setComponentName(Ljava/lang/String;)V

    .line 38
    iget-object v2, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/executor/StateAppInfo;->isValid()Z

    move-result v2

    if-nez v2, :cond_2

    .line 39
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v3, "HomeFolderView"

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "AppName"

    const-string v4, "Exist"

    const-string v5, "no"

    .line 40
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 41
    const-string v2, "PARAM_CHECK_ERROR"

    goto :goto_0

    .line 44
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/executor/StateAppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 45
    invoke-virtual {v2}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u00a0"

    if-ne v2, v3, :cond_3

    .line 46
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppNamebyComponentName(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "appName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/executor/StateAppInfo;->setName(Ljava/lang/String;)V

    .line 50
    .end local v0    # "appName":Ljava/lang/String;
    :cond_3
    const-string v2, "Page"

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-static {p0, v1, v2, v3}, Lcom/android/launcher3/executor/StateParamHelper;->getIntParamValue(Lcom/android/launcher3/executor/AbstractStateHandler;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mPage:I

    .line 51
    iget v2, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mPage:I

    if-lez v2, :cond_5

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mIsPageNumberSpoken:Z

    .line 53
    iget v2, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mPage:I

    if-eq v2, v5, :cond_6

    iget v2, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mPage:I

    if-gez v2, :cond_6

    .line 54
    iget v2, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mPage:I

    iput v2, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mPageDirection:I

    .line 55
    iput v5, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mPage:I

    .line 60
    :cond_4
    :goto_2
    iget v2, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mPage:I

    if-ne v2, v5, :cond_7

    iget v2, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mPageDirection:I

    if-ne v2, v5, :cond_7

    .line 61
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "Page"

    const-string v4, "Exist"

    const-string v5, "no"

    .line 62
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 63
    const-string v2, "PARAM_CHECK_ERROR"

    goto/16 :goto_0

    .line 51
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 56
    :cond_6
    iget v2, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mPage:I

    if-lez v2, :cond_4

    .line 57
    iget v2, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mPage:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/launcher3/executor/HomeFolderRemoveIconStateHandler;->mPage:I

    goto :goto_2

    .line 66
    :cond_7
    const-string v2, "PARAM_CHECK_OK"

    goto/16 :goto_0
.end method
