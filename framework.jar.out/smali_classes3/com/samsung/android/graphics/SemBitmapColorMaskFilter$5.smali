.class Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$5;
.super Ljava/lang/Object;
.source "SemBitmapColorMaskFilter.java"

# interfaces
.implements Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->animateGradientEndX(FFJJLandroid/animation/TimeInterpolator;)[I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private params:[F

.field final synthetic this$0:Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;

.field final synthetic val$aEndValue:F

.field final synthetic val$aStartValue:F


# direct methods
.method constructor <init>(Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;FF)V
    .locals 3
    .param p1, "this$0"    # Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;
    .param p2, "val$aEndValue"    # F
    .param p3, "val$aStartValue"    # F

    .prologue
    .line 585
    iput-object p1, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$5;->this$0:Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;

    iput p2, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$5;->val$aEndValue:F

    iput p3, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$5;->val$aStartValue:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 586
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$5;->params:[F

    .line 585
    return-void
.end method


# virtual methods
.method public animate(FLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;)V
    .locals 6
    .param p1, "aFraction"    # F
    .param p2, "aImageFilterAnimator"    # Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;

    .prologue
    const/16 v5, 0xb

    const/4 v4, 0x0

    .line 592
    sget-boolean v1, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->sLogingEnabled:Z

    if-eqz v1, :cond_0

    .line 593
    const-string/jumbo v1, "HWUIIF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SemBitmapColorMaskFilter animateGradientEndX aFraction = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_0
    iget v1, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$5;->val$aEndValue:F

    iget v2, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$5;->val$aStartValue:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$5;->val$aStartValue:F

    add-float v0, v1, v2

    .line 598
    .local v0, "endX":F
    sget-boolean v1, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->sLogingEnabled:Z

    if-eqz v1, :cond_1

    .line 599
    const-string/jumbo v1, "HWUIIF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SemBitmapColorMaskFilter animateGradientEndX endX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$5;->params:[F

    aput v0, v1, v4

    .line 603
    iget-object v1, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$5;->this$0:Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;

    iget-object v1, v1, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    iget-object v2, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$5;->params:[F

    aget v2, v2, v4

    aput v2, v1, v5

    .line 604
    const-string/jumbo v1, "filterParams"

    iget-object v2, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$5;->params:[F

    invoke-virtual {p2, v1, v2, v5}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FI)V

    .line 591
    return-void
.end method
