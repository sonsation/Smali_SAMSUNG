.class public Lcom/samsung/android/glview/GLImage;
.super Lcom/samsung/android/glview/GLView;
.source "GLImage.java"


# instance fields
.field protected mImage:Lcom/samsung/android/glview/GLTexture;

.field protected mImageId:I

.field protected mResourceOffsetX:F

.field protected mResourceOffsetY:F


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V
    .locals 7

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput v2, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetX:F

    iput v2, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetY:F

    if-eqz p6, :cond_0

    new-instance v0, Lcom/samsung/android/glview/GLBitmapTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLBitmapTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;)V
    .locals 7

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput v2, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetX:F

    iput v2, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetY:F

    if-eqz p6, :cond_0

    new-instance v0, Lcom/samsung/android/glview/GLFileTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLFileTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFZI)V
    .locals 7

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput v2, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetX:F

    iput v2, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetY:F

    if-eqz p7, :cond_0

    if-eqz p6, :cond_2

    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_1
    iput p7, p0, Lcom/samsung/android/glview/GLImage;->mImageId:I

    return-void

    :cond_2
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p7}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFF[B)V
    .locals 7

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput v2, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetX:F

    iput v2, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetY:F

    if-eqz p6, :cond_0

    new-instance v0, Lcom/samsung/android/glview/GLByteArrayTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLByteArrayTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFF[B)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFI)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFF)V

    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetX:F

    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetY:F

    if-eqz p5, :cond_0

    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-direct {v0, p1, v1, v1, p5}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_1
    iput p5, p0, Lcom/samsung/android/glview/GLImage;->mImageId:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFI)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetX:F

    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetY:F

    if-eqz p4, :cond_0

    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-direct {v0, p1, v1, v1, p4}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_1
    iput p4, p0, Lcom/samsung/android/glview/GLImage;->mImageId:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFLandroid/graphics/Bitmap;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetX:F

    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetY:F

    if-eqz p4, :cond_0

    new-instance v0, Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-direct {v0, p1, v1, v1, p4}, Lcom/samsung/android/glview/GLBitmapTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFLjava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetX:F

    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetY:F

    if-eqz p4, :cond_0

    new-instance v0, Lcom/samsung/android/glview/GLFileTexture;

    invoke-direct {v0, p1, v1, v1, p4}, Lcom/samsung/android/glview/GLFileTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLjava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FF[B)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetX:F

    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetY:F

    if-eqz p4, :cond_0

    new-instance v0, Lcom/samsung/android/glview/GLByteArrayTexture;

    invoke-direct {v0, p1, v1, v1, p4}, Lcom/samsung/android/glview/GLByteArrayTexture;-><init>(Lcom/samsung/android/glview/GLContext;FF[B)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;Landroid/graphics/Bitmap;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v1}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetX:F

    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetY:F

    if-eqz p2, :cond_0

    new-instance v0, Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-direct {v0, p1, v1, v1, p2}, Lcom/samsung/android/glview/GLBitmapTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v1}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetX:F

    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetY:F

    if-eqz p2, :cond_0

    new-instance v0, Lcom/samsung/android/glview/GLFileTexture;

    invoke-direct {v0, p1, v1, v1, p2}, Lcom/samsung/android/glview/GLFileTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLjava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;[B)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v1}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetX:F

    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetY:F

    if-eqz p2, :cond_0

    new-instance v0, Lcom/samsung/android/glview/GLByteArrayTexture;

    invoke-direct {v0, p1, v1, v1, p2}, Lcom/samsung/android/glview/GLByteArrayTexture;-><init>(Lcom/samsung/android/glview/GLContext;FF[B)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->getLoaded()Z

    move-result v0

    return v0
.end method

.method public initSize()V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v0

    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    return-void
.end method

.method public onAlphaUpdated()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onAlphaUpdated()V

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->onAlphaUpdated()V

    :cond_0
    return-void
.end method

.method protected onDraw()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLImage;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLImage;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public onLayoutUpdated()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onLayoutUpdated()V

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->onLayoutUpdated()V

    :cond_0
    return-void
.end method

.method protected onLoad()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->load()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->onOrientationChanged(I)V

    return-void
.end method

.method public onReset()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->reset()V

    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->onVisibilityChanged(I)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->onVisibilityChanged(I)V

    :cond_0
    return-void
.end method

.method public setFlip(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setFlip(Z)V

    :cond_0
    return-void
.end method

.method public setHeight(F)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setHeight(F)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setHeight(F)V

    :cond_0
    return-void
.end method

.method public declared-synchronized setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLImage;->mSizeGiven:Z

    if-eqz v0, :cond_3

    new-instance v0, Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLImage;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLBitmapTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    new-instance v0, Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLImage;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/samsung/android/glview/GLBitmapTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setImageOffset(FF)Z
    .locals 5

    iget-object v2, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v2

    sub-float/2addr v2, v1

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v2

    sub-float/2addr v2, v0

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    iput p1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetX:F

    iput p2, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetY:F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v2

    cmpl-float v2, v2, v0

    if-ltz v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v2

    invoke-static {v2, v1}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v2

    invoke-static {v2, v0}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    iget v3, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetX:F

    iget v4, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetY:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V

    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setImageResources(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLImage;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, p1}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_1
    return-void
.end method

.method public setSampleSize(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    instance-of v0, v0, Lcom/samsung/android/glview/GLByteArrayTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    check-cast v0, Lcom/samsung/android/glview/GLByteArrayTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLByteArrayTexture;->setSampleSize(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    instance-of v0, v0, Lcom/samsung/android/glview/GLFileTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    check-cast v0, Lcom/samsung/android/glview/GLFileTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLFileTexture;->setSampleSize(I)V

    goto :goto_0
.end method

.method public setShaderParameter(F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setShaderParameter(F)V

    :cond_0
    return-void
.end method

.method public setShaderProgram(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setShaderProgram(I)V

    :cond_0
    return-void
.end method

.method public setShaderStep(F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setShaderStep(F)V

    :cond_0
    return-void
.end method

.method public setSize(FF)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLView;->setSize(FF)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLTexture;->setSize(FF)V

    :cond_0
    return-void
.end method

.method public setTint(I)V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    instance-of v3, v3, Lcom/samsung/android/glview/GLResourceTexture;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/glview/GLImage;->mImageId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setWidth(F)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setWidth(F)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setWidth(F)V

    :cond_0
    return-void
.end method
