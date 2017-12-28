.class Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;
.super Lcom/android/launcher3/executor/AbstractStateHandler;
.source "HomeFolderAddIconStateHandler.java"


# instance fields
.field private mAppAnapho:Ljava/lang/String;

.field private mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

.field private mIsSelectAll:Z

.field private mOrdinal:I

.field private mRuleID:Ljava/lang/String;

.field private final mRuleID_91:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 2
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 32
    const-string v0, "Home_91"

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mRuleID_91:Ljava/lang/String;

    .line 34
    new-instance v0, Lcom/android/launcher3/executor/StateAppInfo;

    invoke-direct {v0}, Lcom/android/launcher3/executor/StateAppInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 37
    const/16 v0, -0x3e7

    iput v0, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mOrdinal:I

    .line 38
    iput-object v1, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mAppAnapho:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mRuleID:Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/android/launcher3/executor/StateAppInfoHolder;->INSTANCE:Lcom/android/launcher3/executor/StateAppInfoHolder;

    iget-object v1, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/executor/StateAppInfoHolder;->setStateAppInfo(Lcom/android/launcher3/executor/StateAppInfo;)V

    .line 46
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 12
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    const/4 v10, 0x1

    .line 94
    const/4 v5, 0x0

    .line 95
    .local v5, "ret":I
    const/4 v4, 0x0

    .line 97
    .local v4, "resultAppName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mRuleID:Ljava/lang/String;

    const-string v9, "Home_91"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 99
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/proxy/LauncherProxy;->getSearchResultListCount()I

    move-result v6

    .line 101
    .local v6, "searchResultCount":I
    if-nez v6, :cond_1

    .line 102
    new-instance v8, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v9, Lcom/android/launcher3/executor/ExecutorState;->HOME_FOLDER_ADD_ICON_SEARCH_RESULT:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v9}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v9, "Text"

    const-string v10, "Match"

    const-string v11, "no"

    .line 103
    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 176
    .end local v6    # "searchResultCount":I
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v5}, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    .line 177
    return-void

    .line 104
    .restart local v6    # "searchResultCount":I
    :cond_1
    if-ne v6, v10, :cond_3

    .line 105
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/proxy/LauncherProxy;->addSearchResultItemToFolder()I

    .line 107
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/proxy/LauncherProxy;->getSearchResultSingleAppInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v7

    .line 108
    .local v7, "singleAppInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v7, :cond_2

    iget-object v8, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v8, :cond_2

    .line 109
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/proxy/LauncherProxy;->getSearchResultSingleAppInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 112
    :cond_2
    if-eqz v4, :cond_0

    .line 113
    new-instance v8, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v9, Lcom/android/launcher3/executor/ExecutorState;->HOME_FOLDER_ADD_ICON:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v9}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v9, "Text"

    const-string v10, "Match"

    const-string v11, "yes"

    .line 114
    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v8

    const-string v9, "Text"

    .line 115
    invoke-virtual {v8, v9, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0

    .line 117
    .end local v7    # "singleAppInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_3
    iget-boolean v8, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mIsSelectAll:Z

    if-eqz v8, :cond_4

    .line 118
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/proxy/LauncherProxy;->addSearchResultItemToFolder()I

    .line 120
    new-instance v8, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v9, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mStateId:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v9}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v9, "SelectedAll"

    const-string v10, "Exist"

    const-string v11, "yes"

    .line 121
    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v8

    const-string v9, "apps_count"

    .line 122
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0

    .line 123
    :cond_4
    iget v8, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mOrdinal:I

    const/16 v9, -0x3e7

    if-eq v8, v9, :cond_6

    .line 124
    iget v8, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mOrdinal:I

    if-lt v6, v8, :cond_5

    iget v8, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mOrdinal:I

    if-lez v8, :cond_5

    .line 125
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v8

    iget v9, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mOrdinal:I

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Lcom/android/launcher3/proxy/LauncherProxy;->addSearchResultItemToFolder(I)I

    .line 126
    new-instance v8, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v9, Lcom/android/launcher3/executor/ExecutorState;->HOME_FOLDER_ADD_ICON:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v9}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v9, "OrdinalNumber"

    const-string v10, "Valid"

    const-string v11, "yes"

    .line 127
    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v8

    const-string v9, "OrdinalNumber"

    iget v10, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mOrdinal:I

    .line 128
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto/16 :goto_0

    .line 130
    :cond_5
    new-instance v8, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v9, Lcom/android/launcher3/executor/ExecutorState;->HOME_FOLDER_ADD_ICON_SEARCH_RESULT:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v9}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v9, "OrdinalNumber"

    const-string v10, "Valid"

    const-string v11, "no"

    .line 131
    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto/16 :goto_0

    .line 133
    :cond_6
    iget-object v8, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mAppAnapho:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/proxy/LauncherProxy;->getSearchResultListCheckedCount()I

    move-result v0

    .line 135
    .local v0, "checkItemCount":I
    if-ge v0, v10, :cond_7

    .line 136
    new-instance v8, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v9, Lcom/android/launcher3/executor/ExecutorState;->HOME_FOLDER_ADD_ICON_SEARCH_RESULT:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v9}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v9, "OrdinalNumber"

    const-string v10, "Exist"

    const-string v11, "no"

    .line 137
    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v8

    const-string v9, "apps_count"

    .line 138
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto/16 :goto_0

    .line 140
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/android/launcher3/proxy/LauncherProxy;->addSearchResultItemToFolder(Z)I

    .line 141
    new-instance v8, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v9, Lcom/android/launcher3/executor/ExecutorState;->HOME_FOLDER_ADD_ICON:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v9}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v9, "SelectedAll"

    const-string v10, "Exist"

    const-string v11, "yes"

    .line 142
    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v8

    const-string v9, "apps_count"

    .line 143
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto/16 :goto_0

    .line 148
    .end local v0    # "checkItemCount":I
    .end local v6    # "searchResultCount":I
    :cond_8
    const/4 v1, 0x0

    .line 149
    .local v1, "isInstalledApp":Z
    const/4 v2, 0x0

    .line 151
    .local v2, "itemInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/proxy/LauncherProxy;->isHomeOnlyMode()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 152
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v8, v9}, Lcom/android/launcher3/proxy/LauncherProxy;->hasItemInHome(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Z

    move-result v1

    .line 153
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v8, v9}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomeItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v2

    .line 159
    :goto_1
    if-eqz v1, :cond_b

    if-eqz v2, :cond_b

    .line 160
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 161
    .local v3, "itemsCount":I
    if-le v3, v10, :cond_a

    .line 162
    new-instance v8, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v9, Lcom/android/launcher3/executor/ExecutorState;->HOME_FOLDER_ADD_ICON_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v9}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v9, "SingleApp"

    const-string v10, "Match"

    const-string v11, "multi"

    .line 163
    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto/16 :goto_0

    .line 155
    .end local v3    # "itemsCount":I
    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v8, v9}, Lcom/android/launcher3/proxy/LauncherProxy;->hasItemInApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Z

    move-result v1

    .line 156
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v8, v9}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    .line 165
    .restart local v3    # "itemsCount":I
    :cond_a
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v8, v9}, Lcom/android/launcher3/proxy/LauncherProxy;->addHomeFolderItem(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I

    .line 166
    new-instance v8, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v9, Lcom/android/launcher3/executor/ExecutorState;->HOME_FOLDER_ADD_ICON_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v9}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v9, "SingleApp"

    const-string v10, "Match"

    const-string v11, "yes"

    .line 167
    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto/16 :goto_0

    .line 170
    .end local v3    # "itemsCount":I
    :cond_b
    const/4 v5, 0x1

    .line 171
    new-instance v8, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v9, Lcom/android/launcher3/executor/ExecutorState;->HOME_FOLDER_ADD_ICON_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v9}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v9, "SingleApp"

    const-string v10, "Match"

    const-string v11, "no"

    .line 172
    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto/16 :goto_0
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 6
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 50
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getRuleId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mRuleID:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v2

    .line 53
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/samsung/android/sdk/bixby/data/Parameter;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    if-gez v4, :cond_1

    .line 54
    :cond_0
    const-string v4, "PARAM_CHECK_ERROR"

    .line 89
    :goto_0
    return-object v4

    .line 56
    :cond_1
    invoke-static {v2}, Lcom/android/launcher3/executor/StateParamHelper;->newHelper(Ljava/util/Map;)Lcom/android/launcher3/executor/StateParamHelper;

    move-result-object v1

    .line 58
    .local v1, "helper":Lcom/android/launcher3/executor/StateParamHelper;
    iget-object v4, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mRuleID:Ljava/lang/String;

    const-string v5, "Home_91"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 60
    const-string v4, "SelectedAll"

    sget-object v5, Lcom/android/launcher3/executor/StateParamHelper$Type;->BOOLEAN:Lcom/android/launcher3/executor/StateParamHelper$Type;

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/executor/StateParamHelper;->hasSlotValue(Ljava/lang/String;Lcom/android/launcher3/executor/StateParamHelper$Type;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 61
    const-string v4, "SelectedAll"

    invoke-virtual {v1, v4}, Lcom/android/launcher3/executor/StateParamHelper;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mIsSelectAll:Z

    .line 89
    :cond_2
    :goto_1
    const-string v4, "PARAM_CHECK_OK"

    goto :goto_0

    .line 62
    :cond_3
    const-string v4, "OrdinalNumber"

    sget-object v5, Lcom/android/launcher3/executor/StateParamHelper$Type;->INTEGER:Lcom/android/launcher3/executor/StateParamHelper$Type;

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/executor/StateParamHelper;->hasSlotValue(Ljava/lang/String;Lcom/android/launcher3/executor/StateParamHelper$Type;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 63
    const-string v4, "OrdinalNumber"

    invoke-virtual {v1, v4}, Lcom/android/launcher3/executor/StateParamHelper;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mOrdinal:I

    goto :goto_1

    .line 64
    :cond_4
    const-string v4, "SelectedAppAnapho"

    sget-object v5, Lcom/android/launcher3/executor/StateParamHelper$Type;->STRING:Lcom/android/launcher3/executor/StateParamHelper$Type;

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/executor/StateParamHelper;->hasSlotValue(Ljava/lang/String;Lcom/android/launcher3/executor/StateParamHelper$Type;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 65
    const-string v4, "SelectedAppAnapho"

    invoke-virtual {v1, v4}, Lcom/android/launcher3/executor/StateParamHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mAppAnapho:Ljava/lang/String;

    goto :goto_1

    .line 69
    :cond_5
    const/4 v3, 0x0

    .line 71
    .local v3, "value":Ljava/lang/String;
    const-string v4, "AppName"

    sget-object v5, Lcom/android/launcher3/executor/StateParamHelper$Type;->STRING:Lcom/android/launcher3/executor/StateParamHelper$Type;

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/executor/StateParamHelper;->hasSlotValue(Ljava/lang/String;Lcom/android/launcher3/executor/StateParamHelper$Type;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 72
    const-string v4, "AppName"

    invoke-virtual {v1, v4}, Lcom/android/launcher3/executor/StateParamHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 75
    :cond_6
    if-eqz v3, :cond_7

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 76
    :cond_7
    iget-object v4, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/executor/StateAppInfo;->isValid()Z

    move-result v4

    if-nez v4, :cond_8

    .line 77
    const-string v4, "PARAM_CHECK_ERROR"

    goto :goto_0

    .line 81
    :cond_8
    iget-object v4, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v4, v3}, Lcom/android/launcher3/executor/StateAppInfo;->setComponentName(Ljava/lang/String;)V

    .line 82
    iget-object v4, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/executor/StateAppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 83
    invoke-virtual {v4}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u00a0"

    if-ne v4, v5, :cond_2

    .line 84
    invoke-virtual {p0}, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppNamebyComponentName(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "appName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/launcher3/executor/HomeFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v4, v0}, Lcom/android/launcher3/executor/StateAppInfo;->setName(Ljava/lang/String;)V

    goto :goto_1
.end method
