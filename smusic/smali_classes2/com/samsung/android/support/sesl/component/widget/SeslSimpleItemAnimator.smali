.class public abstract Lcom/samsung/android/support/sesl/component/widget/SeslSimpleItemAnimator;
.super Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;
.source "SeslSimpleItemAnimator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SeslSimpleItemAnimator"


# instance fields
.field mSupportsChangeAnimations:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleItemAnimator;->mSupportsChangeAnimations:Z

    return-void
.end method


# virtual methods
.method public abstract animateAdd(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Z
.end method

.method public animateAppearance(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 6
    .param p1, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "preLayoutInfo"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "postLayoutInfo"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 100
    if-eqz p2, :cond_1

    iget v0, p2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v1, p3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v1, p3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    if-eq v0, v1, :cond_1

    .line 106
    :cond_0
    iget v2, p2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v3, p2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v4, p3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v5, p3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleItemAnimator;->animateMove(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;IIII)Z

    move-result v0

    .line 112
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleItemAnimator;->animateAdd(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Z

    move-result v0

    goto :goto_0
.end method

.method public abstract animateChange(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;IIII)Z
.end method

.method public animateChange(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 7
    .param p1, "oldHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "preInfo"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "postInfo"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 137
    iget v3, p3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 138
    .local v3, "fromLeft":I
    iget v4, p3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    .line 140
    .local v4, "fromTop":I
    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget v5, p3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 142
    .local v5, "toLeft":I
    iget v6, p3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    .local v6, "toTop":I
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 147
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleItemAnimator;->animateChange(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;IIII)Z

    move-result v0

    return v0

    .line 144
    .end local v5    # "toLeft":I
    .end local v6    # "toTop":I
    :cond_0
    iget v5, p4, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 145
    .restart local v5    # "toLeft":I
    iget v6, p4, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    .restart local v6    # "toTop":I
    goto :goto_0
.end method

.method public animateDisappearance(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 7
    .param p1, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "preLayoutInfo"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "postLayoutInfo"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 76
    iget v2, p2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 77
    .local v2, "oldLeft":I
    iget v3, p2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    .line 78
    .local v3, "oldTop":I
    iget-object v6, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 79
    .local v6, "disappearingItemView":Landroid/view/View;
    if-nez p3, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 80
    .local v4, "newLeft":I
    :goto_0
    if-nez p3, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 81
    .local v5, "newTop":I
    :goto_1
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_3

    if-ne v2, v4, :cond_0

    if-eq v3, v5, :cond_3

    .line 83
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v4

    .line 84
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v5

    .line 82
    invoke-virtual {v6, v4, v5, v0, v1}, Landroid/view/View;->layout(IIII)V

    move-object v0, p0

    move-object v1, p1

    .line 88
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleItemAnimator;->animateMove(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;IIII)Z

    move-result v0

    .line 93
    :goto_2
    return v0

    .line 79
    .end local v4    # "newLeft":I
    .end local v5    # "newTop":I
    :cond_1
    iget v4, p3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    goto :goto_0

    .line 80
    .restart local v4    # "newLeft":I
    :cond_2
    iget v5, p3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    goto :goto_1

    .line 93
    .restart local v5    # "newTop":I
    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleItemAnimator;->animateRemove(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Z

    move-result v0

    goto :goto_2
.end method

.method public abstract animateMove(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;IIII)Z
.end method

.method public animatePersistence(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 6
    .param p1, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "preInfo"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "postInfo"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 119
    iget v0, p2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v1, p3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v1, p3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    if-eq v0, v1, :cond_1

    .line 124
    :cond_0
    iget v2, p2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v3, p2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v4, p3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v5, p3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleItemAnimator;->animateMove(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;IIII)Z

    move-result v0

    .line 128
    :goto_0
    return v0

    .line 127
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleItemAnimator;->dispatchMoveFinished(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 128
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract animateRemove(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Z
.end method

.method public canReuseUpdatedViewHolder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleItemAnimator;->mSupportsChangeAnimations:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final dispatchAddFinished(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 286
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleItemAnimator;->onAddFinished(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 287
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleItemAnimator;->dispatchAnimationFinished(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 288
    return-void
.end method

.method public final dispatchAddStarting(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 329
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleItemAnimator;->onAddStarting(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 330
    return-void
.end method

.method public final dispatchChangeFinished(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Z)V
    .locals 0
    .param p1, "item"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .param p2, "oldItem"    # Z

    .prologue
    .line 301
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleItemAnimator;->onChangeFinished(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Z)V

    .line 302
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleItemAnimator;->dispatchAnimationFinished(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 303
    return-void
.end method

.method public final dispatchChangeStarting(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Z)V
    .locals 0
    .param p1, "item"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .param p2, "oldItem"    # Z

    .prologue
    .line 342
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleItemAnimator;->onChangeStarting(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Z)V

    .line 343
    return-void
.end method

.method public final dispatchMoveFinished(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 276
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleItemAnimator;->onMoveFinished(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 277
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleItemAnimator;->dispatchAnimationFinished(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 278
    return-void
.end method

.method public final dispatchMoveStarting(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 320
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleItemAnimator;->onMoveStarting(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 321
    return-void
.end method

.method public final dispatchRemoveFinished(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 262
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleItemAnimator;->onRemoveFinished(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 263
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleItemAnimator;->dispatchAnimationFinished(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 264
    return-void
.end method

.method public final dispatchRemoveStarting(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 311
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleItemAnimator;->onRemoveStarting(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 312
    return-void
.end method

.method public getSupportsChangeAnimations()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleItemAnimator;->mSupportsChangeAnimations:Z

    return v0
.end method

.method public onAddFinished(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 389
    return-void
.end method

.method public onAddStarting(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 378
    return-void
.end method

.method public onChangeFinished(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Z)V
    .locals 0
    .param p1, "item"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .param p2, "oldItem"    # Z

    .prologue
    .line 439
    return-void
.end method

.method public onChangeStarting(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Z)V
    .locals 0
    .param p1, "item"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .param p2, "oldItem"    # Z

    .prologue
    .line 426
    return-void
.end method

.method public onMoveFinished(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 412
    return-void
.end method

.method public onMoveStarting(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 401
    return-void
.end method

.method public onRemoveFinished(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 366
    return-void
.end method

.method public onRemoveStarting(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 355
    return-void
.end method

.method public setSupportsChangeAnimations(Z)V
    .locals 0
    .param p1, "supportsChangeAnimations"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleItemAnimator;->mSupportsChangeAnimations:Z

    .line 58
    return-void
.end method
