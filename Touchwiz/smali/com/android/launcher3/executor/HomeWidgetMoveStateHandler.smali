.class Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;
.super Lcom/android/launcher3/executor/AbstractStateHandler;
.source "HomeWidgetMoveStateHandler.java"


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

    .line 39
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 33
    new-instance v0, Lcom/android/launcher3/executor/StateAppInfo;

    invoke-direct {v0}, Lcom/android/launcher3/executor/StateAppInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 34
    iput v1, p0, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->mPage:I

    .line 35
    iput v1, p0, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->mPageDirection:I

    .line 36
    iput v1, p0, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->mDetailDirection:I

    .line 40
    sget-object v0, Lcom/android/launcher3/executor/StateAppInfoHolder;->INSTANCE:Lcom/android/launcher3/executor/StateAppInfoHolder;

    iget-object v1, p0, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/executor/StateAppInfoHolder;->setStateAppInfo(Lcom/android/launcher3/executor/StateAppInfo;)V

    .line 41
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 12
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    const/16 v11, -0x3e7

    const/4 v10, 0x0

    .line 75
    const/4 v1, 0x0

    .line 77
    .local v1, "ret":I
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomeWidgetItemInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/ArrayList;

    move-result-object v4

    .line 78
    .local v4, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 79
    :cond_0
    new-instance v5, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v6, Lcom/android/launcher3/executor/ExecutorState;->HOME:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v6}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v6, "WidgetName"

    const-string v7, "Match"

    const-string v8, "no"

    .line 80
    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 81
    const/4 v1, 0x1

    .line 84
    :cond_1
    const/4 v0, 0x0

    .line 85
    .local v0, "iv":Landroid/view/View;
    iget-object v5, p0, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/executor/StateAppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 86
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/executor/StateAppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/launcher3/proxy/LauncherProxy;->getWidgetView(Landroid/content/ComponentName;)Landroid/view/View;

    move-result-object v0

    .line 92
    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 93
    new-instance v5, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v6, Lcom/android/launcher3/executor/ExecutorState;->HOME:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v6}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v6, "WidgetName"

    const-string v7, "Match"

    const-string v8, "no"

    .line 94
    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 95
    const/4 v1, 0x1

    .line 98
    :cond_3
    if-nez v1, :cond_5

    .line 99
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v6

    .line 100
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v8, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v6, v8, v9}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomePageNumberByScreenId(J)I

    move-result v3

    .line 101
    .local v3, "widgetPage":I
    iget v5, p0, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->mPage:I

    if-ne v5, v11, :cond_4

    iget v5, p0, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->mPageDirection:I

    if-eq v5, v11, :cond_4

    .line 102
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v5

    iget v6, p0, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->mPage:I

    iget v7, p0, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->mPageDirection:I

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/launcher3/proxy/LauncherProxy;->mapDirectionToPage(IIZ)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->mPage:I

    .line 105
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v5

    iget v6, p0, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->mPage:I

    invoke-virtual {v5, v6}, Lcom/android/launcher3/proxy/LauncherProxy;->isHomeValidPage(I)Z

    move-result v5

    if-nez v5, :cond_7

    .line 107
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    iget v7, p0, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->mPageDirection:I

    iget v8, p0, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->mDetailDirection:I

    invoke-virtual {v5, v0, v6, v7, v8}, Lcom/android/launcher3/proxy/LauncherProxy;->moveHomeItemToPage(Landroid/view/View;III)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->mPage:I

    .line 109
    new-instance v5, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v6, Lcom/android/launcher3/executor/ExecutorState;->HOME:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v6}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v6, "Page"

    const-string v7, "Exist"

    const-string v8, "no"

    .line 110
    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v5

    const-string v6, "WidgetName"

    iget-object v7, p0, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 111
    invoke-virtual {v7}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 128
    .end local v3    # "widgetPage":I
    :cond_5
    :goto_1
    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    .line 129
    return-void

    .line 87
    :cond_6
    iget-object v5, p0, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/executor/StateAppInfo;->isValid()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 88
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .line 89
    .local v2, "w":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v5

    iget-object v6, v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/proxy/LauncherProxy;->getWidgetView(Landroid/content/ComponentName;)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    .line 112
    .end local v2    # "w":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    .restart local v3    # "widgetPage":I
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v6

    iget v7, p0, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->mPage:I

    iget v8, p0, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->mPageDirection:I

    .line 113
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v9, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v5, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    .line 112
    invoke-virtual {v6, v7, v8, v9, v5}, Lcom/android/launcher3/proxy/LauncherProxy;->hasHomeEmptySpace(IIII)Z

    move-result v5

    if-nez v5, :cond_8

    .line 115
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    iget v7, p0, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->mPageDirection:I

    iget v8, p0, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->mDetailDirection:I

    invoke-virtual {v5, v0, v6, v7, v8}, Lcom/android/launcher3/proxy/LauncherProxy;->moveHomeItemToPage(Landroid/view/View;III)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->mPage:I

    .line 117
    new-instance v5, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v6, Lcom/android/launcher3/executor/ExecutorState;->HOME:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v6}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v6, "Space"

    const-string v7, "Available"

    const-string v8, "no"

    .line 118
    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v5

    const-string v6, "WidgetName"

    iget-object v7, p0, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 119
    invoke-virtual {v7}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v5

    const-string v6, "ToPage"

    iget v7, p0, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->mPage:I

    add-int/lit8 v7, v7, 0x1

    .line 120
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto/16 :goto_1

    .line 122
    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v5

    iget v6, p0, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->mPage:I

    iget v7, p0, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->mPageDirection:I

    iget v8, p0, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->mDetailDirection:I

    invoke-virtual {v5, v0, v6, v7, v8}, Lcom/android/launcher3/proxy/LauncherProxy;->moveHomeItemToPage(Landroid/view/View;III)I

    .line 123
    new-instance v5, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v6, Lcom/android/launcher3/executor/ExecutorState;->HOME:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v6}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v6, "Space"

    const-string v7, "Available"

    const-string v8, "yes"

    .line 124
    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v5

    const-string v6, "WidgetName"

    iget-object v7, p0, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 125
    invoke-virtual {v7}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto/16 :goto_1
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 5
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    const/16 v3, -0x3e7

    .line 46
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/executor/StateParamHelper;->newHelper(Ljava/util/Map;)Lcom/android/launcher3/executor/StateParamHelper;

    move-result-object v0

    .line 47
    .local v0, "paramHelper":Lcom/android/launcher3/executor/StateParamHelper;
    const-string v1, "WidgetName"

    sget-object v2, Lcom/android/launcher3/executor/StateParamHelper$Type;->STRING:Lcom/android/launcher3/executor/StateParamHelper$Type;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/executor/StateParamHelper;->hasSlotValue(Ljava/lang/String;Lcom/android/launcher3/executor/StateParamHelper$Type;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v2, Lcom/android/launcher3/executor/ExecutorState;->HOME:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v2}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "WidgetName"

    const-string v3, "Exist"

    const-string v4, "no"

    .line 49
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 50
    const-string v1, "PARAM_CHECK_ERROR"

    .line 70
    :goto_0
    return-object v1

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    const-string v2, "WidgetName"

    invoke-virtual {v0, v2}, Lcom/android/launcher3/executor/StateParamHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/executor/StateAppInfo;->setComponentName(Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/StateAppInfo;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 55
    const-string v1, "PARAM_CHECK_ERROR"

    goto :goto_0

    .line 58
    :cond_1
    const-string v1, "Page"

    sget-object v2, Lcom/android/launcher3/executor/StateParamHelper$Type;->INTEGER:Lcom/android/launcher3/executor/StateParamHelper$Type;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/executor/StateParamHelper;->hasSlotValue(Ljava/lang/String;Lcom/android/launcher3/executor/StateParamHelper$Type;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 59
    iput v3, p0, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->mPage:I

    .line 70
    :goto_1
    const-string v1, "PARAM_CHECK_OK"

    goto :goto_0

    .line 61
    :cond_2
    const-string v1, "Page"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/executor/StateParamHelper;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->mPage:I

    .line 62
    iget v1, p0, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->mPage:I

    if-gez v1, :cond_3

    .line 63
    iget v1, p0, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->mPage:I

    iput v1, p0, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->mPageDirection:I

    .line 64
    iput v3, p0, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->mPage:I

    goto :goto_1

    .line 66
    :cond_3
    iget v1, p0, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->mPage:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/launcher3/executor/HomeWidgetMoveStateHandler;->mPage:I

    goto :goto_1
.end method
