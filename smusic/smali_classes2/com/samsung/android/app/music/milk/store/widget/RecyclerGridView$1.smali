.class Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView$1;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "RecyclerGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->initializeSpanSize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 100
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 101
    .local v0, "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    instance-of v1, v0, Lcom/samsung/android/app/music/milk/store/widget/SpanControllable;

    if-eqz v1, :cond_0

    .line 102
    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/SpanControllable;

    .end local v0    # "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->access$000(Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;)Landroid/support/v7/widget/GridLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/app/music/milk/store/widget/SpanControllable;->getSpanSize(II)I

    move-result v1

    .line 104
    :goto_0
    return v1

    .restart local v0    # "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
