.class public Lcom/samsung/android/glview/GLRectangle;
.super Lcom/samsung/android/glview/GLTexture;
.source "GLRectangle.java"


# static fields
.field private static final DEFAULT_THICKNESS:F = 1.0f

.field private static final ROUNDDOWN_DIGIT:I = 0x989680

.field private static final TAG:Ljava/lang/String; = "GLRectangle"

.field public static final TYPE_FILL:I = 0x1

.field public static final TYPE_STROKE:I


# instance fields
.field private mColor:[F

.field private mFillColor:[F

.field private mObjFillColor:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

.field private mObjSampler:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

.field private mObjThickness:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

.field private mObjType:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

.field private mRectangleType:I

.field private mThickness:F


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-direct {p0, p1, v2, v2}, Lcom/samsung/android/glview/GLTexture;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput v3, p0, Lcom/samsung/android/glview/GLRectangle;->mRectangleType:I

    iput v1, p0, Lcom/samsung/android/glview/GLRectangle;->mThickness:F

    iput-object v0, p0, Lcom/samsung/android/glview/GLRectangle;->mObjType:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iput-object v0, p0, Lcom/samsung/android/glview/GLRectangle;->mObjSampler:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iput-object v0, p0, Lcom/samsung/android/glview/GLRectangle;->mObjThickness:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iput-object v0, p0, Lcom/samsung/android/glview/GLRectangle;->mObjFillColor:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/glview/GLRectangle;->mColor:[F

    iput v3, p0, Lcom/samsung/android/glview/GLRectangle;->mRectangleType:I

    invoke-virtual {p0, p6}, Lcom/samsung/android/glview/GLRectangle;->setColor(I)V

    cmpg-float v0, p7, v1

    if-gez v0, :cond_0

    iput v1, p0, Lcom/samsung/android/glview/GLRectangle;->mThickness:F

    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/glview/GLRectangle;->translateAbsolute(FF)V

    invoke-virtual {p0, p4, p5}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    return-void

    :cond_0
    iput p7, p0, Lcom/samsung/android/glview/GLRectangle;->mThickness:F

    goto :goto_0
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V
    .locals 3

    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/samsung/android/glview/GLTexture;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLRectangle;->mRectangleType:I

    iput v2, p0, Lcom/samsung/android/glview/GLRectangle;->mThickness:F

    iput-object v1, p0, Lcom/samsung/android/glview/GLRectangle;->mObjType:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iput-object v1, p0, Lcom/samsung/android/glview/GLRectangle;->mObjSampler:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iput-object v1, p0, Lcom/samsung/android/glview/GLRectangle;->mObjThickness:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iput-object v1, p0, Lcom/samsung/android/glview/GLRectangle;->mObjFillColor:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/glview/GLRectangle;->mColor:[F

    iput p8, p0, Lcom/samsung/android/glview/GLRectangle;->mRectangleType:I

    invoke-virtual {p0, p6}, Lcom/samsung/android/glview/GLRectangle;->setColor(I)V

    cmpg-float v0, p7, v2

    if-gez v0, :cond_0

    iput v2, p0, Lcom/samsung/android/glview/GLRectangle;->mThickness:F

    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/glview/GLRectangle;->translateAbsolute(FF)V

    invoke-virtual {p0, p4, p5}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    return-void

    :cond_0
    iput p7, p0, Lcom/samsung/android/glview/GLRectangle;->mThickness:F

    goto :goto_0
.end method


# virtual methods
.method public getColor()I
    .locals 6

    const/high16 v5, 0x437f0000    # 255.0f

    iget-object v0, p0, Lcom/samsung/android/glview/GLRectangle;->mColor:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    mul-float/2addr v0, v5

    float-to-int v0, v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLRectangle;->mColor:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    mul-float/2addr v1, v5

    float-to-int v1, v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLRectangle;->mColor:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iget-object v3, p0, Lcom/samsung/android/glview/GLRectangle;->mColor:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public getThickness()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLRectangle;->mThickness:F

    return v0
.end method

.method public initSize()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLRectangle;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLRectangle;->getHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    return-void
.end method

.method protected loadBitmap()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDraw()V
    .locals 10

    const/16 v9, 0x1406

    const/16 v8, 0xb71

    const v7, 0x4b189680    # 1.0E7f

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLRectangle;->mTextureLoaded:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLRectangle;->mLayoutUpdated:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLRectangle;->setVertices()V

    iget-object v0, p0, Lcom/samsung/android/glview/GLRectangle;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLRectangle;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLRectangle;->mVertices:[F

    invoke-static {v0}, Lcom/samsung/android/glview/GLUtil;->getFloatBufferFromFloatArray([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glview/GLRectangle;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLRectangle;->mLayoutUpdated:Z

    :cond_2
    :goto_1
    iget v0, p0, Lcom/samsung/android/glview/GLRectangle;->mProgramID:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLRectangle;->mObjSampler:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    iget-object v2, p0, Lcom/samsung/android/glview/GLRectangle;->mColor:[F

    invoke-static {v0, v6, v2, v1}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLRectangle;->mObjFillColor:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    iget-object v2, p0, Lcom/samsung/android/glview/GLRectangle;->mFillColor:[F

    invoke-static {v0, v6, v2, v1}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLRectangle;->mViewMatrix:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLRectangle;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getProjMatrix()[F

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLRectangle;->getMatrix()[F

    move-result-object v4

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLRectangle;->mObjMVPMatrix:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    iget-object v2, p0, Lcom/samsung/android/glview/GLRectangle;->mViewMatrix:[F

    invoke-static {v0, v6, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLRectangle;->mObjAlpha:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLRectangle;->getAlpha()F

    move-result v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLRectangle;->mObjThickness:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLRectangle;->getWidth()F

    move-result v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/glview/GLRectangle;->mThickness:F

    mul-float/2addr v2, v3

    mul-float/2addr v2, v7

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v7

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLRectangle;->mObjType:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    iget v2, p0, Lcom/samsung/android/glview/GLRectangle;->mRectangleType:I

    int-to-float v2, v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLRectangle;->mObjParam:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLRectangle;->getWidth()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLRectangle;->getHeight()F

    move-result v3

    div-float/2addr v2, v3

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLRectangle;->mObjPosition:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLRectangle;->mObjTextureCoord:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {v8}, Landroid/opengl/GLES20;->glDisable(I)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLRectangle;->mObjPosition:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v2, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    const/4 v3, 0x3

    iget-object v7, p0, Lcom/samsung/android/glview/GLRectangle;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move v4, v9

    move v5, v1

    move v6, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLRectangle;->mObjTextureCoord:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v2, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    const/4 v3, 0x2

    iget-object v7, p0, Lcom/samsung/android/glview/GLRectangle;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    move v4, v9

    move v5, v1

    move v6, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLRectangle;->mTextureReloaded:Z

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLRectangle;->mTextureReloaded:Z

    :cond_3
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/samsung/android/glview/GLRectangle;->mIndices:[B

    array-length v1, v1

    const/16 v2, 0x1401

    iget-object v3, p0, Lcom/samsung/android/glview/GLRectangle;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLRectangle;->mObjPosition:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLRectangle;->mObjTextureCoord:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v8}, Landroid/opengl/GLES20;->glEnable(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/glview/GLRectangle;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/glview/GLRectangle;->mIndexBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_2

    :cond_5
    const-string v0, "GLRectangle"

    const-string v2, "init buffers on onDraw"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLRectangle;->setVertices()V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLRectangle;->initBuffers()V

    goto/16 :goto_1
.end method

.method protected onLoad()Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLRectangle;->initSize()V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLRectangle;->setVertices()V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLRectangle;->initBuffers()V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLRectangle;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getProgramStorage()Lcom/samsung/android/glview/GLProgramStorage;

    move-result-object v1

    const/16 v2, 0x3ef

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLProgramStorage;->getProgram(I)Lcom/samsung/android/glview/GLProgram;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLProgram;->getProgramID()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLRectangle;->mProgramID:I

    const-string v1, "u_MVPMatrix"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLRectangle;->mObjMVPMatrix:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const-string v1, "a_position"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLRectangle;->mObjPosition:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const-string v1, "a_texcoord"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLRectangle;->mObjTextureCoord:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const-string v1, "tex_sampler"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLRectangle;->mObjSampler:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const-string v1, "fill_color"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLRectangle;->mObjFillColor:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const-string v1, "u_alpha"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLRectangle;->mObjAlpha:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const-string v1, "u_thickness"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLRectangle;->mObjThickness:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const-string v1, "u_param"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLRectangle;->mObjParam:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    const-string v1, "u_type"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLRectangle;->mObjType:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    :cond_0
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLRectangle;->mTextureLoaded:Z

    return v3
.end method

.method public setColor(I)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x437f0000    # 255.0f

    iget-object v0, p0, Lcom/samsung/android/glview/GLRectangle;->mColor:[F

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    aput v1, v0, v3

    iget-object v0, p0, Lcom/samsung/android/glview/GLRectangle;->mColor:[F

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    aput v1, v0, v4

    iget-object v0, p0, Lcom/samsung/android/glview/GLRectangle;->mColor:[F

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    aput v1, v0, v5

    iget-object v0, p0, Lcom/samsung/android/glview/GLRectangle;->mColor:[F

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    aput v1, v0, v6

    iget-object v0, p0, Lcom/samsung/android/glview/GLRectangle;->mFillColor:[F

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/glview/GLRectangle;->mFillColor:[F

    iget-object v0, p0, Lcom/samsung/android/glview/GLRectangle;->mFillColor:[F

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    aput v1, v0, v3

    iget-object v0, p0, Lcom/samsung/android/glview/GLRectangle;->mFillColor:[F

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    aput v1, v0, v4

    iget-object v0, p0, Lcom/samsung/android/glview/GLRectangle;->mFillColor:[F

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    aput v1, v0, v5

    iget-object v0, p0, Lcom/samsung/android/glview/GLRectangle;->mFillColor:[F

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    aput v1, v0, v6

    :cond_0
    return-void
.end method

.method public setFillColor(I)V
    .locals 4

    const/high16 v3, 0x437f0000    # 255.0f

    iget-object v0, p0, Lcom/samsung/android/glview/GLRectangle;->mFillColor:[F

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/glview/GLRectangle;->mFillColor:[F

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLRectangle;->mFillColor:[F

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLRectangle;->mFillColor:[F

    const/4 v1, 0x1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLRectangle;->mFillColor:[F

    const/4 v1, 0x2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/glview/GLRectangle;->mFillColor:[F

    const/4 v1, 0x3

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    return-void
.end method

.method public setRect(FFFF)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/glview/GLRectangle;->translateAbsolute(FF)V

    invoke-virtual {p0, p3, p4}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLRectangle;->setVertices()V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLRectangle;->initBuffers()V

    return-void
.end method

.method public setRect(Landroid/graphics/RectF;)V
    .locals 4

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/glview/GLRectangle;->setRect(FFFF)V

    return-void
.end method

.method public setThickness(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/glview/GLRectangle;->mThickness:F

    return-void
.end method
