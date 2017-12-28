.class Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;
.super Lcom/android/launcher3/executor/AbstractStateHandler;
.source "HomeSingleAppMoveStateHandler.java"


# instance fields
.field private mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

.field private mDetailDirection:I

.field private mObjectName:Ljava/lang/String;

.field private mPage:I

.field private mPageDirection:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 2
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    const/4 v1, -0x1

    .line 41
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 35
    new-instance v0, Lcom/android/launcher3/executor/StateAppInfo;

    invoke-direct {v0}, Lcom/android/launcher3/executor/StateAppInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 36
    iput v1, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mPage:I

    iput v1, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mDetailDirection:I

    .line 37
    const-string v0, "AppName"

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mObjectName:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/android/launcher3/executor/StateAppInfoHolder;->INSTANCE:Lcom/android/launcher3/executor/StateAppInfoHolder;

    iget-object v1, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/executor/StateAppInfoHolder;->setStateAppInfo(Lcom/android/launcher3/executor/StateAppInfo;)V

    .line 43
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 10
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 91
    const/4 v3, 0x0

    .line 93
    .local v3, "ret":I
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/proxy/LauncherProxy;->hasItemInHome(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 94
    new-instance v4, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v5, Lcom/android/launcher3/executor/ExecutorState;->HOME:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v5}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v5, "AppName"

    const-string v6, "Match"

    const-string v7, "no"

    .line 95
    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v4

    const-string v5, "AppName"

    iget-object v6, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 96
    invoke-virtual {v6}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 97
    const/4 v3, 0x1

    .line 98
    invoke-virtual {p0, p1, v3}, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    .line 159
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomeItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v1

    .line 104
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 105
    :cond_1
    new-instance v4, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v5, Lcom/android/launcher3/executor/ExecutorState;->HOME:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v5}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v5, "AppName"

    const-string v6, "Match"

    const-string v7, "no"

    .line 106
    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v4

    const-string v5, "AppName"

    iget-object v6, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 107
    invoke-virtual {v6}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 108
    const/4 v3, 0x1

    .line 109
    invoke-virtual {p0, p1, v3}, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    goto :goto_0

    .line 113
    :cond_2
    iget-object v5, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/executor/StateAppInfo;->setItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 115
    const/4 v2, 0x0

    .line 116
    .local v2, "iv":Landroid/view/View;
    iget-object v4, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/executor/StateAppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 117
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/executor/StateAppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/proxy/LauncherProxy;->getItemViewByComponentName(Landroid/content/ComponentName;)Landroid/view/View;

    move-result-object v2

    .line 122
    :cond_3
    :goto_1
    if-nez v2, :cond_4

    .line 123
    new-instance v4, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v5, Lcom/android/launcher3/executor/ExecutorState;->HOME:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v5}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v5, "AppName"

    const-string v6, "Match"

    const-string v7, "no"

    .line 124
    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v4

    const-string v5, "AppName"

    iget-object v6, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 125
    invoke-virtual {v6}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 126
    const/4 v3, 0x1

    .line 129
    :cond_4
    if-nez v3, :cond_6

    .line 130
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v5

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v6, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomePageNumberByScreenId(J)I

    move-result v0

    .line 131
    .local v0, "itemPage":I
    iget v4, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mPage:I

    const/16 v5, -0x3e7

    if-ne v4, v5, :cond_5

    .line 132
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v4

    iget v5, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mPageDirection:I

    invoke-virtual {v4, v0, v5, v8}, Lcom/android/launcher3/proxy/LauncherProxy;->mapDirectionToPage(IIZ)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mPage:I

    .line 134
    :cond_5
    iget v4, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mPage:I

    if-ltz v4, :cond_8

    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v4

    iget v5, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mPage:I

    invoke-virtual {v4, v5}, Lcom/android/launcher3/proxy/LauncherProxy;->isHomeValidPage(I)Z

    move-result v4

    if-nez v4, :cond_8

    .line 136
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    iget v6, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mPageDirection:I

    iget v7, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mDetailDirection:I

    invoke-virtual {v4, v2, v5, v6, v7}, Lcom/android/launcher3/proxy/LauncherProxy;->moveHomeItemToPage(Landroid/view/View;III)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mPage:I

    .line 138
    new-instance v4, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v5, Lcom/android/launcher3/executor/ExecutorState;->HOME:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v5}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v5, "Page"

    const-string v6, "Exist"

    const-string v7, "no"

    .line 139
    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v4

    const-string v5, "AppName"

    iget-object v6, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 140
    invoke-virtual {v6}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 158
    .end local v0    # "itemPage":I
    :cond_6
    :goto_2
    invoke-virtual {p0, p1, v3}, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    goto/16 :goto_0

    .line 118
    :cond_7
    iget-object v4, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 119
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/proxy/LauncherProxy;->getItemViewByTitle(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_1

    .line 141
    .restart local v0    # "itemPage":I
    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v4

    iget v5, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mPage:I

    iget v6, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mPageDirection:I

    invoke-virtual {v4, v5, v6, v8, v8}, Lcom/android/launcher3/proxy/LauncherProxy;->hasHomeEmptySpace(IIII)Z

    move-result v4

    if-nez v4, :cond_9

    .line 143
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    iget v6, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mPageDirection:I

    iget v7, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mDetailDirection:I

    invoke-virtual {v4, v2, v5, v6, v7}, Lcom/android/launcher3/proxy/LauncherProxy;->moveHomeItemToPage(Landroid/view/View;III)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mPage:I

    .line 145
    new-instance v4, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v5, Lcom/android/launcher3/executor/ExecutorState;->HOME:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v5}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v5, "Space"

    const-string v6, "Available"

    const-string v7, "no"

    .line 146
    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v4

    const-string v5, "AppName"

    iget-object v6, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 147
    invoke-virtual {v6}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v4

    const-string v5, "ToPage"

    iget v6, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mPage:I

    add-int/lit8 v6, v6, 0x1

    .line 148
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_2

    .line 150
    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v4

    iget v5, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mPage:I

    iget v6, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mPageDirection:I

    iget v7, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mDetailDirection:I

    invoke-virtual {v4, v2, v5, v6, v7}, Lcom/android/launcher3/proxy/LauncherProxy;->moveHomeItemToPage(Landroid/view/View;III)I

    .line 151
    iget-object v4, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    if-nez v4, :cond_6

    .line 152
    new-instance v4, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v5, Lcom/android/launcher3/executor/ExecutorState;->HOME:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v5}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v5, "Space"

    const-string v6, "Available"

    const-string v7, "yes"

    .line 153
    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v4

    const-string v5, "AppName"

    iget-object v6, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 154
    invoke-virtual {v6}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto/16 :goto_2
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 6
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 47
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v1

    .line 48
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/samsung/android/sdk/bixby/data/Parameter;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-gez v2, :cond_1

    .line 49
    :cond_0
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v3, Lcom/android/launcher3/executor/ExecutorState;->HOME:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v3}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "AppName"

    const-string v4, "Exist"

    const-string v5, "no"

    .line 50
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 52
    const-string v2, "PARAM_CHECK_ERROR"

    .line 86
    :goto_0
    return-object v2

    .line 55
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/executor/StateParamHelper;->newHelper(Ljava/util/Map;)Lcom/android/launcher3/executor/StateParamHelper;

    move-result-object v0

    .line 56
    .local v0, "paramHelper":Lcom/android/launcher3/executor/StateParamHelper;
    iget-object v2, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mObjectName:Ljava/lang/String;

    sget-object v3, Lcom/android/launcher3/executor/StateParamHelper$Type;->STRING:Lcom/android/launcher3/executor/StateParamHelper$Type;

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/executor/StateParamHelper;->hasSlotValue(Ljava/lang/String;Lcom/android/launcher3/executor/StateParamHelper$Type;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 57
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v3, Lcom/android/launcher3/executor/ExecutorState;->HOME:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v3}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "AppName"

    const-string v4, "Exist"

    const-string v5, "no"

    .line 58
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 59
    const-string v2, "PARAM_CHECK_ERROR"

    goto :goto_0

    .line 62
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    iget-object v3, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mObjectName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/executor/StateParamHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/executor/StateAppInfo;->setComponentName(Ljava/lang/String;)V

    .line 63
    iget-object v2, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/executor/StateAppInfo;->isValid()Z

    move-result v2

    if-nez v2, :cond_3

    .line 64
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v3, Lcom/android/launcher3/executor/ExecutorState;->HOME:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v3}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "AppName"

    const-string v4, "Match"

    const-string v5, "no"

    .line 65
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 66
    const-string v2, "PARAM_CHECK_ERROR"

    goto :goto_0

    .line 69
    :cond_3
    const-string v2, "Page"

    sget-object v3, Lcom/android/launcher3/executor/StateParamHelper$Type;->INTEGER:Lcom/android/launcher3/executor/StateParamHelper$Type;

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/executor/StateParamHelper;->hasSlotValue(Ljava/lang/String;Lcom/android/launcher3/executor/StateParamHelper$Type;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 70
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v3, Lcom/android/launcher3/executor/ExecutorState;->HOME:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v3}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "Page"

    const-string v4, "Exist"

    const-string v5, "no"

    .line 71
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    const-string v3, "AppName"

    iget-object v4, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 72
    invoke-virtual {v4}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 74
    const/4 v2, -0x2

    iput v2, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mPage:I

    .line 79
    :goto_1
    iget v2, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mPage:I

    if-gez v2, :cond_5

    .line 80
    iget v2, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mPage:I

    iput v2, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mPageDirection:I

    .line 81
    const/16 v2, -0x3e7

    iput v2, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mPage:I

    .line 86
    :goto_2
    const-string v2, "PARAM_CHECK_OK"

    goto/16 :goto_0

    .line 76
    :cond_4
    const-string v2, "Page"

    invoke-virtual {v0, v2}, Lcom/android/launcher3/executor/StateParamHelper;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mPage:I

    goto :goto_1

    .line 83
    :cond_5
    iget v2, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mPage:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/launcher3/executor/HomeSingleAppMoveStateHandler;->mPage:I

    goto :goto_2
.end method
