.class Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;
.super Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemAnimation;
.source "SeslItemTouchUIUtilImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ItemSelectHighlightingAnimation"
.end annotation


# static fields
.field private static final DEFAULT_FROM_X:F = 1.0f

.field private static final DEFAULT_FROM_Y:F = 1.0f

.field private static final DEFAULT_TO_X:F = 1.08f

.field private static final DEFAULT_TO_Y:F = 1.08f

.field private static SELECT_HIGHLIGHT_ANIM_DURATION:I


# instance fields
.field private mFromX:F

.field private mFromY:F

.field private mHalfOfAnimationPassed:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsAnimating:Z

.field private mPivotX:F

.field private mPivotY:F

.field private mToX:F

.field private mToY:F

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 227
    const/16 v0, 0x96

    sput v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->SELECT_HIGHLIGHT_ANIM_DURATION:I

    return-void
.end method

.method constructor <init>(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v3, 0x3f8a3d71    # 1.08f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 235
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemAnimation;-><init>()V

    .line 236
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mView:Landroid/view/View;

    .line 237
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 238
    .local v0, "childHitRect":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 239
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mHalfOfAnimationPassed:Z

    .line 240
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 241
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mPivotX:F

    .line 242
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mPivotY:F

    .line 243
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mFromX:F

    .line 244
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mToX:F

    .line 245
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mFromY:F

    .line 246
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mToY:F

    .line 247
    return-void
.end method

.method private switchToScaleDown()V
    .locals 2

    .prologue
    .line 298
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mFromX:F

    .line 299
    .local v0, "temp":F
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mToX:F

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mFromX:F

    .line 300
    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mToX:F

    .line 302
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mFromY:F

    .line 303
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mToY:F

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mFromY:F

    .line 304
    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mToY:F

    .line 305
    return-void
.end method


# virtual methods
.method calculateScale()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 277
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mProgress:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_0

    .line 278
    iput v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mProgress:F

    .line 280
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mProgress:F

    invoke-interface {v3, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 281
    .local v0, "interpolatedProgress":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 282
    .local v1, "sx":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 284
    .local v2, "sy":F
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mFromX:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_1

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mToX:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_2

    .line 285
    :cond_1
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mFromX:F

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mToX:F

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mFromX:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v0

    add-float v1, v3, v4

    .line 287
    :cond_2
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mFromY:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_3

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mToY:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_4

    .line 288
    :cond_3
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mFromY:F

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mToY:F

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mFromY:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v0

    add-float v2, v3, v4

    .line 290
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mView:Landroid/view/View;

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mPivotX:F

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotX(F)V

    .line 291
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mView:Landroid/view/View;

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mPivotY:F

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotY(F)V

    .line 292
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setScaleX(F)V

    .line 293
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setScaleY(F)V

    .line 295
    return-void
.end method

.method computeAnimation(J)V
    .locals 3
    .param p1, "curUpTime"    # J

    .prologue
    .line 309
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemAnimation;->computeAnimation(J)V

    .line 311
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mProgress:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mHalfOfAnimationPassed:Z

    if-nez v0, :cond_0

    .line 312
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->switchToScaleDown()V

    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mHalfOfAnimationPassed:Z

    .line 315
    :cond_0
    return-void
.end method

.method getTransformation(Landroid/view/animation/Transformation;)V
    .locals 0
    .param p1, "outTransform"    # Landroid/view/animation/Transformation;

    .prologue
    .line 273
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 332
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 333
    .local v2, "curTime":J
    const/4 v0, 0x1

    .line 335
    .local v0, "allFinished":Z
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->computeAnimation(J)V

    .line 336
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->calculateScale()V

    .line 337
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->isFinished()Z

    move-result v1

    .line 338
    .local v1, "finished":Z
    and-int/2addr v0, v1

    .line 340
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 341
    if-nez v0, :cond_1

    .line 342
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mView:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mIsAnimating:Z

    if-eqz v4, :cond_0

    .line 345
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mIsAnimating:Z

    goto :goto_0
.end method

.method setScaleUpParameters(FFFFFF)V
    .locals 0
    .param p1, "fromX"    # F
    .param p2, "toX"    # F
    .param p3, "fromY"    # F
    .param p4, "toY"    # F
    .param p5, "pivotX"    # F
    .param p6, "pivotY"    # F

    .prologue
    .line 262
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mFromX:F

    .line 263
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mToX:F

    .line 264
    iput p3, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mFromY:F

    .line 265
    iput p4, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mToY:F

    .line 267
    iput p5, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mPivotX:F

    .line 268
    iput p6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mPivotY:F

    .line 269
    return-void
.end method

.method setStartAndDuration(I)V
    .locals 2
    .param p1, "duration"    # I

    .prologue
    .line 318
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mStartTime:J

    .line 319
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mDuration:I

    .line 321
    if-nez p1, :cond_0

    .line 322
    sget v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->SELECT_HIGHLIGHT_ANIM_DURATION:I

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mDuration:I

    .line 323
    :cond_0
    return-void
.end method

.method start()V
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mIsAnimating:Z

    .line 327
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->mView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 328
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->run()V

    .line 329
    return-void
.end method
