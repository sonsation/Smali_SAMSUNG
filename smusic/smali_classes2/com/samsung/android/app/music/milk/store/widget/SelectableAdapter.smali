.class public interface abstract Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter;
.super Ljava/lang/Object;
.source "SelectableAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract deselectAll()V
.end method

.method public abstract getSelectedIds()[I
.end method

.method public abstract getSelectedItemCount()I
.end method

.method public abstract isSelectMode()Z
.end method

.method public abstract isSelectable(I)Z
.end method

.method public abstract isSelected(I)Z
.end method

.method public abstract isSelectedAll()Z
.end method

.method public abstract selectAll()V
.end method

.method public abstract selectItem(IZ)V
.end method

.method public abstract selectItem(IZZ)V
.end method

.method public abstract setSelectMode(Z)V
.end method

.method public abstract setSelectableCallback(Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;)V
.end method

.method public abstract toggleItem(ILandroid/support/v7/widget/RecyclerView$ViewHolder;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;Z)V"
        }
    .end annotation
.end method

.method public abstract toggleItem(IZ)V
.end method

.method public abstract toggleSelectAll()V
.end method
