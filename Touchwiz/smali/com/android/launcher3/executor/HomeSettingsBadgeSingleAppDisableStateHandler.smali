.class Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppDisableStateHandler;
.super Lcom/android/launcher3/executor/AbstractStateHandler;
.source "HomeSettingsBadgeSingleAppDisableStateHandler.java"


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

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppDisableStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 35
    const-string v0, "HomeSettingsBadgeSingleAppDisable"

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppDisableStateHandler;->mNlgTargetState:Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/android/launcher3/executor/StateAppInfoHolder;->INSTANCE:Lcom/android/launcher3/executor/StateAppInfoHolder;

    iget-object v1, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppDisableStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/executor/StateAppInfoHolder;->setStateAppInfo(Lcom/android/launcher3/executor/StateAppInfo;)V

    .line 37
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 8
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    .line 61
    const/4 v3, 0x0

    .line 62
    .local v3, "ret":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppDisableStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/proxy/LauncherProxy;->isHomeOnlyMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 65
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppDisableStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppDisableStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomeItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v2

    .line 69
    :goto_0
    const/4 v1, 0x0

    .line 70
    .local v1, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppDisableStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppDisableStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppNamebyComponentName(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppDisableStateHandler;->mAppName:Ljava/lang/String;

    .line 72
    if-eqz v2, :cond_1

    .line 73
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 74
    .local v0, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppDisableStateHandler;->mAppName:Ljava/lang/String;

    if-ne v5, v6, :cond_0

    .line 75
    move-object v1, v0

    .line 80
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    if-eqz v1, :cond_4

    .line 81
    iget-object v4, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppDisableStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/executor/StateAppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppDisableStateHandler;->mClassName:Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppDisableStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppDisableStateHandler;->mClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/proxy/LauncherProxy;->isSingleAppBadgeChecked(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 83
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppDisableStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppDisableStateHandler;->mAppName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/proxy/LauncherProxy;->enableSingleAppBadge(Ljava/lang/String;Z)I

    .line 84
    new-instance v4, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v5, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppDisableStateHandler;->mStateId:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v5}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v5, "SingleAppBadge"

    const-string v6, "AlreadyOFF"

    const-string v7, "no"

    .line 85
    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppDisableStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 98
    :goto_1
    invoke-virtual {p0, p1, v3}, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppDisableStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    .line 99
    return-void

    .line 67
    .end local v1    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppDisableStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppDisableStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 88
    .restart local v1    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_3
    new-instance v4, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v5, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppDisableStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v5, "SingleAppBadge"

    const-string v6, "AlreadyOFF"

    const-string v7, "yes"

    .line 89
    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppDisableStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 90
    const/4 v3, 0x1

    goto :goto_1

    .line 93
    :cond_4
    const-string v4, "HomeSettingsBadgeManagementView"

    iput-object v4, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppDisableStateHandler;->mNlgTargetState:Ljava/lang/String;

    .line 94
    new-instance v4, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v5, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppDisableStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v5, "SingleApp"

    const-string v6, "Match"

    const-string v7, "no"

    .line 95
    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppDisableStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 96
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

    invoke-static {v1}, Lcom/android/launcher3/executor/StateParamHelper;->newHelper(Ljava/util/Map;)Lcom/android/launcher3/executor/StateParamHelper;

    move-result-object v0

    .line 43
    .local v0, "paramHelper":Lcom/android/launcher3/executor/StateParamHelper;
    const-string v1, "AppName"

    sget-object v2, Lcom/android/launcher3/executor/StateParamHelper$Type;->STRING:Lcom/android/launcher3/executor/StateParamHelper$Type;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/executor/StateParamHelper;->hasSlotValue(Ljava/lang/String;Lcom/android/launcher3/executor/StateParamHelper$Type;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppDisableStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    const-string v2, "AppName"

    invoke-virtual {v0, v2}, Lcom/android/launcher3/executor/StateParamHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/executor/StateAppInfo;->setComponentName(Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppDisableStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/StateAppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1

    .line 51
    const-string v1, "HomeSettingsBadgeManagementView"

    iput-object v1, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppDisableStateHandler;->mNlgTargetState:Ljava/lang/String;

    .line 52
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v2, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppDisableStateHandler;->mNlgTargetState:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "SingleApp"

    const-string v3, "Match"

    const-string v4, "no"

    .line 53
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppDisableStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 54
    const-string v1, "PARAM_CHECK_ERROR"

    .line 56
    :goto_0
    return-object v1

    .line 46
    :cond_0
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v2, "HomeSettingsBadgeManagementView"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "SingleApp"

    const-string v3, "Exist"

    const-string v4, "no"

    .line 47
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/HomeSettingsBadgeSingleAppDisableStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 48
    const-string v1, "PARAM_CHECK_ERROR"

    goto :goto_0

    .line 56
    :cond_1
    const-string v1, "PARAM_CHECK_OK"

    goto :goto_0
.end method
