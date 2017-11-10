.class public abstract Lcom/samsung/android/glview/GLTexture;
.super Lcom/samsung/android/glview/GLView;
.source "GLTexture.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GLTexture"


# instance fields
.field private mAsyncLodingInProgress:Z

.field protected mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapSizeChanged:Z

.field private mBitmapUpdated:Z

.field protected mCoordBuffer:[F

.field protected mFlip:Z

.field protected mIndexBuffer:Ljava/nio/ByteBuffer;

.field mIndices:[B

.field protected mNewProgramType:I

.field protected mObjAlpha:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

.field protected mObjMVPMatrix:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

.field protected mObjParam:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

.field protected mObjPosition:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

.field protected mObjStep:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

.field protected mObjTextureCoord:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

.field protected mProgramID:I

.field protected mProgramType:I

.field protected mTexCoordBuffer:Ljava/nio/ByteBuffer;

.field protected mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

.field protected mTextureLoaded:Z

.field protected mTextureReloaded:Z

.field protected mTextures:[I

.field protected mVertexBuffer:Ljava/nio/FloatBuffer;

.field mVertices:[F

.field protected mViewMatrix:[F


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FF)V
    .locals 3

    const/16 v2, 0x3e9

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mFlip:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mTextureReloaded:Z

    iput v1, p0, Lcom/samsung/android/glview/GLTexture;->mProgramID:I

    iput v2, p0, Lcom/samsung/android/glview/GLTexture;->mProgramType:I

    iput v2, p0, Lcom/samsung/android/glview/GLTexture;->mNewProgramType:I

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjPosition:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjTextureCoord:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjMVPMatrix:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjAlpha:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjStep:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjParam:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mViewMatrix:[F

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mTextureLoaded:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mAsyncLodingInProgress:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mBitmapUpdated:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mBitmapSizeChanged:Z

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFF)V
    .locals 3

    const/16 v2, 0x3e9

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFF)V

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mFlip:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mTextureReloaded:Z

    iput v1, p0, Lcom/samsung/android/glview/GLTexture;->mProgramID:I

    iput v2, p0, Lcom/samsung/android/glview/GLTexture;->mProgramType:I

    iput v2, p0, Lcom/samsung/android/glview/GLTexture;->mNewProgramType:I

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjPosition:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjTextureCoord:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjMVPMatrix:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjAlpha:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjStep:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjParam:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mViewMatrix:[F

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mTextureLoaded:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mAsyncLodingInProgress:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mBitmapUpdated:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mBitmapSizeChanged:Z

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFF)V
    .locals 3

    const/16 v2, 0x3e9

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mFlip:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mTextureReloaded:Z

    iput v1, p0, Lcom/samsung/android/glview/GLTexture;->mProgramID:I

    iput v2, p0, Lcom/samsung/android/glview/GLTexture;->mProgramType:I

    iput v2, p0, Lcom/samsung/android/glview/GLTexture;->mNewProgramType:I

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjPosition:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjTextureCoord:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjMVPMatrix:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjAlpha:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjStep:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjParam:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mViewMatrix:[F

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mTextureLoaded:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mAsyncLodingInProgress:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mBitmapUpdated:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mBitmapSizeChanged:Z

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFF)V
    .locals 3

    const/16 v2, 0x3e9

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFFF)V

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mFlip:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mTextureReloaded:Z

    iput v1, p0, Lcom/samsung/android/glview/GLTexture;->mProgramID:I

    iput v2, p0, Lcom/samsung/android/glview/GLTexture;->mProgramType:I

    iput v2, p0, Lcom/samsung/android/glview/GLTexture;->mNewProgramType:I

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjPosition:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjTextureCoord:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjMVPMatrix:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjAlpha:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjStep:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjParam:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mViewMatrix:[F

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mTextureLoaded:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mAsyncLodingInProgress:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mBitmapUpdated:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mBitmapSizeChanged:Z

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/glview/GLTexture;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/glview/GLTexture;->mAsyncLodingInProgress:Z

    return p1
.end method

.method private doUpdate()V
    .locals 3

    const/16 v2, 0xde1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mTextures:[I

    aget v0, v0, v1

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmapSizeChanged:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2, v1, v0, v1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2, v1, v1, v1, v0}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mCoordBuffer:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->clearBuffers()V

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLContext;->addTextureToDelete(Lcom/samsung/android/glview/GLTexture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected clearBitmap()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method protected clearBuffers()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mIndexBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_1
    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mIndexBuffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_2
    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_3
    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public clearTexture()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mTextures:[I

    if-eqz v0, :cond_0

    new-array v0, v3, [I

    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mTextures:[I

    aget v1, v1, v2

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mTextures:[I

    :cond_0
    return-void
.end method

.method public getLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLTexture;->mTextureLoaded:Z

    return v0
.end method

.method protected declared-synchronized initBuffers()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->clearBuffers()V

    iget-object v2, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    invoke-static {v2}, Lcom/samsung/android/glview/GLUtil;->getFloatBufferFromFloatArray([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/glview/GLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/glview/GLTexture;->mIndices:[B

    if-nez v2, :cond_0

    const/4 v2, 0x6

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/samsung/android/glview/GLTexture;->mIndices:[B

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLTexture;->mIndices:[B

    add-int/lit8 v1, v0, 0x1

    const/4 v3, 0x0

    aput-byte v3, v2, v0

    iget-object v2, p0, Lcom/samsung/android/glview/GLTexture;->mIndices:[B

    add-int/lit8 v0, v1, 0x1

    const/4 v3, 0x1

    aput-byte v3, v2, v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLTexture;->mIndices:[B

    add-int/lit8 v1, v0, 0x1

    const/4 v3, 0x3

    aput-byte v3, v2, v0

    iget-object v2, p0, Lcom/samsung/android/glview/GLTexture;->mIndices:[B

    add-int/lit8 v0, v1, 0x1

    const/4 v3, 0x0

    aput-byte v3, v2, v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLTexture;->mIndices:[B

    add-int/lit8 v1, v0, 0x1

    const/4 v3, 0x3

    aput-byte v3, v2, v0

    iget-object v2, p0, Lcom/samsung/android/glview/GLTexture;->mIndices:[B

    const/4 v3, 0x2

    aput-byte v3, v2, v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLTexture;->mIndices:[B

    invoke-static {v2}, Lcom/samsung/android/glview/GLUtil;->getByteBufferFromByteArray([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/glview/GLTexture;->mIndexBuffer:Ljava/nio/ByteBuffer;

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/glview/GLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/glview/GLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/samsung/android/glview/GLTexture;->mCoordBuffer:[F

    if-nez v2, :cond_1

    const/16 v2, 0x8

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/samsung/android/glview/GLTexture;->mCoordBuffer:[F

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->initCoordBuffer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected initCoordBuffer()V
    .locals 6

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mCoordBuffer:[F

    aput v3, v1, v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v0, 0x1

    aput v3, v1, v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v0, 0x1

    aput v3, v1, v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v0, 0x1

    aput v4, v1, v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v0, 0x1

    aput v4, v1, v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v0, 0x1

    aput v3, v1, v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v0, 0x1

    aput v4, v1, v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v0, 0x1

    aput v4, v1, v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLTexture;->mCoordBuffer:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mCoordBuffer:[F

    aput v4, v1, v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v0, 0x1

    aput v3, v1, v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v0, 0x1

    aput v4, v1, v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v0, 0x1

    aput v4, v1, v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v0, 0x1

    aput v3, v1, v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v0, 0x1

    aput v3, v1, v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v0, 0x1

    aput v3, v1, v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v0, 0x1

    aput v4, v1, v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLTexture;->mCoordBuffer:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public declared-synchronized initSize()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->loadBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getSizeSpecified()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/glview/GLTexture;->setSize(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/glview/GLTexture;->setSize(FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract loadBitmap()Landroid/graphics/Bitmap;
.end method

.method protected declared-synchronized loadGLTexture()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0xde1

    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "GLTexture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getTag()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] : texImage2D - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/opengl/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->clearBitmap()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected loadProgram()V
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Lcom/samsung/android/glview/GLTexture;->mProgramType:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getProgramStorage()Lcom/samsung/android/glview/GLProgramStorage;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLProgramStorage;->getProgram(I)Lcom/samsung/android/glview/GLProgram;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLProgram;->getProgramID()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLTexture;->mProgramID:I

    const-string v1, "a_position"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjPosition:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const-string v1, "a_texcoord"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjTextureCoord:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const-string v1, "u_MVPMatrix"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjMVPMatrix:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const-string v1, "u_alpha"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjAlpha:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iput-object v3, p0, Lcom/samsung/android/glview/GLTexture;->mObjStep:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iput-object v3, p0, Lcom/samsung/android/glview/GLTexture;->mObjParam:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getProgramStorage()Lcom/samsung/android/glview/GLProgramStorage;

    move-result-object v1

    const/16 v2, 0x3ec

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLProgramStorage;->getProgram(I)Lcom/samsung/android/glview/GLProgram;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLProgram;->getProgramID()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLTexture;->mProgramID:I

    const-string v1, "a_position"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjPosition:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const-string v1, "a_texcoord"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjTextureCoord:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const-string v1, "u_MVPMatrix"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjMVPMatrix:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const-string v1, "u_alpha"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjAlpha:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const-string v1, "u_step"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjStep:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const-string v1, "u_param"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjParam:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getProgramStorage()Lcom/samsung/android/glview/GLProgramStorage;

    move-result-object v1

    const/16 v2, 0x3ed

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLProgramStorage;->getProgram(I)Lcom/samsung/android/glview/GLProgram;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLProgram;->getProgramID()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLTexture;->mProgramID:I

    const-string v1, "a_position"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjPosition:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const-string v1, "a_texcoord"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjTextureCoord:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const-string v1, "u_MVPMatrix"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjMVPMatrix:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const-string v1, "u_alpha"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjAlpha:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const-string v1, "u_step"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjStep:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iput-object v3, p0, Lcom/samsung/android/glview/GLTexture;->mObjParam:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getProgramStorage()Lcom/samsung/android/glview/GLProgramStorage;

    move-result-object v1

    const/16 v2, 0x3ee

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLProgramStorage;->getProgram(I)Lcom/samsung/android/glview/GLProgram;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLProgram;->getProgramID()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLTexture;->mProgramID:I

    const-string v1, "a_position"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjPosition:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const-string v1, "a_texcoord"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjTextureCoord:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const-string v1, "u_MVPMatrix"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjMVPMatrix:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const-string v1, "u_alpha"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjAlpha:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const-string v1, "u_step"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjStep:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const-string v1, "u_param"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjParam:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getProgramStorage()Lcom/samsung/android/glview/GLProgramStorage;

    move-result-object v1

    const/16 v2, 0x3f0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLProgramStorage;->getProgram(I)Lcom/samsung/android/glview/GLProgram;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLProgram;->getProgramID()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLTexture;->mProgramID:I

    const-string v1, "a_position"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjPosition:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const-string v1, "a_texcoord"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjTextureCoord:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const-string v1, "u_MVPMatrix"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjMVPMatrix:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const-string v1, "u_alpha"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjAlpha:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iput-object v3, p0, Lcom/samsung/android/glview/GLTexture;->mObjStep:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const-string v1, "u_param"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjParam:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x3ec
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onAlphaUpdated()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onAlphaUpdated()V

    return-void
.end method

.method public onDraw()V
    .locals 8

    const/4 v7, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mTextures:[I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLTexture;->mTextureLoaded:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLTexture;->mLayoutUpdated:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->setVertices()V

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    invoke-static {v0}, Lcom/samsung/android/glview/GLUtil;->getFloatBufferFromFloatArray([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLTexture;->mLayoutUpdated:Z

    :cond_3
    :goto_1
    iget v0, p0, Lcom/samsung/android/glview/GLTexture;->mNewProgramType:I

    iget v1, p0, Lcom/samsung/android/glview/GLTexture;->mProgramType:I

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/samsung/android/glview/GLTexture;->mNewProgramType:I

    iput v0, p0, Lcom/samsung/android/glview/GLTexture;->mProgramType:I

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->loadProgram()V

    :cond_4
    iget v0, p0, Lcom/samsung/android/glview/GLTexture;->mProgramID:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/4 v6, 0x0

    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v6

    if-eqz v6, :cond_5

    const-string v0, "GLTexture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getTag()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "] : glActiveTexture - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Landroid/opengl/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mTextures:[I

    aget v1, v1, v3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v6

    if-eqz v6, :cond_6

    const-string v0, "GLTexture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getTag()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "] : glBindTexture - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Landroid/opengl/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mViewMatrix:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getProjMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getMatrix()[F

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/samsung/android/glview/GLUtil;->multiplyMM([F[F[F)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjMVPMatrix:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/samsung/android/glview/GLTexture;->mViewMatrix:[F

    invoke-static {v0, v1, v3, v4, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjAlpha:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getAlpha()F

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjStep:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjStep:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    iget v1, p0, Lcom/samsung/android/glview/GLTexture;->mShaderStep:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjParam:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjParam:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    iget v1, p0, Lcom/samsung/android/glview/GLTexture;->mShaderParameter:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjPosition:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjTextureCoord:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjPosition:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    const/4 v1, 0x3

    iget-object v5, p0, Lcom/samsung/android/glview/GLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLTexture;->mFlip:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjTextureCoord:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    iget-object v5, p0, Lcom/samsung/android/glview/GLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    move v1, v7

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    :goto_2
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLTexture;->mTextureReloaded:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->loadGLTexture()V

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLTexture;->mTextureReloaded:Z

    :cond_9
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmapUpdated:Z

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/samsung/android/glview/GLTexture;->doUpdate()V

    :cond_a
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mIndices:[B

    array-length v1, v1

    const/16 v2, 0x1401

    iget-object v3, p0, Lcom/samsung/android/glview/GLTexture;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v6

    if-eqz v6, :cond_b

    const-string v0, "GLTexture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getTag()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] : glDrawElements  - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Landroid/opengl/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjPosition:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjTextureCoord:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mIndexBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_3

    :cond_d
    const-string v0, "GLTexture"

    const-string v1, "init buffers on onDraw"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->setVertices()V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->initBuffers()V

    goto/16 :goto_1

    :cond_e
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjTextureCoord:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    iget-object v5, p0, Lcom/samsung/android/glview/GLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    move v1, v7

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    goto/16 :goto_2
.end method

.method public onLayoutUpdated()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onLayoutUpdated()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLTexture;->mLayoutUpdated:Z

    return-void
.end method

.method protected onLoad()Z
    .locals 7

    const v6, 0x47012f00    # 33071.0f

    const v5, 0x46180400    # 9729.0f

    const/4 v2, 0x0

    const/16 v4, 0xde1

    const/4 v1, 0x1

    iget-boolean v3, p0, Lcom/samsung/android/glview/GLTexture;->mAsyncLoad:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/samsung/android/glview/GLTexture;->mAsyncLodingInProgress:Z

    if-nez v3, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/samsung/android/glview/GLTexture$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/glview/GLTexture$1;-><init>(Lcom/samsung/android/glview/GLTexture;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v3, "AsyncLoadingThread"

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-boolean v3, p0, Lcom/samsung/android/glview/GLTexture;->mTextureLoaded:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/samsung/android/glview/GLTexture;->mAsyncLodingInProgress:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->initSize()V

    iget-object v3, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->setVertices()V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->initBuffers()V

    iget-object v3, p0, Lcom/samsung/android/glview/GLTexture;->mTextures:[I

    if-nez v3, :cond_4

    new-array v3, v1, [I

    iput-object v3, p0, Lcom/samsung/android/glview/GLTexture;->mTextures:[I

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/glview/GLTexture;->mTextures:[I

    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    iget-object v3, p0, Lcom/samsung/android/glview/GLTexture;->mTextures:[I

    aget v2, v3, v2

    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0x2801

    invoke-static {v4, v2, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2800

    invoke-static {v4, v2, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2802

    invoke-static {v4, v2, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2803

    invoke-static {v4, v2, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    iget v2, p0, Lcom/samsung/android/glview/GLTexture;->mNewProgramType:I

    iget v3, p0, Lcom/samsung/android/glview/GLTexture;->mProgramType:I

    if-eq v2, v3, :cond_5

    iget v2, p0, Lcom/samsung/android/glview/GLTexture;->mNewProgramType:I

    iput v2, p0, Lcom/samsung/android/glview/GLTexture;->mProgramType:I

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->loadProgram()V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->loadGLTexture()V

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mTextureLoaded:Z

    goto :goto_0
.end method

.method public onReset()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLTexture;->mTextureLoaded:Z

    return-void
.end method

.method protected declared-synchronized reLoad()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/samsung/android/glview/GLTexture;->mTextureLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/samsung/android/glview/GLTexture;->mTextureLoaded:Z

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->loadBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->setVertices()V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->initBuffers()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLTexture;->mTextureLoaded:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLTexture;->mTextureReloaded:Z

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setFlip(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/glview/GLTexture;->mFlip:Z

    return-void
.end method

.method public setShaderProgram(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/glview/GLTexture;->mNewProgramType:I

    return-void
.end method

.method public setTint(I)V
    .locals 0

    return-void
.end method

.method protected setVertices()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    if-nez v0, :cond_0

    const/16 v0, 0xc

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getAlignToPixel()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getLeft()F

    move-result v1

    add-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v1, v1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getTop()F

    move-result v1

    add-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v1, v1

    aput v1, v0, v5

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    aput v3, v0, v6

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getLeft()F

    move-result v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getBottom()F

    move-result v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    const/4 v1, 0x5

    aput v3, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getRight()F

    move-result v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getTop()F

    move-result v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    const/16 v1, 0x8

    aput v3, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getRight()F

    move-result v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getBottom()F

    move-result v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    const/16 v1, 0xb

    aput v3, v0, v1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getLeft()F

    move-result v1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getTop()F

    move-result v1

    aput v1, v0, v5

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    aput v3, v0, v6

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getLeft()F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getBottom()F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    const/4 v1, 0x5

    aput v3, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getRight()F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getTop()F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    const/16 v1, 0x8

    aput v3, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getRight()F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getBottom()F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    const/16 v1, 0xb

    aput v3, v0, v1

    goto :goto_0
.end method

.method public updateTexture(Landroid/graphics/Bitmap;Z)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iput-boolean v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmapUpdated:Z

    iput-boolean p2, p0, Lcom/samsung/android/glview/GLTexture;->mBitmapSizeChanged:Z

    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    :cond_2
    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    goto :goto_0
.end method
