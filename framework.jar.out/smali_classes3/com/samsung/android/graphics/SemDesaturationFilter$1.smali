.class Lcom/samsung/android/graphics/SemDesaturationFilter$1;
.super Ljava/lang/Object;
.source "SemDesaturationFilter.java"

# interfaces
.implements Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/graphics/SemDesaturationFilter;->animateSaturation(FFJJLandroid/animation/TimeInterpolator;)[I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private params:[F

.field final synthetic this$0:Lcom/samsung/android/graphics/SemDesaturationFilter;

.field final synthetic val$aEndValue:F

.field final synthetic val$aStartValue:F


# direct methods
.method constructor <init>(Lcom/samsung/android/graphics/SemDesaturationFilter;FF)V
    .locals 3
    .param p1, "this$0"    # Lcom/samsung/android/graphics/SemDesaturationFilter;
    .param p2, "val$aEndValue"    # F
    .param p3, "val$aStartValue"    # F

    .prologue
    .line 91
    iput-object p1, p0, Lcom/samsung/android/graphics/SemDesaturationFilter$1;->this$0:Lcom/samsung/android/graphics/SemDesaturationFilter;

    iput p2, p0, Lcom/samsung/android/graphics/SemDesaturationFilter$1;->val$aEndValue:F

    iput p3, p0, Lcom/samsung/android/graphics/SemDesaturationFilter$1;->val$aStartValue:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/graphics/SemDesaturationFilter$1;->params:[F

    .line 91
    return-void
.end method


# virtual methods
.method public animate(FLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;)V
    .locals 6
    .param p1, "aFraction"    # F
    .param p2, "aImageFilterAnimator"    # Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 98
    sget-boolean v0, Lcom/samsung/android/graphics/SemDesaturationFilter;->sLogingEnabled:Z

    if-eqz v0, :cond_0

    .line 99
    const-string/jumbo v0, "HWUIIF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SemDesaturationFilter animateSaturation aFraction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/SemDesaturationFilter$1;->this$0:Lcom/samsung/android/graphics/SemDesaturationFilter;

    iget v1, p0, Lcom/samsung/android/graphics/SemDesaturationFilter$1;->val$aEndValue:F

    iget v2, p0, Lcom/samsung/android/graphics/SemDesaturationFilter$1;->val$aStartValue:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/samsung/android/graphics/SemDesaturationFilter$1;->val$aStartValue:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/graphics/SemDesaturationFilter;->-set0(Lcom/samsung/android/graphics/SemDesaturationFilter;F)F

    .line 103
    iget-object v0, p0, Lcom/samsung/android/graphics/SemDesaturationFilter$1;->this$0:Lcom/samsung/android/graphics/SemDesaturationFilter;

    invoke-static {v0}, Lcom/samsung/android/graphics/SemDesaturationFilter;->-get0(Lcom/samsung/android/graphics/SemDesaturationFilter;)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    .line 104
    iget-object v0, p0, Lcom/samsung/android/graphics/SemDesaturationFilter$1;->this$0:Lcom/samsung/android/graphics/SemDesaturationFilter;

    invoke-static {v0, v4}, Lcom/samsung/android/graphics/SemDesaturationFilter;->-set0(Lcom/samsung/android/graphics/SemDesaturationFilter;F)F

    .line 108
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/samsung/android/graphics/SemDesaturationFilter;->sLogingEnabled:Z

    if-eqz v0, :cond_2

    .line 109
    const-string/jumbo v0, "HWUIIF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SemDesaturationFilter animateSaturation mDesaturation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/graphics/SemDesaturationFilter$1;->this$0:Lcom/samsung/android/graphics/SemDesaturationFilter;

    invoke-static {v2}, Lcom/samsung/android/graphics/SemDesaturationFilter;->-get0(Lcom/samsung/android/graphics/SemDesaturationFilter;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/graphics/SemDesaturationFilter$1;->params:[F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemDesaturationFilter$1;->this$0:Lcom/samsung/android/graphics/SemDesaturationFilter;

    invoke-static {v1}, Lcom/samsung/android/graphics/SemDesaturationFilter;->-get0(Lcom/samsung/android/graphics/SemDesaturationFilter;)F

    move-result v1

    aput v1, v0, v5

    .line 113
    const-string/jumbo v0, "filterParams"

    iget-object v1, p0, Lcom/samsung/android/graphics/SemDesaturationFilter$1;->params:[F

    invoke-virtual {p2, v0, v1, v5}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FI)V

    .line 97
    return-void

    .line 105
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/graphics/SemDesaturationFilter$1;->this$0:Lcom/samsung/android/graphics/SemDesaturationFilter;

    invoke-static {v0}, Lcom/samsung/android/graphics/SemDesaturationFilter;->-get0(Lcom/samsung/android/graphics/SemDesaturationFilter;)F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/samsung/android/graphics/SemDesaturationFilter$1;->this$0:Lcom/samsung/android/graphics/SemDesaturationFilter;

    invoke-static {v0, v3}, Lcom/samsung/android/graphics/SemDesaturationFilter;->-set0(Lcom/samsung/android/graphics/SemDesaturationFilter;F)F

    goto :goto_0
.end method
