.class Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$1;
.super Ljava/lang/Object;
.source "PlayStoreSearchResultExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;->executePlay(Ljava/lang/String;Ljava/util/List;)Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;

.field final synthetic val$albumList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$1;->val$albumList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;

    iget-object v0, v0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$1$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$1$1;-><init>(Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$1;)V

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$1;->val$albumList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    .line 114
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/milksearch/SearchAlbum;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milksearch/SearchAlbum;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->playAlbum(Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/lang/String;)V

    .line 115
    return-void
.end method
