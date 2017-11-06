.class Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$CountRunnable;
.super Ljava/lang/Object;
.source "MilkSearchBaseResultFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CountRunnable"
.end annotation


# instance fields
.field private mCount:I

.field private mRunnableKeyword:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;ILjava/lang/String;)V
    .locals 0
    .param p2, "count"    # I
    .param p3, "keyword"    # Ljava/lang/String;

    .prologue
    .line 533
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$CountRunnable;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment<TT;>.CountRunnable;"
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$CountRunnable;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    iput p2, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$CountRunnable;->mCount:I

    .line 535
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$CountRunnable;->mRunnableKeyword:Ljava/lang/String;

    .line 536
    return-void
.end method


# virtual methods
.method protected getCount()I
    .locals 1

    .prologue
    .line 561
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$CountRunnable;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment<TT;>.CountRunnable;"
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$CountRunnable;->mCount:I

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 540
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$CountRunnable;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment<TT;>.CountRunnable;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$CountRunnable;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mSearchResultPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$CountRunnable;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mSearchResultPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$CountRunnable;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->access$1000(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CountRunnable >>> Not Initialized Count("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 542
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$CountRunnable;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 541
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$CountRunnable;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$CountRunnable;->setCount(I)V

    .line 544
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$CountRunnable;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 545
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$CountRunnable;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->access$1100(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 554
    :goto_0
    return-void

    .line 547
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$CountRunnable;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->access$1200(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CountRunnable >>> Thread Fail)"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$CountRunnable;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mSearchResultPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->setEmptySearchView()V

    goto :goto_0

    .line 552
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$CountRunnable;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mSearchResultPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$CountRunnable;->mRunnableKeyword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->setForceKeywordToBixbyRecommend(Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$CountRunnable;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mSearchResultPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->loadSearchResult(Z)V

    goto :goto_0
.end method

.method protected setCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 557
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$CountRunnable;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment<TT;>.CountRunnable;"
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$CountRunnable;->mCount:I

    .line 558
    return-void
.end method
