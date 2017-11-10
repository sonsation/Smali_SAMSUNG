.class public Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;
.super Lcom/samsung/android/glview/GLTexture;
.source "GLSurfaceTexture.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GLSurfaceTexture"

.field private static mLock:Ljava/lang/Object;


# instance fields
.field private mEffectID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFI)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->mEffectID:I

    iput p6, p0, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->mEffectID:I

    return-void
.end method

.method public static getSecEffectThumbnailProcessor()Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;
    .locals 2

    sget-object v1, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->getInstance()Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static releaseSecEffectThumbnailProcessor()V
    .locals 3

    sget-object v1, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "GLSurfaceTexture"

    const-string v2, "SecEffectThumbnailProcessor release instance"

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->releaseInstance()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    return-void
.end method

.method public clearTexture()V
    .locals 0

    return-void
.end method

.method public declared-synchronized initSize()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->getHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->setSize(FF)V
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
    .locals 17

    monitor-enter p0

    :try_start_0
    sget-object v16, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->mLock:Ljava/lang/Object;

    monitor-enter v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/high16 v1, 0x3f800000    # 1.0f

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getGLPreviewData()Lcom/samsung/android/glview/GLPreviewData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLPreviewData;->getSurfaceCoordXOffset()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v13, v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->getWidth()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->getHeight()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->getWidth()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->getHeight()F

    move-result v3

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v14, v1, v2

    :goto_0
    move v10, v13

    move v12, v14

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v11, v1, v13

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v9, v1, v14

    const/4 v1, 0x4

    new-array v8, v1, [F

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getAlignToPixel()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->getLeft()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    aput v2, v8, v1

    const/4 v1, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->getTop()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    aput v2, v8, v1

    const/4 v1, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->getRight()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    aput v2, v8, v1

    const/4 v1, 0x3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->getBottom()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    aput v2, v8, v1

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->mViewMatrix:[F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLContext;->getProjMatrix()[F

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->getMatrix()[F

    move-result-object v5

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->getAlpha()F

    move-result v15

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v1, v15, v1

    if-lez v1, :cond_2

    const/high16 v15, 0x3f800000    # 1.0f

    :goto_2
    const/16 v1, 0x8

    new-array v7, v1, [F

    fill-array-data v7, :array_0

    invoke-static {}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->getInstance()Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_3
    invoke-static {}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->getInstance()Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->mEffectID:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->setEffect(I)V

    invoke-static {}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->getInstance()Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->mViewMatrix:[F

    invoke-virtual {v1, v2, v8, v7, v15}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->draw([F[F[FF)V

    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->getHeight()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->getWidth()F

    move-result v3

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v14, v1, v2

    goto/16 :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->getLeft()F

    move-result v2

    aput v2, v8, v1

    const/4 v1, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->getTop()F

    move-result v2

    aput v2, v8, v1

    const/4 v1, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->getRight()F

    move-result v2

    aput v2, v8, v1

    const/4 v1, 0x3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->getBottom()F

    move-result v2

    aput v2, v8, v1

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_2
    const/4 v15, 0x0

    goto :goto_2

    :pswitch_0
    const/4 v1, 0x0

    :try_start_4
    aput v10, v7, v1

    const/4 v1, 0x1

    aput v12, v7, v1

    const/4 v1, 0x2

    aput v11, v7, v1

    const/4 v1, 0x3

    aput v12, v7, v1

    const/4 v1, 0x4

    aput v11, v7, v1

    const/4 v1, 0x5

    aput v9, v7, v1

    const/4 v1, 0x6

    aput v10, v7, v1

    const/4 v1, 0x7

    aput v9, v7, v1

    goto :goto_3

    :pswitch_1
    const/4 v1, 0x0

    aput v10, v7, v1

    const/4 v1, 0x1

    aput v9, v7, v1

    const/4 v1, 0x2

    aput v10, v7, v1

    const/4 v1, 0x3

    aput v12, v7, v1

    const/4 v1, 0x4

    aput v11, v7, v1

    const/4 v1, 0x5

    aput v12, v7, v1

    const/4 v1, 0x6

    aput v11, v7, v1

    const/4 v1, 0x7

    aput v9, v7, v1

    goto/16 :goto_3

    :pswitch_2
    const/4 v1, 0x0

    aput v11, v7, v1

    const/4 v1, 0x1

    aput v9, v7, v1

    const/4 v1, 0x2

    aput v10, v7, v1

    const/4 v1, 0x3

    aput v9, v7, v1

    const/4 v1, 0x4

    aput v10, v7, v1

    const/4 v1, 0x5

    aput v12, v7, v1

    const/4 v1, 0x6

    aput v11, v7, v1

    const/4 v1, 0x7

    aput v12, v7, v1

    goto/16 :goto_3

    :pswitch_3
    const/4 v1, 0x0

    aput v11, v7, v1

    const/4 v1, 0x1

    aput v12, v7, v1

    const/4 v1, 0x2

    aput v11, v7, v1

    const/4 v1, 0x3

    aput v9, v7, v1

    const/4 v1, 0x4

    aput v10, v7, v1

    const/4 v1, 0x5

    aput v9, v7, v1

    const/4 v1, 0x6

    aput v10, v7, v1

    const/4 v1, 0x7

    aput v12, v7, v1

    goto/16 :goto_3

    :cond_3
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_3

    :pswitch_4
    const/4 v1, 0x0

    aput v11, v7, v1

    const/4 v1, 0x1

    aput v12, v7, v1

    const/4 v1, 0x2

    aput v10, v7, v1

    const/4 v1, 0x3

    aput v12, v7, v1

    const/4 v1, 0x4

    aput v10, v7, v1

    const/4 v1, 0x5

    aput v9, v7, v1

    const/4 v1, 0x6

    aput v11, v7, v1

    const/4 v1, 0x7

    aput v9, v7, v1

    goto/16 :goto_3

    :pswitch_5
    const/4 v1, 0x0

    aput v11, v7, v1

    const/4 v1, 0x1

    aput v9, v7, v1

    const/4 v1, 0x2

    aput v11, v7, v1

    const/4 v1, 0x3

    aput v12, v7, v1

    const/4 v1, 0x4

    aput v10, v7, v1

    const/4 v1, 0x5

    aput v12, v7, v1

    const/4 v1, 0x6

    aput v10, v7, v1

    const/4 v1, 0x7

    aput v9, v7, v1

    goto/16 :goto_3

    :pswitch_6
    const/4 v1, 0x0

    aput v10, v7, v1

    const/4 v1, 0x1

    aput v9, v7, v1

    const/4 v1, 0x2

    aput v11, v7, v1

    const/4 v1, 0x3

    aput v9, v7, v1

    const/4 v1, 0x4

    aput v11, v7, v1

    const/4 v1, 0x5

    aput v12, v7, v1

    const/4 v1, 0x6

    aput v10, v7, v1

    const/4 v1, 0x7

    aput v12, v7, v1

    goto/16 :goto_3

    :pswitch_7
    const/4 v1, 0x0

    aput v10, v7, v1

    const/4 v1, 0x1

    aput v12, v7, v1

    const/4 v1, 0x2

    aput v10, v7, v1

    const/4 v1, 0x3

    aput v9, v7, v1

    const/4 v1, 0x4

    aput v11, v7, v1

    const/4 v1, 0x5

    aput v9, v7, v1

    const/4 v1, 0x6

    aput v11, v7, v1

    const/4 v1, 0x7

    aput v12, v7, v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected declared-synchronized onLoad()Z
    .locals 2

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->initSize()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->mTextureLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized reLoad()Z
    .locals 3

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setShaderProgram(I)V
    .locals 0

    return-void
.end method
