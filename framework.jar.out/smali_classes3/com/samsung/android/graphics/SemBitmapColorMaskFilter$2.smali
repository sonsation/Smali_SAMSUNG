.class Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$2;
.super Ljava/lang/Object;
.source "SemBitmapColorMaskFilter.java"

# interfaces
.implements Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->animateEndColor(FFFFFFFFJJLandroid/animation/TimeInterpolator;)[I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private params:[F

.field final synthetic this$0:Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;

.field final synthetic val$aEndValueAlpha:F

.field final synthetic val$aEndValueBlue:F

.field final synthetic val$aEndValueGreen:F

.field final synthetic val$aEndValueRed:F

.field final synthetic val$aStartValueAlpha:F

.field final synthetic val$aStartValueBlue:F

.field final synthetic val$aStartValueGreen:F

.field final synthetic val$aStartValueRed:F


# direct methods
.method constructor <init>(Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;FFFFFFFF)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;
    .param p2, "val$aEndValueRed"    # F
    .param p3, "val$aStartValueRed"    # F
    .param p4, "val$aEndValueGreen"    # F
    .param p5, "val$aStartValueGreen"    # F
    .param p6, "val$aEndValueBlue"    # F
    .param p7, "val$aStartValueBlue"    # F
    .param p8, "val$aEndValueAlpha"    # F
    .param p9, "val$aStartValueAlpha"    # F

    .prologue
    .line 455
    iput-object p1, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$2;->this$0:Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;

    iput p2, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$2;->val$aEndValueRed:F

    iput p3, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$2;->val$aStartValueRed:F

    iput p4, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$2;->val$aEndValueGreen:F

    iput p5, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$2;->val$aStartValueGreen:F

    iput p6, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$2;->val$aEndValueBlue:F

    iput p7, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$2;->val$aStartValueBlue:F

    iput p8, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$2;->val$aEndValueAlpha:F

    iput p9, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$2;->val$aStartValueAlpha:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$2;->params:[F

    .line 455
    return-void
.end method


# virtual methods
.method public animate(FLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;)V
    .locals 11
    .param p1, "aFraction"    # F
    .param p2, "aImageFilterAnimator"    # Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 462
    sget-boolean v4, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->sLogingEnabled:Z

    if-eqz v4, :cond_0

    .line 463
    const-string/jumbo v4, "HWUIIF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SemBitmapColorMaskFilter animateGradientColor aFraction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_0
    iget v4, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$2;->val$aEndValueRed:F

    iget v5, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$2;->val$aStartValueRed:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    iget v5, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$2;->val$aStartValueRed:F

    add-float v3, v4, v5

    .line 467
    .local v3, "redColor":F
    iget v4, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$2;->val$aEndValueGreen:F

    iget v5, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$2;->val$aStartValueGreen:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    iget v5, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$2;->val$aStartValueGreen:F

    add-float v2, v4, v5

    .line 468
    .local v2, "greenColor":F
    iget v4, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$2;->val$aEndValueBlue:F

    iget v5, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$2;->val$aStartValueBlue:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    iget v5, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$2;->val$aStartValueBlue:F

    add-float v1, v4, v5

    .line 469
    .local v1, "blueColor":F
    iget v4, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$2;->val$aEndValueAlpha:F

    iget v5, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$2;->val$aStartValueAlpha:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    iget v5, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$2;->val$aStartValueAlpha:F

    add-float v0, v4, v5

    .line 470
    .local v0, "alphaColor":F
    invoke-static {v3, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 471
    invoke-static {v2, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 472
    invoke-static {v1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 473
    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 475
    sget-boolean v4, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->sLogingEnabled:Z

    if-eqz v4, :cond_1

    .line 476
    const-string/jumbo v4, "HWUIIF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SemBitmapColorMaskFilter animateGradientColor redColor = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const-string/jumbo v4, "HWUIIF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SemBitmapColorMaskFilter animateGradientColor greenColor = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const-string/jumbo v4, "HWUIIF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SemBitmapColorMaskFilter animateGradientColor blueColor = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const-string/jumbo v4, "HWUIIF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SemBitmapColorMaskFilter animateGradientColor alphaColor = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$2;->params:[F

    aput v3, v4, v9

    .line 483
    iget-object v4, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$2;->params:[F

    const/4 v5, 0x1

    aput v2, v4, v5

    .line 484
    iget-object v4, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$2;->params:[F

    const/4 v5, 0x2

    aput v1, v4, v5

    .line 485
    iget-object v4, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$2;->params:[F

    const/4 v5, 0x3

    aput v0, v4, v5

    .line 486
    iget-object v4, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$2;->params:[F

    iget-object v5, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$2;->this$0:Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;

    iget-object v5, v5, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    iget-object v6, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$2;->params:[F

    array-length v6, v6

    invoke-static {v4, v9, v5, v10, v6}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 487
    const-string/jumbo v4, "filterParams"

    iget-object v5, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$2;->params:[F

    invoke-virtual {p2, v4, v5, v10}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FI)V

    .line 461
    return-void
.end method
