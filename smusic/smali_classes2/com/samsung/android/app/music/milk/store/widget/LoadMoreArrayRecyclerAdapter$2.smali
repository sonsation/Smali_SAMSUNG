.class Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$2;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "LoadMoreArrayRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    .prologue
    .line 48
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$2;, "Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$2;"
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 4
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$2;, "Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$2;"
    const/4 v1, 0x1

    .line 52
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->scrollHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->scrollHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 55
    return-void
.end method
