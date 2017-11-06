.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;
.super Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;
.source "ChildModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel$ChildMatrix;
    }
.end annotation


# instance fields
.field private mInheritAlpha:Z

.field private mOriginalModelSize:I

.field private mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;-><init>()V

    return-void
.end method

.method private injectParentToMatrixGenerator()V
    .locals 2

    .prologue
    .line 75
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->mMatrixGenerator:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MatrixGenerator;

    instance-of v1, v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel$ChildMatrix;

    if-eqz v1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->mMatrixGenerator:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MatrixGenerator;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel$ChildMatrix;

    .line 77
    .local v0, "cm":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel$ChildMatrix;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel$ChildMatrix;->setParent(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)V

    .line 79
    .end local v0    # "cm":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel$ChildMatrix;
    :cond_0
    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 2

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->mInheritAlpha:Z

    if-eqz v0, :cond_0

    .line 63
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getAlpha()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;->getAlpha()F

    move-result v1

    mul-float/2addr v0, v1

    .line 65
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getAlpha()F

    move-result v0

    goto :goto_0
.end method

.method public getScreenBoundsRect(I)Landroid/graphics/Rect;
    .locals 13
    .param p1, "screenHeight"    # I

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    .line 37
    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;

    invoke-virtual {v9}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;->getBiggestSize()F

    move-result v9

    iget v10, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->mOriginalModelSize:I

    int-to-float v10, v10

    div-float v5, v9, v10

    .line 38
    .local v5, "scaleK":F
    int-to-float v9, p1

    iget-object v10, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;

    invoke-virtual {v10}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;->getY()F

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->getY()F

    move-result v11

    mul-float/2addr v11, v5

    sub-float/2addr v10, v11

    sub-float v7, v9, v10

    .line 39
    .local v7, "screenY":F
    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;

    invoke-virtual {v9}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;->getX()F

    move-result v9

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->getX()F

    move-result v10

    mul-float/2addr v10, v5

    add-float v6, v9, v10

    .line 40
    .local v6, "screenX":F
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->getHeight()F

    move-result v9

    div-float/2addr v9, v12

    mul-float v1, v9, v5

    .line 41
    .local v1, "hh":F
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->getWidth()F

    move-result v9

    div-float/2addr v9, v12

    mul-float v2, v9, v5

    .line 42
    .local v2, "hw":F
    sub-float v9, v6, v2

    float-to-int v3, v9

    .line 43
    .local v3, "left":I
    sub-float v9, v7, v1

    float-to-int v8, v9

    .line 44
    .local v8, "top":I
    add-float v9, v6, v2

    float-to-int v4, v9

    .line 45
    .local v4, "right":I
    add-float v9, v7, v1

    float-to-int v0, v9

    .line 46
    .local v0, "bottom":I
    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->mScreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v9, v3, v8, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 47
    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->mScreenBounds:Landroid/graphics/Rect;

    return-object v9
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;

    .line 71
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setInheritAlpha(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->mInheritAlpha:Z

    .line 58
    return-void
.end method

.method public setMatrixGenerator(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MatrixGenerator;)V
    .locals 0
    .param p1, "generator"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MatrixGenerator;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->setMatrixGenerator(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MatrixGenerator;)V

    .line 53
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->injectParentToMatrixGenerator()V

    .line 54
    return-void
.end method

.method setOriginalModelSize(I)V
    .locals 0
    .param p1, "originalModelSize"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->mOriginalModelSize:I

    .line 33
    return-void
.end method

.method setParent(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;)V
    .locals 0
    .param p1, "parent"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;->injectParentToMatrixGenerator()V

    .line 29
    return-void
.end method
