.class Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;
.super Lcom/android/launcher3/executor/AbstractAppsStateHandler;
.source "AppsFolderAddIconStateHandler.java"


# instance fields
.field private mAppAnapho:Ljava/lang/String;

.field private mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

.field private mIsSelectAll:Z

.field private mOrdinal:I

.field private mRuleID:Ljava/lang/String;

.field private final mRuleID_94:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 2
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractAppsStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 17
    const-string v0, "Home_94"

    iput-object v0, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mRuleID_94:Ljava/lang/String;

    .line 19
    new-instance v0, Lcom/android/launcher3/executor/StateAppInfo;

    invoke-direct {v0}, Lcom/android/launcher3/executor/StateAppInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 22
    const/16 v0, -0x3e7

    iput v0, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mOrdinal:I

    .line 23
    iput-object v1, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mAppAnapho:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mRuleID:Ljava/lang/String;

    .line 30
    sget-object v0, Lcom/android/launcher3/executor/StateAppInfoHolder;->INSTANCE:Lcom/android/launcher3/executor/StateAppInfoHolder;

    iget-object v1, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/executor/StateAppInfoHolder;->setStateAppInfo(Lcom/android/launcher3/executor/StateAppInfo;)V

    .line 31
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 11
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    const/4 v9, 0x1

    .line 80
    const/4 v4, 0x0

    .line 81
    .local v4, "ret":I
    const/4 v3, 0x0

    .line 83
    .local v3, "resultAppName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mRuleID:Ljava/lang/String;

    const-string v8, "Home_94"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 85
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/proxy/LauncherProxy;->getSearchResultListCount()I

    move-result v5

    .line 87
    .local v5, "searchResultCount":I
    if-nez v5, :cond_1

    .line 88
    new-instance v7, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v8, Lcom/android/launcher3/executor/ExecutorState;->APPS_FOLDER_ADD_ICON_SEARCH_RESULT:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v8}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v8, "Text"

    const-string v9, "Match"

    const-string v10, "no"

    .line 89
    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 154
    .end local v5    # "searchResultCount":I
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v4}, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    .line 155
    return-void

    .line 90
    .restart local v5    # "searchResultCount":I
    :cond_1
    if-ne v5, v9, :cond_3

    .line 91
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/proxy/LauncherProxy;->addSearchResultItemToFolder()I

    .line 93
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/proxy/LauncherProxy;->getSearchResultSingleAppInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v6

    .line 94
    .local v6, "singleAppInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v6, :cond_2

    iget-object v7, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v7, :cond_2

    .line 95
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/proxy/LauncherProxy;->getSearchResultSingleAppInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 98
    :cond_2
    if-eqz v3, :cond_0

    .line 99
    new-instance v7, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v8, Lcom/android/launcher3/executor/ExecutorState;->APPS_FOLDER_ADD_ICON:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v8}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v8, "Text"

    const-string v9, "Match"

    const-string v10, "yes"

    .line 100
    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v7

    const-string v8, "Text"

    .line 101
    invoke-virtual {v7, v8, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0

    .line 103
    .end local v6    # "singleAppInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_3
    iget-boolean v7, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mIsSelectAll:Z

    if-eqz v7, :cond_4

    .line 104
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/proxy/LauncherProxy;->addSearchResultItemToFolder()I

    .line 106
    new-instance v7, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v8, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mStateId:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v8}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v8, "SelectedAll"

    const-string v9, "Exist"

    const-string v10, "yes"

    .line 107
    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v7

    const-string v8, "apps_count"

    .line 108
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0

    .line 109
    :cond_4
    iget v7, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mOrdinal:I

    const/16 v8, -0x3e7

    if-eq v7, v8, :cond_6

    .line 110
    iget v7, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mOrdinal:I

    if-lt v5, v7, :cond_5

    iget v7, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mOrdinal:I

    if-lez v7, :cond_5

    .line 111
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v7

    iget v8, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mOrdinal:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Lcom/android/launcher3/proxy/LauncherProxy;->addSearchResultItemToFolder(I)I

    .line 112
    new-instance v7, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v8, Lcom/android/launcher3/executor/ExecutorState;->APPS_FOLDER_ADD_ICON:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v8}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v8, "OrdinalNumber"

    const-string v9, "Valid"

    const-string v10, "yes"

    .line 113
    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v7

    const-string v8, "OrdinalNumber"

    iget v9, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mOrdinal:I

    .line 114
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto/16 :goto_0

    .line 116
    :cond_5
    new-instance v7, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v8, Lcom/android/launcher3/executor/ExecutorState;->APPS_FOLDER_ADD_ICON_SEARCH_RESULT:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v8}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v8, "OrdinalNumber"

    const-string v9, "Valid"

    const-string v10, "no"

    .line 117
    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto/16 :goto_0

    .line 119
    :cond_6
    iget-object v7, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mAppAnapho:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/proxy/LauncherProxy;->getSearchResultListCheckedCount()I

    move-result v0

    .line 121
    .local v0, "checkItemCount":I
    if-ge v0, v9, :cond_7

    .line 122
    new-instance v7, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v8, Lcom/android/launcher3/executor/ExecutorState;->APPS_FOLDER_ADD_ICON_SEARCH_RESULT:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v8}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v8, "OrdinalNumber"

    const-string v9, "Exist"

    const-string v10, "no"

    .line 123
    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v7

    const-string v8, "apps_count"

    .line 124
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto/16 :goto_0

    .line 126
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/android/launcher3/proxy/LauncherProxy;->addSearchResultItemToFolder(Z)I

    .line 127
    new-instance v7, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v8, Lcom/android/launcher3/executor/ExecutorState;->APPS_FOLDER_ADD_ICON:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v8}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v8, "SelectedAll"

    const-string v9, "Exist"

    const-string v10, "yes"

    .line 128
    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v7

    const-string v8, "apps_count"

    .line 129
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto/16 :goto_0

    .line 134
    .end local v0    # "checkItemCount":I
    .end local v5    # "searchResultCount":I
    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v7, v8}, Lcom/android/launcher3/proxy/LauncherProxy;->hasItemInApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 135
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v7, v8}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v1

    .line 136
    .local v1, "itemInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v7, v8}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    .line 138
    .local v2, "itemsCount":I
    if-le v2, v9, :cond_9

    .line 139
    new-instance v7, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v8, Lcom/android/launcher3/executor/ExecutorState;->APPS_FOLDER_ADD_ICON_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v8}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v8, "SingleApp"

    const-string v9, "Match"

    const-string v10, "multi"

    .line 140
    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto/16 :goto_0

    .line 142
    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v7, v8}, Lcom/android/launcher3/proxy/LauncherProxy;->addAppsFolderItem(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I

    .line 143
    new-instance v7, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v8, Lcom/android/launcher3/executor/ExecutorState;->APPS_FOLDER_ADD_ICON_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v8}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v8, "SingleApp"

    const-string v9, "Match"

    const-string v10, "yes"

    .line 144
    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto/16 :goto_0

    .line 148
    .end local v1    # "itemInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v2    # "itemsCount":I
    :cond_a
    const/4 v4, 0x1

    .line 149
    new-instance v7, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v8, Lcom/android/launcher3/executor/ExecutorState;->APPS_FOLDER_ADD_ICON_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v8}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v8, "SingleApp"

    const-string v9, "Match"

    const-string v10, "no"

    .line 150
    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto/16 :goto_0
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 6
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 35
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getRuleId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mRuleID:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v2

    .line 38
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/samsung/android/sdk/bixby/data/Parameter;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    if-gez v4, :cond_1

    .line 39
    :cond_0
    const-string v4, "PARAM_CHECK_ERROR"

    .line 74
    :goto_0
    return-object v4

    .line 41
    :cond_1
    invoke-static {v2}, Lcom/android/launcher3/executor/StateParamHelper;->newHelper(Ljava/util/Map;)Lcom/android/launcher3/executor/StateParamHelper;

    move-result-object v1

    .line 43
    .local v1, "helper":Lcom/android/launcher3/executor/StateParamHelper;
    iget-object v4, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mRuleID:Ljava/lang/String;

    const-string v5, "Home_94"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 45
    const-string v4, "SelectedAll"

    sget-object v5, Lcom/android/launcher3/executor/StateParamHelper$Type;->BOOLEAN:Lcom/android/launcher3/executor/StateParamHelper$Type;

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/executor/StateParamHelper;->hasSlotValue(Ljava/lang/String;Lcom/android/launcher3/executor/StateParamHelper$Type;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 46
    const-string v4, "SelectedAll"

    invoke-virtual {v1, v4}, Lcom/android/launcher3/executor/StateParamHelper;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mIsSelectAll:Z

    .line 74
    :cond_2
    :goto_1
    const-string v4, "PARAM_CHECK_OK"

    goto :goto_0

    .line 47
    :cond_3
    const-string v4, "OrdinalNumber"

    sget-object v5, Lcom/android/launcher3/executor/StateParamHelper$Type;->INTEGER:Lcom/android/launcher3/executor/StateParamHelper$Type;

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/executor/StateParamHelper;->hasSlotValue(Ljava/lang/String;Lcom/android/launcher3/executor/StateParamHelper$Type;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 48
    const-string v4, "OrdinalNumber"

    invoke-virtual {v1, v4}, Lcom/android/launcher3/executor/StateParamHelper;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mOrdinal:I

    goto :goto_1

    .line 49
    :cond_4
    const-string v4, "SelectedAppAnapho"

    sget-object v5, Lcom/android/launcher3/executor/StateParamHelper$Type;->STRING:Lcom/android/launcher3/executor/StateParamHelper$Type;

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/executor/StateParamHelper;->hasSlotValue(Ljava/lang/String;Lcom/android/launcher3/executor/StateParamHelper$Type;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 50
    const-string v4, "SelectedAppAnapho"

    invoke-virtual {v1, v4}, Lcom/android/launcher3/executor/StateParamHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mAppAnapho:Ljava/lang/String;

    goto :goto_1

    .line 54
    :cond_5
    const/4 v3, 0x0

    .line 56
    .local v3, "value":Ljava/lang/String;
    const-string v4, "AppName"

    sget-object v5, Lcom/android/launcher3/executor/StateParamHelper$Type;->STRING:Lcom/android/launcher3/executor/StateParamHelper$Type;

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/executor/StateParamHelper;->hasSlotValue(Ljava/lang/String;Lcom/android/launcher3/executor/StateParamHelper$Type;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 57
    const-string v4, "AppName"

    invoke-virtual {v1, v4}, Lcom/android/launcher3/executor/StateParamHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 60
    :cond_6
    if-eqz v3, :cond_7

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 61
    :cond_7
    iget-object v4, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/executor/StateAppInfo;->isValid()Z

    move-result v4

    if-nez v4, :cond_8

    .line 62
    const-string v4, "PARAM_CHECK_ERROR"

    goto :goto_0

    .line 66
    :cond_8
    iget-object v4, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v4, v3}, Lcom/android/launcher3/executor/StateAppInfo;->setComponentName(Ljava/lang/String;)V

    .line 67
    iget-object v4, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/executor/StateAppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 68
    invoke-virtual {v4}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u00a0"

    if-ne v4, v5, :cond_2

    .line 69
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppNamebyComponentName(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "appName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v4, v0}, Lcom/android/launcher3/executor/StateAppInfo;->setName(Ljava/lang/String;)V

    goto :goto_1
.end method
