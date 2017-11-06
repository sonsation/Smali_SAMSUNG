.class Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$TextMatrixGenerator;
.super Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel$ChildMatrix;
.source "FlatResizeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextMatrixGenerator"
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)V
    .locals 0
    .param p1, "model"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    .prologue
    .line 1056
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel$ChildMatrix;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)V

    .line 1057
    return-void
.end method


# virtual methods
.method public getMatrix()[F
    .locals 7

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 1061
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$TextMatrixGenerator;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$TextMatrixGenerator;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->isModified()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$TextMatrixGenerator;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->isModified()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1062
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$TextMatrixGenerator;->mMatrix:[F

    invoke-static {v2, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1065
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$TextMatrixGenerator;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$TextMatrixGenerator;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getWidth()F

    move-result v3

    div-float/2addr v3, v4

    sub-float v0, v2, v3

    .line 1066
    .local v0, "X":F
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$TextMatrixGenerator;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$TextMatrixGenerator;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getHeight()F

    move-result v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$TextMatrixGenerator;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getHeight()F

    move-result v3

    sub-float v1, v2, v3

    .line 1067
    .local v1, "Y":F
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$TextMatrixGenerator;->mMatrix:[F

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$TextMatrixGenerator;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getZ()F

    move-result v3

    invoke-static {v2, v6, v0, v1, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 1068
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$TextMatrixGenerator;->mMatrix:[F

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$TextMatrixGenerator;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$TextMatrixGenerator;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getHeight()F

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, v6, v3, v4, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 1070
    .end local v0    # "X":F
    .end local v1    # "Y":F
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$TextMatrixGenerator;->mMatrix:[F

    return-object v2
.end method
