.class interface abstract Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$Callback;
.super Ljava/lang/Object;
.source "SeslAdapterHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Callback"
.end annotation


# virtual methods
.method public abstract findViewHolder(I)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
.end method

.method public abstract markViewHoldersUpdated(IILjava/lang/Object;)V
.end method

.method public abstract offsetPositionsForAdd(II)V
.end method

.method public abstract offsetPositionsForMove(II)V
.end method

.method public abstract offsetPositionsForRemovingInvisible(II)V
.end method

.method public abstract offsetPositionsForRemovingLaidOutOrNewView(II)V
.end method

.method public abstract onDispatchFirstPass(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;)V
.end method

.method public abstract onDispatchSecondPass(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;)V
.end method
