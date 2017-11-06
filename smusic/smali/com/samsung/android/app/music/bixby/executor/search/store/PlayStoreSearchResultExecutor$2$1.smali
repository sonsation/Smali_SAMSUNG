.class Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$2$1;
.super Ljava/lang/Object;
.source "PlayStoreSearchResultExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$2;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$2$1;->this$1:Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWorkerFinished(ZLandroid/os/Bundle;)V
    .locals 4
    .param p1, "isWorkerSuccess"    # Z
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 126
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    const-string v1, "SearchStationsTab"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 127
    .local v0, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    if-eqz p1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$2$1;->this$1:Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$2;

    iget-object v1, v1, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$2;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;

    invoke-static {v1}, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;->access$000(Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->startActivity(Landroid/app/Activity;Z)V

    .line 129
    const-string v1, "Subscription"

    const-string v2, "Valid"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$2$1;->this$1:Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$2;

    iget-object v1, v1, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$2;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;->sendToBixbyClient(Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    .line 136
    return-void

    .line 132
    :cond_0
    const-string v1, "SucceedPlaying"

    const-string v2, "Valid"

    const-string v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showLoadingProgress(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 140
    return-void
.end method
