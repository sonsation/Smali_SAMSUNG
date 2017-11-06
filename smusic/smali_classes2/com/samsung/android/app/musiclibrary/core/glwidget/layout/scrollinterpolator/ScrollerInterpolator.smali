.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;
.super Ljava/lang/Object;
.source "ScrollerInterpolator.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;


# instance fields
.field private mDistanceX:I

.field private mDistanceY:I

.field private mDx:I

.field private mDy:I

.field private mFlingMode:Z

.field private mScroller:Landroid/widget/Scroller;

.field private mVelocityX:F

.field private mVelocityY:F

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mScroller:Landroid/widget/Scroller;

    .line 47
    return-void
.end method


# virtual methods
.method public finished()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    return v0
.end method

.method public getDx()F
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mDx:I

    int-to-float v0, v0

    return v0
.end method

.method public getDy()F
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mDy:I

    int-to-float v0, v0

    return v0
.end method

.method public setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, p1}, Landroid/widget/Scroller;->setFriction(F)V

    .line 68
    return-void
.end method

.method public setParamsDistance(FF)V
    .locals 1
    .param p1, "distanceX"    # F
    .param p2, "distanceY"    # F

    .prologue
    .line 104
    float-to-int v0, p1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mDistanceX:I

    .line 105
    float-to-int v0, p2

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mDistanceY:I

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mFlingMode:Z

    .line 107
    return-void
.end method

.method public setParamsVelocity(FF)V
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    .line 98
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mVelocityX:F

    .line 99
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mVelocityY:F

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mFlingMode:Z

    .line 101
    return-void
.end method

.method public start()V
    .locals 9

    .prologue
    const v6, 0x7fffffff

    const/high16 v5, -0x80000000

    const/4 v1, 0x0

    .line 51
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mFlingMode:Z

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mVelocityX:F

    float-to-int v3, v2

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mVelocityY:F

    float-to-int v4, v2

    move v2, v1

    move v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mScroller:Landroid/widget/Scroller;

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mDistanceX:I

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mDistanceY:I

    const/16 v5, 0x190

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 62
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mX:I

    .line 63
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mY:I

    .line 64
    return-void
.end method

.method public update()Z
    .locals 4

    .prologue
    .line 72
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    .line 73
    .local v2, "more":Z
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 74
    .local v0, "curX":I
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 75
    .local v1, "curY":I
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mX:I

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mDx:I

    .line 76
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mY:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mDy:I

    .line 77
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mX:I

    .line 78
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mY:I

    .line 79
    return v2
.end method
