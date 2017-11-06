.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;
.super Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MatrixGenerator$BaseMatrix;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModelMatrix"
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)V
    .locals 0
    .param p1, "model"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    .prologue
    .line 562
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MatrixGenerator$BaseMatrix;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)V

    .line 563
    return-void
.end method


# virtual methods
.method public getMatrix()[F
    .locals 13

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v12, 0x0

    const/4 v1, 0x0

    .line 567
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->isModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->mMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 570
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getHeight()F

    move-result v0

    div-float v7, v0, v2

    .line 571
    .local v7, "halfHeight":F
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getWidth()F

    move-result v0

    div-float v8, v0, v2

    .line 572
    .local v8, "halfWidth":F
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getAngle()F

    move-result v6

    .line 573
    .local v6, "angle":F
    cmpl-float v0, v6, v12

    if-eqz v0, :cond_1

    .line 574
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getRotationPivotX()F

    move-result v9

    .line 575
    .local v9, "px":F
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getRotationPivotY()F

    move-result v10

    .line 576
    .local v10, "py":F
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getRotationPivotZ()F

    move-result v11

    .line 577
    .local v11, "pz":F
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->mMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getX()F

    move-result v2

    add-float/2addr v2, v9

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getY()F

    move-result v3

    add-float/2addr v3, v10

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getZ()F

    move-result v4

    add-float/2addr v4, v11

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 578
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->mMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getAngle()F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getRotX()F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getRotY()F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getRotZ()F

    move-result v5

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 579
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->mMatrix:[F

    neg-float v2, v8

    sub-float/2addr v2, v9

    neg-float v3, v7

    sub-float/2addr v3, v10

    neg-float v4, v11

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 584
    .end local v9    # "px":F
    .end local v10    # "py":F
    .end local v11    # "pz":F
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->mMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getHeight()F

    move-result v3

    invoke-static {v0, v1, v2, v3, v12}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 586
    .end local v6    # "angle":F
    .end local v7    # "halfHeight":F
    .end local v8    # "halfWidth":F
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->mMatrix:[F

    return-object v0

    .line 581
    .restart local v6    # "angle":F
    .restart local v7    # "halfHeight":F
    .restart local v8    # "halfWidth":F
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->mMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getX()F

    move-result v2

    sub-float/2addr v2, v8

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getY()F

    move-result v3

    sub-float/2addr v3, v7

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model$ModelMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    .line 582
    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getZ()F

    move-result v4

    .line 581
    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    goto :goto_0
.end method
