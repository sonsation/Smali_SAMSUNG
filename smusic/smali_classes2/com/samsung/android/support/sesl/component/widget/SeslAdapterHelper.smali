.class Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;
.super Ljava/lang/Object;
.source "SeslAdapterHelper.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/widget/SeslOpReorderer$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$Callback;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final POSITION_TYPE_INVISIBLE:I = 0x0

.field static final POSITION_TYPE_NEW_OR_LAID_OUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AHT"


# instance fields
.field final mCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$Callback;

.field final mDisableRecycler:Z

.field private mExistingUpdateTypes:I

.field mOnItemProcessedCallback:Ljava/lang/Runnable;

.field final mOpReorderer:Lcom/samsung/android/support/sesl/component/widget/SeslOpReorderer;

.field final mPendingUpdates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field final mPostponedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateOpPool:Lcom/samsung/android/support/sesl/core/util/SeslPools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/core/util/SeslPools$Pool",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$Callback;

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$Callback;Z)V

    .line 75
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$Callback;Z)V
    .locals 2
    .param p1, "callback"    # Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$Callback;
    .param p2, "disableRecycler"    # Z

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/samsung/android/support/sesl/core/util/SeslPools$SimplePool;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/util/SeslPools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mUpdateOpPool:Lcom/samsung/android/support/sesl/core/util/SeslPools$Pool;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mExistingUpdateTypes:I

    .line 78
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$Callback;

    .line 79
    iput-boolean p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mDisableRecycler:Z

    .line 80
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslOpReorderer;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslOpReorderer;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslOpReorderer$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mOpReorderer:Lcom/samsung/android/support/sesl/component/widget/SeslOpReorderer;

    .line 81
    return-void
.end method

.method private applyAdd(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;)V
    .locals 0
    .param p1, "op"    # Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;

    .prologue
    .line 434
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->postponeAndUpdateViewHolders(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;)V

    .line 435
    return-void
.end method

.method private applyMove(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;)V
    .locals 0
    .param p1, "op"    # Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->postponeAndUpdateViewHolders(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;)V

    .line 133
    return-void
.end method

