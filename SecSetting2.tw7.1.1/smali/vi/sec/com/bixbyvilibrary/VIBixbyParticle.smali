.class public Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;
.super Ljava/lang/Object;
.source "VIBixbyParticle.java"


# static fields
.field private static mInitSize:F

.field private static mViParticleDistance:Lvi/sec/com/bixbyvilibrary/VIParticleDistance;


# instance fields
.field private mAnimForward:Z

.field private mCurrentTimeCursor:F

.field private mCurrentTotalPercent:F

.field private mDisappearDistance:F

.field private mDisappearEnd:F

.field private mDisappearInterpolation:F

.field private mDisappearProgress:F

.field private mDisappearScale:F

.field private mDisappearStart:F

.field private mDistanceFromCenterPivot:F

.field private mDuration:F

.field private mDurationStartOffset:J

.field private mIsStart:Z

.field private mMatrixParticle:Landroid/graphics/Matrix;

.field private mMinDisappearDistance:F

.field private mMinRightFirstShapeScaled:F

.field private mMorpher:Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;

.field private mMovingDistance:F

.field private mOptDisappearDivideValue:F

.field private mOptDurationDivideValue:F

.field private mOriginalScale:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mPivotXmainIcon:F

.field private mPivotYmainIcon:F

.field private mPrimitive:Lvi/sec/com/bixbyvilibrary/VIPrimitive;

.field private mRadiousMainIcon:F

.field private mRotationByDegree:F

.field private mScale:F

.field private mScalePrevious:F

.field private mSineInOut33:Lvi/sec/com/bixbyvilibrary/SineInOut33;

.field private mSize:F

.field private mStartTime:J

.field private mTotalPercent:F

.field private mTx:F

.field private mTy:F

.field private mValidMorpher:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    sput v0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mInitSize:F

    .line 70
    new-instance v0, Lvi/sec/com/bixbyvilibrary/VIParticleDistance;

    invoke-direct {v0}, Lvi/sec/com/bixbyvilibrary/VIParticleDistance;-><init>()V

    sput-object v0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mViParticleDistance:Lvi/sec/com/bixbyvilibrary/VIParticleDistance;

    return-void
.end method

.method public constructor <init>(Lvi/sec/com/bixbyvilibrary/SineInOut33;)V
    .locals 4
    .param p1, "sineInOut33"    # Lvi/sec/com/bixbyvilibrary/SineInOut33;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mValidMorpher:Z

    .line 35
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mMatrixParticle:Landroid/graphics/Matrix;

    .line 45
    iput-object v3, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mMorpher:Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;

    .line 46
    iput-object v3, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mPrimitive:Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    .line 48
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mPath:Landroid/graphics/Path;

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mPaint:Landroid/graphics/Paint;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mIsStart:Z

    .line 78
    iput-boolean v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mValidMorpher:Z

    .line 79
    iput-boolean v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mAnimForward:Z

    .line 80
    iput v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mCurrentTimeCursor:F

    .line 81
    iput v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mTx:F

    .line 82
    iput v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mTy:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 83
    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScale:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 84
    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScalePrevious:F

    .line 85
    iput v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mRotationByDegree:F

    .line 86
    iput v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDistanceFromCenterPivot:F

    .line 87
    iput-object p1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mSineInOut33:Lvi/sec/com/bixbyvilibrary/SineInOut33;

    .line 88
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 89
    return-void
.end method

.method private calculateTotalPercent()V
    .locals 3

    .prologue
    const/high16 v2, 0x42c80000    # 100.0f

    .line 455
    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDisappearDistance:F

    sget-object v1, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mViParticleDistance:Lvi/sec/com/bixbyvilibrary/VIParticleDistance;

    invoke-virtual {v1}, Lvi/sec/com/bixbyvilibrary/VIParticleDistance;->getTypeC()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mMovingDistance:F

    .line 456
    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mMovingDistance:F

    sget-object v1, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mViParticleDistance:Lvi/sec/com/bixbyvilibrary/VIParticleDistance;

    invoke-virtual {v1}, Lvi/sec/com/bixbyvilibrary/VIParticleDistance;->getTypeB()F

    move-result v1

    div-float/2addr v0, v1

    mul-float/2addr v0, v2

    add-float/2addr v0, v2

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mTotalPercent:F

    .line 459
    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mTotalPercent:F

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDisappearStart:F

    .line 460
    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mTotalPercent:F

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDisappearEnd:F

    .line 462
    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDisappearEnd:F

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDisappearStart:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mOptDisappearDivideValue:F

    .line 463
    return-void
