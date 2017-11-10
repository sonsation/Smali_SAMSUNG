.class public Lcom/samsung/android/glview/GLBitmapTexture;
.super Lcom/samsung/android/glview/GLTexture;
.source "GLBitmapTexture.java"


# instance fields
.field private mBitmapTexture:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLBitmapTexture;->mBitmapTexture:Landroid/graphics/Bitmap;

    iput-object p6, p0, Lcom/samsung/android/glview/GLBitmapTexture;->mBitmapTexture:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFLandroid/graphics/Bitmap;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLTexture;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLBitmapTexture;->mBitmapTexture:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/samsung/android/glview/GLBitmapTexture;->mBitmapTexture:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    iget-object v0, p0, Lcom/samsung/android/glview/GLBitmapTexture;->mBitmapTexture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLBitmapTexture;->mBitmapTexture:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected clearBitmap()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/glview/GLTexture;->clearBitmap()V

    iget-object v0, p0, Lcom/samsung/android/glview/GLBitmapTexture;->mBitmapTexture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLBitmapTexture;->mBitmapTexture:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method protected declared-synchronized loadBitmap()Landroid/graphics/Bitmap;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLBitmapTexture;->mSizeGiven:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLBitmapTexture;->mBitmapTexture:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLBitmapTexture;->getWidth()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLBitmapTexture;->getHeight()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLBitmapTexture;->mBitmapTexture:Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
