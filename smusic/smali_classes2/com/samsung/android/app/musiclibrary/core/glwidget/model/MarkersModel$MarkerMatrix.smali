.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;
.super Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel$ChildMatrix;
.source "MarkersModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarkerMatrix"
.end annotation


# static fields
.field private static final Z_FIGHT_CONST:F = 20.0f


# instance fields
.field private mOriginalModelSize:F


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)V
    .locals 0
    .param p1, "model"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel$ChildMatrix;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)V

    .line 96
    return-void
.end method


# virtual methods
.method public getMatrix()[F
    .locals 15

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->isModified()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->isModified()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->mMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getHeight()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getBiggestSize()F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->mOriginalModelSize:F

    div-float v8, v0, v1

    .line 107
    .local v8, "height":F
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getBiggestSize()F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->mOriginalModelSize:F

    div-float v11, v0, v1

    .line 108
    .local v11, "width":F
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getWidth()F

    move-result v0

    div-float v9, v11, v0

    .line 109
    .local v9, "kDx":F
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getHeight()F

    move-result v0

    div-float v10, v8, v0

    .line 110
    .local v10, "kDy":F
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getZ()F

    move-result v14

    .line 112
    .local v14, "z":F
    const/high16 v0, 0x40000000    # 2.0f

    div-float v6, v8, v0

    .line 113
    .local v6, "halfHeight":F
    const/high16 v0, 0x40000000    # 2.0f

    div-float v7, v11, v0

    .line 114
    .local v7, "halfWidth":F
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getAngle()F

    move-result v2

    .line 115
    .local v2, "angle":F
    const/4 v0, 0x0

    cmpl-float v0, v2, v0

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getX()F

    move-result v0

    mul-float v12, v9, v0

    .line 117
    .local v12, "x":F
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getY()F

    move-result v0

    mul-float v13, v10, v0

    .line 118
    .local v13, "y":F
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->mMatrix:[F

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getY()F

    move-result v4

    const/high16 v5, 0x41a00000    # 20.0f

    add-float/2addr v5, v14

    invoke-static {v0, v1, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->mMatrix:[F

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getRotX()F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getRotY()F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    .line 121
    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getRotZ()F

    move-result v5

    .line 120
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->mMatrix:[F

    const/4 v1, 0x0

    sub-float v3, v12, v7

    neg-float v4, v13

    sub-float/2addr v4, v6

    const/4 v5, 0x0

    invoke-static {v0, v1, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 128
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->mMatrix:[F

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v11, v8, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 130
    .end local v2    # "angle":F
    .end local v6    # "halfHeight":F
    .end local v7    # "halfWidth":F
    .end local v8    # "height":F
    .end local v9    # "kDx":F
    .end local v10    # "kDy":F
    .end local v11    # "width":F
    .end local v12    # "x":F
    .end local v13    # "y":F
    .end local v14    # "z":F
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->mMatrix:[F

    return-object v0

    .line 124
    .restart local v2    # "angle":F
    .restart local v6    # "halfHeight":F
    .restart local v7    # "halfWidth":F
    .restart local v8    # "height":F
    .restart local v9    # "kDx":F
    .restart local v10    # "kDy":F
    .restart local v11    # "width":F
    .restart local v14    # "z":F
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getX()F

    move-result v1

    mul-float/2addr v1, v9

    add-float v12, v0, v1

    .line 125
    .restart local v12    # "x":F
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getY()F

    move-result v1

    mul-float/2addr v1, v10

    sub-float v13, v0, v1

    .line 126
    .restart local v13    # "y":F
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->mMatrix:[F

    const/4 v1, 0x0

    sub-float v3, v12, v7

    sub-float v4, v13, v6

    const/high16 v5, 0x41a00000    # 20.0f

    add-float/2addr v5, v14

    invoke-static {v0, v1, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    goto :goto_0
.end method

.method setOriginalModelSize(F)V
    .locals 0
    .param p1, "originalModelSize"    # F

    .prologue
    .line 99
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->mOriginalModelSize:F

    .line 100
    return-void
.end method
