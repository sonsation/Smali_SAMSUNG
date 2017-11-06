.class public abstract Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ClickableAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<TVH;>;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private itemClickListener:Landroid/view/View$OnClickListener;

.field private itemLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mReyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter<TVH;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected dispatchItemClicked(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 92
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter<TVH;>;"
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->notifyItemChanged(I)V

    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->onItemClicked(Landroid/view/View;I)V

    .line 94
    return-void
.end method

.method protected getClickableView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter<TVH;>;"
    .local p1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;, "TVH;"
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter<TVH;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 60
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter<TVH;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->mReyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public abstract isClickable(I)Z
.end method

.method public abstract isLongClickable(I)Z
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 65
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter<TVH;>;"
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAttachedToRecyclerView : "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->mReyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 68
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter<TVH;>;"
    .local p1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;, "TVH;"
    const/4 v1, 0x0

    .line 38
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->isClickable(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->itemClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->getClickableView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    :cond_0
    :goto_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->isLongClickable(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->itemLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_1

    .line 48
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->getClickableView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->itemLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 53
    :cond_1
    :goto_1
    return-void

    .line 43
    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->getClickableView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 51
    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->getClickableView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 79
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter<TVH;>;"
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->itemClickListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_0

    .line 80
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->itemClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v3, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 82
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->mReyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_1

    .line 83
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->mReyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 84
    .local v2, "position":I
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->mReyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 85
    .local v0, "adapterPos":I
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->mReyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v1

    .line 86
    .local v1, "layoutPos":I
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->dispatchItemClicked(Landroid/view/View;I)V

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick : position - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", aPos - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lPos - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .end local v0    # "adapterPos":I
    .end local v1    # "layoutPos":I
    .end local v2    # "position":I
    :cond_1
    return-void
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 72
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter<TVH;>;"
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 73
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDetachedFromRecyclerView : "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->mReyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 75
    return-void
.end method

.method protected onItemClicked(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 98
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter<TVH;>;"
    return-void
.end method

.method public setItemClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 29
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter<TVH;>;"
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->itemClickListener:Landroid/view/View$OnClickListener;

    .line 30
    return-void
.end method

.method public setItemLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 33
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter<TVH;>;"
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->itemLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 34
    return-void
.end method
