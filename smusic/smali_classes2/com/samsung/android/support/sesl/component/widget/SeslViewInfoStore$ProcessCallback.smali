.class interface abstract Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$ProcessCallback;
.super Ljava/lang/Object;
.source "SeslViewInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ProcessCallback"
.end annotation


# virtual methods
.method public abstract processAppeared(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)V
    .param p2    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract processDisappeared(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)V
    .param p2    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract processPersistent(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)V
    .param p2    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract unused(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
.end method
