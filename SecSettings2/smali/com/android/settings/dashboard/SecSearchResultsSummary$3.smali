.class Lcom/android/settings/dashboard/SecSearchResultsSummary$3;
.super Ljava/lang/Object;
.source "SecSearchResultsSummary.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/SecSearchResultsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/SecSearchResultsSummary;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/dashboard/SecSearchResultsSummary;

    .prologue
    .line 1399
    iput-object p1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$3;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1403
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$3;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    iget-object v2, v2, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    .line 1405
    .local v1, "stateId":Ljava/lang/String;
    const-string/jumbo v2, "SearchSettings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "SearchResult"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1406
    :cond_0
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$3;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    iget-object v2, v2, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v2

    if-eqz v2, :cond_5

    .line 1407
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$3;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    iget-object v2, v2, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v0

    .line 1408
    .local v0, "keyword":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1412
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1413
    :cond_2
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$3;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    iget-object v2, v2, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "SearchSetting"

    const-string/jumbo v4, "exist"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$3;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    iget-object v2, v2, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Search"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1415
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$3;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    iget-object v2, v2, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 1423
    .end local v0    # "keyword":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    .line 1409
    .restart local v0    # "keyword":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$3;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-static {v2}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->-get4(Lcom/android/settings/dashboard/SecSearchResultsSummary;)Landroid/widget/SearchView;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 1410
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$3;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    iget-object v2, v2, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setPendingState(Z)V

    .line 1411
    return-void

    .line 1418
    .end local v0    # "keyword":Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$3;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    iget-object v2, v2, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "SearchSetting"

    const-string/jumbo v4, "exist"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$3;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    iget-object v2, v2, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Search"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1420
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$3;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    iget-object v2, v2, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0
.end method
