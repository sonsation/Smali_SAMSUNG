.class public Lcom/samsung/android/glview/GLNinePatch;
.super Lcom/samsung/android/glview/GLTexture;
.source "GLNinePatch.java"


# static fields
.field private static final COORDINATE_LENGTH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GLNinePatchTexture"

.field private static final TRIANGLE_INDEX_LENGTH:I = 0x3

.field private static final U_INDEX:I = 0x0

.field private static final VERTEX_LENGTH:I = 0x3

.field private static final V_INDEX:I = 0x1

.field private static final X_INDEX:I = 0x0

.field private static final Y_INDEX:I = 0x1

.field private static final Z_INDEX:I = 0x2


# instance fields
.field private mDivX:[I

.field private mDivY:[I

.field private mNinePatchHeight:I

.field private mNinePatchWidth:I

.field private mResId:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFI)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput v0, p0, Lcom/samsung/android/glview/GLNinePatch;->mNinePatchWidth:I

    iput v0, p0, Lcom/samsung/android/glview/GLNinePatch;->mNinePatchHeight:I

    iput p6, p0, Lcom/samsung/android/glview/GLNinePatch;->mResId:I

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLNinePatch;->loadNinePatchResource()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput v0, p0, Lcom/samsung/android/glview/GLNinePatch;->mNinePatchWidth:I

    iput v0, p0, Lcom/samsung/android/glview/GLNinePatch;->mNinePatchHeight:I

    iput p6, p0, Lcom/samsung/android/glview/GLNinePatch;->mResId:I

    iput p7, p0, Lcom/samsung/android/glview/GLNinePatch;->mAlpha:F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLNinePatch;->loadNinePatchResource()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFI)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLTexture;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput v0, p0, Lcom/samsung/android/glview/GLNinePatch;->mNinePatchWidth:I

    iput v0, p0, Lcom/samsung/android/glview/GLNinePatch;->mNinePatchHeight:I

    iput p4, p0, Lcom/samsung/android/glview/GLNinePatch;->mResId:I

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLNinePatch;->loadNinePatchResource()V

    return-void
.end method

