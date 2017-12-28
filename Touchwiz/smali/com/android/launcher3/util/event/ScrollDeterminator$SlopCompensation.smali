.class Lcom/android/launcher3/util/event/ScrollDeterminator$SlopCompensation;
.super Ljava/lang/Object;
.source "ScrollDeterminator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/event/ScrollDeterminator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SlopCompensation"
.end annotation


# static fields
.field static final WEIGHT_OFFSET:F = 0.2f

.field static final WEIGHT_SLOPE:F = 0.04f


# instance fields
.field mSlopCompensationX:F


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator$SlopCompensation;->mSlopCompensationX:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/util/event/ScrollDeterminator$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher3/util/event/ScrollDeterminator$1;

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/android/launcher3/util/event/ScrollDeterminator$SlopCompensation;-><init>()V

    return-void
.end method


# virtual methods
.method getDeltaXwithCompensation(I)I
    .locals 8
    .param p1, "deltaTouch"    # I

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 191
    int-to-float v4, p1

    iget v5, p0, Lcom/android/launcher3/util/event/ScrollDeterminator$SlopCompensation;->mSlopCompensationX:F

    mul-float/2addr v4, v5

    cmpl-float v4, v4, v6

    if-lez v4, :cond_0

    const/4 v2, 0x1

    .line 192
    .local v2, "isSameDirection":Z
    :goto_0
    const v4, 0x3d23d70a    # 0.04f

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    const v5, 0x3e4ccccd    # 0.2f

    sub-float/2addr v4, v5

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 193
    .local v3, "weight":F
    move v1, p1

    .line 194
    .local v1, "delta":I
    if-eqz v2, :cond_2

    .line 195
    cmpg-float v4, v3, v7

    if-gez v4, :cond_1

    iget v4, p0, Lcom/android/launcher3/util/event/ScrollDeterminator$SlopCompensation;->mSlopCompensationX:F

    mul-float v0, v3, v4

    .line 196
    .local v0, "compensation":F
    :goto_1
    iget v4, p0, Lcom/android/launcher3/util/event/ScrollDeterminator$SlopCompensation;->mSlopCompensationX:F

    sub-float/2addr v4, v0

    iput v4, p0, Lcom/android/launcher3/util/event/ScrollDeterminator$SlopCompensation;->mSlopCompensationX:F

    .line 197
    float-to-int v4, v0

    add-int v1, p1, v4

    .line 201
    .end local v0    # "compensation":F
    :goto_2
    return v1

    .line 191
    .end local v1    # "delta":I
    .end local v2    # "isSameDirection":Z
    .end local v3    # "weight":F
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 195
    .restart local v1    # "delta":I
    .restart local v2    # "isSameDirection":Z
    .restart local v3    # "weight":F
    :cond_1
    iget v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator$SlopCompensation;->mSlopCompensationX:F

    goto :goto_1

    .line 199
    :cond_2
    iput v6, p0, Lcom/android/launcher3/util/event/ScrollDeterminator$SlopCompensation;->mSlopCompensationX:F

    goto :goto_2
.end method
