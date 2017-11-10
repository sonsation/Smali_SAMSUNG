.class public Lcom/samsung/android/glview/GLByteArrayTexture;
.super Lcom/samsung/android/glview/GLTexture;
.source "GLByteArrayTexture.java"


# instance fields
.field private mBitmapData:[B

.field private mSampleSize:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFF[B)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/glview/GLByteArrayTexture;->mSampleSize:I

    iput-object p6, p0, Lcom/samsung/android/glview/GLByteArrayTexture;->mBitmapData:[B

    iget-object v0, p0, Lcom/samsung/android/glview/GLByteArrayTexture;->mBitmapData:[B

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFF[BZ)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/glview/GLByteArrayTexture;->mSampleSize:I

    iput-object p6, p0, Lcom/samsung/android/glview/GLByteArrayTexture;->mBitmapData:[B

    iget-object v0, p0, Lcom/samsung/android/glview/GLByteArrayTexture;->mBitmapData:[B

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FF[B)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLTexture;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/glview/GLByteArrayTexture;->mSampleSize:I

    iput-object p4, p0, Lcom/samsung/android/glview/GLByteArrayTexture;->mBitmapData:[B

    iget-object v0, p0, Lcom/samsung/android/glview/GLByteArrayTexture;->mBitmapData:[B

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLByteArrayTexture;->mBitmapData:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized loadBitmap()Landroid/graphics/Bitmap;
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iget v2, p0, Lcom/samsung/android/glview/GLByteArrayTexture;->mSampleSize:I

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/glview/GLByteArrayTexture;->mBitmapData:[B

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/glview/GLByteArrayTexture;->mBitmapData:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/glview/GLByteArrayTexture;->mBitmapData:[B

    array-length v4, v4

    invoke-static {v2, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/glview/GLByteArrayTexture;->mBitmapData:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setSampleSize(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/glview/GLByteArrayTexture;->mSampleSize:I

    return-void
.end method