.end method

.method private getDistanceInformation(Lvi/sec/com/bixbyvilibrary/VIParticleDistance;)V
    .locals 17
    .param p1, "outVal"    # Lvi/sec/com/bixbyvilibrary/VIParticleDistance;

    .prologue
    .line 371
    move-object/from16 v0, p0

    iget-object v13, v0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mMorpher:Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->makeInterpolatedCommand(FZ)Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    move-result-object v9

    .line 373
    .local v9, "primitiveFirst":Lvi/sec/com/bixbyvilibrary/VIPrimitive;
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 374
    .local v4, "calPath":Landroid/graphics/Path;
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->makeInterpolatedPrimitive(Landroid/graphics/Path;Lvi/sec/com/bixbyvilibrary/VIPrimitive;)V

    .line 375
    move-object/from16 v0, p0

    iget v13, v0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScale:F

    invoke-virtual {v9}, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->getBound()Landroid/graphics/RectF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/RectF;->right:F

    mul-float v11, v13, v14

    .line 377
    .local v11, "rightMinFirstShape":F
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 378
    .local v8, "matrixParticle":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v13, v0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScale:F

    move-object/from16 v0, p0

    iget v14, v0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScale:F

    invoke-virtual {v8, v13, v14}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 380
    invoke-virtual {v4, v8}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 382
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 383
    .local v1, "bbParticle":Landroid/graphics/RectF;
    const/4 v13, 0x0

    invoke-virtual {v4, v1, v13}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 385
    move-object/from16 v0, p0

    iget v13, v0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mRadiousMainIcon:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    sub-float v5, v13, v14

    .line 387
    .local v5, "distanceTypeA":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lvi/sec/com/bixbyvilibrary/VIParticleDistance;->setTypeA(F)V

    .line 394
    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 395
    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 397
    move-object/from16 v0, p0

    iget-object v13, v0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mMorpher:Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;

    const/high16 v14, 0x42c80000    # 100.0f

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->makeInterpolatedCommand(FZ)Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    move-result-object v10

    .line 398
    .local v10, "primitiveLast":Lvi/sec/com/bixbyvilibrary/VIPrimitive;
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->makeInterpolatedPrimitive(Landroid/graphics/Path;Lvi/sec/com/bixbyvilibrary/VIPrimitive;)V

    .line 399
    move-object/from16 v0, p0

    iget v13, v0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScale:F

    invoke-virtual {v10}, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->getBound()Landroid/graphics/RectF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/RectF;->right:F

    mul-float v12, v13, v14

    .line 401
    .local v12, "rightMinLastShape":F
    move-object/from16 v0, p0

    iget v13, v0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScale:F

    move-object/from16 v0, p0

    iget v14, v0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScale:F

    invoke-virtual {v8, v13, v14}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 402
    invoke-virtual {v4, v8}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 404
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 405
    .local v2, "bbParticleLast":Landroid/graphics/RectF;
    const/4 v13, 0x0

    invoke-virtual {v4, v2, v13}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 407
    sub-float v6, v12, v11

    .line 409
    .local v6, "distanceTypeB":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lvi/sec/com/bixbyvilibrary/VIParticleDistance;->setTypeB(F)V

    .line 416
    sub-float v13, v12, v11

    move-object/from16 v0, p0

    iget v14, v0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mRadiousMainIcon:F

    .line 417
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    sub-float/2addr v14, v15

    add-float v7, v13, v14

    .line 419
    .local v7, "distanceTypeC":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lvi/sec/com/bixbyvilibrary/VIParticleDistance;->setTypeC(F)V

    .line 425
    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 426
    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 428
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->makeInterpolatedPrimitive(Landroid/graphics/Path;Lvi/sec/com/bixbyvilibrary/VIPrimitive;)V

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    .line 430
    invoke-virtual {v8, v13, v14}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 431
    invoke-virtual {v4, v8}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 433
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 434
    .local v3, "bbParticleNotScaled":Landroid/graphics/RectF;
    const/4 v13, 0x0

    invoke-virtual {v4, v3, v13}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 436
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lvi/sec/com/bixbyvilibrary/VIParticleDistance;->setDiameterParticleNotScaled(F)V

    .line 450
    return-void
.end method

.method private getPercentToDistance(F)F
    .locals 3
    .param p1, "currentTotalPercent"    # F

    .prologue
    const/high16 v2, 0x42c80000    # 100.0f

    .line 479
    cmpl-float v0, p1, v2

    if-lez v0, :cond_0

    .line 480
    sub-float v0, p1, v2

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mTotalPercent:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mMovingDistance:F

    mul-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 483
    return v0
