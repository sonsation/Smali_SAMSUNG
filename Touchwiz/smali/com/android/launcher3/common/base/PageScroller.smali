.class public Lcom/android/launcher3/common/base/PageScroller;
.super Ljava/lang/Object;
.source "PageScroller.java"


# static fields
.field private static final FLING_MODE:I = 0x1

.field private static final SCROLL_MODE:I


# instance fields
.field private mCurrX:I

.field private mCurrY:I

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDuration:I

.field private mDurationReciprocal:F

.field private mFinalX:I

.field private mFinalY:I

.field private mFinished:Z

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mLeftScreen:I

.field private mMode:I

.field private mRightScreen:I

.field private mStartTime:J

.field private mStartX:I

.field private mStartY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/common/base/PageScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 61
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mFinished:Z

    .line 70
    iput-object p2, p0, Lcom/android/launcher3/common/base/PageScroller;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 71
    return-void
.end method

.method private static viscousFluid(F)F
    .locals 5
    .param p0, "x"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 203
    cmpg-float v1, p0, v4

    if-gez v1, :cond_0

    .line 204
    neg-float v1, p0

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float v1, v4, v1

    sub-float/2addr p0, v1

    .line 210
    :goto_0
    return p0

    .line 206
    :cond_0
    const v0, 0x3ebc5ab2

    .line 207
    .local v0, "start":F
    sub-float v1, v4, p0

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float p0, v4, v1

    .line 208
    sub-float v1, v4, v0

    mul-float/2addr v1, p0

    add-float p0, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mFinalX:I

    iput v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mCurrX:I

    .line 222
    iget v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mFinalY:I

    iput v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mCurrY:I

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mFinished:Z

    .line 224
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    .line 132
    iget-boolean v4, p0, Lcom/android/launcher3/common/base/PageScroller;->mFinished:Z

    if-eqz v4, :cond_1

    .line 133
    const/4 v3, 0x0

    .line 171
    :cond_0
    :goto_0
    return v3

    .line 136
    :cond_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/launcher3/common/base/PageScroller;->mStartTime:J

    sub-long/2addr v4, v6

    long-to-int v1, v4

    .line 138
    .local v1, "timePassed":I
    iget v4, p0, Lcom/android/launcher3/common/base/PageScroller;->mDuration:I

    if-ge v1, v4, :cond_3

    .line 139
    iget v4, p0, Lcom/android/launcher3/common/base/PageScroller;->mMode:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 141
    :pswitch_0
    int-to-float v4, v1

    iget v5, p0, Lcom/android/launcher3/common/base/PageScroller;->mDurationReciprocal:F

    mul-float v2, v4, v5

    .line 143
    .local v2, "x":F
    iget-object v4, p0, Lcom/android/launcher3/common/base/PageScroller;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-nez v4, :cond_2

    .line 144
    invoke-static {v2}, Lcom/android/launcher3/common/base/PageScroller;->viscousFluid(F)F

    move-result v2

    .line 149
    :goto_1
    iget v4, p0, Lcom/android/launcher3/common/base/PageScroller;->mStartX:I

    iget v5, p0, Lcom/android/launcher3/common/base/PageScroller;->mDeltaX:F

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/launcher3/common/base/PageScroller;->mCurrX:I

    .line 150
    iget v4, p0, Lcom/android/launcher3/common/base/PageScroller;->mStartY:I

    iget v5, p0, Lcom/android/launcher3/common/base/PageScroller;->mDeltaY:F

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/launcher3/common/base/PageScroller;->mCurrY:I

    goto :goto_0

    .line 146
    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/common/base/PageScroller;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v4, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v2

    goto :goto_1

    .line 153
    .end local v2    # "x":F
    :pswitch_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 154
    .local v0, "distanceCoef":F
    iget v4, p0, Lcom/android/launcher3/common/base/PageScroller;->mStartX:I

    iget v5, p0, Lcom/android/launcher3/common/base/PageScroller;->mFinalX:I

    iget v6, p0, Lcom/android/launcher3/common/base/PageScroller;->mStartX:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/launcher3/common/base/PageScroller;->mCurrX:I

    .line 155
    iget v4, p0, Lcom/android/launcher3/common/base/PageScroller;->mStartY:I

    iget v5, p0, Lcom/android/launcher3/common/base/PageScroller;->mFinalY:I

    iget v6, p0, Lcom/android/launcher3/common/base/PageScroller;->mStartY:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/launcher3/common/base/PageScroller;->mCurrY:I

    .line 157
    iget v4, p0, Lcom/android/launcher3/common/base/PageScroller;->mCurrX:I

    iget v5, p0, Lcom/android/launcher3/common/base/PageScroller;->mFinalX:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Lcom/android/launcher3/common/base/PageScroller;->mCurrY:I

    iget v5, p0, Lcom/android/launcher3/common/base/PageScroller;->mFinalY:I

    if-ne v4, v5, :cond_0

    .line 158
    iput-boolean v3, p0, Lcom/android/launcher3/common/base/PageScroller;->mFinished:Z

    goto :goto_0

    .line 167
    .end local v0    # "distanceCoef":F
    :cond_3
    iget v4, p0, Lcom/android/launcher3/common/base/PageScroller;->mFinalX:I

    iput v4, p0, Lcom/android/launcher3/common/base/PageScroller;->mCurrX:I

    .line 168
    iget v4, p0, Lcom/android/launcher3/common/base/PageScroller;->mFinalY:I

    iput v4, p0, Lcom/android/launcher3/common/base/PageScroller;->mCurrY:I

    .line 169
    iput-boolean v3, p0, Lcom/android/launcher3/common/base/PageScroller;->mFinished:Z

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final forceFinished(Z)V
    .locals 0
    .param p1, "finished"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/launcher3/common/base/PageScroller;->mFinished:Z

    .line 89
    return-void
