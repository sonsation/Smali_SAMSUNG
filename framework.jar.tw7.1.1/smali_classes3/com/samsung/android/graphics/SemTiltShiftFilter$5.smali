.class Lcom/samsung/android/graphics/SemTiltShiftFilter$5;
.super Ljava/lang/Object;
.source "SemTiltShiftFilter.java"

# interfaces
.implements Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/graphics/SemTiltShiftFilter;->animateGradient(FFFFJJLandroid/animation/TimeInterpolator;)[I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private params:[F

.field final synthetic this$0:Lcom/samsung/android/graphics/SemTiltShiftFilter;

.field final synthetic val$aEndValueBottomY:F

.field final synthetic val$aEndValueTopY:F

.field final synthetic val$aStartValueBottomY:F

.field final synthetic val$aStartValueTopY:F


# direct methods
.method constructor <init>(Lcom/samsung/android/graphics/SemTiltShiftFilter;FFFF)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter$5;->this$0:Lcom/samsung/android/graphics/SemTiltShiftFilter;

    iput p2, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter$5;->val$aEndValueTopY:F

    iput p3, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter$5;->val$aStartValueTopY:F

    iput p4, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter$5;->val$aEndValueBottomY:F

    iput p5, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter$5;->val$aStartValueBottomY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter$5;->params:[F

    return-void
.end method


# virtual methods
.method public animate(FLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-boolean v0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->sLogingEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "HWUIIF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemTiltShiftFilter animateGradient aFraction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter$5;->this$0:Lcom/samsung/android/graphics/SemTiltShiftFilter;

    iget v1, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter$5;->val$aEndValueTopY:F

    iget v2, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter$5;->val$aStartValueTopY:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter$5;->val$aStartValueTopY:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/graphics/SemTiltShiftFilter;->-set6(Lcom/samsung/android/graphics/SemTiltShiftFilter;F)F

    iget-object v0, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter$5;->this$0:Lcom/samsung/android/graphics/SemTiltShiftFilter;

    iget v1, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter$5;->val$aEndValueBottomY:F

    iget v2, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter$5;->val$aStartValueBottomY:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter$5;->val$aStartValueBottomY:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/graphics/SemTiltShiftFilter;->-set0(Lcom/samsung/android/graphics/SemTiltShiftFilter;F)F

    sget-boolean v0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->sLogingEnabled:Z

    if-eqz v0, :cond_1

    const-string v0, "HWUIIF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemTiltShiftFilter animateGradient mTopY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter$5;->this$0:Lcom/samsung/android/graphics/SemTiltShiftFilter;

    invoke-static {v2}, Lcom/samsung/android/graphics/SemTiltShiftFilter;->-get6(Lcom/samsung/android/graphics/SemTiltShiftFilter;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HWUIIF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemTiltShiftFilter animateGradient mBottomY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter$5;->this$0:Lcom/samsung/android/graphics/SemTiltShiftFilter;

    invoke-static {v2}, Lcom/samsung/android/graphics/SemTiltShiftFilter;->-get0(Lcom/samsung/android/graphics/SemTiltShiftFilter;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter$5;->params:[F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter$5;->this$0:Lcom/samsung/android/graphics/SemTiltShiftFilter;

    invoke-static {v1}, Lcom/samsung/android/graphics/SemTiltShiftFilter;->-get6(Lcom/samsung/android/graphics/SemTiltShiftFilter;)F

    move-result v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter$5;->params:[F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter$5;->this$0:Lcom/samsung/android/graphics/SemTiltShiftFilter;

    invoke-static {v1}, Lcom/samsung/android/graphics/SemTiltShiftFilter;->-get0(Lcom/samsung/android/graphics/SemTiltShiftFilter;)F

    move-result v1

    aput v1, v0, v4

    iget-object v0, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter$5;->this$0:Lcom/samsung/android/graphics/SemTiltShiftFilter;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter$5;->params:[F

    aget v1, v1, v3

    aput v1, v0, v5

    iget-object v0, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter$5;->this$0:Lcom/samsung/android/graphics/SemTiltShiftFilter;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter$5;->params:[F

    aget v1, v1, v4

    const/4 v2, 0x5

    aput v1, v0, v2

    const-string v0, "filterParams"

    iget-object v1, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter$5;->params:[F

    invoke-virtual {p2, v0, v1, v5}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FI)V

    return-void
.end method
