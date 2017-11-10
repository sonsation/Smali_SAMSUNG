.class public Lcom/samsung/android/glview/GLTriangle;
.super Lcom/samsung/android/glview/GLTexture;
.source "GLTriangle.java"


# static fields
.field private static final DEFAULT_THICKNESS:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "GLTriangle"

.field public static final TYPE_TRIANGLE_CORRECTION_STROKE:I = 0x2

.field public static final TYPE_TRIANGLE_FILL:I = 0x3

.field public static final TYPE_TRIANGLE_STROKE:I = 0x1


# instance fields
.field private mColor:[F

.field private mDirection:I

.field private mObjPointSize:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

.field private mObjSampler:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

.field private mThickness:[F

.field private mThicknessBuffer:Ljava/nio/FloatBuffer;

.field private mTriangleType:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFIIF)V
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0, v0}, Lcom/samsung/android/glview/GLTexture;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput v3, p0, Lcom/samsung/android/glview/GLTriangle;->mTriangleType:I

    iput v2, p0, Lcom/samsung/android/glview/GLTriangle;->mDirection:I

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mThickness:[F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mObjSampler:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mObjPointSize:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mColor:[F

    iput v4, p0, Lcom/samsung/android/glview/GLTriangle;->mTriangleType:I

    neg-int v0, p6

    iput v0, p0, Lcom/samsung/android/glview/GLTriangle;->mDirection:I

    invoke-virtual {p0, p7}, Lcom/samsung/android/glview/GLTriangle;->setColor(I)V

    cmpg-float v0, p8, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mThickness:[F

    aput v1, v0, v2

    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mThickness:[F

    aput v1, v0, v3

    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mThickness:[F

    aput v1, v0, v4

    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/glview/GLTriangle;->translateAbsolute(FF)V

    invoke-virtual {p0, p4, p5}, Lcom/samsung/android/glview/GLTriangle;->setSize(FF)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mThickness:[F

    aput p8, v0, v2

    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mThickness:[F

    aput p8, v0, v3

    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mThickness:[F

    aput p8, v0, v4

    goto :goto_0
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFIIFI)V
    .locals 5

    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0, v0}, Lcom/samsung/android/glview/GLTexture;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput v3, p0, Lcom/samsung/android/glview/GLTriangle;->mTriangleType:I

    iput v2, p0, Lcom/samsung/android/glview/GLTriangle;->mDirection:I

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mThickness:[F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mObjSampler:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mObjPointSize:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mColor:[F

    iput p9, p0, Lcom/samsung/android/glview/GLTriangle;->mTriangleType:I

    neg-int v0, p6

    iput v0, p0, Lcom/samsung/android/glview/GLTriangle;->mDirection:I

    invoke-virtual {p0, p7}, Lcom/samsung/android/glview/GLTriangle;->setColor(I)V

    cmpg-float v0, p8, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mThickness:[F

    aput v1, v0, v2

    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mThickness:[F

    aput v1, v0, v3

    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mThickness:[F

    aput v1, v0, v4

    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/glview/GLTriangle;->translateAbsolute(FF)V

    invoke-virtual {p0, p4, p5}, Lcom/samsung/android/glview/GLTriangle;->setSize(FF)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mThickness:[F

    aput p8, v0, v2

    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mThickness:[F

    aput p8, v0, v3

    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mThickness:[F

    aput p8, v0, v4

    goto :goto_0
.end method


# virtual methods
.method protected declared-synchronized clearBuffers()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mThicknessBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mThicknessBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/glview/GLTexture;->clearBuffers()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized contains(FF)Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized findViewByCoordinate(FF)Lcom/samsung/android/glview/GLView;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public getColor()I
    .locals 6

    const/high16 v5, 0x437f0000    # 255.0f

    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mColor:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    mul-float/2addr v0, v5

    float-to-int v0, v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLTriangle;->mColor:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    mul-float/2addr v1, v5

    float-to-int v1, v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLTriangle;->mColor:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iget-object v3, p0, Lcom/samsung/android/glview/GLTriangle;->mColor:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public getThickness()F
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mThickness:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method protected declared-synchronized initBuffers()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTriangle;->clearBuffers()V

    iget-object v2, p0, Lcom/samsung/android/glview/GLTriangle;->mVertices:[F

    invoke-static {v2}, Lcom/samsung/android/glview/GLUtil;->getFloatBufferFromFloatArray([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/glview/GLTriangle;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/samsung/android/glview/GLTriangle;->mThickness:[F

    invoke-static {v2}, Lcom/samsung/android/glview/GLUtil;->getFloatBufferFromFloatArray([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/glview/GLTriangle;->mThicknessBuffer:Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/glview/GLTriangle;->mIndices:[B

    if-nez v2, :cond_0

    const/4 v2, 0x3

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/samsung/android/glview/GLTriangle;->mIndices:[B

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLTriangle;->mIndices:[B

    add-int/lit8 v1, v0, 0x1

    const/4 v3, 0x0

    aput-byte v3, v2, v0

    iget-object v2, p0, Lcom/samsung/android/glview/GLTriangle;->mIndices:[B

    add-int/lit8 v0, v1, 0x1

    const/4 v3, 0x1

    aput-byte v3, v2, v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLTriangle;->mIndices:[B

    add-int/lit8 v1, v0, 0x1

    const/4 v3, 0x2

    aput-byte v3, v2, v0

    iget-object v2, p0, Lcom/samsung/android/glview/GLTriangle;->mIndices:[B

    invoke-static {v2}, Lcom/samsung/android/glview/GLUtil;->getByteBufferFromByteArray([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/glview/GLTriangle;->mIndexBuffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized initSize()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTriangle;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTriangle;->getHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/glview/GLTriangle;->setSize(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected loadBitmap()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized onDraw()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLTriangle;->mTextureLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLTriangle;->mLayoutUpdated:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTriangle;->setVertices()V

    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mVertices:[F

    invoke-static {v0}, Lcom/samsung/android/glview/GLUtil;->getFloatBufferFromFloatArray([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLTriangle;->mLayoutUpdated:Z

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mThickness:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glLineWidth(F)V

    iget v0, p0, Lcom/samsung/android/glview/GLTriangle;->mProgramID:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mObjSampler:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/glview/GLTriangle;->mColor:[F

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mViewMatrix:[F

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTriangle;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getProjMatrix()[F

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTriangle;->getMatrix()[F

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mObjMVPMatrix:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/glview/GLTriangle;->mViewMatrix:[F

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mObjAlpha:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTriangle;->getAlpha()F

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mObjPointSize:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mObjPosition:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mObjPointSize:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    const/4 v1, 0x1

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/glview/GLTriangle;->mThicknessBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mObjPosition:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/glview/GLTriangle;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLTriangle;->mTextureReloaded:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLTriangle;->mTextureReloaded:Z

    :cond_3
    iget v0, p0, Lcom/samsung/android/glview/GLTriangle;->mTriangleType:I

    if-ne v0, v6, :cond_4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/glview/GLTriangle;->mIndices:[B

    array-length v1, v1

    const/16 v2, 0x1401

    iget-object v3, p0, Lcom/samsung/android/glview/GLTriangle;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    :cond_4
    iget v0, p0, Lcom/samsung/android/glview/GLTriangle;->mTriangleType:I

    if-ne v0, v7, :cond_7

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/samsung/android/glview/GLTriangle;->mIndices:[B

    array-length v1, v1

    const/16 v2, 0x1401

    iget-object v3, p0, Lcom/samsung/android/glview/GLTriangle;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    :goto_2
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mObjPointSize:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mObjPosition:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mIndexBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mThicknessBuffer:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_2

    :cond_6
    const-string v0, "GLTriangle"

    const-string v1, "init buffers on onDraw"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTriangle;->setVertices()V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTriangle;->initBuffers()V

    goto/16 :goto_1

    :cond_7
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/samsung/android/glview/GLTriangle;->mIndices:[B

    array-length v1, v1

    const/16 v2, 0x1401

    iget-object v3, p0, Lcom/samsung/android/glview/GLTriangle;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method protected declared-synchronized onLoad()Z
    .locals 4

    const/4 v3, 0x1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTriangle;->initSize()V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTriangle;->setVertices()V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTriangle;->initBuffers()V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTriangle;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getProgramStorage()Lcom/samsung/android/glview/GLProgramStorage;

    move-result-object v1

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLProgramStorage;->getProgram(I)Lcom/samsung/android/glview/GLProgram;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLProgram;->getProgramID()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLTriangle;->mProgramID:I

    const-string v1, "a_position"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTriangle;->mObjPosition:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const-string v1, "a_pointsize"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTriangle;->mObjPointSize:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const-string v1, "tex_sampler"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTriangle;->mObjSampler:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const-string v1, "u_MVPMatrix"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTriangle;->mObjMVPMatrix:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const-string v1, "u_alpha"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTriangle;->mObjAlpha:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTriangle;->mTextureLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v3

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setColor(I)V
    .locals 4

    const/high16 v3, 0x437f0000    # 255.0f

    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mColor:[F

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mColor:[F

    const/4 v1, 0x1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mColor:[F

    const/4 v1, 0x2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mColor:[F

    const/4 v1, 0x3

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    return-void
.end method

.method public setShaderProgram(I)V
    .locals 0

    return-void
.end method

.method public setThickness(F)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mThickness:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mThickness:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mThickness:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTriangle;->initBuffers()V

    return-void
.end method

.method public setTint(I)V
    .locals 0

    return-void
.end method

.method protected declared-synchronized setVertices()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mVertices:[F

    if-nez v0, :cond_0

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mVertices:[F

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mVertices:[F

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTriangle;->getLeft()F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mVertices:[F

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTriangle;->getTop()F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mVertices:[F

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mVertices:[F

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTriangle;->getLeft()F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mVertices:[F

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTriangle;->getBottom()F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mVertices:[F

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mVertices:[F

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTriangle;->getRight()F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mVertices:[F

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTriangle;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTriangle;->getBottom()F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLTriangle;->mVertices:[F

    const/16 v1, 0x8

    const/4 v2, 0x0

    aput v2, v0, v1

    iget v0, p0, Lcom/samsung/android/glview/GLTriangle;->mDirection:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLTriangle;->rotateDegree(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
