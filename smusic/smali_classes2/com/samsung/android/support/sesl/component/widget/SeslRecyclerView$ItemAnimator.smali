.class public abstract Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;
.super Ljava/lang/Object;
.source "SeslRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemAnimator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;,
        Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorFinishedListener;,
        Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorListener;,
        Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$AdapterChanges;
    }
.end annotation


# static fields
.field public static final ANIMATION_TYPE_DEFAULT:I = 0x1

.field public static final ANIMATION_TYPE_EXPAND_COLLAPSE:I = 0x2

.field public static final FLAG_APPEARED_IN_PRE_LAYOUT:I = 0x1000

.field public static final FLAG_CHANGED:I = 0x2

.field public static final FLAG_INVALIDATED:I = 0x4

.field public static final FLAG_MOVED:I = 0x800

.field public static final FLAG_REMOVED:I = 0x8


# instance fields
.field private mAddDuration:J

.field private mAnimationType:I

.field private mChangeDuration:J

.field private mExpandCollapseDuration:J

.field private mFinishedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorFinishedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupViewHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

.field private mHostView:Landroid/view/View;

.field private mListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorListener;

.field private mMoveDuration:J

.field private mRemoveDuration:J


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xfa

    const-wide/16 v4, 0x78

    const/4 v2, 0x0

    .line 12746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12802
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->mListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 12803
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    .line 12809
    iput-wide v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->mAddDuration:J

    .line 12810
    iput-wide v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->mRemoveDuration:J

    .line 12811
    iput-wide v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->mMoveDuration:J

    .line 12812
    iput-wide v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->mChangeDuration:J

    .line 12813
    const-wide/16 v0, 0x2bc

    iput-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->mExpandCollapseDuration:J

    .line 12815
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->mHostView:Landroid/view/View;

    .line 12816
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->mAnimationType:I

    .line 12853
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->mGroupViewHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    return-void
.end method

