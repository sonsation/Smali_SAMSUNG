.class Lcom/android/launcher3/executor/HomePageWidgetUninstallPopupStateHandler;
.super Lcom/android/launcher3/executor/AbstractStateHandler;
.source "HomePageWidgetUninstallPopupStateHandler.java"


# instance fields
.field mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 1
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 32
    new-instance v0, Lcom/android/launcher3/executor/StateAppInfo;

    invoke-direct {v0}, Lcom/android/launcher3/executor/StateAppInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/executor/HomePageWidgetUninstallPopupStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 37
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 7
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    const/4 v6, 0x0

    .line 59
    const/4 v1, 0x1

    .line 60
    .local v1, "ret":I
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageWidgetUninstallPopupStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/executor/HomePageWidgetUninstallPopupStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/proxy/LauncherProxy;->getWidgetItemInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/ArrayList;

    move-result-object v0

    .line 61
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 62
    :cond_0
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v3, Lcom/android/launcher3/executor/ExecutorState;->HOME_PAGE_WIDGET_EDIT_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v3}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "Widget"

    const-string v4, "Match"

    const-string v5, "no"

    .line 63
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/HomePageWidgetUninstallPopupStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 69
    :goto_0
    invoke-virtual {p0, p1, v1, v6}, Lcom/android/launcher3/executor/HomePageWidgetUninstallPopupStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;II)V

    .line 70
    return-void

    .line 65
    :cond_1
    const/4 v1, 0x0

    .line 66
    iget-object v3, p0, Lcom/android/launcher3/executor/HomePageWidgetUninstallPopupStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/executor/StateAppInfo;->setItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomePageWidgetUninstallPopupStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v3

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/proxy/LauncherProxy;->uninstallWidget(Lcom/android/launcher3/common/base/item/ItemInfo;)I

    goto :goto_0
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 7
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 41
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/executor/StateParamHelper;->newHelper(Ljava/util/Map;)Lcom/android/launcher3/executor/StateParamHelper;

    move-result-object v2

    .line 42
    .local v2, "paramHelper":Lcom/android/launcher3/executor/StateParamHelper;
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 43
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 44
    .local v0, "key":Ljava/lang/String;
    sget-object v4, Lcom/android/launcher3/executor/StateParamHelper$Type;->STRING:Lcom/android/launcher3/executor/StateParamHelper$Type;

    invoke-virtual {v2, v0, v4}, Lcom/android/launcher3/executor/StateParamHelper;->hasSlotValue(Ljava/lang/String;Lcom/android/launcher3/executor/StateParamHelper$Type;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 45
    new-instance v3, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v4, Lcom/android/launcher3/executor/ExecutorState;->HOME_PAGE_WIDGET_EDIT_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v4}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v4, "Widget"

    const-string v5, "Exist"

    const-string v6, "no"

    .line 46
    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/executor/HomePageWidgetUninstallPopupStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 47
    const-string v3, "PARAM_CHECK_ERROR"

    .line 54
    .end local v0    # "key":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 49
    .restart local v0    # "key":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/executor/HomePageWidgetUninstallPopupStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/executor/StateParamHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/executor/StateAppInfo;->setComponentName(Ljava/lang/String;)V

    .line 50
    iget-object v4, p0, Lcom/android/launcher3/executor/HomePageWidgetUninstallPopupStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/executor/StateAppInfo;->isValid()Z

    move-result v4

    if-nez v4, :cond_0

    .line 51
    const-string v3, "PARAM_CHECK_ERROR"

    goto :goto_0

    .line 54
    .end local v0    # "key":Ljava/lang/String;
    :cond_2
    const-string v3, "PARAM_CHECK_OK"

    goto :goto_0
.end method
