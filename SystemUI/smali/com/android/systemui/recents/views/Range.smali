.class Lcom/android/systemui/recents/views/Range;
.super Ljava/lang/Object;
.source "TaskStackLayoutAlgorithm.java"


# instance fields
.field max:F

.field min:F

.field origin:F

.field final relativeMax:F

.field final relativeMin:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .param p1, "relMin"    # F
    .param p2, "relMax"    # F

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Lcom/android/systemui/recents/views/Range;->relativeMin:F

    iput p1, p0, Lcom/android/systemui/recents/views/Range;->min:F

    .line 67
    iput p2, p0, Lcom/android/systemui/recents/views/Range;->relativeMax:F

    iput p2, p0, Lcom/android/systemui/recents/views/Range;->max:F

    .line 65
    return-void
.end method


# virtual methods
.method public getAbsoluteX(F)F
    .locals 2
    .param p1, "normX"    # F

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 97
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    .line 98
    sub-float v0, p1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/recents/views/Range;->relativeMin:F

    neg-float v1, v1

    mul-float/2addr v0, v1

    return v0

    .line 100
    :cond_0
    sub-float v0, p1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/recents/views/Range;->relativeMax:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getNormalizedX(F)F
    .locals 3
    .param p1, "x"    # F

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 85
    iget v0, p0, Lcom/android/systemui/recents/views/Range;->origin:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 86
    iget v0, p0, Lcom/android/systemui/recents/views/Range;->origin:F

    sub-float v0, p1, v0

    mul-float/2addr v0, v2

    iget v1, p0, Lcom/android/systemui/recents/views/Range;->relativeMin:F

    neg-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    return v0

    .line 88
    :cond_0
    iget v0, p0, Lcom/android/systemui/recents/views/Range;->origin:F

    sub-float v0, p1, v0

    mul-float/2addr v0, v2

    iget v1, p0, Lcom/android/systemui/recents/views/Range;->relativeMax:F

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    return v0
.end method

.method public isInRange(F)Z
    .locals 6
    .param p1, "absX"    # F

    .prologue
    const/4 v0, 0x0

    .line 108
    float-to-double v2, p1

    iget v1, p0, Lcom/android/systemui/recents/views/Range;->min:F

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    float-to-double v2, p1

    iget v1, p0, Lcom/android/systemui/recents/views/Range;->max:F

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public offset(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 74
    iput p1, p0, Lcom/android/systemui/recents/views/Range;->origin:F

    .line 75
    iget v0, p0, Lcom/android/systemui/recents/views/Range;->relativeMin:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/recents/views/Range;->min:F

    .line 76
    iget v0, p0, Lcom/android/systemui/recents/views/Range;->relativeMax:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/recents/views/Range;->max:F

    .line 73
    return-void
.end method