.method private processNinePatchChunk([B)Z
    .locals 13

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    if-nez v10, :cond_0

    const/4 v11, 0x0

    :goto_0
    return v11

    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    new-array v11, v6, [I

    iput-object v11, p0, Lcom/samsung/android/glview/GLNinePatch;->mDivX:[I

    new-array v11, v7, [I

    iput-object v11, p0, Lcom/samsung/android/glview/GLNinePatch;->mDivY:[I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v3, v9, v8, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v11}, Lcom/samsung/android/glview/GLNinePatch;->setPaddings(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    const/4 v2, 0x0

    iget-object v11, p0, Lcom/samsung/android/glview/GLNinePatch;->mDivX:[I

    array-length v4, v11

    :goto_1
    if-ge v2, v4, :cond_1

    iget-object v11, p0, Lcom/samsung/android/glview/GLNinePatch;->mDivX:[I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    aput v12, v11, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    iget-object v11, p0, Lcom/samsung/android/glview/GLNinePatch;->mDivY:[I

    array-length v4, v11

    :goto_2
    if-ge v2, v4, :cond_2

    iget-object v11, p0, Lcom/samsung/android/glview/GLNinePatch;->mDivY:[I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    aput v12, v11, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v11, 0x1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/samsung/android/glview/GLNinePatch;->mDivX:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLNinePatch;->mDivY:[I

    invoke-super {p0}, Lcom/samsung/android/glview/GLTexture;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLNinePatch;->mNinePatchHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLNinePatch;->mNinePatchWidth:I

    return v0
.end method

.method protected declared-synchronized initBuffers()V
    .locals 12

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLNinePatch;->clearBuffers()V

    iget-object v9, p0, Lcom/samsung/android/glview/GLNinePatch;->mVertices:[F

    invoke-static {v9}, Lcom/samsung/android/glview/GLUtil;->getFloatBufferFromFloatArray([F)Ljava/nio/FloatBuffer;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/glview/GLNinePatch;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v9, p0, Lcom/samsung/android/glview/GLNinePatch;->mDivX:[I

    array-length v9, v9

    add-int/lit8 v0, v9, 0x1

    iget-object v9, p0, Lcom/samsung/android/glview/GLNinePatch;->mDivY:[I

    array-length v9, v9

    add-int/lit8 v1, v9, 0x1

    iget-object v9, p0, Lcom/samsung/android/glview/GLNinePatch;->mDivX:[I

    array-length v9, v9

    add-int/lit8 v2, v9, 0x2

    iget-object v9, p0, Lcom/samsung/android/glview/GLNinePatch;->mDivY:[I

    array-length v9, v9

    add-int/lit8 v3, v9, 0x2

    const/4 v6, -0x1

    iget-object v9, p0, Lcom/samsung/android/glview/GLNinePatch;->mIndices:[B

    if-nez v9, :cond_0

    mul-int v9, v0, v1

    mul-int/lit8 v9, v9, 0x2

    mul-int/lit8 v9, v9, 0x3

    new-array v9, v9, [B

    iput-object v9, p0, Lcom/samsung/android/glview/GLNinePatch;->mIndices:[B

    :cond_0
    const/4 v8, 0x0

    move v5, v1

    :goto_0
    if-ge v8, v5, :cond_2

    const/4 v7, 0x0

    move v4, v0

    :goto_1
    if-ge v7, v4, :cond_1

    iget-object v9, p0, Lcom/samsung/android/glview/GLNinePatch;->mIndices:[B

    add-int/lit8 v6, v6, 0x1

    mul-int v10, v8, v2

    add-int/2addr v10, v7

    int-to-byte v10, v10

    aput-byte v10, v9, v6

    iget-object v9, p0, Lcom/samsung/android/glview/GLNinePatch;->mIndices:[B

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v10, v8, 0x1

    mul-int/2addr v10, v2

    add-int/2addr v10, v7

    int-to-byte v10, v10

    aput-byte v10, v9, v6

    iget-object v9, p0, Lcom/samsung/android/glview/GLNinePatch;->mIndices:[B

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v10, v8, 0x1

    mul-int/2addr v10, v2

    add-int/lit8 v11, v7, 0x1

    add-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v9, v6

    iget-object v9, p0, Lcom/samsung/android/glview/GLNinePatch;->mIndices:[B

    add-int/lit8 v6, v6, 0x1

    mul-int v10, v8, v2

    add-int/2addr v10, v7

    int-to-byte v10, v10

    aput-byte v10, v9, v6

    iget-object v9, p0, Lcom/samsung/android/glview/GLNinePatch;->mIndices:[B

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v10, v8, 0x1

    mul-int/2addr v10, v2

    add-int/lit8 v11, v7, 0x1

    add-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v9, v6

    iget-object v9, p0, Lcom/samsung/android/glview/GLNinePatch;->mIndices:[B

    add-int/lit8 v6, v6, 0x1

    mul-int v10, v8, v2

    add-int/lit8 v11, v7, 0x1

    add-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v9, v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    iget-object v9, p0, Lcom/samsung/android/glview/GLNinePatch;->mIndices:[B

    invoke-static {v9}, Lcom/samsung/android/glview/GLUtil;->getByteBufferFromByteArray([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/glview/GLNinePatch;->mIndexBuffer:Ljava/nio/ByteBuffer;

    mul-int v9, v2, v3

    mul-int/lit8 v9, v9, 0x2

    mul-int/lit8 v9, v9, 0x20

    div-int/lit8 v9, v9, 0x8

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/glview/GLNinePatch;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    mul-int v9, v2, v3

    mul-int/lit8 v9, v9, 0x2

    mul-int/lit8 v9, v9, 0x20

    div-int/lit8 v9, v9, 0x8

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/glview/GLNinePatch;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    iget-object v9, p0, Lcom/samsung/android/glview/GLNinePatch;->mCoordBuffer:[F

    if-nez v9, :cond_3

    mul-int v9, v2, v3

    mul-int/lit8 v9, v9, 0x2

    new-array v9, v9, [F

    iput-object v9, p0, Lcom/samsung/android/glview/GLNinePatch;->mCoordBuffer:[F

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLNinePatch;->initCoordBuffer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method protected declared-synchronized initCoordBuffer()V
    .locals 12

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/glview/GLNinePatch;->mDivX:[I

    array-length v6, v6

    add-int/lit8 v0, v6, 0x2

    iget-object v6, p0, Lcom/samsung/android/glview/GLNinePatch;->mDivY:[I

    array-length v6, v6

    add-int/lit8 v1, v6, 0x2

    const/4 v5, 0x0

    move v3, v1

    :goto_0
    if-ge v5, v3, :cond_7

    const/4 v4, 0x0

    move v2, v0

    :goto_1
    if-ge v4, v2, :cond_6

    if-eqz v4, :cond_0

    add-int/lit8 v6, v0, -0x1

    if-ne v4, v6, :cond_3

    :cond_0
    iget-object v9, p0, Lcom/samsung/android/glview/GLNinePatch;->mCoordBuffer:[F

    mul-int v6, v5, v2

    add-int/2addr v6, v4

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v10, v6, 0x0

    if-nez v4, :cond_2

    move v6, v7

    :goto_2
    aput v6, v9, v10

    :goto_3
    if-eqz v5, :cond_1

    add-int/lit8 v6, v1, -0x1

    if-ne v5, v6, :cond_5

    :cond_1
    iget-object v9, p0, Lcom/samsung/android/glview/GLNinePatch;->mCoordBuffer:[F

    mul-int v6, v5, v2

    add-int/2addr v6, v4

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v10, v6, 0x1

    if-nez v5, :cond_4

    move v6, v7

    :goto_4
    aput v6, v9, v10

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move v6, v8

    goto :goto_2

    :cond_3
    iget-object v6, p0, Lcom/samsung/android/glview/GLNinePatch;->mCoordBuffer:[F

    mul-int v9, v5, v2

    add-int/2addr v9, v4

    mul-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, 0x0

    iget-object v10, p0, Lcom/samsung/android/glview/GLNinePatch;->mDivX:[I

    add-int/lit8 v11, v4, -0x1

    aget v10, v10, v11

    int-to-float v10, v10

    iget v11, p0, Lcom/samsung/android/glview/GLNinePatch;->mNinePatchWidth:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    aput v10, v6, v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    :cond_4
    move v6, v8

    goto :goto_4

    :cond_5
    :try_start_1
    iget-object v6, p0, Lcom/samsung/android/glview/GLNinePatch;->mCoordBuffer:[F

    mul-int v9, v5, v2

    add-int/2addr v9, v4

    mul-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, 0x1

    iget-object v10, p0, Lcom/samsung/android/glview/GLNinePatch;->mDivY:[I

    add-int/lit8 v11, v5, -0x1

    aget v10, v10, v11

    int-to-float v10, v10

    iget v11, p0, Lcom/samsung/android/glview/GLNinePatch;->mNinePatchHeight:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    aput v10, v6, v9

    goto :goto_5

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    iget-object v6, p0, Lcom/samsung/android/glview/GLNinePatch;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    iget-object v9, p0, Lcom/samsung/android/glview/GLNinePatch;->mCoordBuffer:[F

    invoke-virtual {v6, v9}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v6

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v5, 0x0

    move v3, v1

    :goto_6
    if-ge v5, v3, :cond_f

    const/4 v4, 0x0

    move v2, v0

    :goto_7
    if-ge v4, v2, :cond_e

    if-eqz v4, :cond_8

    add-int/lit8 v6, v0, -0x1

    if-ne v4, v6, :cond_b

    :cond_8
    iget-object v9, p0, Lcom/samsung/android/glview/GLNinePatch;->mCoordBuffer:[F

    mul-int v6, v5, v2

    add-int/2addr v6, v4

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v10, v6, 0x0

    if-nez v4, :cond_a

    move v6, v8

    :goto_8
    aput v6, v9, v10

    :goto_9
    if-eqz v5, :cond_9

    add-int/lit8 v6, v1, -0x1

    if-ne v5, v6, :cond_d

    :cond_9
    iget-object v9, p0, Lcom/samsung/android/glview/GLNinePatch;->mCoordBuffer:[F

    mul-int v6, v5, v2

    add-int/2addr v6, v4

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v10, v6, 0x1

    if-nez v5, :cond_c

    move v6, v7

    :goto_a
    aput v6, v9, v10

    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_a
    move v6, v7

    goto :goto_8

    :cond_b
    iget-object v6, p0, Lcom/samsung/android/glview/GLNinePatch;->mCoordBuffer:[F

    mul-int v9, v5, v2

    add-int/2addr v9, v4

    mul-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, 0x0

    iget-object v10, p0, Lcom/samsung/android/glview/GLNinePatch;->mDivX:[I

    add-int/lit8 v11, v4, -0x1

    aget v10, v10, v11

    int-to-float v10, v10

    iget v11, p0, Lcom/samsung/android/glview/GLNinePatch;->mNinePatchWidth:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    sub-float v10, v8, v10

    aput v10, v6, v9

    goto :goto_9

    :cond_c
    move v6, v8

    goto :goto_a

    :cond_d
    iget-object v6, p0, Lcom/samsung/android/glview/GLNinePatch;->mCoordBuffer:[F

    mul-int v9, v5, v2

    add-int/2addr v9, v4

    mul-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, 0x1

    iget-object v10, p0, Lcom/samsung/android/glview/GLNinePatch;->mDivY:[I

    add-int/lit8 v11, v5, -0x1

    aget v10, v10, v11

    int-to-float v10, v10

    iget v11, p0, Lcom/samsung/android/glview/GLNinePatch;->mNinePatchHeight:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    aput v10, v6, v9

    goto :goto_b

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_f
    iget-object v6, p0, Lcom/samsung/android/glview/GLNinePatch;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/glview/GLNinePatch;->mCoordBuffer:[F

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method protected declared-synchronized loadBitmap()Landroid/graphics/Bitmap;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLNinePatch;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLNinePatch;->loadNinePatchResource()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLNinePatch;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected loadNinePatchResource()V
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/glview/GLNinePatch;->mResId:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/glview/GLNinePatch;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/samsung/android/glview/GLNinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/glview/GLNinePatch;->mNinePatchWidth:I

    iget-object v2, p0, Lcom/samsung/android/glview/GLNinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/glview/GLNinePatch;->mNinePatchHeight:I

    iget-object v2, p0, Lcom/samsung/android/glview/GLNinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/glview/GLNinePatch;->processNinePatchChunk([B)Z

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "GLNinePatchTexture"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ResId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/glview/GLNinePatch;->mResId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setNinePatch(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/glview/GLNinePatch;->mResId:I

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLNinePatch;->loadNinePatchResource()V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLNinePatch;->reLoad()Z

    return-void
.end method

.method public setSize(FF)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLTexture;->setSize(FF)V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLNinePatch;->setVertices()V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLNinePatch;->initBuffers()V

    return-void
.end method

.method protected declared-synchronized setVertices()V
    .locals 24

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/glview/GLNinePatch;->mDivX:[I

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    add-int/lit8 v2, v16, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/glview/GLNinePatch;->mDivY:[I

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    add-int/lit8 v3, v16, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLNinePatch;->getLeft()F

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLNinePatch;->getTop()F

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v16

    move/from16 v0, v16

    float-to-int v13, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v16

    move/from16 v0, v16

    float-to-int v4, v0

    const/4 v6, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/glview/GLNinePatch;->mDivX:[I

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    div-int/lit8 v9, v16, 0x2

    :goto_0
    if-ge v5, v9, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/glview/GLNinePatch;->mDivX:[I

    move-object/from16 v16, v0

    mul-int/lit8 v17, v5, 0x2

    add-int/lit8 v17, v17, 0x1

    aget v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/glview/GLNinePatch;->mDivX:[I

    move-object/from16 v17, v0

    mul-int/lit8 v18, v5, 0x2

    aget v17, v17, v18

    sub-int v16, v16, v17

    add-int v6, v6, v16

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLNinePatch;->mNinePatchWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-gt v13, v0, :cond_1

    const/4 v11, 0x0

    :goto_1
    const/4 v6, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/glview/GLNinePatch;->mDivY:[I

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    div-int/lit8 v9, v16, 0x2

    :goto_2
    if-ge v5, v9, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/glview/GLNinePatch;->mDivY:[I

    move-object/from16 v16, v0

    mul-int/lit8 v17, v5, 0x2

    add-int/lit8 v17, v17, 0x1

    aget v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/glview/GLNinePatch;->mDivY:[I

    move-object/from16 v17, v0

    mul-int/lit8 v18, v5, 0x2

    aget v17, v17, v18

    sub-int v16, v16, v17

    add-int v6, v6, v16

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLNinePatch;->mNinePatchWidth:I

    move/from16 v16, v0

    sub-int v16, v13, v16

    sub-int v16, v16, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/glview/GLNinePatch;->mDivX:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x2

    div-int v16, v16, v17

    add-int/lit8 v11, v16, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLNinePatch;->mNinePatchHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-gt v4, v0, :cond_6

    const/4 v12, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/glview/GLNinePatch;->mVertices:[F

    move-object/from16 v16, v0

    if-nez v16, :cond_3

    mul-int v16, v2, v3

    mul-int/lit8 v16, v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/glview/GLNinePatch;->mVertices:[F

    :cond_3
    const/4 v15, 0x0

    move v9, v3

    :goto_4
    if-ge v15, v9, :cond_c

    const/4 v14, 0x0

    move v8, v2

    :goto_5
    if-ge v14, v8, :cond_b

    if-eqz v14, :cond_4

    add-int/lit8 v16, v2, -0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_8

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/glview/GLNinePatch;->mVertices:[F

    move-object/from16 v17, v0

    mul-int v16, v15, v8

    add-int v16, v16, v14

    mul-int/lit8 v16, v16, 0x3

    add-int/lit8 v18, v16, 0x0

    if-nez v14, :cond_7

    move/from16 v16, v7

    :goto_6
    aput v16, v17, v18

    :goto_7
    if-eqz v15, :cond_5

    add-int/lit8 v16, v3, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/glview/GLNinePatch;->mVertices:[F

    move-object/from16 v17, v0

    mul-int v16, v15, v8

    add-int v16, v16, v14

    mul-int/lit8 v16, v16, 0x3

    add-int/lit8 v18, v16, 0x1

    if-nez v15, :cond_9

    move/from16 v16, v10

    :goto_8
    aput v16, v17, v18

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/glview/GLNinePatch;->mVertices:[F

    move-object/from16 v16, v0

    mul-int v17, v15, v8

    add-int v17, v17, v14

    mul-int/lit8 v17, v17, 0x3

    add-int/lit8 v17, v17, 0x2

    const/16 v18, 0x0

    aput v18, v16, v17

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLNinePatch;->mNinePatchHeight:I

    move/from16 v16, v0

    sub-int v16, v4, v16

    sub-int v16, v16, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/glview/GLNinePatch;->mDivY:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x2

    div-int v16, v16, v17

    add-int/lit8 v12, v16, 0x1

    goto/16 :goto_3

    :cond_7
    int-to-float v0, v13

    move/from16 v16, v0

    add-float v16, v16, v7

    goto :goto_6

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/glview/GLNinePatch;->mVertices:[F

    move-object/from16 v16, v0

    mul-int v17, v15, v8

    add-int v17, v17, v14

    mul-int/lit8 v17, v17, 0x3

    add-int/lit8 v17, v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/glview/GLNinePatch;->mDivX:[I

    move-object/from16 v18, v0

    add-int/lit8 v19, v14, -0x1

    aget v18, v18, v19

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    int-to-double v0, v11

    move-wide/from16 v20, v0

    add-int/lit8 v22, v14, -0x1

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    add-float v18, v18, v7

    aput v18, v16, v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_7

    :catchall_0
    move-exception v16

    monitor-exit p0

    throw v16

    :cond_9
    int-to-float v0, v4

    move/from16 v16, v0

    add-float v16, v16, v10

    goto/16 :goto_8

    :cond_a
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/glview/GLNinePatch;->mVertices:[F

    move-object/from16 v16, v0

    mul-int v17, v15, v8

    add-int v17, v17, v14

    mul-int/lit8 v17, v17, 0x3

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/glview/GLNinePatch;->mDivY:[I

    move-object/from16 v18, v0

    add-int/lit8 v19, v15, -0x1

    aget v18, v18, v19

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    int-to-double v0, v12

    move-wide/from16 v20, v0

    add-int/lit8 v22, v15, -0x1

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    add-float v18, v18, v10

    aput v18, v16, v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_9

    :cond_b
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_4

    :cond_c
    monitor-exit p0

    return-void
.end method
