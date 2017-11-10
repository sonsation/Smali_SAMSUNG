.class public Lcom/samsung/android/glview/GLQuadrangle;
.super Lcom/samsung/android/glview/GLTexture;
.source "GLQuadrangle.java"


# static fields
.field private static final DEFAULT_THICKNESS:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "GLQuadrangle"

.field public static final TYPE_RECTANGLE_CORRECTION_STROKE:I = 0x2

.field public static final TYPE_RECTANGLE_FILL:I = 0x3

.field public static final TYPE_RECTANGLE_STROKE:I = 0x1


# instance fields
.field private mColor:[F

.field private mObjPointSize:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

.field private mObjSampler:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

.field private mPoints:[F

.field private mRectangleType:I

.field private mThickness:[F

.field private mThicknessBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0, v0}, Lcom/samsung/android/glview/GLTexture;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mPoints:[F

    iput v1, p0, Lcom/samsung/android/glview/GLQuadrangle;->mRectangleType:I

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mThickness:[F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mObjSampler:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mObjPointSize:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mColor:[F

    iput v3, p0, Lcom/samsung/android/glview/GLQuadrangle;->mRectangleType:I

    invoke-virtual {p0, p6}, Lcom/samsung/android/glview/GLQuadrangle;->setColor(I)V

    cmpg-float v0, p7, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mThickness:[F

    aput v2, v0, v4

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mThickness:[F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mThickness:[F

    aput v2, v0, v3

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mThickness:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/glview/GLQuadrangle;->translateAbsolute(FF)V

    invoke-virtual {p0, p4, p5}, Lcom/samsung/android/glview/GLQuadrangle;->setSize(FF)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mThickness:[F

    aput p7, v0, v4

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mThickness:[F

    aput p7, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mThickness:[F

    aput p7, v0, v3

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mThickness:[F

    const/4 v1, 0x3

    aput p7, v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFIFII)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0, v0}, Lcom/samsung/android/glview/GLTexture;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mPoints:[F

    iput v1, p0, Lcom/samsung/android/glview/GLQuadrangle;->mRectangleType:I

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mThickness:[F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mObjSampler:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mObjPointSize:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mColor:[F

    iput p8, p0, Lcom/samsung/android/glview/GLQuadrangle;->mRectangleType:I

    invoke-virtual {p0, p6}, Lcom/samsung/android/glview/GLQuadrangle;->setColor(I)V

    cmpg-float v0, p7, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mThickness:[F

    aput v2, v0, v3

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mThickness:[F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mThickness:[F

    aput v2, v0, v4

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mThickness:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/glview/GLQuadrangle;->translateAbsolute(FF)V

    invoke-virtual {p0, p4, p5}, Lcom/samsung/android/glview/GLQuadrangle;->setSize(FF)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mThickness:[F

    aput p7, v0, v3

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mThickness:[F

    aput p7, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mThickness:[F

    aput p7, v0, v4

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mThickness:[F

    const/4 v1, 0x3

    aput p7, v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected clearBuffers()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mThicknessBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mThicknessBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/glview/GLTexture;->clearBuffers()V

    return-void
.end method

.method public contains(FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public findViewByCoordinate(FF)Lcom/samsung/android/glview/GLView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getColor()I
    .locals 6

    const/high16 v5, 0x437f0000    # 255.0f

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mColor:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    mul-float/2addr v0, v5

    float-to-int v0, v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLQuadrangle;->mColor:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    mul-float/2addr v1, v5

    float-to-int v1, v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLQuadrangle;->mColor:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iget-object v3, p0, Lcom/samsung/android/glview/GLQuadrangle;->mColor:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public getPoints()[F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mPoints:[F

    return-object v0
.end method

.method public getThickness()F
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mThickness:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method protected declared-synchronized initBuffers()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLQuadrangle;->clearBuffers()V

    iget-object v2, p0, Lcom/samsung/android/glview/GLQuadrangle;->mVertices:[F

    invoke-static {v2}, Lcom/samsung/android/glview/GLUtil;->getFloatBufferFromFloatArray([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/glview/GLQuadrangle;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/samsung/android/glview/GLQuadrangle;->mThickness:[F

    invoke-static {v2}, Lcom/samsung/android/glview/GLUtil;->getFloatBufferFromFloatArray([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/glview/GLQuadrangle;->mThicknessBuffer:Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/glview/GLQuadrangle;->mIndices:[B

    if-nez v2, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/samsung/android/glview/GLQuadrangle;->mIndices:[B

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLQuadrangle;->mIndices:[B

    add-int/lit8 v1, v0, 0x1

    const/4 v3, 0x0

    aput-byte v3, v2, v0

    iget-object v2, p0, Lcom/samsung/android/glview/GLQuadrangle;->mIndices:[B

    add-int/lit8 v0, v1, 0x1

    const/4 v3, 0x1

    aput-byte v3, v2, v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLQuadrangle;->mIndices:[B

    add-int/lit8 v1, v0, 0x1

    const/4 v3, 0x3

    aput-byte v3, v2, v0

    iget-object v2, p0, Lcom/samsung/android/glview/GLQuadrangle;->mIndices:[B

    const/4 v3, 0x2

    aput-byte v3, v2, v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLQuadrangle;->mIndices:[B

    invoke-static {v2}, Lcom/samsung/android/glview/GLUtil;->getByteBufferFromByteArray([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/glview/GLQuadrangle;->mIndexBuffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public initSize()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLQuadrangle;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLQuadrangle;->getHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/glview/GLQuadrangle;->setSize(FF)V

    return-void
.end method

.method protected loadBitmap()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDraw()V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/16 v8, 0x1401

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mTextureLoaded:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mLayoutUpdated:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLQuadrangle;->setVertices()V

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mVertices:[F

    invoke-static {v0}, Lcom/samsung/android/glview/GLUtil;->getFloatBufferFromFloatArray([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLQuadrangle;->mLayoutUpdated:Z

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mThickness:[F

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glLineWidth(F)V

    iget v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mProgramID:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mObjSampler:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    iget-object v2, p0, Lcom/samsung/android/glview/GLQuadrangle;->mColor:[F

    invoke-static {v0, v6, v2, v1}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mViewMatrix:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLQuadrangle;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getProjMatrix()[F

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLQuadrangle;->getMatrix()[F

    move-result-object v4

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mObjMVPMatrix:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    iget-object v2, p0, Lcom/samsung/android/glview/GLQuadrangle;->mViewMatrix:[F

    invoke-static {v0, v6, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mObjAlpha:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLQuadrangle;->getAlpha()F

    move-result v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mObjPointSize:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mObjPosition:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mObjPointSize:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v2, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    const/16 v4, 0x1406

    iget-object v7, p0, Lcom/samsung/android/glview/GLQuadrangle;->mThicknessBuffer:Ljava/nio/FloatBuffer;

    move v3, v6

    move v5, v1

    move v6, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mObjPosition:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v2, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    const/16 v4, 0x1406

    iget-object v7, p0, Lcom/samsung/android/glview/GLQuadrangle;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move v3, v10

    move v5, v1

    move v6, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mTextureReloaded:Z

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLQuadrangle;->mTextureReloaded:Z

    :cond_3
    iget v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mRectangleType:I

    if-ne v0, v9, :cond_4

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mIndices:[B

    array-length v0, v0

    iget-object v2, p0, Lcom/samsung/android/glview/GLQuadrangle;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v1, v0, v8, v2}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    :cond_4
    iget v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mRectangleType:I

    if-ne v0, v10, :cond_7

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/samsung/android/glview/GLQuadrangle;->mIndices:[B

    array-length v1, v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLQuadrangle;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1, v8, v2}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mObjPointSize:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mObjPosition:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mIndexBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mThicknessBuffer:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_2

    :cond_6
    const-string v0, "GLQuadrangle"

    const-string v2, "init buffers on onDraw"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLQuadrangle;->setVertices()V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLQuadrangle;->initBuffers()V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mIndices:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLQuadrangle;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v9, v0, v8, v1}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    goto :goto_2
.end method

.method protected onLoad()Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLQuadrangle;->initSize()V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLQuadrangle;->setVertices()V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLQuadrangle;->initBuffers()V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLQuadrangle;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getProgramStorage()Lcom/samsung/android/glview/GLProgramStorage;

    move-result-object v1

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLProgramStorage;->getProgram(I)Lcom/samsung/android/glview/GLProgram;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLProgram;->getProgramID()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLQuadrangle;->mProgramID:I

    const-string v1, "a_position"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLQuadrangle;->mObjPosition:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const-string v1, "a_pointsize"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLQuadrangle;->mObjPointSize:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const-string v1, "tex_sampler"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLQuadrangle;->mObjSampler:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const-string v1, "u_MVPMatrix"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLQuadrangle;->mObjMVPMatrix:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const-string v1, "u_alpha"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLQuadrangle;->mObjAlpha:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    :cond_0
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLQuadrangle;->mTextureLoaded:Z

    return v3
.end method

.method public setColor(I)V
    .locals 4

    const/high16 v3, 0x437f0000    # 255.0f

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mColor:[F

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mColor:[F

    const/4 v1, 0x1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mColor:[F

    const/4 v1, 0x2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mColor:[F

    const/4 v1, 0x3

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    return-void
.end method

.method public setPoint(FFFFFFI)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mPoints:[F

    mul-int/lit8 v1, p7, 0x2

    aput p1, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mPoints:[F

    mul-int/lit8 v1, p7, 0x2

    add-int/lit8 v1, v1, 0x1

    aput p2, v0, v1

    invoke-virtual {p0, p3, p4}, Lcom/samsung/android/glview/GLQuadrangle;->translateAbsolute(FF)V

    invoke-virtual {p0, p5, p6}, Lcom/samsung/android/glview/GLQuadrangle;->setSize(FF)V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLQuadrangle;->setVertices()V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLQuadrangle;->initBuffers()V

    return-void
.end method

.method public setPoints([FFFFF)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mPoints:[F

    aget v1, p1, v2

    aput v1, v0, v2

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mPoints:[F

    aget v1, p1, v3

    aput v1, v0, v3

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mPoints:[F

    aget v1, p1, v4

    aput v1, v0, v4

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mPoints:[F

    aget v1, p1, v5

    aput v1, v0, v5

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mPoints:[F

    aget v1, p1, v6

    aput v1, v0, v6

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mPoints:[F

    const/4 v1, 0x5

    const/4 v2, 0x5

    aget v2, p1, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mPoints:[F

    const/4 v1, 0x6

    const/4 v2, 0x6

    aget v2, p1, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mPoints:[F

    const/4 v1, 0x7

    const/4 v2, 0x7

    aget v2, p1, v2

    aput v2, v0, v1

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/glview/GLQuadrangle;->translateAbsolute(FF)V

    invoke-virtual {p0, p4, p5}, Lcom/samsung/android/glview/GLQuadrangle;->setSize(FF)V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLQuadrangle;->setVertices()V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLQuadrangle;->initBuffers()V

    return-void
.end method

.method public setThickness(F)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mThickness:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mThickness:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mThickness:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mThickness:[F

    const/4 v1, 0x3

    aput p1, v0, v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLQuadrangle;->initBuffers()V

    return-void
.end method

.method protected setVertices()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mVertices:[F

    if-nez v0, :cond_0

    const/16 v0, 0xc

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mVertices:[F

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mVertices:[F

    iget-object v1, p0, Lcom/samsung/android/glview/GLQuadrangle;->mPoints:[F

    aget v1, v1, v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLQuadrangle;->getTranslateX()F

    move-result v2

    sub-float/2addr v1, v2

    aput v1, v0, v3

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mVertices:[F

    iget-object v1, p0, Lcom/samsung/android/glview/GLQuadrangle;->mPoints:[F

    aget v1, v1, v5

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLQuadrangle;->getTranslateY()F

    move-result v2

    sub-float/2addr v1, v2

    aput v1, v0, v5

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mVertices:[F

    aput v4, v0, v6

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mVertices:[F

    iget-object v1, p0, Lcom/samsung/android/glview/GLQuadrangle;->mPoints:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLQuadrangle;->getTranslateX()F

    move-result v2

    sub-float/2addr v1, v2

    aput v1, v0, v7

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mVertices:[F

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/samsung/android/glview/GLQuadrangle;->mPoints:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLQuadrangle;->getTranslateY()F

    move-result v3

    sub-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mVertices:[F

    const/4 v1, 0x5

    aput v4, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mVertices:[F

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/samsung/android/glview/GLQuadrangle;->mPoints:[F

    aget v2, v2, v6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLQuadrangle;->getTranslateX()F

    move-result v3

    sub-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mVertices:[F

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/samsung/android/glview/GLQuadrangle;->mPoints:[F

    aget v2, v2, v7

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLQuadrangle;->getTranslateY()F

    move-result v3

    sub-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mVertices:[F

    const/16 v1, 0x8

    aput v4, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mVertices:[F

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/samsung/android/glview/GLQuadrangle;->mPoints:[F

    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLQuadrangle;->getTranslateX()F

    move-result v3

    sub-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mVertices:[F

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/samsung/android/glview/GLQuadrangle;->mPoints:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLQuadrangle;->getTranslateY()F

    move-result v3

    sub-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLQuadrangle;->mVertices:[F

    const/16 v1, 0xb

    aput v4, v0, v1

    return-void
.end method
