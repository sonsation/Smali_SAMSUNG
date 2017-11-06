.class Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$2;
.super Ljava/lang/Object;
.source "MilkSearchBaseResultFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$OnLoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->setupInitAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    .prologue
    .line 239
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$2;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$2;"
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isLoadMore()Z
    .locals 1

    .prologue
    .line 242
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$2;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$2;"
    const/4 v0, 0x0

    return v0
.end method

.method public onLoadMore(II)V
    .locals 2
    .param p1, "pos"    # I
    .param p2, "total"    # I

    .prologue
    .line 247
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$2;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$2;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->setRefreshing(Z)V

    .line 248
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mSearchResultPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->loadSearchNextResults()V

    .line 249
    return-void
.end method
