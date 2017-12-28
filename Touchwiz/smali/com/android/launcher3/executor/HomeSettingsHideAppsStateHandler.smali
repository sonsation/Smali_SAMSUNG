.class Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;
.super Lcom/android/launcher3/executor/AbstractStateHandler;
.source "HomeSettingsHideAppsStateHandler.java"


# instance fields
.field mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 2
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 30
    new-instance v0, Lcom/android/launcher3/executor/StateAppInfo;

    invoke-direct {v0}, Lcom/android/launcher3/executor/StateAppInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 35
    const-string v0, "HomeSettingsHideAppsView"

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->mNlgTargetState:Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/android/launcher3/executor/StateAppInfoHolder;->INSTANCE:Lcom/android/launcher3/executor/StateAppInfoHolder;

    iget-object v1, p0, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/executor/StateAppInfoHolder;->setStateAppInfo(Lcom/android/launcher3/executor/StateAppInfo;)V

    .line 37
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 6
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    .line 76
    const/4 v1, 0x0

    .line 78
    .local v1, "ret":I
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/proxy/LauncherProxy;->getItemInfoInHideApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v0

    .line 80
    .local v0, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/ItemInfo;->isHiddenByUser()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "SingleAppOrdinal"

    const-string v4, "Hidden"

    const-string v5, "yes"

    .line 83
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 84
    const/4 v1, 0x1

    .line 98
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    .line 99
    return-void

    .line 86
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/executor/StateAppInfo;->setItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/proxy/LauncherProxy;->hideApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I

    .line 88
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/proxy/LauncherProxy;->goHome()I

    .line 89
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v3, "Home"

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "SingleAppOrdinal"

    const-string v4, "Match"

    const-string v5, "yes"

    .line 90
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    const-string v3, "AppName"

    iget-object v4, p0, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 91
    invoke-virtual {v4}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0

    .line 94
    :cond_1
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "SingleAppOrdinal"

    const-string v4, "Match"

    const-string v5, "no"

    .line 95
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 96
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 7
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 41
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v3

    const-string v4, "AppName"

    iget-object v5, p0, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->mNlgTargetState:Ljava/lang/String;

    const-string v6, "SingleAppOrdinal"

    invoke-static {p0, v3, v4, v5, v6}, Lcom/android/launcher3/executor/StateParamHelper;->getStringParamValue(Lcom/android/launcher3/executor/AbstractStateHandler;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 45
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v3

    const-string v4, "OrdinalNumber"

    iget-object v5, p0, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->mNlgTargetState:Ljava/lang/String;

    const-string v6, "SingleAppOrdinal"

    invoke-static {p0, v3, v4, v5, v6}, Lcom/android/launcher3/executor/StateParamHelper;->getIntParamValue(Lcom/android/launcher3/executor/AbstractStateHandler;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 48
    .local v1, "ordinalNumber":I
    const/16 v3, -0x3e7

    if-ne v1, v3, :cond_0

    .line 49
    new-instance v3, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v4, p0, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v4, "SingleAppOrdinal"

    const-string v5, "Exist"

    const-string v6, "no"

    .line 50
    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 51
    const-string v3, "PARAM_CHECK_ERROR"

    .line 71
    .end local v1    # "ordinalNumber":I
    :goto_0
    return-object v3

    .line 53
    .restart local v1    # "ordinalNumber":I
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/executor/StateAppInfo;->setOrdinalNumber(I)V

    .line 71
    .end local v1    # "ordinalNumber":I
    :cond_1
    :goto_1
    const-string v3, "PARAM_CHECK_OK"

    goto :goto_0

    .line 56
    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/executor/StateAppInfo;->setComponentName(Ljava/lang/String;)V

    .line 58
    iget-object v3, p0, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/executor/StateAppInfo;->isValid()Z

    move-result v3

    if-nez v3, :cond_3

    .line 59
    new-instance v3, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v4, p0, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v4, "SingleAppOrdinal"

    const-string v5, "Exist"

    const-string v6, "no"

    .line 60
    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 61
    const-string v3, "PARAM_CHECK_ERROR"

    goto :goto_0

    .line 64
    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/executor/StateAppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 65
    invoke-virtual {v3}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u00a0"

    if-ne v3, v4, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppNamebyComponentName(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "appName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/launcher3/executor/HomeSettingsHideAppsStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/executor/StateAppInfo;->setName(Ljava/lang/String;)V

    goto :goto_1
.end method
