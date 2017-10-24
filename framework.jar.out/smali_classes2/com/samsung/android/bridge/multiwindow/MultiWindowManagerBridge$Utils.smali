.class public Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$Utils;
.super Ljava/lang/Object;
.source "MultiWindowManagerBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Utils"
.end annotation


# static fields
.field private static final DEBUG_DENSITY:Z

.field public static sElastic50Custom:Landroid/view/animation/ElasticCustom;

.field public static sSineInOut33Interpolator:Landroid/view/animation/PathInterpolator;

.field public static sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

.field public static sSineOut90Interpolator:Landroid/view/animation/PathInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const v5, 0x3ea8f5c3    # 0.33f

    const v4, 0x3e2e147b    # 0.17f

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 402
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$Utils;->sSineOut90Interpolator:Landroid/view/animation/PathInterpolator;

    .line 404
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v5, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$Utils;->sSineInOut33Interpolator:Landroid/view/animation/PathInterpolator;

    .line 405
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v5, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$Utils;->sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

    .line 407
    new-instance v0, Landroid/view/animation/ElasticCustom;

    const v1, 0x3f333333    # 0.7f

    invoke-direct {v0, v2, v1}, Landroid/view/animation/ElasticCustom;-><init>(FF)V

    sput-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$Utils;->sElastic50Custom:Landroid/view/animation/ElasticCustom;

    .line 400
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToConfigurationOrientation(I)I
    .locals 1
    .param p0, "screenOrientation"    # I

    .prologue
    .line 412
    packed-switch p0, :pswitch_data_0

    .line 424
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 417
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 422
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 412
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static densityBucketToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "densityBucket"    # I

    .prologue
    .line 506
    sparse-switch p0, :sswitch_data_0

    .line 513
    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    .line 507
    :sswitch_0
    const-string/jumbo v0, "DENSITY_LOW"

    return-object v0

    .line 508
    :sswitch_1
    const-string/jumbo v0, "DENSITY_MEDIUM"

    return-object v0

    .line 509
    :sswitch_2
    const-string/jumbo v0, "DENSITY_HIGH"

    return-object v0

    .line 510
    :sswitch_3
    const-string/jumbo v0, "DENSITY_XHIGH"

    return-object v0

    .line 511
    :sswitch_4
    const-string/jumbo v0, "DENSITY_XXHIGH"

    return-object v0

    .line 512
    :sswitch_5
    const-string/jumbo v0, "DENSITY_XXXHIGH"

    return-object v0

    .line 506
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_2
        0x140 -> :sswitch_3
        0x1e0 -> :sswitch_4
        0x280 -> :sswitch_5
    .end sparse-switch
.end method

.method private static getDensityBucket(I)I
    .locals 5
    .param p0, "densityDpi"    # I

    .prologue
    const/16 v4, 0x1e0

    const/16 v3, 0x140

    const/16 v2, 0xf0

    const/16 v1, 0xa0

    const/16 v0, 0x78

    .line 480
    if-gt p0, v0, :cond_0

    .line 481
    return v0

    .line 482
    :cond_0
    if-gt p0, v1, :cond_1

    .line 483
    return v1

    .line 484
    :cond_1
    if-gt p0, v2, :cond_2

    .line 485
    return v2

    .line 486
    :cond_2
    if-gt p0, v3, :cond_3

    .line 487
    return v3

    .line 488
    :cond_3
    if-gt p0, v4, :cond_4

    .line 489
    return v4

    .line 491
    :cond_4
    const/16 v0, 0x280

    return v0
.end method

.method public static getFreeformDensity(II)I
    .locals 4
    .param p0, "smallestWidth"    # I
    .param p1, "densityDpi"    # I

    .prologue
    .line 460
    const/4 v2, -0x1

    .line 461
    .local v2, "freeformDensityDpi":I
    const/16 v3, 0x258

    if-ge p0, v3, :cond_0

    .line 462
    mul-int/lit8 v3, p1, 0x4b

    div-int/lit8 v2, v3, 0x64

    .line 464
    invoke-static {p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$Utils;->getDensityBucket(I)I

    move-result v0

    .line 465
    .local v0, "densityBucket":I
    invoke-static {v2}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$Utils;->getDensityBucket(I)I

    move-result v1

    .line 467
    .local v1, "freeformDensityBucket":I
    if-ge v1, v0, :cond_0

    .line 468
    move v1, v0

    .line 469
    invoke-static {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$Utils;->getMinimumDensityWithinBucket(I)I

    move-result v2

    .line 476
    .end local v0    # "densityBucket":I
    .end local v1    # "freeformDensityBucket":I
    :cond_0
    return v2
.end method

.method private static getMinimumDensityWithinBucket(I)I
    .locals 1
    .param p0, "densityBucket"    # I

    .prologue
    .line 495
    sparse-switch p0, :sswitch_data_0

    .line 501
    return p0

    .line 496
    :sswitch_0
    const/16 v0, 0x79

    return v0

    .line 497
    :sswitch_1
    const/16 v0, 0xa1

    return v0

    .line 498
    :sswitch_2
    const/16 v0, 0xf1

    return v0

    .line 499
    :sswitch_3
    const/16 v0, 0x141

    return v0

    .line 500
    :sswitch_4
    const/16 v0, 0x1e1

    return v0

    .line 495
    nop

    :sswitch_data_0
    .sparse-switch
        0xa0 -> :sswitch_0
        0xf0 -> :sswitch_1
        0x140 -> :sswitch_2
        0x1e0 -> :sswitch_3
        0x280 -> :sswitch_4
    .end sparse-switch
.end method

.method public static isForcePreserveWindowConfigChange(I)Z
    .locals 2
    .param p0, "change"    # I

    .prologue
    const/4 v0, 0x0

    .line 452
    const v1, -0x60213d85

    and-int/2addr v1, p0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isFreeformMaximizing(II)Z
    .locals 3
    .param p0, "fromStackId"    # I
    .param p1, "toStackId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 430
    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v2, :cond_3

    .line 431
    const/4 v2, 0x2

    if-ne p0, v2, :cond_2

    .line 432
    if-eq p1, v0, :cond_0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 431
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 432
    goto :goto_0

    :cond_2
    move v0, v1

    .line 431
    goto :goto_0

    .line 434
    :cond_3
    return v1
.end method

.method public static isMovingToFreeform(II)Z
    .locals 3
    .param p0, "fromStackId"    # I
    .param p1, "toStackId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 439
    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v2, :cond_3

    .line 440
    if-eq p0, v0, :cond_0

    const/4 v2, 0x3

    if-ne p0, v2, :cond_1

    .line 441
    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    :goto_0
    move v1, v0

    .line 440
    :cond_1
    return v1

    :cond_2
    move v0, v1

    .line 441
    goto :goto_0

    .line 443
    :cond_3
    return v1
.end method
