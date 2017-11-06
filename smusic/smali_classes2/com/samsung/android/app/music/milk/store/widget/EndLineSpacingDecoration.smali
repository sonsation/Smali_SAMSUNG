.class public Lcom/samsung/android/app/music/milk/store/widget/EndLineSpacingDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "EndLineSpacingDecoration.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "EndLineSpacingDecoration"


# instance fields
.field private mEndLineSpace:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "space"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 14
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/EndLineSpacingDecoration;->mEndLineSpace:I

    .line 15
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 7
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 19
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 21
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v4

    instance-of v4, v4, Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter;

    if-eqz v4, :cond_0

    .line 22
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter;

    .line 23
    .local v0, "adapter":Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter;
    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter;->getSelectedItemCount()I

    move-result v3

    .line 24
    .local v3, "selectedCount":I
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    .line 25
    .local v1, "adapterPos":I
    invoke-virtual {p4}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    .line 27
    .local v2, "count":I
    add-int/lit8 v4, v2, -0x1

    if-ne v1, v4, :cond_1

    if-lez v3, :cond_1

    .line 28
    const-string v4, "EndLineSpacingDecoration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getItemOffsets : expand. pos - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", count - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget v4, p0, Lcom/samsung/android/app/music/milk/store/widget/EndLineSpacingDecoration;->mEndLineSpace:I

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 34
    .end local v0    # "adapter":Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter;
    .end local v1    # "adapterPos":I
    .end local v2    # "count":I
    .end local v3    # "selectedCount":I
    :cond_0
    :goto_0
    return-void

    .line 31
    .restart local v0    # "adapter":Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter;
    .restart local v1    # "adapterPos":I
    .restart local v2    # "count":I
    .restart local v3    # "selectedCount":I
    :cond_1
    const/4 v4, 0x0

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method
