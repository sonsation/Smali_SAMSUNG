.class Lcom/samsung/android/app/music/milk/store/widget/FastScroller$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/widget/FastScroller;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/widget/FastScroller;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/widget/FastScroller;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/FastScroller;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 183
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 184
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/FastScroller;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->access$000(Lcom/samsung/android/app/music/milk/store/widget/FastScroller;)V

    .line 185
    return-void
.end method
