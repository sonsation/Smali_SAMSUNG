.class public Lcom/samsung/android/glview/GLLine;
.super Lcom/samsung/android/glview/GLTexture;
.source "GLLine.java"


# static fields
.field private static final DEFAULT_THICKNESS:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "GLLine"


# instance fields
.field private mColor:[F

.field private mObjPointSize:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

.field private mObjSampler:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

.field private mThickness:[F

.field private mThicknessBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0, v0}, Lcom/samsung/android/glview/GLTexture;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/glview/GLLine;->mThickness:[F

    iput-object v4, p0, Lcom/samsung/android/glview/GLLine;->mObjSampler:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iput-object v4, p0, Lcom/samsung/android/glview/GLLine;->mObjPointSize:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/glview/GLLine;->mColor:[F

    invoke-virtual {p0, p6}, Lcom/samsung/android/glview/GLLine;->setColor(I)V

    cmpg-float v0, p7, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLLine;->mThickness:[F

    aput v1, v0, v2

    iget-object v0, p0, Lcom/samsung/android/glview/GLLine;->mThickness:[F

    aput v1, v0, v3

    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/glview/GLLine;->translateAbsolute(FF)V

    invoke-virtual {p0, p4, p5}, Lcom/samsung/android/glview/GLLine;->setSize(FF)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLLine;->mThickness:[F

    aput p7, v0, v2

    iget-object v0, p0, Lcom/samsung/android/glview/GLLine;->mThickness:[F

    aput p7, v0, v3

    goto :goto_0
.end method


# virtual methods
.method protected clearBuffers()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLLine;->mThicknessBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLLine;->mThicknessBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/glview/GLTexture;->clearBuffers()V

    return-void
.end method

.method public getColor()I
    .locals 6

    const/high16 v5, 0x437f0000    # 255.0f

    iget-object v0, p0, Lcom/samsung/android/glview/GLLine;->mColor:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    mul-float/2addr v0, v5

    float-to-int v0, v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLLine;->mColor:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    mul-float/2addr v1, v5

    float-to-int v1, v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLLine;->mColor:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iget-object v3, p0, Lcom/samsung/android/glview/GLLine;->mColor:[F

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

    iget-object v0, p0, Lcom/samsung/android/glview/GLLine;->mThickness:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method protected declared-synchronized initBuffers()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLLine;->clearBuffers()V

    iget-object v2, p0, Lcom/samsung/android/glview/GLLine;->mVertices:[F

    invoke-static {v2}, Lcom/samsung/android/glview/GLUtil;->getFloatBufferFromFloatArray([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/glview/GLLine;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/samsung/android/glview/GLLine;->mThickness:[F

    invoke-static {v2}, Lcom/samsung/android/glview/GLUtil;->getFloatBufferFromFloatArray([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/glview/GLLine;->mThicknessBuffer:Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/glview/GLLine;->mIndices:[B

    if-nez v2, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/samsung/android/glview/GLLine;->mIndices:[B

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLLine;->mIndices:[B

    add-int/lit8 v1, v0, 0x1

    const/4 v3, 0x0

    aput-byte v3, v2, v0

    iget-object v2, p0, Lcom/samsung/android/glview/GLLine;->mIndices:[B

    add-int/lit8 v0, v1, 0x1

    const/4 v3, 0x1

    aput-byte v3, v2, v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLLine;->mIndices:[B

    invoke-static {v2}, Lcom/samsung/android/glview/GLUtil;->getByteBufferFromByteArray([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/glview/GLLine;->mIndexBuffer:Ljava/nio/ByteBuffer;
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

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLLine;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLLine;->getHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/glview/GLLine;->setSize(FF)V

    return-void
.end method

.method protected loadBitmap()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDraw()V
    .locals 11

    const/16 v10, 0x1406

    const/16 v9, 0xb71

    const/4 v8, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLLine;->mTextureLoaded:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLLine;->mLayoutUpdated:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLLine;->setVertices()V

    iget-object v0, p0, Lcom/samsung/android/glview/GLLine;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLLine;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLLine;->mVertices:[F

    invoke-static {v0}, Lcom/samsung/android/glview/GLUtil;->getFloatBufferFromFloatArray([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glview/GLLine;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLLine;->mLayoutUpdated:Z

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLLine;->mThickness:[F

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glLineWidth(F)V

    iget v0, p0, Lcom/samsung/android/glview/GLLine;->mProgramID:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLLine;->mObjSampler:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    iget-object v2, p0, Lcom/samsung/android/glview/GLLine;->mColor:[F

    invoke-static {v0, v8, v2, v1}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLLine;->mViewMatrix:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLLine;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getProjMatrix()[F

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLLine;->getMatrix()[F

    move-result-object v4

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLLine;->mObjMVPMatrix:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    iget-object v2, p0, Lcom/samsung/android/glview/GLLine;->mViewMatrix:[F

    invoke-static {v0, v8, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLLine;->mObjAlpha:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLLine;->getAlpha()F

    move-result v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLLine;->mObjPointSize:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLLine;->mObjPosition:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {v9}, Landroid/opengl/GLES20;->glDisable(I)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLLine;->mObjPointSize:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v2, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    iget-object v7, p0, Lcom/samsung/android/glview/GLLine;->mThicknessBuffer:Ljava/nio/FloatBuffer;

    move v3, v8

    move v4, v10

    move v5, v1

    move v6, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLLine;->mObjPosition:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v2, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    const/4 v3, 0x3

    iget-object v7, p0, Lcom/samsung/android/glview/GLLine;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move v4, v10

    move v5, v1

    move v6, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLLine;->mTextureReloaded:Z

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLLine;->mTextureReloaded:Z

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLLine;->mIndices:[B

    array-length v0, v0

    const/16 v1, 0x1401

    iget-object v2, p0, Lcom/samsung/android/glview/GLLine;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v8, v0, v1, v2}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLLine;->mObjPointSize:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLLine;->mObjPosition:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v9}, Landroid/opengl/GLES20;->glEnable(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/glview/GLLine;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/glview/GLLine;->mIndexBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/glview/GLLine;->mThicknessBuffer:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_2

    :cond_5
    const-string v0, "GLLine"

    const-string v2, "init buffers on onDraw"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLLine;->setVertices()V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLLine;->initBuffers()V

    goto/16 :goto_1
.end method

.method protected onLoad()Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLLine;->initSize()V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLLine;->setVertices()V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLLine;->initBuffers()V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLLine;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getProgramStorage()Lcom/samsung/android/glview/GLProgramStorage;

    move-result-object v1

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLProgramStorage;->getProgram(I)Lcom/samsung/android/glview/GLProgram;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLProgram;->getProgramID()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLLine;->mProgramID:I

    const-string v1, "a_position"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLLine;->mObjPosition:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const-string v1, "a_pointsize"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLLine;->mObjPointSize:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const-string v1, "tex_sampler"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLLine;->mObjSampler:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const-string v1, "u_MVPMatrix"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLLine;->mObjMVPMatrix:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const-string v1, "u_alpha"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLLine;->mObjAlpha:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    :cond_0
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLLine;->mTextureLoaded:Z

    return v3
.end method

.method public setColor(I)V
    .locals 4

    const/high16 v3, 0x437f0000    # 255.0f

    iget-object v0, p0, Lcom/samsung/android/glview/GLLine;->mColor:[F

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLLine;->mColor:[F

    const/4 v1, 0x1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLLine;->mColor:[F

    const/4 v1, 0x2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLLine;->mColor:[F

    const/4 v1, 0x3

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    return-void
.end method

.method public setLine(FFFF)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/glview/GLLine;->translateAbsolute(FF)V

    invoke-virtual {p0, p3, p4}, Lcom/samsung/android/glview/GLLine;->setSize(FF)V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLLine;->setVertices()V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLLine;->initBuffers()V

    return-void
.end method

.method public setThickness(F)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/glview/GLLine;->mThickness:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLLine;->mThickness:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLLine;->initBuffers()V

    return-void
.end method

.method protected declared-synchronized setVertices()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLLine;->mVertices:[F

    if-nez v0, :cond_0

    const/4 v0, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/glview/GLLine;->mVertices:[F

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLLine;->mVertices:[F

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLLine;->getLeft()F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLLine;->mVertices:[F

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLLine;->getTop()F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLLine;->mVertices:[F

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLLine;->mVertices:[F

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLLine;->getRight()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLLine;->getThickness()F

    move-result v3

    sub-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLLine;->mVertices:[F

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLLine;->getBottom()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLLine;->getThickness()F

    move-result v3

    sub-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLLine;->mVertices:[F

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