.method private applyRemove(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;)V
    .locals 12
    .param p1, "op"    # Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    .line 136
    iget v4, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    .line 137
    .local v4, "tmpStart":I
    const/4 v2, 0x0

    .line 138
    .local v2, "tmpCount":I
    iget v8, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v9, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    add-int v3, v8, v9

    .line 139
    .local v3, "tmpEnd":I
    const/4 v5, -0x1

    .line 140
    .local v5, "type":I
    iget v1, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    .local v1, "position":I
    :goto_0
    if-ge v1, v3, :cond_5

    .line 141
    const/4 v6, 0x0

    .line 142
    .local v6, "typeChanged":Z
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$Callback;

    invoke-interface {v8, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$Callback;->findViewHolder(I)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v7

    .line 143
    .local v7, "vh":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    if-nez v7, :cond_0

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->canFindInPreLayout(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 150
    :cond_0
    if-nez v5, :cond_1

    .line 153
    invoke-virtual {p0, v10, v4, v2, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;

    move-result-object v0

    .line 154
    .local v0, "newOp":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;
    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->dispatchAndUpdateViewHolders(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;)V

    .line 155
    const/4 v6, 0x1

    .line 157
    .end local v0    # "newOp":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;
    :cond_1
    const/4 v5, 0x1

    .line 170
    :goto_1
    if-eqz v6, :cond_4

    .line 171
    sub-int/2addr v1, v2

    .line 172
    sub-int/2addr v3, v2

    .line 173
    const/4 v2, 0x1

    .line 140
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    :cond_2
    const/4 v8, 0x1

    if-ne v5, v8, :cond_3

    .line 164
    invoke-virtual {p0, v10, v4, v2, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;

    move-result-object v0

    .line 165
    .restart local v0    # "newOp":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;
    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->postponeAndUpdateViewHolders(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;)V

    .line 166
    const/4 v6, 0x1

    .line 168
    .end local v0    # "newOp":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 175
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 178
    .end local v6    # "typeChanged":Z
    .end local v7    # "vh":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_5
    iget v8, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    if-eq v2, v8, :cond_6

    .line 179
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->recycleUpdateOp(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;)V

    .line 180
    invoke-virtual {p0, v10, v4, v2, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;

    move-result-object p1

    .line 182
    :cond_6
    if-nez v5, :cond_7

    .line 183
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->dispatchAndUpdateViewHolders(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;)V

    .line 187
    :goto_3
    return-void

    .line 185
    :cond_7
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->postponeAndUpdateViewHolders(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;)V

    goto :goto_3
.end method

.method private applyUpdate(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;)V
    .locals 11
    .param p1, "op"    # Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;

    .prologue
    const/4 v10, 0x4

    .line 190
    iget v5, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    .line 191
    .local v5, "tmpStart":I
    const/4 v3, 0x0

    .line 192
    .local v3, "tmpCount":I
    iget v8, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v9, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    add-int v4, v8, v9

    .line 193
    .local v4, "tmpEnd":I
    const/4 v6, -0x1

    .line 194
    .local v6, "type":I
    iget v2, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    .local v2, "position":I
    :goto_0
    if-ge v2, v4, :cond_4

    .line 195
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$Callback;

    invoke-interface {v8, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$Callback;->findViewHolder(I)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v7

    .line 196
    .local v7, "vh":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    if-nez v7, :cond_0

    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->canFindInPreLayout(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 197
    :cond_0
    if-nez v6, :cond_1

    .line 198
    iget-object v8, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v10, v5, v3, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;

    move-result-object v0

    .line 200
    .local v0, "newOp":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;
    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->dispatchAndUpdateViewHolders(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;)V

    .line 201
    const/4 v3, 0x0

    .line 202
    move v5, v2

    .line 204
    .end local v0    # "newOp":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;
    :cond_1
    const/4 v6, 0x1

    .line 215
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 194
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 206
    :cond_2
    const/4 v8, 0x1

    if-ne v6, v8, :cond_3

    .line 207
    iget-object v8, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v10, v5, v3, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;

    move-result-object v0

    .line 209
    .restart local v0    # "newOp":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;
    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->postponeAndUpdateViewHolders(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;)V

    .line 210
    const/4 v3, 0x0

    .line 211
    move v5, v2

    .line 213
    .end local v0    # "newOp":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 217
    .end local v7    # "vh":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_4
    iget v8, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    if-eq v3, v8, :cond_5

    .line 218
    iget-object v1, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 219
    .local v1, "payload":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->recycleUpdateOp(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;)V

    .line 220
    invoke-virtual {p0, v10, v5, v3, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;

    move-result-object p1

    .line 222
    .end local v1    # "payload":Ljava/lang/Object;
    :cond_5
    if-nez v6, :cond_6

    .line 223
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->dispatchAndUpdateViewHolders(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;)V

    .line 227
    :goto_2
    return-void

    .line 225
    :cond_6
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->postponeAndUpdateViewHolders(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;)V

    goto :goto_2
.end method

.method private canFindInPreLayout(I)Z
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x1

    .line 413
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 414
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 415
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;

    .line 416
    .local v3, "op":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;
    iget v6, v3, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1

    .line 417
    iget v6, v3, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p0, v6, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->findPositionOffset(II)I

    move-result v6

    if-ne v6, p1, :cond_2

    .line 430
    .end local v3    # "op":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;
    :cond_0
    :goto_1
    return v5

    .line 420
    .restart local v3    # "op":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;
    :cond_1
    iget v6, v3, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    if-ne v6, v5, :cond_2

    .line 422
    iget v6, v3, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v7, v3, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    add-int v1, v6, v7

    .line 423
    .local v1, "end":I
    iget v4, v3, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    .local v4, "pos":I
    :goto_2
    if-ge v4, v1, :cond_2

    .line 424
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v4, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->findPositionOffset(II)I

    move-result v6

    if-eq v6, p1, :cond_0

    .line 423
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 414
    .end local v1    # "end":I
    .end local v4    # "pos":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 430
    .end local v3    # "op":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private dispatchAndUpdateViewHolders(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;)V
    .locals 14
    .param p1, "op"    # Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 233
    iget v12, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    if-eq v12, v10, :cond_0

    iget v12, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    const/16 v13, 0x8

    if-ne v12, v13, :cond_1

    .line 234
    :cond_0
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "should not dispatch add or move for pre layout"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 247
    :cond_1
    iget v12, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v13, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    invoke-direct {p0, v12, v13}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->updatePositionWithPostponed(II)I

    move-result v8

    .line 251
    .local v8, "tmpStart":I
    const/4 v7, 0x1

    .line 252
    .local v7, "tmpCnt":I
    iget v1, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    .line 254
    .local v1, "offsetPositionForPartial":I
    iget v12, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    packed-switch v12, :pswitch_data_0

    .line 262
    :pswitch_0
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "op should be remove or update."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 256
    :pswitch_1
    const/4 v5, 0x1

    .line 264
    .local v5, "positionMultiplier":I
    :goto_0
    const/4 v2, 0x1

    .local v2, "p":I
    :goto_1
    iget v12, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    if-ge v2, v12, :cond_6

    .line 265
    iget v12, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    mul-int v13, v5, v2

    add-int v4, v12, v13

    .line 266
    .local v4, "pos":I
    iget v12, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    invoke-direct {p0, v4, v12}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->updatePositionWithPostponed(II)I

    move-result v9

    .line 270
    .local v9, "updatedPos":I
    const/4 v0, 0x0

    .line 271
    .local v0, "continuous":Z
    iget v12, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    packed-switch v12, :pswitch_data_1

    .line 279
    :goto_2
    :pswitch_2
    if-eqz v0, :cond_4

    .line 280
    add-int/lit8 v7, v7, 0x1

    .line 264
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 259
    .end local v0    # "continuous":Z
    .end local v2    # "p":I
    .end local v4    # "pos":I
    .end local v5    # "positionMultiplier":I
    .end local v9    # "updatedPos":I
    :pswitch_3
    const/4 v5, 0x0

    .line 260
    .restart local v5    # "positionMultiplier":I
    goto :goto_0

    .line 273
    .restart local v0    # "continuous":Z
    .restart local v2    # "p":I
    .restart local v4    # "pos":I
    .restart local v9    # "updatedPos":I
    :pswitch_4
    add-int/lit8 v12, v8, 0x1

    if-ne v9, v12, :cond_2

    move v0, v10

    .line 274
    :goto_4
    goto :goto_2

    :cond_2
    move v0, v11

    .line 273
    goto :goto_4

    .line 276
    :pswitch_5
    if-ne v9, v8, :cond_3

    move v0, v10

    :goto_5
    goto :goto_2

    :cond_3
    move v0, v11

    goto :goto_5

    .line 283
    :cond_4
    iget v12, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    iget-object v13, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v12, v8, v7, v13}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;

    move-result-object v6

    .line 287
    .local v6, "tmp":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;
    invoke-virtual {p0, v6, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;I)V

    .line 288
    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->recycleUpdateOp(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;)V

    .line 289
    iget v12, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    const/4 v13, 0x4

    if-ne v12, v13, :cond_5

    .line 290
    add-int/2addr v1, v7

    .line 292
    :cond_5
    move v8, v9

    .line 293
    const/4 v7, 0x1

    goto :goto_3

    .line 296
    .end local v0    # "continuous":Z
    .end local v4    # "pos":I
    .end local v6    # "tmp":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;
    .end local v9    # "updatedPos":I
    :cond_6
    iget-object v3, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 297
    .local v3, "payload":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->recycleUpdateOp(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;)V

    .line 298
    if-lez v7, :cond_7

    .line 299
    iget v10, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    invoke-virtual {p0, v10, v8, v7, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;

    move-result-object v6

    .line 303
    .restart local v6    # "tmp":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;
    invoke-virtual {p0, v6, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;I)V

    .line 304
    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->recycleUpdateOp(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;)V

    .line 314
    .end local v6    # "tmp":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;
    :cond_7
    return-void

    .line 254
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 271
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private postponeAndUpdateViewHolders(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;)V
    .locals 4
    .param p1, "op"    # Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;

    .prologue
    .line 441
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    iget v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    packed-switch v0, :pswitch_data_0

    .line 457
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown update op type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$Callback;

    iget v1, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$Callback;->offsetPositionsForAdd(II)V

    .line 459
    :goto_0
    return-void

    .line 447
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$Callback;

    iget v1, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$Callback;->offsetPositionsForMove(II)V

    goto :goto_0

    .line 450
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$Callback;

    iget v1, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$Callback;->offsetPositionsForRemovingLaidOutOrNewView(II)V

    goto :goto_0

    .line 454
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$Callback;

    iget v1, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    iget-object v3, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    goto :goto_0

    .line 442
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updatePositionWithPostponed(II)I
    .locals 11
    .param p1, "pos"    # I
    .param p2, "cmd"    # I

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 332
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 333
    .local v0, "count":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_d

    .line 334
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;

    .line 335
    .local v4, "postponed":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;
    iget v6, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    if-ne v6, v10, :cond_9

    .line 337
    iget v6, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v7, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    if-ge v6, v7, :cond_2

    .line 338
    iget v5, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    .line 339
    .local v5, "start":I
    iget v1, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    .line 344
    .local v1, "end":I
    :goto_1
    if-lt p1, v5, :cond_7

    if-gt p1, v1, :cond_7

    .line 346
    iget v6, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    if-ne v5, v6, :cond_4

    .line 347
    if-ne p2, v8, :cond_3

    .line 348
    iget v6, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    .line 353
    :cond_0
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 333
    .end local v1    # "end":I
    .end local v5    # "start":I
    :cond_1
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 341
    :cond_2
    iget v5, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    .line 342
    .restart local v5    # "start":I
    iget v1, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    .restart local v1    # "end":I
    goto :goto_1

    .line 349
    :cond_3
    if-ne p2, v9, :cond_0

    .line 350
    iget v6, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    goto :goto_2

    .line 355
    :cond_4
    if-ne p2, v8, :cond_6

    .line 356
    iget v6, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    .line 361
    :cond_5
    :goto_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    .line 357
    :cond_6
    if-ne p2, v9, :cond_5

    .line 358
    iget v6, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    goto :goto_4

    .line 363
    :cond_7
    iget v6, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    if-ge p1, v6, :cond_1

    .line 365
    if-ne p2, v8, :cond_8

    .line 366
    iget v6, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    .line 367
    iget v6, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    goto :goto_3

    .line 368
    :cond_8
    if-ne p2, v9, :cond_1

    .line 369
    iget v6, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    .line 370
    iget v6, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    goto :goto_3

    .line 374
    .end local v1    # "end":I
    .end local v5    # "start":I
    :cond_9
    iget v6, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    if-gt v6, p1, :cond_b

    .line 375
    iget v6, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    if-ne v6, v8, :cond_a

    .line 376
    iget v6, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v6

    goto :goto_3

    .line 377
    :cond_a
    iget v6, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    if-ne v6, v9, :cond_1

    .line 378
    iget v6, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v6

    goto :goto_3

    .line 381
    :cond_b
    if-ne p2, v8, :cond_c

    .line 382
    iget v6, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    goto :goto_3

    .line 383
    :cond_c
    if-ne p2, v9, :cond_1

    .line 384
    iget v6, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    goto :goto_3

    .line 397
    .end local v4    # "postponed":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;
    :cond_d
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    :goto_5
    if-ltz v2, :cond_11

    .line 398
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;

    .line 399
    .local v3, "op":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;
    iget v6, v3, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    if-ne v6, v10, :cond_10

    .line 400
    iget v6, v3, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    iget v7, v3, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    if-eq v6, v7, :cond_e

    iget v6, v3, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    if-gez v6, :cond_f

    .line 401
    :cond_e
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 402
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->recycleUpdateOp(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;)V

    .line 397
    :cond_f
    :goto_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 404
    :cond_10
    iget v6, v3, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    if-gtz v6, :cond_f

    .line 405
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 406
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->recycleUpdateOp(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;)V

    goto :goto_6

    .line 409
    .end local v3    # "op":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;
    :cond_11
    return p1
.end method


# virtual methods
.method varargs addUpdateOp([Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;)Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;
    .locals 1
    .param p1, "ops"    # [Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 85
    return-object p0
.end method

.method public applyPendingUpdatesToPosition(I)I
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 590
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 591
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 592
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;

    .line 593
    .local v2, "op":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;
    iget v4, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    sparse-switch v4, :sswitch_data_0

    .line 591
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 595
    :sswitch_0
    iget v4, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    if-gt v4, p1, :cond_0

    .line 596
    iget v4, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v4

    goto :goto_1

    .line 600
    :sswitch_1
    iget v4, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    if-gt v4, p1, :cond_0

    .line 601
    iget v4, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    add-int v0, v4, v5

    .line 602
    .local v0, "end":I
    if-le v0, p1, :cond_2

    .line 603
    const/4 p1, -0x1

    .line 622
    .end local v0    # "end":I
    .end local v2    # "op":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;
    .end local p1    # "position":I
    :cond_1
    return p1

    .line 605
    .restart local v0    # "end":I
    .restart local v2    # "op":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;
    .restart local p1    # "position":I
    :cond_2
    iget v4, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v4

    .line 606
    goto :goto_1

    .line 609
    .end local v0    # "end":I
    :sswitch_2
    iget v4, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    if-ne v4, p1, :cond_3

    .line 610
    iget p1, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    goto :goto_1

    .line 612
    :cond_3
    iget v4, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    if-ge v4, p1, :cond_4

    .line 613
    add-int/lit8 p1, p1, -0x1

    .line 615
    :cond_4
    iget v4, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    if-gt v4, p1, :cond_0

    .line 616
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 593
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method consumePostponedUpdates()V
    .locals 4

    .prologue
    .line 121
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 122
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 123
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$Callback;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;

    invoke-interface {v3, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$Callback;->onDispatchSecondPass(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;)V

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 126
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mExistingUpdateTypes:I

    .line 127
    return-void
.end method

.method consumeUpdatesInOnePass()V
    .locals 7

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->consumePostponedUpdates()V

    .line 560
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 561
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 562
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;

    .line 563
    .local v2, "op":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;
    iget v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    packed-switch v3, :pswitch_data_0

    .line 581
    :goto_1
    :pswitch_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    .line 582
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 561
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 565
    :pswitch_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$Callback;

    invoke-interface {v3, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$Callback;->onDispatchSecondPass(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;)V

    .line 566
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$Callback;

    iget v4, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$Callback;->offsetPositionsForAdd(II)V

    goto :goto_1

    .line 569
    :pswitch_2
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$Callback;

    invoke-interface {v3, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$Callback;->onDispatchSecondPass(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;)V

    .line 570
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$Callback;

    iget v4, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    goto :goto_1

    .line 573
    :pswitch_3
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$Callback;

    invoke-interface {v3, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$Callback;->onDispatchSecondPass(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;)V

    .line 574
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$Callback;

    iget v4, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    iget-object v6, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    goto :goto_1

    .line 577
    :pswitch_4
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$Callback;

    invoke-interface {v3, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$Callback;->onDispatchSecondPass(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;)V

    .line 578
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$Callback;

    iget v4, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$Callback;->offsetPositionsForMove(II)V

    goto :goto_1

    .line 585
    .end local v2    # "op":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 586
    const/4 v3, 0x0

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mExistingUpdateTypes:I

    .line 587
    return-void

    .line 563
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method dispatchFirstPassAndUpdateViewHolders(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;I)V
    .locals 3
    .param p1, "op"    # Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;
    .param p2, "offsetStart"    # I

    .prologue
    .line 317
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$Callback;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$Callback;->onDispatchFirstPass(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;)V

    .line 318
    iget v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    packed-switch v0, :pswitch_data_0

    .line 326
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only remove and update ops can be dispatched in first pass"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$Callback;

    iget v1, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, p2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    .line 329
    :goto_0
    return-void

    .line 323
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$Callback;

    iget v1, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    iget-object v2, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v0, p2, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    goto :goto_0

    .line 318
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method findPositionOffset(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 470
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->findPositionOffset(II)I

    move-result v0

    return v0
.end method

.method findPositionOffset(II)I
    .locals 5
    .param p1, "position"    # I
    .param p2, "firstPostponedItem"    # I

    .prologue
    .line 474
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 475
    .local v0, "count":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 476
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;

    .line 477
    .local v2, "op":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;
    iget v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 478
    iget v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    if-ne v3, p1, :cond_1

    .line 479
    iget p1, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    .line 475
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 481
    :cond_1
    iget v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    if-ge v3, p1, :cond_2

    .line 482
    add-int/lit8 p1, p1, -0x1

    .line 484
    :cond_2
    iget v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    if-gt v3, p1, :cond_0

    .line 485
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 488
    :cond_3
    iget v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, p1, :cond_0

    .line 489
    iget v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 490
    iget v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v4, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v4

    if-ge p1, v3, :cond_5

    .line 491
    const/4 p1, -0x1

    .line 499
    .end local v2    # "op":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;
    .end local p1    # "position":I
    :cond_4
    return p1

    .line 493
    .restart local v2    # "op":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;
    .restart local p1    # "position":I
    :cond_5
    iget v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v3

    goto :goto_1

    .line 494
    :cond_6
    iget v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 495
    iget v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v3

    goto :goto_1
.end method

.method hasAnyUpdateTypes(I)Z
    .locals 1
    .param p1, "updateTypes"    # I

    .prologue
    .line 466
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mExistingUpdateTypes:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasPendingUpdates()Z
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasUpdates()Z
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public obtainUpdateOp(IIILjava/lang/Object;)Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;
    .locals 2
    .param p1, "cmd"    # I
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I
    .param p4, "payload"    # Ljava/lang/Object;

    .prologue
    .line 729
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mUpdateOpPool:Lcom/samsung/android/support/sesl/core/util/SeslPools$Pool;

    invoke-interface {v1}, Lcom/samsung/android/support/sesl/core/util/SeslPools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;

    .line 730
    .local v0, "op":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;
    if-nez v0, :cond_0

    .line 731
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;

    .end local v0    # "op":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;-><init>(IIILjava/lang/Object;)V

    .line 738
    .restart local v0    # "op":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;
    :goto_0
    return-object v0

    .line 733
    :cond_0
    iput p1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    .line 734
    iput p2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    .line 735
    iput p3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    .line 736
    iput-object p4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    goto :goto_0
.end method

.method onItemRangeChanged(IILjava/lang/Object;)Z
    .locals 4
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 506
    if-ge p2, v0, :cond_0

    .line 511
    :goto_0
    return v1

    .line 509
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-virtual {p0, v3, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mExistingUpdateTypes:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mExistingUpdateTypes:I

    .line 511
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method onItemRangeInserted(II)Z
    .locals 4
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 518
    if-ge p2, v0, :cond_0

    .line 523
    :goto_0
    return v1

    .line 521
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, p1, p2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mExistingUpdateTypes:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mExistingUpdateTypes:I

    .line 523
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method onItemRangeMoved(III)Z
    .locals 5
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "itemCount"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 542
    if-ne p1, p2, :cond_0

    .line 550
    :goto_0
    return v1

    .line 545
    :cond_0
    if-eq p3, v0, :cond_1

    .line 546
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Moving more than 1 item is not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 548
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p1, p2, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mExistingUpdateTypes:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mExistingUpdateTypes:I

    .line 550
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method onItemRangeRemoved(II)Z
    .locals 5
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 530
    if-ge p2, v0, :cond_0

    .line 535
    :goto_0
    return v1

    .line 533
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p1, p2, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mExistingUpdateTypes:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mExistingUpdateTypes:I

    .line 535
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method preProcess()V
    .locals 5

    .prologue
    .line 95
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mOpReorderer:Lcom/samsung/android/support/sesl/component/widget/SeslOpReorderer;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslOpReorderer;->reorderOps(Ljava/util/List;)V

    .line 96
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 97
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 98
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;

    .line 99
    .local v2, "op":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;
    iget v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    packed-switch v3, :pswitch_data_0

    .line 113
    :goto_1
    :pswitch_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    .line 114
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 97
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->applyAdd(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;)V

    goto :goto_1

    .line 104
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->applyRemove(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;)V

    goto :goto_1

    .line 107
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->applyUpdate(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;)V

    goto :goto_1

    .line 110
    :pswitch_4
    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->applyMove(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;)V

    goto :goto_1

    .line 117
    .end local v2    # "op":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 118
    return-void

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public recycleUpdateOp(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;)V
    .locals 1
    .param p1, "op"    # Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;

    .prologue
    .line 743
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mDisableRecycler:Z

    if-nez v0, :cond_0

    .line 744
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 745
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mUpdateOpPool:Lcom/samsung/android/support/sesl/core/util/SeslPools$Pool;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/core/util/SeslPools$Pool;->release(Ljava/lang/Object;)Z

    .line 747
    :cond_0
    return-void
.end method

.method recycleUpdateOpsAndClearList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 750
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 751
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 752
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->recycleUpdateOp(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;)V

    .line 751
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 754
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 755
    return-void
.end method

.method reset()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 90
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->mExistingUpdateTypes:I

    .line 92
    return-void
.end method
