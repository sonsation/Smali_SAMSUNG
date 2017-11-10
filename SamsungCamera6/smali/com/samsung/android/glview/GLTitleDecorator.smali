.class public Lcom/samsung/android/glview/GLTitleDecorator;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "GLTitleDecorator.java"


# instance fields
.field private mTitleView:Lcom/samsung/android/glview/GLView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLTitleDecorator;->mTitleView:Lcom/samsung/android/glview/GLView;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFF)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLTitleDecorator;->mTitleView:Lcom/samsung/android/glview/GLView;

    return-void
.end method


# virtual methods
.method public addView(Lcom/samsung/android/glview/GLView;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTitleDecorator;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTitleDecorator;->getRight()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTitleDecorator;->getLeft()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTitleDecorator;->getBottom()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTitleDecorator;->getTop()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    :cond_4
    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLView;->setPaddings(Landroid/graphics/Rect;)V

    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTitleDecorator;->getHeight()F

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/glview/GLTitleDecorator;->mTitleView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/glview/GLTitleDecorator;->mTitleView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLView;->getLayoutY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTitleDecorator;->getPaddings()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLTitleDecorator;->setHeight(F)V

    :cond_5
    return-void
.end method

.method public getContentAreaHeight()F
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/glview/GLTitleDecorator;->mTitleView:Lcom/samsung/android/glview/GLView;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTitleDecorator;->getHeight()F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTitleDecorator;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTitleDecorator;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTitleDecorator;->getHeight()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLTitleDecorator;->mTitleView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTitleDecorator;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTitleDecorator;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public setDragListener(Lcom/samsung/android/glview/GLView$DragListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLTitleDecorator;->mTitleView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setDragListener(Lcom/samsung/android/glview/GLView$DragListener;)V

    return-void
.end method

.method public setTitle(Lcom/samsung/android/glview/GLView;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput-object p0, p1, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    iget-object v0, p0, Lcom/samsung/android/glview/GLTitleDecorator;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Lcom/samsung/android/glview/GLTitleDecorator;->mTitleView:Lcom/samsung/android/glview/GLView;

    return-void
.end method
