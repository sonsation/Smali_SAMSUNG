.class Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$LoadingViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "LoadMoreArrayRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadingViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 220
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 221
    return-void
.end method

.method public static create(Landroid/content/Context;I)Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$LoadingViewHolder;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "layout"    # I

    .prologue
    .line 224
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 225
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$LoadingViewHolder;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$LoadingViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method