.method static buildAdapterChangeFlagsForAnimations(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)I
    .locals 5
    .param p0, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    const/4 v4, -0x1

    .line 13198
    invoke-static {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->access$6200(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)I

    move-result v3

    and-int/lit8 v0, v3, 0xe

    .line 13199
    .local v0, "flags":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isInvalid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 13200
    const/4 v3, 0x4

    .line 13209
    :goto_0
    return v3

    .line 13202
    :cond_0
    and-int/lit8 v3, v0, 0x4

    if-nez v3, :cond_1

    .line 13203
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getOldPosition()I

    move-result v1

    .line 13204
    .local v1, "oldPos":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    .line 13205
    .local v2, "pos":I
    if-eq v1, v4, :cond_1

    if-eq v2, v4, :cond_1

    if-eq v1, v2, :cond_1

    .line 13206
    or-int/lit16 v0, v0, 0x800

    .end local v1    # "oldPos":I
    .end local v2    # "pos":I
    :cond_1
    move v3, v0

    .line 13209
    goto :goto_0
.end method


# virtual methods
.method public abstract animateAppearance(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .param p1    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract animateChange(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .param p1    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract animateDisappearance(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .param p1    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract animatePersistence(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .param p1    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public canReuseUpdatedViewHolder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 13387
    const/4 v0, 0x1

    return v0
.end method

.method public canReuseUpdatedViewHolder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Ljava/util/List;)Z
    .locals 1
    .param p1, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 13417
    .local p2, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->canReuseUpdatedViewHolder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method public clearGroupViewHolderInternal()V
    .locals 1

    .prologue
    .line 12866
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->mGroupViewHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 12867
    return-void
.end method

.method public final dispatchAnimationFinished(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 13282
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->onAnimationFinished(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 13283
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->mListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorListener;

    if-eqz v0, :cond_0

    .line 13284
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->mListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorListener;->onAnimationFinished(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 13286
    :cond_0
    return-void
.end method

.method public final dispatchAnimationStarted(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 13323
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->onAnimationStarted(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 13324
    return-void
.end method

.method public final dispatchAnimationsFinished()V
    .locals 3

    .prologue
    .line 13425
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 13426
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 13427
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    invoke-interface {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorFinishedListener;->onAnimationsFinished()V

    .line 13426
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13429
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 13430
    return-void
.end method

.method public abstract endAnimation(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
.end method

.method public abstract endAnimations()V
.end method

.method public getAddDuration()J
    .locals 2

    .prologue
    .line 12900
    iget-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->mAddDuration:J

    return-wide v0
.end method

.method public getChangeDuration()J
    .locals 2

    .prologue
    .line 12936
    iget-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->mChangeDuration:J

    return-wide v0
.end method

.method public getExpandCollapseDuration()J
    .locals 2

    .prologue
    .line 12822
    iget-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->mExpandCollapseDuration:J

    return-wide v0
.end method

.method public getGroupViewHolderInternal()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 12873
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->mGroupViewHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    return-object v0
.end method

.method public getHostView()Landroid/view/View;
    .locals 1

    .prologue
    .line 12850
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->mHostView:Landroid/view/View;

    return-object v0
.end method

.method public getItemAnimationTypeInternal()I
    .locals 1

    .prologue
    .line 12829
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->mAnimationType:I

    return v0
.end method

.method public getMoveDuration()J
    .locals 2

    .prologue
    .line 12882
    iget-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->mMoveDuration:J

    return-wide v0
.end method

.method public getRemoveDuration()J
    .locals 2

    .prologue
    .line 12918
    iget-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->mRemoveDuration:J

    return-wide v0
.end method

.method public abstract isRunning()Z
.end method

.method public final isRunning(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    .prologue
    .line 13354
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    .line 13355
    .local v0, "running":Z
    if-eqz p1, :cond_0

    .line 13356
    if-nez v0, :cond_1

    .line 13357
    invoke-interface {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorFinishedListener;->onAnimationsFinished()V

    .line 13362
    :cond_0
    :goto_0
    return v0

    .line 13359
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public obtainHolderInfo()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 1

    .prologue
    .line 13442
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;-><init>()V

    return-object v0
.end method

.method public onAnimationFinished(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 13297
    return-void
.end method

.method public onAnimationStarted(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 13335
    return-void
.end method

.method public recordPostLayoutInformation(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 13027
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->obtainHolderInfo()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;->setFrom(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    return-object v0
.end method

.method public recordPreLayoutInformation(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;ILjava/util/List;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "changeFlags"    # I
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;",
            "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;"
        }
    .end annotation

    .prologue
    .line 12997
    .local p4, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->obtainHolderInfo()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;->setFrom(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    return-object v0
.end method

.method public abstract runPendingAnimations()V
.end method

.method public setAddDuration(J)V
    .locals 1
    .param p1, "addDuration"    # J

    .prologue
    .line 12909
    iput-wide p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->mAddDuration:J

    .line 12910
    return-void
.end method

.method public setChangeDuration(J)V
    .locals 1
    .param p1, "changeDuration"    # J

    .prologue
    .line 12945
    iput-wide p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->mChangeDuration:J

    .line 12946
    return-void
.end method

.method public setGroupViewHolderInternal(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "vH"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 12859
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->mGroupViewHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 12860
    return-void
.end method

.method public setHostView(Landroid/view/View;)V
    .locals 0
    .param p1, "hostView"    # Landroid/view/View;

    .prologue
    .line 12843
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->mHostView:Landroid/view/View;

    .line 12844
    return-void
.end method

.method public setItemAnimationTypeInternal(I)V
    .locals 0
    .param p1, "animationType"    # I

    .prologue
    .line 12836
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->mAnimationType:I

    .line 12837
    return-void
.end method

.method setListener(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorListener;

    .prologue
    .line 12957
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->mListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 12958
    return-void
.end method

.method public setMoveDuration(J)V
    .locals 1
    .param p1, "moveDuration"    # J

    .prologue
    .line 12891
    iput-wide p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->mMoveDuration:J

    .line 12892
    return-void
.end method

.method public setRemoveDuration(J)V
    .locals 1
    .param p1, "removeDuration"    # J

    .prologue
    .line 12927
    iput-wide p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->mRemoveDuration:J

    .line 12928
    return-void
.end method
