.class Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;
.super Ljava/lang/Object;
.source "SeslViewInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;,
        Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$ProcessCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field final mLayoutHolderMap:Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;",
            "Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mOldChangedHolders:Lcom/samsung/android/support/sesl/core/util/SeslLongSparseArray;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/core/util/SeslLongSparseArray",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->mLayoutHolderMap:Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    .line 48
    new-instance v0, Lcom/samsung/android/support/sesl/core/util/SeslLongSparseArray;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/util/SeslLongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->mOldChangedHolders:Lcom/samsung/android/support/sesl/core/util/SeslLongSparseArray;

    return-void
.end method

.method private popFromLayoutStep(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 5
    .param p1, "vh"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .param p2, "flag"    # I

    .prologue
    const/4 v1, 0x0

    .line 102
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->mLayoutHolderMap:Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    invoke-virtual {v3, p1}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 103
    .local v0, "index":I
    if-gez v0, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-object v1

    .line 106
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->mLayoutHolderMap:Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;

    .line 107
    .local v2, "record":Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->flags:I

    and-int/2addr v3, p2

    if-eqz v3, :cond_0

    .line 108
    iget v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->flags:I

    xor-int/lit8 v4, p2, -0x1

    and-int/2addr v3, v4

    iput v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->flags:I

    .line 110
    const/4 v3, 0x4

    if-ne p2, v3, :cond_2

    .line 111
    iget-object v1, v2, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->preInfo:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    .line 118
    .local v1, "info":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    :goto_1
    iget v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0xc

    if-nez v3, :cond_0

    .line 119
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->mLayoutHolderMap:Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 120
    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->recycle(Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;)V

    goto :goto_0

    .line 112
    .end local v1    # "info":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    :cond_2
    const/16 v3, 0x8

    if-ne p2, v3, :cond_3

    .line 113
    iget-object v1, v2, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->postInfo:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    .restart local v1    # "info":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    goto :goto_1

    .line 115
    .end local v1    # "info":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Must provide flag PRE or POST"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method addToAppearedInPreLayoutHolders(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 2
    .param p1, "holder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .param p2, "info"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    .prologue
    .line 146
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->mLayoutHolderMap:Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;

    .line 147
    .local v0, "record":Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;
    if-nez v0, :cond_0

    .line 148
    invoke-static {}, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->obtain()Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->mLayoutHolderMap:Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_0
    iget v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->flags:I

    .line 152
    iput-object p2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->preInfo:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    .line 153
    return-void
.end method

.method addToDisappearedInLayout(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 199
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->mLayoutHolderMap:Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;

    .line 200
    .local v0, "record":Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;
    if-nez v0, :cond_0

    .line 201
    invoke-static {}, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->obtain()Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->mLayoutHolderMap:Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_0
    iget v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->flags:I

    .line 205
    return-void
.end method

.method addToOldChangeHolders(JLcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "key"    # J
    .param p3, "holder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->mOldChangedHolders:Lcom/samsung/android/support/sesl/core/util/SeslLongSparseArray;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/util/SeslLongSparseArray;->put(JLjava/lang/Object;)V

    .line 134
    return-void
.end method

.method addToPostLayout(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 2
    .param p1, "holder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .param p2, "info"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    .prologue
    .line 183
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->mLayoutHolderMap:Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;

    .line 184
    .local v0, "record":Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;
    if-nez v0, :cond_0

    .line 185
    invoke-static {}, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->obtain()Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->mLayoutHolderMap:Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_0
    iput-object p2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->postInfo:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    .line 189
    iget v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->flags:I

    .line 190
    return-void
.end method

.method addToPreLayout(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 2
    .param p1, "holder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .param p2, "info"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    .prologue
    .line 65
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->mLayoutHolderMap:Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;

    .line 66
    .local v0, "record":Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;
    if-nez v0, :cond_0

    .line 67
    invoke-static {}, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->obtain()Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->mLayoutHolderMap:Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_0
    iput-object p2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->preInfo:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    .line 71
    iget v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->flags:I

    .line 72
    return-void
.end method

.method clear()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->mLayoutHolderMap:Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->clear()V

    .line 56
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->mOldChangedHolders:Lcom/samsung/android/support/sesl/core/util/SeslLongSparseArray;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/util/SeslLongSparseArray;->clear()V

    .line 57
    return-void
.end method

.method getFromOldChangeHolders(J)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .locals 1
    .param p1, "key"    # J

    .prologue
    .line 174
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->mOldChangedHolders:Lcom/samsung/android/support/sesl/core/util/SeslLongSparseArray;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/core/util/SeslLongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    return-object v0
.end method

.method isDisappearing(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "holder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 75
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->mLayoutHolderMap:Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;

    .line 76
    .local v0, "record":Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isInPreLayout(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 162
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->mLayoutHolderMap:Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;

    .line 163
    .local v0, "record":Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method onDetach()V
    .locals 0

    .prologue
    .line 274
    invoke-static {}, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->drainCache()V

    .line 275
    return-void
.end method

.method public onViewDetached(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 278
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->removeFromDisappearedInLayout(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 279
    return-void
.end method

.method popFromPostLayout(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 1
    .param p1, "vh"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 98
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->popFromLayoutStep(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    return-object v0
.end method

.method popFromPreLayout(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 1
    .param p1, "vh"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 87
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->popFromLayoutStep(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    return-object v0
.end method

.method process(Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$ProcessCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$ProcessCallback;

    .prologue
    .line 220
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->mLayoutHolderMap:Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_8

    .line 221
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->mLayoutHolderMap:Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 222
    .local v2, "viewHolder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->mLayoutHolderMap:Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;

    .line 223
    .local v1, "record":Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;
    iget v3, v1, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0x3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 225
    invoke-interface {p1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$ProcessCallback;->unused(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 252
    :cond_0
    :goto_1
    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->recycle(Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;)V

    .line 220
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 226
    :cond_1
    iget v3, v1, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    .line 228
    iget-object v3, v1, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->preInfo:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    if-nez v3, :cond_2

    .line 231
    invoke-interface {p1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$ProcessCallback;->unused(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    goto :goto_1

    .line 233
    :cond_2
    iget-object v3, v1, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->preInfo:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v1, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->postInfo:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v2, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$ProcessCallback;->processDisappeared(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 235
    :cond_3
    iget v3, v1, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0xe

    const/16 v4, 0xe

    if-ne v3, v4, :cond_4

    .line 237
    iget-object v3, v1, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->preInfo:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v1, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->postInfo:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v2, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$ProcessCallback;->processAppeared(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 238
    :cond_4
    iget v3, v1, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0xc

    const/16 v4, 0xc

    if-ne v3, v4, :cond_5

    .line 240
    iget-object v3, v1, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->preInfo:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v1, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->postInfo:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v2, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$ProcessCallback;->processPersistent(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 241
    :cond_5
    iget v3, v1, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_6

    .line 243
    iget-object v3, v1, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->preInfo:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    const/4 v4, 0x0

    invoke-interface {p1, v2, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$ProcessCallback;->processDisappeared(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 244
    :cond_6
    iget v3, v1, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_7

    .line 246
    iget-object v3, v1, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->preInfo:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v1, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->postInfo:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v2, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$ProcessCallback;->processAppeared(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 247
    :cond_7
    iget v3, v1, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    goto :goto_1

    .line 254
    .end local v1    # "record":Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;
    .end local v2    # "viewHolder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_8
    return-void
.end method

.method removeFromDisappearedInLayout(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 212
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->mLayoutHolderMap:Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;

    .line 213
    .local v0, "record":Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;
    if-nez v0, :cond_0

    .line 217
    :goto_0
    return-void

    .line 216
    :cond_0
    iget v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->flags:I

    goto :goto_0
.end method

.method removeViewHolder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "holder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 261
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->mOldChangedHolders:Lcom/samsung/android/support/sesl/core/util/SeslLongSparseArray;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/util/SeslLongSparseArray;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 262
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->mOldChangedHolders:Lcom/samsung/android/support/sesl/core/util/SeslLongSparseArray;

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/sesl/core/util/SeslLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_2

    .line 263
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->mOldChangedHolders:Lcom/samsung/android/support/sesl/core/util/SeslLongSparseArray;

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/sesl/core/util/SeslLongSparseArray;->removeAt(I)V

    .line 267
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->mLayoutHolderMap:Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;

    .line 268
    .local v1, "info":Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;
    if-eqz v1, :cond_1

    .line 269
    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;->recycle(Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;)V

    .line 271
    :cond_1
    return-void

    .line 261
    .end local v1    # "info":Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$InfoRecord;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
