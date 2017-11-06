.class public Lcom/samsung/android/support/sesl/component/animation/SeslElasticInterpolator;
.super Ljava/lang/Object;
.source "SeslElasticInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field public static final ELASTIC_40:Landroid/view/animation/Interpolator;

.field public static final ELASTIC_50:Landroid/view/animation/Interpolator;


# instance fields
.field private mAmplitude:F

.field private mPeriod:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 11
    new-instance v0, Lcom/samsung/android/support/sesl/component/animation/SeslElasticInterpolator;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/support/sesl/component/animation/SeslElasticInterpolator;-><init>(FF)V

    sput-object v0, Lcom/samsung/android/support/sesl/component/animation/SeslElasticInterpolator;->ELASTIC_40:Landroid/view/animation/Interpolator;

    .line 14
    new-instance v0, Lcom/samsung/android/support/sesl/component/animation/SeslElasticInterpolator;

    const v1, 0x3f333333    # 0.7f

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/support/sesl/component/animation/SeslElasticInterpolator;-><init>(FF)V

    sput-object v0, Lcom/samsung/android/support/sesl/component/animation/SeslElasticInterpolator;->ELASTIC_50:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/support/sesl/component/animation/SeslElasticInterpolator;->mAmplitude:F

    .line 17
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/samsung/android/support/sesl/component/animation/SeslElasticInterpolator;->mPeriod:F

    .line 19
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1
    .param p1, "amplitude"    # F
    .param p2, "period"    # F

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/support/sesl/component/animation/SeslElasticInterpolator;->mAmplitude:F

    .line 17
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/samsung/android/support/sesl/component/animation/SeslElasticInterpolator;->mPeriod:F

    .line 22
    iput p1, p0, Lcom/samsung/android/support/sesl/component/animation/SeslElasticInterpolator;->mAmplitude:F

    .line 23
    iput p2, p0, Lcom/samsung/android/support/sesl/component/animation/SeslElasticInterpolator;->mPeriod:F

    .line 24
    return-void
.end method

.method private out(FFF)F
    .locals 10
    .param p1, "t"    # F
    .param p2, "a"    # F
    .param p3, "p"    # F

    .prologue
    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 47
    cmpl-float v3, p1, v1

    if-nez v3, :cond_0

    .line 67
    :goto_0
    return v1

    .line 51
    :cond_0
    cmpl-float v3, p1, v2

    if-ltz v3, :cond_1

    move v1, v2

    .line 52
    goto :goto_0

    .line 55
    :cond_1
    cmpl-float v3, p3, v1

    if-nez v3, :cond_2

    .line 56
    const p3, 0x3e99999a    # 0.3f

    .line 60
    :cond_2
    cmpl-float v1, p2, v1

    if-eqz v1, :cond_3

    cmpg-float v1, p2, v2

    if-gez v1, :cond_4

    .line 61
    :cond_3
    const/high16 p2, 0x3f800000    # 1.0f

    .line 62
    const/high16 v1, 0x40800000    # 4.0f

    div-float v0, p3, v1

    .line 67
    .local v0, "s":F
    :goto_1
    float-to-double v2, p2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const/high16 v1, -0x3ee00000    # -10.0f

    mul-float/2addr v1, p1

    float-to-double v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-float v1, p1, v0

    float-to-double v4, v1

    mul-double/2addr v4, v8

    float-to-double v6, p3

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    double-to-float v1, v2

    goto :goto_0

    .line 64
    .end local v0    # "s":F
    :cond_4
    float-to-double v4, p3

    div-double/2addr v4, v8

    div-float v1, v2, p2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-float v0, v2

    .restart local v0    # "s":F
    goto :goto_1
.end method


# virtual methods
.method public getAmplitude()F
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/samsung/android/support/sesl/component/animation/SeslElasticInterpolator;->mAmplitude:F

    return v0
.end method

.method public getInterpolation(F)F
    .locals 2
    .param p1, "t"    # F

    .prologue
    .line 43
    iget v0, p0, Lcom/samsung/android/support/sesl/component/animation/SeslElasticInterpolator;->mAmplitude:F

    iget v1, p0, Lcom/samsung/android/support/sesl/component/animation/SeslElasticInterpolator;->mPeriod:F

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/support/sesl/component/animation/SeslElasticInterpolator;->out(FFF)F

    move-result v0

    return v0
.end method

.method public getPeriod()F
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/samsung/android/support/sesl/component/animation/SeslElasticInterpolator;->mPeriod:F

    return v0
.end method

.method public setAmplitude(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 27
    iput p1, p0, Lcom/samsung/android/support/sesl/component/animation/SeslElasticInterpolator;->mAmplitude:F

    .line 28
    return-void
.end method

.method public setPeriod(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 31
    iput p1, p0, Lcom/samsung/android/support/sesl/component/animation/SeslElasticInterpolator;->mPeriod:F

    .line 32
    return-void
.end method
