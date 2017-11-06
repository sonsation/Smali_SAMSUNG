.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;
.super Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;
.source "Texture.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final NOT_INITIALIZED:I = -0x1


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapByteCount:I

.field private mMipmaps:Z

.field private mName:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3
    .param p1, "mipmaps"    # Z

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;-><init>()V

    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mName:[I

    .line 55
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mMipmaps:Z

    .line 56
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->release()V

    .line 70
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 71
    return-void
.end method

.method public getByteCount()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mBitmapByteCount:I

    return v0
.end method

.method public invalidate()V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mName:[I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    .line 83
    return-void
.end method

.method public name()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mName:[I

    aget v0, v0, v4

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 87
    :cond_0
    monitor-enter p0

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mName:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-ne v0, v2, :cond_5

    .line 90
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mName:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 91
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Texture created: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mName:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mName:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 93
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mMipmaps:Z

    if-eqz v0, :cond_4

    .line 94
    const/16 v0, 0xde1

    const/16 v1, 0x2801

    const/16 v2, 0x2703

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 100
    :goto_0
    const/16 v0, 0xde1

    const/16 v1, 0x2800

    const/16 v2, 0x2601

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 102
    const/16 v0, 0xde1

    const/16 v1, 0x2802

    const v2, 0x812f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 104
    const/16 v0, 0xde1

    const/16 v1, 0x2803

    const v2, 0x812f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 109
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_6

    .line 110
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Texture sendBitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mName:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " w: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mBitmap:Landroid/graphics/Bitmap;

    .line 111
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mBitmap:Landroid/graphics/Bitmap;

    .line 112
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/16 v0, 0xcf5

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 114
    const/16 v0, 0xde1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 115
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mMipmaps:Z

    if-eqz v0, :cond_1

    .line 116
    const/16 v0, 0xde1

    invoke-static {v0}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    .line 121
    :cond_1
    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mBitmap:Landroid/graphics/Bitmap;

    .line 123
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mName:[I

    aget v0, v0, v4

    return v0

    .line 97
    :cond_4
    const/16 v0, 0xde1

    const/16 v1, 0x2801

    const/16 v2, 0x2601

    :try_start_1
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    goto/16 :goto_0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 107
    :cond_5
    const/16 v0, 0xde1

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mName:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_1

    .line 119
    :cond_6
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to assign recycled bitmap to texture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public readName()I
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mName:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public declared-synchronized release()V
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 74
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mName:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eq v0, v2, :cond_0

    .line 75
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Texture released: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mName:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mName:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mName:[I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :cond_0
    monitor-exit p0

    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mBitmap:Landroid/graphics/Bitmap;

    if-eq p1, v0, :cond_0

    .line 60
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mBitmap:Landroid/graphics/Bitmap;

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mBitmapByteCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :goto_0
    monitor-exit p0

    return-void

    .line 63
    :cond_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "skip bitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
