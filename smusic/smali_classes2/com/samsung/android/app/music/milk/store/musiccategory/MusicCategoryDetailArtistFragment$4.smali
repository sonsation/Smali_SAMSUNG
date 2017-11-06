.class Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment$4;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "MusicCategoryDetailArtistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment$4;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 197
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 198
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment$4;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mLoadMoreListener:Lcom/samsung/android/app/music/milk/store/IOnLoadMoreListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment$4;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mLoadMoreListener:Lcom/samsung/android/app/music/milk/store/IOnLoadMoreListener;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/IOnLoadMoreListener;->isLoadMore()Z

    move-result v0

    if-nez v0, :cond_2

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment$4;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->access$400(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onScrolled : loadMoreListener is null or has no item."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_1
    :goto_0
    return-void

    .line 203
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment$4;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment$4;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->access$600(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->getItemCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->access$502(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;I)I

    .line 204
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment$4;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment$4;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->access$600(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->access$702(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;I)I

    .line 205
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment$4;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->access$500(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment$4;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->access$700(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment$4;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->access$800(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;)I

    move-result v2

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    .line 207
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment$4;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->access$900(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onScrolled : Scrollbar has been reached to the bottom. Start to call loadMore."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment$4;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mLoadMoreListener:Lcom/samsung/android/app/music/milk/store/IOnLoadMoreListener;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/IOnLoadMoreListener;->onLoadMore()V

    goto :goto_0
.end method
