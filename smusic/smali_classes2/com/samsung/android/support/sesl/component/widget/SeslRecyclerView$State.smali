.class public Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;
.super Ljava/lang/Object;
.source "SeslRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# static fields
.field static final STEP_ANIMATIONS:I = 0x4

.field static final STEP_LAYOUT:I = 0x2

.field static final STEP_START:I = 0x1


# instance fields
.field private mData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mDeletedInvisibleItemCountSincePreviousLayout:I

.field mFocusedItemId:J

.field mFocusedItemPosition:I

.field mFocusedSubChildId:I

.field mInPreLayout:Z

.field mIsMeasuring:Z

.field mItemCount:I

.field mLayoutStep:I

.field mPreviousLayoutItemCount:I

.field mRunPredictiveAnimations:Z

.field mRunSimpleAnimations:Z

.field mStructureChanged:Z

.field private mTargetPosition:I

.field mTrackOldChangeHolders:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12452
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mTargetPosition:I

    .line 12454
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mLayoutStep:I

    .line 12462
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mItemCount:I

    .line 12467
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mPreviousLayoutItemCount:I

    .line 12473
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 12475
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mStructureChanged:Z

    .line 12477
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mInPreLayout:Z

    .line 12479
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mRunSimpleAnimations:Z

    .line 12481
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mRunPredictiveAnimations:Z

    .line 12483
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mTrackOldChangeHolders:Z

    .line 12485
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mIsMeasuring:Z

    return-void
.end method

.method static synthetic access$5902(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;
    .param p1, "x1"    # I

    .prologue
    .line 12433
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mTargetPosition:I

    return p1
.end method


# virtual methods
.method assertLayoutStep(I)V
    .locals 3
    .param p1, "accepted"    # I

    .prologue
    .line 12439
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mLayoutStep:I

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 12440
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout state should be one of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 12441
    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but it is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mLayoutStep:I

    .line 12442
    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12444
    :cond_0
    return-void
.end method

.method public didStructureChange()Z
    .locals 1

    .prologue
    .line 12624
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mStructureChanged:Z

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 12578
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mData:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 12579
    const/4 v0, 0x0

    .line 12581
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 12652
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mInPreLayout:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mPreviousLayoutItemCount:I

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mItemCount:I

    goto :goto_0
.end method

.method public getTargetScrollPosition()I
    .locals 1

    .prologue
    .line 12607
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mTargetPosition:I

    return v0
.end method

.method public hasTargetScrollPosition()Z
    .locals 2

    .prologue
    .line 12616
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mTargetPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMeasuring()Z
    .locals 1

    .prologue
    .line 12524
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mIsMeasuring:Z

    return v0
.end method

.method public isPreLayout()Z
    .locals 1

    .prologue
    .line 12532
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mInPreLayout:Z

    return v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 1
    .param p1, "resourceId"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 12593
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mData:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 12594
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mData:Landroid/util/SparseArray;

    .line 12596
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12597
    return-void
.end method

.method public remove(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 12563
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mData:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 12567
    :goto_0
    return-void

    .line 12566
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method

.method reset()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12499
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mTargetPosition:I

    .line 12500
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mData:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 12501
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 12503
    :cond_0
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mItemCount:I

    .line 12504
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mStructureChanged:Z

    .line 12505
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mIsMeasuring:Z

    .line 12506
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 12659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State{mTargetPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mTargetPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPreviousLayoutItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mPreviousLayoutItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeletedInvisibleItemCountSincePreviousLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStructureChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mStructureChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInPreLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mInPreLayout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRunSimpleAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mRunSimpleAnimations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRunPredictiveAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mRunPredictiveAnimations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public willRunPredictiveAnimations()Z
    .locals 1

    .prologue
    .line 12543
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mRunPredictiveAnimations:Z

    return v0
.end method

.method public willRunSimpleAnimations()Z
    .locals 1

    .prologue
    .line 12554
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mRunSimpleAnimations:Z

    return v0
.end method
