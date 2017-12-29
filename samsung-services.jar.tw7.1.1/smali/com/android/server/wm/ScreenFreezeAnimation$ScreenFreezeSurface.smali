.class Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;
.super Ljava/lang/Object;
.source "ScreenFreezeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ScreenFreezeAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenFreezeSurface"
.end annotation


# static fields
.field static final BACKGROUND_LAYER:I = 0x2af7


# instance fields
.field mBGSurface:Landroid/view/SurfaceControl;

.field mCreatedTime:J

.field mRect:Landroid/graphics/Rect;

.field mRotation:I

.field mSurface:Landroid/view/SurfaceControl;

.field mTmpFloats:[F

.field mTmpMatrix:Landroid/graphics/Matrix;


# direct methods
.method constructor <init>(Landroid/view/SurfaceSession;IIIIIIZII)V
    .locals 17
    .param p1, "session"    # Landroid/view/SurfaceSession;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "layerStack"    # I
    .param p7, "rotation"    # I
    .param p8, "needBG"    # Z
    .param p9, "minLayer"    # I
    .param p10, "maxLayer"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 489
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 480
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    .line 481
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 482
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    .line 484
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 485
    const/16 v4, 0x9

    new-array v4, v4, [F

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mTmpFloats:[F

    .line 487
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mCreatedTime:J

    .line 493
    sub-int v7, p4, p2

    .line 494
    .local v7, "w":I
    sub-int v8, p5, p3

    .line 496
    .local v8, "h":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 497
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRotation:I

    .line 499
    new-instance v4, Landroid/view/SurfaceControl;

    const-string v6, "ScreenFreezeSurface"

    .line 500
    const/4 v9, 0x4

    const/4 v10, 0x4

    move-object/from16 v5, p1

    .line 499
    invoke-direct/range {v4 .. v10}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 502
    if-eqz p8, :cond_0

    .line 503
    new-instance v4, Landroid/view/SurfaceControl;

    .line 504
    const-string v6, "ScreenFreezeBGSurface"

    const/4 v9, 0x4

    .line 505
    const/4 v10, 0x4

    move-object/from16 v5, p1

    .line 503
    invoke-direct/range {v4 .. v10}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    .line 508
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_1

    .line 509
    new-instance v10, Landroid/view/Surface;

    invoke-direct {v10}, Landroid/view/Surface;-><init>()V

    .line 510
    .local v10, "sur":Landroid/view/Surface;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v10, v4}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 512
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    move/from16 v13, p9

    move/from16 v14, p10

    invoke-static/range {v9 .. v15}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;IIIIZ)V

    .line 513
    invoke-virtual {v10}, Landroid/view/Surface;->destroy()V

    .line 515
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRotation:I

    packed-switch v4, :pswitch_data_0

    .line 535
    .end local v10    # "sur":Landroid/view/Surface;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_2

    .line 536
    new-instance v16, Landroid/view/Surface;

    invoke-direct/range {v16 .. v16}, Landroid/view/Surface;-><init>()V

    .line 537
    .local v16, "bgSur":Landroid/view/Surface;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 539
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;)V

    .line 540
    invoke-virtual/range {v16 .. v16}, Landroid/view/Surface;->destroy()V

    .line 542
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 543
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/16 v5, 0x2af7

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 545
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRotation:I

    packed-switch v4, :pswitch_data_1

    .line 492
    .end local v16    # "bgSur":Landroid/view/Surface;
    :cond_2
    :goto_1
    return-void

    .line 517
    .restart local v10    # "sur":Landroid/view/Surface;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 518
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5, v6, v9, v11}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_0

    .line 521
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    int-to-float v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 522
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-virtual {v4, v5, v6, v9, v11}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_0

    .line 525
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    int-to-float v5, v7

    int-to-float v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 526
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/high16 v11, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6, v9, v11}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_0

    .line 529
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    int-to-float v5, v8

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 530
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v11, 0x0

    invoke-virtual {v4, v5, v6, v9, v11}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto/16 :goto_0

    .line 547
    .end local v10    # "sur":Landroid/view/Surface;
    .restart local v16    # "bgSur":Landroid/view/Surface;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 548
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5, v6, v9, v11}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_1

    .line 551
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    int-to-float v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 552
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-virtual {v4, v5, v6, v9, v11}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto/16 :goto_1

    .line 555
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    int-to-float v5, v7

    int-to-float v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 556
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/high16 v11, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6, v9, v11}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto/16 :goto_1

    .line 559
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    int-to-float v5, v8

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 560
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v11, 0x0

    invoke-virtual {v4, v5, v6, v9, v11}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto/16 :goto_1

    .line 515
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 545
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method kill()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 612
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 614
    iput-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    .line 617
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 618
    iput-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    .line 611
    :cond_1
    return-void
.end method

.method setAnimationTransform(Landroid/view/animation/Transformation;)V
    .locals 10
    .param p1, "transformation"    # Landroid/view/animation/Transformation;

    .prologue
    .line 567
    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 568
    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v1, v4

    .line 569
    .local v1, "left":F
    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v2, v4

    .line 570
    .local v2, "top":F
    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v3, v4

    .line 571
    .local v3, "width":F
    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v0, v4

    .line 574
    .local v0, "height":F
    iget v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRotation:I

    packed-switch v4, :pswitch_data_0

    .line 592
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mTmpFloats:[F

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->getValues([F)V

    .line 593
    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    iget-object v5, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mTmpFloats:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    .line 594
    iget-object v6, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mTmpFloats:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    .line 593
    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 595
    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    iget-object v5, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mTmpFloats:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    .line 596
    iget-object v6, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mTmpFloats:[F

    const/4 v7, 0x3

    aget v6, v6, v7

    iget-object v7, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mTmpFloats:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    .line 597
    iget-object v8, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mTmpFloats:[F

    const/4 v9, 0x4

    aget v8, v8, v9

    .line 595
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 598
    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 566
    return-void

    .line 576
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 579
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 580
    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    sub-float v5, v3, v2

    invoke-virtual {v4, v1, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 583
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 584
    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    sub-float v5, v3, v1

    sub-float v6, v0, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 587
    :pswitch_3
    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 588
    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    sub-float v5, v0, v1

    invoke-virtual {v4, v5, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 574
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method setLayerForSurface(I)V
    .locals 1
    .param p1, "maxLayer"    # I

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 622
    :cond_0
    return-void
.end method

.method setLayerStackForSurface(I)V
    .locals 1
    .param p1, "layerStack"    # I

    .prologue
    .line 629
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 628
    :cond_0
    return-void
.end method

.method show()V
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    .line 607
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    .line 602
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mCreatedTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
