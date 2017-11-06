.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;
.super Ljava/lang/Object;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;
    }
.end annotation


# instance fields
.field private mAdapterIndex:I

.field protected mAngle:F

.field private mBiggestSize:F

.field protected mHSV:[F

.field protected mHeight:F

.field protected mMatrix:[F

.field protected mMatrixGenerator:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MatrixGenerator;

.field private mModified:Z

.field protected mRectangular:Z

.field private mRotPivotX:F

.field private mRotPivotY:F

.field private mRotPivotZ:F

.field protected mRotX:F

.field protected mRotY:F

.field protected mRotZ:F

.field protected final mScreenBounds:Landroid/graphics/Rect;

.field private mVisible:Z

.field protected mWidth:F

.field protected mX:F

.field protected mY:F

.field protected mZ:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mMatrixGenerator:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MatrixGenerator;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRectangular:Z

    .line 47
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRotY:F

    .line 61
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mMatrix:[F

    .line 67
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mHSV:[F

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mScreenBounds:Landroid/graphics/Rect;

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mAdapterIndex:I

    return-void

    .line 67
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static resetModified([Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)V
    .locals 3
    .param p0, "models"    # [Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    .prologue
    .line 523
    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p0, v1

    .line 524
    .local v0, "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;
    if-eqz v0, :cond_0

    .line 525
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->resetModified()V

    .line 523
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 528
    .end local v0    # "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;
    :cond_1
    return-void
.end method


# virtual methods
.method public getAdapterIndex()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mAdapterIndex:I

    return v0
.end method

.method public getAngle()F
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mAngle:F

    return v0
.end method

.method public getBiggestSize()F
    .locals 1

    .prologue
    .line 554
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRectangular:Z

    if-eqz v0, :cond_0

    .line 555
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mHeight:F

    .line 557
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mBiggestSize:F

    goto :goto_0
.end method

.method public getDebugState()Ljava/lang/String;
    .locals 4

    .prologue
    .line 505
    const-string/jumbo v0, "{V<-%b X<-%.2f Y<-%.2f Z<-%.2f W<-%.2f H<-%.2f Angle<-%.2f}"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mVisible:Z

    .line 506
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mX:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mY:F

    .line 507
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mZ:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mWidth:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mHeight:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mAngle:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    .line 506
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mHeight:F

    return v0
.end method

.method public getHueCorrection()F
    .locals 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mHSV:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getMatrix()[F
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mMatrixGenerator:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MatrixGenerator;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MatrixGenerator;->getMatrix()[F

    move-result-object v0

    return-object v0
.end method

.method public getMatrixGenerator()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MatrixGenerator;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mMatrixGenerator:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MatrixGenerator;

    return-object v0
.end method

.method public getRotX()F
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRotX:F

    return v0
.end method

.method public getRotY()F
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRotY:F

    return v0
.end method

.method public getRotZ()F
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRotZ:F

    return v0
.end method

.method public getRotationPivotX()F
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRotPivotX:F

    return v0
.end method

.method public getRotationPivotY()F
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRotPivotY:F

    return v0
.end method

.method public getRotationPivotZ()F
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRotPivotZ:F

    return v0
.end method

.method public getSaturationCorrection()F
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mHSV:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method protected getScreenBoundsRect(I)Landroid/graphics/Rect;
    .locals 10
    .param p1, "height"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 542
    int-to-float v7, p1

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getY()F

    move-result v8

    sub-float v5, v7, v8

    .line 543
    .local v5, "screenY":F
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getHeight()F

    move-result v7

    div-float v1, v7, v9

    .line 544
    .local v1, "hh":F
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getWidth()F

    move-result v7

    div-float v2, v7, v9

    .line 545
    .local v2, "hw":F
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getX()F

    move-result v7

    sub-float/2addr v7, v2

    float-to-int v3, v7

    .line 546
    .local v3, "left":I
    sub-float v7, v5, v1

    float-to-int v6, v7

    .line 547
    .local v6, "top":I
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getX()F

    move-result v7

    add-float/2addr v7, v2

    float-to-int v4, v7

    .line 548
    .local v4, "right":I
    add-float v7, v5, v1

    float-to-int v0, v7

    .line 549
    .local v0, "bottom":I
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mScreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v3, v6, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 550
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mScreenBounds:Landroid/graphics/Rect;

    return-object v7
.end method

.method public getValueCorrection()F
    .locals 2

    .prologue
    .line 483
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mHSV:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mWidth:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 336
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mY:F

    return v0
.end method

.method public getZ()F
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mZ:F

    return v0
.end method

.method public isInsideModel(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 494
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mX:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mWidth:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mY:F

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mHeight:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isModified()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mModified:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 400
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mVisible:Z

    return v0
.end method

.method public resetModified()V
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getMatrix()[F

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mModified:Z

    .line 96
    return-void
.end method

.method public setAdapterIndex(I)V
    .locals 0
    .param p1, "adapterIndex"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mAdapterIndex:I

    .line 105
    return-void
.end method

.method public setAngle(F)V
    .locals 0
    .param p1, "angle"    # F

    .prologue
    .line 254
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mAngle:F

    .line 255
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->setModified()V

    .line 256
    return-void
.end method

.method public setHSVCorrection(FFF)V
    .locals 2
    .param p1, "hue"    # F
    .param p2, "saturation"    # F
    .param p3, "value"    # F

    .prologue
    .line 435
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mHSV:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 436
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mHSV:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 437
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mHSV:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 438
    return-void
.end method

.method public setHSVCorrection([F)V
    .locals 5
    .param p1, "hsv"    # [F

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 418
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mHSV:[F

    aget v1, p1, v2

    aput v1, v0, v2

    .line 419
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mHSV:[F

    aget v1, p1, v3

    aput v1, v0, v3

    .line 420
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mHSV:[F

    aget v1, p1, v4

    aput v1, v0, v4

    .line 421
    return-void
.end method

.method public setHeight(F)V
    .locals 2
    .param p1, "height"    # F

    .prologue
    .line 138
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mHeight:F

    .line 139
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mWidth:F

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mHeight:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mBiggestSize:F

    .line 140
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->setModified()V

    .line 141
    return-void
.end method

.method public setHueCorrection(F)V
    .locals 2
    .param p1, "hue"    # F

    .prologue
    .line 446
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mHSV:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 447
    return-void
.end method

.method public setMatrixGenerator(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MatrixGenerator;)V
    .locals 0
    .param p1, "generator"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MatrixGenerator;

    .prologue
    .line 515
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mMatrixGenerator:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MatrixGenerator;

    .line 516
    return-void
.end method

.method protected setModified()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mModified:Z

    .line 121
    return-void
.end method

.method public setPosition(FFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 376
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mX:F

    .line 377
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mY:F

    .line 378
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mZ:F

    .line 379
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->setModified()V

    .line 380
    return-void
.end method

.method public setRectangular(Z)V
    .locals 0
    .param p1, "rectangular"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRectangular:Z

    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->setModified()V

    .line 146
    return-void
.end method

.method public setRotX(F)V
    .locals 0
    .param p1, "rotX"    # F

    .prologue
    .line 235
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRotX:F

    .line 236
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->setModified()V

    .line 237
    return-void
.end method

.method public setRotY(F)V
    .locals 0
    .param p1, "rotY"    # F

    .prologue
    .line 216
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRotY:F

    .line 217
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->setModified()V

    .line 218
    return-void
.end method

.method public setRotZ(F)V
    .locals 0
    .param p1, "rotZ"    # F

    .prologue
    .line 197
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRotZ:F

    .line 198
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->setModified()V

    .line 199
    return-void
.end method

.method public setRotation(FFFF)V
    .locals 0
    .param p1, "angle"    # F
    .param p2, "rotX"    # F
    .param p3, "rotY"    # F
    .param p4, "rotZ"    # F

    .prologue
    .line 267
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mAngle:F

    .line 268
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRotX:F

    .line 269
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRotY:F

    .line 270
    iput p4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRotZ:F

    .line 271
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->setModified()V

    .line 272
    return-void
.end method

.method public setRotationPivot(FFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 278
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRotPivotX:F

    .line 279
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRotPivotY:F

    .line 280
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRotPivotZ:F

    .line 281
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->setModified()V

    .line 282
    return-void
.end method

.method public setRotationPivotX(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 285
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRotPivotX:F

    .line 286
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->setModified()V

    .line 287
    return-void
.end method

.method public setRotationPivotY(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 294
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRotPivotY:F

    .line 295
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->setModified()V

    .line 296
    return-void
.end method

.method public setRotationPivotZ(F)V
    .locals 0
    .param p1, "z"    # F

    .prologue
    .line 303
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mRotPivotZ:F

    .line 304
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->setModified()V

    .line 305
    return-void
.end method

.method public setSaturationCorrection(F)V
    .locals 2
    .param p1, "saturation"    # F

    .prologue
    .line 462
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mHSV:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 463
    return-void
.end method

.method public setSize(FF)V
    .locals 2
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 176
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mWidth:F

    .line 177
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mHeight:F

    .line 178
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mWidth:F

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mHeight:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mBiggestSize:F

    .line 179
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->setModified()V

    .line 180
    return-void
.end method

.method public setValueCorrection(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 476
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mHSV:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 477
    return-void
.end method

.method public setVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 391
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mVisible:Z

    .line 392
    return-void
.end method

.method public setWidth(F)V
    .locals 2
    .param p1, "width"    # F

    .prologue
    .line 164
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mWidth:F

    .line 165
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mWidth:F

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mHeight:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mBiggestSize:F

    .line 166
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->setModified()V

    .line 167
    return-void
.end method

.method public setX(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 364
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mX:F

    .line 365
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->setModified()V

    .line 366
    return-void
.end method

.method public setY(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 345
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mY:F

    .line 346
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->setModified()V

    .line 347
    return-void
.end method

.method public setZ(F)V
    .locals 0
    .param p1, "z"    # F

    .prologue
    .line 326
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->mZ:F

    .line 327
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->setModified()V

    .line 328
    return-void
.end method

.method public updateBoundsRect(Landroid/graphics/Rect;I)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "height"    # I

    .prologue
    .line 535
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getScreenBoundsRect(I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 536
    return-void
.end method
