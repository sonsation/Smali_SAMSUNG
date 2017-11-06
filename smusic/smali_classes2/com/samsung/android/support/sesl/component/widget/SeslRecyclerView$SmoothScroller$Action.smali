.class public Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;
.super Ljava/lang/Object;
.source "SeslRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# static fields
.field public static final UNDEFINED_DURATION:I = -0x80000000


# instance fields
.field private changed:Z

.field private consecutiveUpdates:I

.field private mDuration:I

.field private mDx:I

.field private mDy:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mJumpToPosition:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 12145
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    .line 12146
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I

    .prologue
    .line 12154
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    .line 12155
    return-void
.end method

.method public constructor <init>(IIILandroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    const/4 v1, 0x0

    .line 12164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12130
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 12134
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->changed:Z

    .line 12138
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    .line 12165
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->mDx:I

    .line 12166
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->mDy:I

    .line 12167
    iput p3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->mDuration:I

    .line 12168
    iput-object p4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 12169
    return-void
.end method

.method private validate()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 12227
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->mDuration:I

    if-ge v0, v1, :cond_0

    .line 12228
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12230
    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->mDuration:I

    if-ge v0, v1, :cond_1

    .line 12231
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scroll duration must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12233
    :cond_1
    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .prologue
    .line 12254
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->mDuration:I

    return v0
.end method

.method public getDx()I
    .locals 1

    .prologue
    .line 12236
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->mDx:I

    return v0
.end method

.method public getDy()I
    .locals 1

    .prologue
    .line 12245
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->mDy:I

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 12263
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method hasJumpTarget()Z
    .locals 1

    .prologue
    .line 12191
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpTo(I)V
    .locals 0
    .param p1, "targetPosition"    # I

    .prologue
    .line 12187
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 12188
    return-void
.end method

.method runIfNecessary(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 7
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    const/4 v6, 0x0

    .line 12195
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    if-ltz v1, :cond_0

    .line 12196
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 12197
    .local v0, "position":I
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 12198
    invoke-virtual {p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->jumpToPositionForSmoothScroller(I)V

    .line 12199
    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->changed:Z

    .line 12224
    .end local v0    # "position":I
    :goto_0
    return-void

    .line 12202
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->changed:Z

    if-eqz v1, :cond_4

    .line 12203
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->validate()V

    .line 12204
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_3

    .line 12205
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->mDuration:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_2

    .line 12206
    iget-object v1, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mViewFlinger:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->mDx:I

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->mDy:I

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->smoothScrollBy(II)V

    .line 12213
    :goto_1
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    .line 12214
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_1

    .line 12217
    const-string v1, "SeslRecyclerView"

    const-string v2, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12220
    :cond_1
    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->changed:Z

    goto :goto_0

    .line 12208
    :cond_2
    iget-object v1, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mViewFlinger:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->mDx:I

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->mDy:I

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->mDuration:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->smoothScrollBy(III)V

    goto :goto_1

    .line 12211
    :cond_3
    iget-object v1, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mViewFlinger:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->mDx:I

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->mDy:I

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->mDuration:I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    goto :goto_1

    .line 12222
    :cond_4
    iput v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    goto :goto_0
.end method

.method public setDuration(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 12258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->changed:Z

    .line 12259
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->mDuration:I

    .line 12260
    return-void
.end method

.method public setDx(I)V
    .locals 1
    .param p1, "dx"    # I

    .prologue
    .line 12240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->changed:Z

    .line 12241
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->mDx:I

    .line 12242
    return-void
.end method

.method public setDy(I)V
    .locals 1
    .param p1, "dy"    # I

    .prologue
    .line 12249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->changed:Z

    .line 12250
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->mDy:I

    .line 12251
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 12273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->changed:Z

    .line 12274
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 12275
    return-void
.end method

.method public update(IIILandroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 12286
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->mDx:I

    .line 12287
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->mDy:I

    .line 12288
    iput p3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->mDuration:I

    .line 12289
    iput-object p4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 12290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->changed:Z

    .line 12291
    return-void
.end method
