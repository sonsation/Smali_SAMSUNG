.class Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;
.super Lcom/android/launcher3/executor/AbstractStateHandler;
.source "HomeSettingsBadgeSingleAppEnableStateHandler.java"


# instance fields
.field mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

.field private mAppName:Ljava/lang/String;

.field private mClassName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 2
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 31
    new-instance v0, Lcom/android/launcher3/executor/StateAppInfo;

    invoke-direct {v0}, Lcom/android/launcher3/executor/StateAppInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 35
    const-string v0, "HomeSettingsBadgeSingleAppEnable"

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mNlgTargetState:Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/android/launcher3/executor/StateAppInfoHolder;->INSTANCE:Lcom/android/launcher3/executor/StateAppInfoHolder;

    iget-object v1, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/executor/StateAppInfoHolder;->setStateAppInfo(Lcom/android/launcher3/executor/StateAppInfo;)V

    .line 37
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 8
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    .line 63
    const/4 v3, 0x0

    .line 65
    .local v3, "ret":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/proxy/LauncherProxy;->isHomeOnlyMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 67
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomeItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v2

    .line 72
    :goto_0
    const/4 v1, 0x0

    .line 73
    .local v1, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppNamebyComponentName(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mAppName:Ljava/lang/String;

    .line 74
    if-eqz v2, :cond_1

    .line 75
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 76
    .local v0, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mAppName:Ljava/lang/String;

    if-ne v5, v6, :cond_0

    .line 77
    move-object v1, v0

    .line 82
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    if-eqz v1, :cond_4

    .line 83
    iget-object v4, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/executor/StateAppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mClassName:Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/proxy/LauncherProxy;->isSingleAppBadgeChecked(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 85
    new-instance v4, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v5, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v5, "SingleAppBadge"

    const-string v6, "AlreadyOn"

    const-string v7, "yes"

    .line 86
    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 87
    const/4 v3, 0x1

    .line 99
    :goto_1
    invoke-virtual {p0, p1, v3}, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    .line 100
    return-void

    .line 69
    .end local v1    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 89
    .restart local v1    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mAppName:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/proxy/LauncherProxy;->enableSingleAppBadge(Ljava/lang/String;Z)I

    .line 90
    new-instance v4, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v5, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mStateId:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v5}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v5, "SingleAppBadge"

    const-string v6, "AlreadyOn"

    const-string v7, "no"

    .line 91
    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_1

    .line 94
    :cond_4
    const-string v4, "HomeSettingsBadgeManagementView"

    iput-object v4, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mNlgTargetState:Ljava/lang/String;

    .line 95
    new-instance v4, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v5, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v5, "SingleApp"

    const-string v6, "Match"

    const-string v7, "no"

    .line 96
    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 97
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 5
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 41
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "AppName"

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mNlgTargetState:Ljava/lang/String;

    const-string v4, "SingleApp"

    invoke-static {p0, v1, v2, v3, v4}, Lcom/android/launcher3/executor/StateParamHelper;->getStringParamValue(Lcom/android/launcher3/executor/AbstractStateHandler;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 44
    const-string v1, "PARAM_CHECK_ERROR"

    .line 58
    :goto_0
    return-object v1

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/executor/StateAppInfo;->setComponentName(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/StateAppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1

    .line 48
    const-string v1, "HomeSettingsBadgeManagementView"

    iput-object v1, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mNlgTargetState:Ljava/lang/String;

    .line 49
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v2, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "SingleApp"

    const-string v3, "Match"

    const-string v4, "no"

    .line 50
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 51
    const-string v1, "PARAM_CHECK_ERROR"

    goto :goto_0

    .line 53
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/StateAppInfo;->isValid()Z

    move-result v1

    if-nez v1, :cond_2

    .line 54
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v2, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "SingleApp"

    const-string v3, "Valid"

    const-string v4, "no"

    .line 55
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppEnableStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 56
    const-string v1, "PARAM_CHECK_ERROR"

    goto :goto_0

    .line 58
    :cond_2
    const-string v1, "PARAM_CHECK_OK"

    goto :goto_0
.end method
