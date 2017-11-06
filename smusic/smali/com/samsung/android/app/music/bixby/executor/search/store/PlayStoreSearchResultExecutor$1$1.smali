.class Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$1$1;
.super Ljava/lang/Object;
.source "PlayStoreSearchResultExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$1;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$1$1;->this$1:Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWorkerFinished(ZLandroid/os/Bundle;)V
    .locals 5
    .param p1, "isWorkerSuccess"    # Z
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 90
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    const-string v2, "SearchAlbumsTab"

    invoke-direct {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    if-eqz p1, :cond_1

    .line 92
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$1$1;->this$1:Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$1;

    iget-object v2, v2, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;

    iget-object v2, v2, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;->mContext:Landroid/content/Context;

    .line 93
    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getUser()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v1

    .line 94
    .local v1, "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/UserInfo;->isStreamingUser()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    const-string v2, "PlayStoreSearchResultExecutor"

    const-string v3, "Premium Account NLG"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v2, "Subscription"

    const-string v3, "Valid"

    const-string/jumbo v4, "yes"

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .end local v1    # "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$1$1;->this$1:Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$1;

    iget-object v2, v2, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;->sendToBixbyClient(Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    .line 108
    return-void

    .line 99
    .restart local v1    # "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    :cond_0
    const-string v2, "PlayStoreSearchResultExecutor"

    const-string v3, "Not Premium Account NLG"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v2, "Subscription"

    const-string v3, "Valid"

    const-string v4, "no"

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    .end local v1    # "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    :cond_1
    const-string v2, "SucceedPlaying"

    const-string v3, "Valid"

    const-string v4, "no"

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showLoadingProgress(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 113
    return-void
.end method
