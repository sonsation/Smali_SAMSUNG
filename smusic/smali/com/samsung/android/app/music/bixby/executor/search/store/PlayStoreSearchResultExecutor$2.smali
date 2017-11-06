.class Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$2;
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

.field final synthetic val$stationList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$2;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$2;->val$stationList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$2;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;

    iget-object v0, v0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$2;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;

    .line 123
    invoke-static {v1}, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;->access$000(Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$2$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$2$1;-><init>(Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$2;)V

    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$2;->val$stationList:Ljava/util/ArrayList;

    .line 141
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/model/milksearch/SearchStation;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/milksearch/SearchStation;->getStationId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move v7, v5

    move v8, v5

    .line 123
    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->playStations(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    .line 142
    return-void
.end method
