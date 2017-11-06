.class Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;
.super Ljava/lang/Object;
.source "SeslOverScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final FLING_MODE:I = 0x1

.field private static final SCROLL_MODE:I


# instance fields
.field private final mFlywheel:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMode:I

.field private final mScrollerX:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

.field private final mScrollerY:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FF)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "bounceCoefficientX"    # F
    .param p4, "bounceCoefficientY"    # F

    .prologue
    .line 104
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FFZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "bounceCoefficientX"    # F
    .param p4, "bounceCoefficientY"    # F
    .param p5, "flywheel"    # Z

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p5}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "flywheel"    # Z

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    if-nez p2, :cond_1

    .line 76
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslScroller$ViscousFluidInterpolator;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslScroller$ViscousFluidInterpolator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 80
    :goto_0
    iput-boolean p3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mFlywheel:Z

    .line 81
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    .line 82
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    .line 84
    invoke-static {v1}, Lcom/samsung/android/support/sesl/core/os/SeslDVFSHelperReflector;->onSmoothScrollEvent(Z)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->setSmoothScrollEnabled(Z)V

    .line 86
    const-string v0, "SeslOverScroller"

    const-string v1, "does NOT support Smoothscroll booster thus Smoothscroll\'s disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    return-void

    .line 78
    :cond_1
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->finish()V

    .line 546
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->finish()V

    .line 547
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 9

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 306
    const/4 v6, 0x0

    .line 346
    :goto_0
    return v6

    .line 309
    :cond_0
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mMode:I

    packed-switch v6, :pswitch_data_0

    .line 346
    :cond_1
    :goto_1
    const/4 v6, 0x1

    goto :goto_0

    .line 311
    :pswitch_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 314
    .local v4, "time":J
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->access$600(Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;)J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 316
    .local v2, "elapsedTime":J
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->access$500(Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v0

    .line 317
    .local v0, "duration":I
    int-to-long v6, v0

    cmp-long v6, v2, v6

    if-gez v6, :cond_2

    .line 318
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    long-to-float v7, v2

    int-to-float v8, v0

    div-float/2addr v7, v8

    invoke-interface {v6, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 319
    .local v1, "q":F
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v6, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->updateScroll(F)V

    .line 320
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v6, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->updateScroll(F)V

    goto :goto_1

    .line 322
    .end local v1    # "q":F
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->abortAnimation()V

    goto :goto_1

    .line 327
    .end local v0    # "duration":I
    .end local v2    # "elapsedTime":J
    .end local v4    # "time":J
    :pswitch_1
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 328
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->update()Z

    move-result v6

    if-nez v6, :cond_3

    .line 329
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v6

    if-nez v6, :cond_3

    .line 330
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->finish()V

    .line 335
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 336
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->update()Z

    move-result v6

    if-nez v6, :cond_1

    .line 337
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v6

    if-nez v6, :cond_1

    .line 338
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->finish()V

    goto :goto_1

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 1
    .param p1, "extend"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->extendDuration(I)V

    .line 261
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->extendDuration(I)V

    .line 262
    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 11
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I

    .prologue
    .line 409
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->fling(IIIIIIIIII)V

    .line 410
    return-void
.end method

.method public fling(IIIIIIIIII)V
    .locals 8
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I
    .param p9, "overX"    # I
    .param p10, "overY"    # I

    .prologue
    .line 447
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mFlywheel:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->access$200(Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;)F

    move-result v6

    .line 449
    .local v6, "oldVelocityX":F
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->access$200(Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;)F

    move-result v7

    .line 450
    .local v7, "oldVelocityY":F
    int-to-float v0, p3

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    int-to-float v0, p4

    .line 451
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 452
    int-to-float v0, p3

    add-float/2addr v0, v6

    float-to-int p3, v0

    .line 453
    int-to-float v0, p4

    add-float/2addr v0, v7

    float-to-int p4, v0

    .line 457
    .end local v6    # "oldVelocityX":F
    .end local v7    # "oldVelocityY":F
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mMode:I

    .line 458
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    move v1, p1

    move v2, p3

    move v3, p5

    move v4, p6

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->fling(IIIII)V

    .line 459
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    move v1, p2

    move v2, p4

    move v3, p7

    move/from16 v4, p8

    move/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->fling(IIIII)V

    .line 460
    return-void
.end method

.method public fling(IIIIIIIIIIZ)V
    .locals 8
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I
    .param p9, "overX"    # I
    .param p10, "overY"    # I
    .param p11, "accDisabled"    # Z

    .prologue
    .line 468
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mFlywheel:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p11, :cond_0

    .line 469
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->access$200(Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;)F

    move-result v6

    .line 470
    .local v6, "oldVelocityX":F
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->access$200(Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;)F

    move-result v7

    .line 471
    .local v7, "oldVelocityY":F
    int-to-float v0, p3

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    int-to-float v0, p4

    .line 472
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 473
    int-to-float v0, p3

    add-float/2addr v0, v6

    float-to-int p3, v0

    .line 474
    int-to-float v0, p4

    add-float/2addr v0, v7

    float-to-int p4, v0

    .line 478
    .end local v6    # "oldVelocityX":F
    .end local v7    # "oldVelocityY":F
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mMode:I

    .line 479
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    move v1, p1

    move v2, p3

    move v3, p5

    move v4, p6

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->fling(IIIII)V

    .line 480
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    move v1, p2

    move v2, p4

    move v3, p7

    move/from16 v4, p8

    move/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->fling(IIIII)V

    .line 481
    return-void
.end method

.method protected fling(IIIIIIIIZ)V
    .locals 12
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I
    .param p9, "accDisabled"    # Z

    .prologue
    .line 414
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v11, p9

    invoke-virtual/range {v0 .. v11}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->fling(IIIIIIIIIIZ)V

    .line 415
    return-void
.end method

.method public final forceFinished(Z)V
    .locals 2
    .param p1, "finished"    # Z

    .prologue
    .line 164
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->access$002(Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->access$002(Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;Z)Z

    .line 165
    return-void
.end method

.method public getCurrVelocity()F
    .locals 4

    .prologue
    .line 191
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->access$200(Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;)F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->access$200(Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public final getCurrX()I
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->access$100(Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->access$100(Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getDuration()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->access$500(Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->access$500(Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->access$400(Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->access$400(Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getStartX()I
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->access$300(Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getStartY()I
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->access$300(Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverScrolled()Z
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    .line 532
    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->access$700(Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    .line 533
    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    .line 534
    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->access$700(Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 531
    :goto_0
    return v0

    .line 534
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollingInDirection(FF)Z
    .locals 4
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .prologue
    .line 566
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->access$400(Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->access$300(Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v3

    sub-int v0, v2, v3

    .line 567
    .local v0, "dx":I
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->access$400(Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->access$300(Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v3

    sub-int v1, v2, v3

    .line 568
    .local v1, "dy":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v3, v0

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 569
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v3, v1

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 568
    :goto_0
    return v2

    .line 569
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public notifyHorizontalEdgeReached(III)V
    .locals 1
    .param p1, "startX"    # I
    .param p2, "finalX"    # I
    .param p3, "overX"    # I

    .prologue
    .line 497
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->notifyEdgeReached(III)V

    .line 498
    return-void
.end method

.method public notifyVerticalEdgeReached(III)V
    .locals 1
    .param p1, "startY"    # I
    .param p2, "finalY"    # I
    .param p3, "overY"    # I

    .prologue
    .line 514
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->notifyEdgeReached(III)V

    .line 515
    return-void
.end method

.method public setFinalX(I)V
    .locals 1
    .param p1, "newX"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->setFinalPosition(I)V

    .line 280
    return-void
.end method

.method public setFinalY(I)V
    .locals 1
    .param p1, "newY"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->setFinalPosition(I)V

    .line 298
    return-void
.end method

.method public final setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .prologue
    .line 141
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->setFriction(F)V

    .line 142
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->setFriction(F)V

    .line 143
    return-void
.end method

.method setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 126
    if-nez p1, :cond_0

    .line 127
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslScroller$ViscousFluidInterpolator;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslScroller$ViscousFluidInterpolator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method public setSmoothScrollEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 576
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 577
    .local v0, "mode":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->setMode(I)V

    .line 578
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->setMode(I)V

    .line 579
    return-void

    .line 576
    .end local v0    # "mode":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public springBack(IIIIII)Z
    .locals 4
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "minX"    # I
    .param p4, "maxX"    # I
    .param p5, "minY"    # I
    .param p6, "maxY"    # I

    .prologue
    const/4 v2, 0x1

    .line 399
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mMode:I

    .line 402
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v3, p1, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->springback(III)Z

    move-result v0

    .line 403
    .local v0, "spingbackX":Z
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v3, p2, p5, p6}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->springback(III)Z

    move-result v1

    .line 404
    .local v1, "spingbackY":Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public startScroll(IIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 364
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->startScroll(IIIII)V

    .line 365
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 1
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .prologue
    .line 381
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mMode:I

    .line 382
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p3, p5}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->startScroll(III)V

    .line 383
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0, p2, p4, p5}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->startScroll(III)V

    .line 384
    return-void
.end method

.method public timePassed()I
    .locals 8

    .prologue
    .line 557
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 558
    .local v2, "time":J
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->access$600(Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;->access$600(Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller$SplineOverScroller;)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 559
    .local v0, "startTime":J
    sub-long v4, v2, v0

    long-to-int v4, v4

    return v4
.end method
