.class Lcom/android/launcher3/executor/CrossSettingsApplicationInfoStateHandler;
.super Lcom/android/launcher3/executor/AbstractStateHandler;
.source "CrossSettingsApplicationInfoStateHandler.java"


# instance fields
.field mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 2
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 34
    sget-object v0, Lcom/android/launcher3/executor/StateAppInfoHolder;->INSTANCE:Lcom/android/launcher3/executor/StateAppInfoHolder;

    invoke-virtual {v0}, Lcom/android/launcher3/executor/StateAppInfoHolder;->getStateAppInfo()Lcom/android/launcher3/executor/StateAppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/executor/CrossSettingsApplicationInfoStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 35
    iget-object v0, p0, Lcom/android/launcher3/executor/CrossSettingsApplicationInfoStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StateAppInfo is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 7
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    .line 47
    const/4 v1, 0x0

    .line 48
    .local v1, "ret":I
    const/4 v0, 0x0

    .line 49
    .local v0, "componentName":Landroid/content/ComponentName;
    const/4 v2, 0x0

    .line 51
    .local v2, "widgetItem":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    iget-object v3, p0, Lcom/android/launcher3/executor/CrossSettingsApplicationInfoStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/executor/StateAppInfo;->getItemInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v3, :cond_0

    .line 52
    iget-object v3, p0, Lcom/android/launcher3/executor/CrossSettingsApplicationInfoStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/executor/StateAppInfo;->getItemInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v2

    .end local v2    # "widgetItem":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    check-cast v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .line 55
    .restart local v2    # "widgetItem":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    :cond_0
    if-eqz v2, :cond_2

    .line 56
    iget-object v0, v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 61
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 62
    invoke-virtual {p0}, Lcom/android/launcher3/executor/CrossSettingsApplicationInfoStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v3

    iget-object v4, v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v3, v0, v4}, Lcom/android/launcher3/proxy/LauncherProxy;->showAppInfo(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)I

    .line 64
    new-instance v3, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v4, "SettingsApplicationsInfo"

    invoke-direct {v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v4, "Widget"

    const-string v5, "Match"

    const-string v6, "yes"

    .line 65
    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/executor/CrossSettingsApplicationInfoStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 71
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v1, v3}, Lcom/android/launcher3/executor/CrossSettingsApplicationInfoStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;II)V

    .line 72
    return-void

    .line 57
    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/executor/CrossSettingsApplicationInfoStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/executor/StateAppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 58
    iget-object v3, p0, Lcom/android/launcher3/executor/CrossSettingsApplicationInfoStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/executor/StateAppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0

    .line 67
    :cond_3
    new-instance v3, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v4, "Home"

    invoke-direct {v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v4, "Widget"

    const-string v5, "Match"

    const-string v6, "no"

    .line 68
    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/executor/CrossSettingsApplicationInfoStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 69
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 42
    const-string v0, "PARAM_CHECK_OK"

    return-object v0
.end method
