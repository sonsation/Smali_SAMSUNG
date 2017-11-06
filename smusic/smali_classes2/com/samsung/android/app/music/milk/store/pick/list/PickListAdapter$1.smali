.class Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "PickListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;-><init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;

.field final synthetic val$linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;Landroid/support/v7/widget/LinearLayoutManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter$1;->val$linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

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
    .line 49
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;->access$000(Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;)Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$OnLoadMoreListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;->access$000(Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;)Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$OnLoadMoreListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$OnLoadMoreListener;->isLoadMore()Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter$1;->val$linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->getItemCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;->access$102(Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;I)I

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter$1;->val$linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;->access$202(Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;I)I

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;->access$100(Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;)I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;->access$300(Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;->access$100(Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;->access$200(Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;->access$400(Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;)I

    move-result v2

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;->access$000(Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;)Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$OnLoadMoreListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;->access$200(Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;->access$100(Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$OnLoadMoreListener;->onLoadMore(II)V

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;->access$302(Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;Z)Z

    goto :goto_0
.end method