.end method

.method private getPercentToTotalPercent(F)F
    .locals 2
    .param p1, "percent"    # F

    .prologue
    const/high16 v1, 0x42c80000    # 100.0f

    .line 468
    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mTotalPercent:F

    div-float/2addr v0, v1

    mul-float/2addr v0, p1

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mCurrentTotalPercent:F

    .line 469
    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mCurrentTotalPercent:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 470
    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mCurrentTotalPercent:F

    invoke-direct {p0, v0}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->getPercentToDistance(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->setDistanceFromCenterPivot(F)V

    .line 473
    :cond_0
    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mCurrentTotalPercent:F

    return v0
.end method

.method private makeInterpolatedPrimitive(Landroid/graphics/Path;Lvi/sec/com/bixbyvilibrary/VIPrimitive;)V
    .locals 10
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "primitive"    # Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 310
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 311
    invoke-static {p2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 312
    invoke-virtual {p2}, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->countOfCommand()I

    move-result v1

    if-gtz v1, :cond_0

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    const/4 v9, 0x0

    .line 315
    .local v9, "i":I
    :goto_1
    invoke-virtual {p2}, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->countOfCommand()I

    move-result v0

    if-lt v9, v0, :cond_1

    .line 354
    return-void

    .end local v9    # "i":I
    :cond_0
    move v0, v7

    .line 312
    goto :goto_0

    .line 317
    .restart local v9    # "i":I
    :cond_1
    invoke-virtual {p2, v9}, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->getCommand(I)Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;

    move-result-object v8

    .line 319
    .local v8, "cmd":Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;
    if-nez v8, :cond_2

    .line 315
    :goto_2
    :pswitch_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 320
    :cond_2
    invoke-virtual {v8}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 323
    :pswitch_1
    invoke-virtual {v8}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getX1()F

    move-result v0

    invoke-virtual {v8}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getY1()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_2

    .line 330
    :pswitch_2
    invoke-virtual {v8}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getX1()F

    move-result v1

    invoke-virtual {v8}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getY1()F

    move-result v2

    .line 331
    invoke-virtual {v8}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getX2()F

    move-result v3

    invoke-virtual {v8}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getY2()F

    move-result v4

    .line 332
    invoke-virtual {v8}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getX3()F

    move-result v5

    invoke-virtual {v8}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getY3()F

    move-result v6

    move-object v0, p1

    .line 330
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_2

    .line 336
    :pswitch_3
    invoke-virtual {v8}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getX1()F

    move-result v1

    invoke-virtual {v8}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getY1()F

    move-result v2

    .line 337
    invoke-virtual {v8}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getX2()F

    move-result v3

    invoke-virtual {v8}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getY2()F

    move-result v4

    .line 338
    invoke-virtual {v8}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getX3()F

    move-result v5

    invoke-virtual {v8}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getY3()F

    move-result v6

    move-object v0, p1

    .line 336
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    goto :goto_2

    .line 345
    :pswitch_4
    invoke-virtual {v8}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getLeft()F

    move-result v1

    invoke-virtual {v8}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getTop()F

    move-result v2

    invoke-virtual {v8}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getRight()F

    move-result v3

    invoke-virtual {v8}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getBottom()F

    move-result v4

    .line 346
    invoke-virtual {v8}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getStartAngle()F

    move-result v5

    invoke-virtual {v8}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getSweepAngle()F

    move-result v6

    move-object v0, p1

    .line 345
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    goto :goto_2

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public drawingBixbyMorphingShape(Landroid/graphics/Canvas;Landroid/graphics/Paint;J)Z
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "currentTime"    # J

    .prologue
    .line 157
    iget-boolean v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mIsStart:Z

    if-eqz v6, :cond_3

    .line 169
    iget-wide v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mStartTime:J

    sub-long v6, p3, v6

    long-to-float v6, v6

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mOptDurationDivideValue:F

    mul-float v4, v6, v7

    .line 170
    .local v4, "percent":F
    invoke-direct {p0, v4}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->getPercentToTotalPercent(F)F

    move-result v6

    invoke-virtual {p0, v6}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->setFrameProgress(F)V

    .line 173
    iget v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mCurrentTotalPercent:F

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDisappearStart:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_6

    .line 174
    iget v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mCurrentTotalPercent:F

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDisappearStart:F

    sub-float/2addr v6, v7

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mOptDisappearDivideValue:F

    mul-float/2addr v6, v7

    iput v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDisappearProgress:F

    .line 176
    iget v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDisappearProgress:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 177
    iput v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDisappearProgress:F

    .line 180
    :cond_0
    iget-object v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mSineInOut33:Lvi/sec/com/bixbyvilibrary/SineInOut33;

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDisappearProgress:F

    invoke-virtual {v6, v7}, Lvi/sec/com/bixbyvilibrary/SineInOut33;->getInterpolation(F)F

    move-result v6

    iput v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDisappearInterpolation:F

    .line 183
    iget-object v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mPaint:Landroid/graphics/Paint;

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDisappearInterpolation:F

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v7, v8, v7

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 186
    iget v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mOriginalScale:F

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDisappearScale:F

    iget v8, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDisappearInterpolation:F

    mul-float/2addr v7, v8

    sub-float v1, v6, v7

    .line 187
    .local v1, "currentScale":F
    invoke-virtual {p0, v1}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->setScale(F)V

    .line 190
    iget v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDistanceFromCenterPivot:F

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mOriginalScale:F

    sub-float/2addr v7, v1

    const/high16 v8, 0x41a00000    # 20.0f

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDistanceFromCenterPivot:F

    .line 196
    .end local v1    # "currentScale":F
    .end local v4    # "percent":F
    :goto_0
    invoke-virtual {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->updateParticleShape()V

    .line 199
    iget-object v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mMatrixParticle:Landroid/graphics/Matrix;

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 200
    iget-object v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 203
    iget v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mCurrentTimeCursor:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_7

    .line 204
    iget-object v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mPath:Landroid/graphics/Path;

    iget-object v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mPrimitive:Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    invoke-direct {p0, v6, v7}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->makeInterpolatedPrimitive(Landroid/graphics/Path;Lvi/sec/com/bixbyvilibrary/VIPrimitive;)V

    .line 205
    iget-object v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mPrimitive:Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    invoke-virtual {v6}, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->getBound()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iput v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mMinRightFirstShapeScaled:F

    .line 211
    :goto_1
    iget-object v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mMatrixParticle:Landroid/graphics/Matrix;

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 212
    iget-object v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mMatrixParticle:Landroid/graphics/Matrix;

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScale:F

    iget v8, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScale:F

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 215
    iget v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mCurrentTimeCursor:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_1

    iget v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScale:F

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScalePrevious:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_2

    .line 216
    :cond_1
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 217
    .local v5, "tmpPath":Landroid/graphics/Path;
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 218
    .local v3, "matrixParticle":Landroid/graphics/Matrix;
    iget v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScale:F

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScale:F

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 220
    iget-object v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mPath:Landroid/graphics/Path;

    invoke-virtual {v6, v3, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 222
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 223
    .local v0, "bbParticle":Landroid/graphics/RectF;
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 227
    iget v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScale:F

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScalePrevious:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_8

    .line 228
    iget v6, v0, Landroid/graphics/RectF;->right:F

    neg-float v6, v6

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mRadiousMainIcon:F

    add-float/2addr v6, v7

    iput v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mTx:F

    .line 229
    iget v6, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    neg-float v6, v6

    iput v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mTy:F

    .line 240
    .end local v0    # "bbParticle":Landroid/graphics/RectF;
    .end local v3    # "matrixParticle":Landroid/graphics/Matrix;
    .end local v5    # "tmpPath":Landroid/graphics/Path;
    :cond_2
    :goto_2
    iget v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mCurrentTimeCursor:F

    const/high16 v7, 0x42c80000    # 100.0f

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_9

    .line 241
    iget-object v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mMatrixParticle:Landroid/graphics/Matrix;

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mTx:F

    iget v8, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDistanceFromCenterPivot:F

    add-float/2addr v7, v8

    iget v8, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mTy:F

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 245
    :goto_3
    iget-object v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mMatrixParticle:Landroid/graphics/Matrix;

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mRotationByDegree:F

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 247
    iget-object v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mMatrixParticle:Landroid/graphics/Matrix;

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mPivotXmainIcon:F

    iget v8, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mPivotYmainIcon:F

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 249
    iget-object v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mPath:Landroid/graphics/Path;

    iget-object v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mMatrixParticle:Landroid/graphics/Matrix;

    invoke-virtual {v6, v7}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 252
    iget-object v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mPath:Landroid/graphics/Path;

    iget-object v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 254
    iget v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mCurrentTotalPercent:F

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mTotalPercent:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_a

    .line 255
    const/4 v6, 0x0

    return v6

    .line 158
    :cond_3
    iget-wide v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mStartTime:J

    iget-wide v8, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDurationStartOffset:J

    add-long/2addr v6, v8

    cmp-long v6, p3, v6

    if-ltz v6, :cond_4

    const/4 v6, 0x1

    :goto_4
    if-nez v6, :cond_5

    .line 159
    const/4 v6, 0x1

    return v6

    .line 158
    :cond_4
    const/4 v6, 0x0

    goto :goto_4

    .line 161
    :cond_5
    iget-wide v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mStartTime:J

    iget-wide v8, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDurationStartOffset:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mStartTime:J

    const/4 v6, 0x0

    .line 164
    invoke-virtual {p0, v6}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->setFrameProgress(F)V

    .line 166
    const/4 v6, 0x1

    iput-boolean v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mIsStart:Z

    .line 167
    iget-object v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mPaint:Landroid/graphics/Paint;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    .line 192
    .restart local v4    # "percent":F
    :cond_6
    iget-object v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mPaint:Landroid/graphics/Paint;

    const/16 v7, 0xff

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    .line 208
    .end local v4    # "percent":F
    :cond_7
    iget-object v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mPath:Landroid/graphics/Path;

    iget-object v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mPrimitive:Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    invoke-direct {p0, v6, v7}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->makeInterpolatedPrimitive(Landroid/graphics/Path;Lvi/sec/com/bixbyvilibrary/VIPrimitive;)V

    goto/16 :goto_1

    .line 232
    .restart local v0    # "bbParticle":Landroid/graphics/RectF;
    .restart local v3    # "matrixParticle":Landroid/graphics/Matrix;
    .restart local v5    # "tmpPath":Landroid/graphics/Path;
    :cond_8
    iget v6, v0, Landroid/graphics/RectF;->right:F

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mMinRightFirstShapeScaled:F

    iget v8, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScale:F

    mul-float/2addr v7, v8

    sub-float v2, v6, v7

    .line 233
    .local v2, "disTypeBscaled":F
    iget v6, v0, Landroid/graphics/RectF;->right:F

    neg-float v6, v6

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mRadiousMainIcon:F

    add-float/2addr v6, v7

    add-float/2addr v6, v2

    iput v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mTx:F

    .line 234
    iget v6, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    neg-float v6, v6

    iput v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mTy:F

    goto/16 :goto_2

    .line 243
    .end local v0    # "bbParticle":Landroid/graphics/RectF;
    .end local v2    # "disTypeBscaled":F
    .end local v3    # "matrixParticle":Landroid/graphics/Matrix;
    .end local v5    # "tmpPath":Landroid/graphics/Path;
    :cond_9
    iget-object v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mMatrixParticle:Landroid/graphics/Matrix;

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mTx:F

    iget v8, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mTy:F

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_3

    .line 257
    :cond_a
    const/4 v6, 0x1

    return v6
.end method

.method public initAnimation(FFFFJF)F
    .locals 5
    .param p1, "degree"    # F
    .param p2, "size"    # F
    .param p3, "durationStartOffset"    # F
    .param p4, "duration"    # F
    .param p5, "startTime"    # J
    .param p7, "disappearDistance"    # F

    .prologue
    const/high16 v3, 0x42c80000    # 100.0f

    const/4 v2, 0x0

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mIsStart:Z

    .line 110
    iput p1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mRotationByDegree:F

    .line 111
    iput p2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mSize:F

    .line 112
    float-to-long v0, p3

    iput-wide v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDurationStartOffset:J

    .line 113
    iput p4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDuration:F

    .line 114
    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDuration:F

    div-float v0, v3, v0

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mOptDurationDivideValue:F

    .line 115
    iput-wide p5, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mStartTime:J

    .line 116
    iput p7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDisappearDistance:F

    .line 118
    sget v0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mInitSize:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 119
    sget-object v0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mViParticleDistance:Lvi/sec/com/bixbyvilibrary/VIParticleDistance;

    invoke-direct {p0, v0}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->getDistanceInformation(Lvi/sec/com/bixbyvilibrary/VIParticleDistance;)V

    .line 120
    sget-object v0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mViParticleDistance:Lvi/sec/com/bixbyvilibrary/VIParticleDistance;

    invoke-virtual {v0}, Lvi/sec/com/bixbyvilibrary/VIParticleDistance;->getDiameterParticleNotScaled()F

    move-result v0

    sput v0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mInitSize:F

    .line 123
    :cond_0
    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mSize:F

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mInitSize:F

    div-float/2addr v0, v1

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScale:F

    .line 124
    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScale:F

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScalePrevious:F

    .line 125
    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScale:F

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mOriginalScale:F

    .line 126
    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScale:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDisappearScale:F

    .line 128
    sget-object v0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mViParticleDistance:Lvi/sec/com/bixbyvilibrary/VIParticleDistance;

    invoke-direct {p0, v0}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->getDistanceInformation(Lvi/sec/com/bixbyvilibrary/VIParticleDistance;)V

    .line 130
    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->calculateTotalPercent()V

    .line 132
    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDisappearStart:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_1

    .line 133
    sget-object v0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mViParticleDistance:Lvi/sec/com/bixbyvilibrary/VIParticleDistance;

    invoke-virtual {v0}, Lvi/sec/com/bixbyvilibrary/VIParticleDistance;->getTypeB()F

    move-result v0

    const v1, 0x3eaaaaa9

    mul-float/2addr v0, v1

    sget-object v1, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mViParticleDistance:Lvi/sec/com/bixbyvilibrary/VIParticleDistance;

    invoke-virtual {v1}, Lvi/sec/com/bixbyvilibrary/VIParticleDistance;->getTypeC()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mMinDisappearDistance:F

    .line 134
    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mMinDisappearDistance:F

    return v0

    .line 136
    :cond_1
    return v2
.end method

.method public initMorphingShape(FFFLvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;)Z
    .locals 1
    .param p1, "bx"    # F
    .param p2, "by"    # F
    .param p3, "bRadious"    # F
    .param p4, "morpher"    # Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;

    .prologue
    .line 94
    invoke-static {p4}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 96
    iput-object p4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mMorpher:Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;

    .line 99
    iput p1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mPivotXmainIcon:F

    .line 100
    iput p2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mPivotYmainIcon:F

    .line 101
    iput p3, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mRadiousMainIcon:F

    .line 103
    iget-boolean v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mValidMorpher:Z

    return v0
.end method

.method public isValid()Z
    .locals 2

    .prologue
    .line 298
    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDisappearStart:F

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 299
    const/4 v0, 0x0

    return v0

    .line 301
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setAnimForward(Z)V
    .locals 1
    .param p1, "animForward"    # Z

    .prologue
    .line 281
    iget-boolean v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mAnimForward:Z

    if-ne v0, p1, :cond_0

    .line 286
    :goto_0
    return-void

    .line 282
    :cond_0
    iput-boolean p1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mAnimForward:Z

    .line 284
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mMorpher:Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;

    invoke-virtual {v0}, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->exchangeIndexShape()V

    goto :goto_0
.end method

.method public setDistanceFromCenterPivot(F)V
    .locals 0
    .param p1, "dis"    # F

    .prologue
    .line 275
    iput p1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDistanceFromCenterPivot:F

    .line 276
    return-void
.end method

.method public setFrameProgress(F)V
    .locals 0
    .param p1, "percent"    # F

    .prologue
    .line 291
    iput p1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mCurrentTimeCursor:F

    .line 292
    iput p1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mCurrentTotalPercent:F

    .line 293
    return-void
.end method

.method public setScale(F)V
    .locals 2
    .param p1, "scale"    # F

    .prologue
    .line 264
    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScalePrevious:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 265
    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScale:F

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScalePrevious:F

    .line 269
    :goto_0
    iput p1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScale:F

    .line 270
    return-void

    .line 267
    :cond_0
    iput p1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScalePrevious:F

    goto :goto_0
.end method

.method public updateParticleShape()V
    .locals 3

    .prologue
    const/high16 v2, 0x42c80000    # 100.0f

    const/4 v1, 0x0

    .line 143
    iget-boolean v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mValidMorpher:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 145
    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mCurrentTimeCursor:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 146
    iput v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mCurrentTimeCursor:F

    .line 150
    :cond_0
    :goto_0
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mMorpher:Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mCurrentTimeCursor:F

    iget-boolean v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mAnimForward:Z

    invoke-virtual {v0, v1, v2}, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->makeInterpolatedCommand(FZ)Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    move-result-object v0

    iput-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mPrimitive:Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    .line 151
    return-void

    .line 147
    :cond_1
    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mCurrentTimeCursor:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 148
    iput v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mCurrentTimeCursor:F

    goto :goto_0
.end method