.end method

.method public final getCurrX()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mCurrX:I

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mCurrY:I

    return v0
.end method

.method public final getDuration()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mDuration:I

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mFinalX:I

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mFinished:Z

    return v0
.end method

.method public isUpdatedScreenIndex(II)Z
    .locals 1
    .param p1, "leftScreen"    # I
    .param p2, "rightScreen"    # I

    .prologue
    .line 247
    iget v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mLeftScreen:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mRightScreen:I

    if-eq v0, p2, :cond_1

    .line 248
    :cond_0
    iput p1, p0, Lcom/android/launcher3/common/base/PageScroller;->mLeftScreen:I

    .line 249
    iput p2, p0, Lcom/android/launcher3/common/base/PageScroller;->mRightScreen:I

    .line 250
    const/4 v0, 0x1

    .line 252
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFinalX(I)V
    .locals 2
    .param p1, "newX"    # I

    .prologue
    .line 241
    iput p1, p0, Lcom/android/launcher3/common/base/PageScroller;->mFinalX:I

    .line 242
    iget v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mFinalX:I

    iget v1, p0, Lcom/android/launcher3/common/base/PageScroller;->mStartX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mDeltaX:F

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mFinished:Z

    .line 244
    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/launcher3/common/base/PageScroller;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 54
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 2
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .prologue
    const/4 v0, 0x0

    .line 189
    iput v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mMode:I

    .line 190
    iput-boolean v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mFinished:Z

    .line 191
    iput p5, p0, Lcom/android/launcher3/common/base/PageScroller;->mDuration:I

    .line 192
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mStartTime:J

    .line 193
    iput p1, p0, Lcom/android/launcher3/common/base/PageScroller;->mStartX:I

    .line 194
    iput p2, p0, Lcom/android/launcher3/common/base/PageScroller;->mStartY:I

    .line 195
    add-int v0, p1, p3

    iput v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mFinalX:I

    .line 196
    add-int v0, p2, p4

    iput v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mFinalY:I

    .line 197
    int-to-float v0, p3

    iput v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mDeltaX:F

    .line 198
    int-to-float v0, p4

    iput v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mDeltaY:F

    .line 199
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/android/launcher3/common/base/PageScroller;->mDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/common/base/PageScroller;->mDurationReciprocal:F

    .line 200
    return-void
.end method

.method public timePassed()I
    .locals 4

    .prologue
    .line 232
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher3/common/base/PageScroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
