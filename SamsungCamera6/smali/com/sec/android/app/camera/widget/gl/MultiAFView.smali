.class public Lcom/sec/android/app/camera/widget/gl/MultiAFView;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "MultiAFView.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "MultiAFView"


# instance fields
.field private final FRAME_IMAGE_WIDTH:F

.field private final NUM_OF_COLS_NORMAL_RATIO:I

.field private final NUM_OF_COLS_SQUARE_RATIO:I

.field private final NUM_OF_COLS_WIDE_RATIO:I

.field private final NUM_OF_ROWS_NORMAL_RATIO:I

.field private final NUM_OF_ROWS_SQUARE_RATIO:I

.field private final NUM_OF_ROWS_WIDE_RATIO:I

.field private final NUM_OF_VISIBLE_COLS:I

.field private final NUM_OF_VISIBLE_ROWS:I

.field private final SENSOR_FRAME_HEIGHT:I

.field private final SENSOR_FRAME_LEFT_OFFSET:I

.field private final SENSOR_FRAME_TOP_OFFSET:I

.field private final SENSOR_FRAME_WIDTH:I

.field private mFocusFrame:[Lcom/samsung/android/glview/GLImage;


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;IILandroid/graphics/Rect;)V
    .locals 7

    const/4 v2, 0x0

    int-to-float v4, p2

    int-to-float v5, p3

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    const v0, 0x7f0c0031

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_ROWS_NORMAL_RATIO:I

    const v0, 0x7f0c002d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_COLS_NORMAL_RATIO:I

    const v0, 0x7f0c0032

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_ROWS_SQUARE_RATIO:I

    const v0, 0x7f0c002e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_COLS_SQUARE_RATIO:I

    const v0, 0x7f0c0033

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_ROWS_WIDE_RATIO:I

    const v0, 0x7f0c002f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_COLS_WIDE_RATIO:I

    const v0, 0x7f0c0034

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_VISIBLE_COLS:I

    const v0, 0x7f0c0035

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_VISIBLE_ROWS:I

    const v0, 0x7f0c002c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->SENSOR_FRAME_WIDTH:I

    const v0, 0x7f0c0029

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->SENSOR_FRAME_HEIGHT:I

    const v0, 0x7f0c002a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->SENSOR_FRAME_LEFT_OFFSET:I

    const v0, 0x7f0c002b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->SENSOR_FRAME_TOP_OFFSET:I

    const v0, 0x7f0b0342

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->FRAME_IMAGE_WIDTH:F

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_ROWS_NORMAL_RATIO:I

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_COLS_NORMAL_RATIO:I

    mul-int/2addr v0, v1

    new-array v0, v0, [Lcom/samsung/android/glview/GLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->mFocusFrame:[Lcom/samsung/android/glview/GLImage;

    const/4 v6, 0x0

    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_ROWS_NORMAL_RATIO:I

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_COLS_NORMAL_RATIO:I

    mul-int/2addr v0, v1

    if-ge v6, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->mFocusFrame:[Lcom/samsung/android/glview/GLImage;

    new-instance v1, Lcom/samsung/android/glview/GLImage;

    const v3, 0x7f02013f

    invoke-direct {v1, p1, v2, v2, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v1, v0, v6

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->mFocusFrame:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v6

    const/4 v1, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->mFocusFrame:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v6

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->addView(Lcom/samsung/android/glview/GLView;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p4}, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->updateMultiAFLayout(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
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

.method public hideMultiAFLayout()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_ROWS_NORMAL_RATIO:I

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_COLS_NORMAL_RATIO:I

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->mFocusFrame:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->updateLayout(Z)V

    return-void
.end method

.method public onMultiAFChanged([B)V
    .locals 10

    const/4 v9, 0x1

    const/4 v7, 0x0

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_COLS_NORMAL_RATIO:I

    iget v8, p0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_VISIBLE_COLS:I

    sub-int v2, v6, v8

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_ROWS_NORMAL_RATIO:I

    iget v8, p0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_VISIBLE_ROWS:I

    sub-int v3, v6, v8

    const/4 v0, 0x0

    :goto_0
    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_ROWS_NORMAL_RATIO:I

    if-ge v0, v6, :cond_4

    const/4 v4, 0x0

    :goto_1
    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_COLS_NORMAL_RATIO:I

    if-ge v4, v6, :cond_3

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_COLS_NORMAL_RATIO:I

    mul-int/2addr v6, v0

    add-int/2addr v6, v4

    add-int/lit8 v6, v6, 0x2

    aget-byte v5, p1, v6

    div-int/lit8 v6, v3, 0x2

    if-lt v0, v6, :cond_0

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_ROWS_NORMAL_RATIO:I

    div-int/lit8 v8, v3, 0x2

    sub-int v8, v3, v8

    sub-int/2addr v6, v8

    if-ge v0, v6, :cond_0

    div-int/lit8 v6, v2, 0x2

    if-lt v4, v6, :cond_0

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_COLS_NORMAL_RATIO:I

    div-int/lit8 v8, v2, 0x2

    sub-int v8, v2, v8

    sub-int/2addr v6, v8

    if-lt v4, v6, :cond_1

    :cond_0
    const/4 v5, 0x0

    :cond_1
    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_COLS_NORMAL_RATIO:I

    mul-int/2addr v6, v0

    add-int v1, v6, v4

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->mFocusFrame:[Lcom/samsung/android/glview/GLImage;

    aget-object v8, v6, v1

    if-ne v5, v9, :cond_2

    move v6, v7

    :goto_2
    invoke-virtual {v8, v6, v7}, Lcom/samsung/android/glview/GLImage;->setVisibility(IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x4

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->updateLayout(Z)V

    return-void
.end method

.method public updateMultiAFLayout(Landroid/graphics/Rect;)V
    .locals 20

    const-string v15, "MultiAFView"

    const-string v16, "updateMultiAFLayout"

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v12, 0x0

    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Rect;->left:I

    int-to-float v11, v15

    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Rect;->top:I

    int-to-float v14, v15

    const/4 v15, 0x0

    cmpg-float v15, v11, v15

    if-gez v15, :cond_0

    const/4 v11, 0x0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v16

    invoke-static/range {v15 .. v16}, Lcom/sec/android/app/camera/util/Util;->getAspectRatio(II)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/Util;->getAspectRatioType(D)I

    move-result v4

    if-nez v4, :cond_2

    sget-object v15, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_16BY9_LARGE:Ljava/lang/String;

    invoke-static {v15}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v15

    int-to-float v15, v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v13, v15, v16

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->SENSOR_FRAME_WIDTH:I

    int-to-float v15, v15

    div-float v7, v15, v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->SENSOR_FRAME_HEIGHT:I

    int-to-float v15, v15

    div-float v6, v15, v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->SENSOR_FRAME_LEFT_OFFSET:I

    int-to-float v15, v15

    div-float/2addr v15, v13

    add-float/2addr v11, v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v15

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_ROWS_WIDE_RATIO:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v6

    sub-float v15, v15, v16

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_COLS_WIDE_RATIO:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_ROWS_WIDE_RATIO:I

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_COLS_NORMAL_RATIO:I

    sub-int/2addr v15, v5

    int-to-float v15, v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    mul-float/2addr v15, v7

    sub-float/2addr v11, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_ROWS_NORMAL_RATIO:I

    sub-int/2addr v15, v12

    int-to-float v15, v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    mul-float/2addr v15, v6

    sub-float/2addr v14, v15

    const/4 v8, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_ROWS_NORMAL_RATIO:I

    if-ge v8, v15, :cond_5

    const/4 v10, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_COLS_NORMAL_RATIO:I

    if-ge v10, v15, :cond_4

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_COLS_NORMAL_RATIO:I

    mul-int/2addr v15, v8

    add-int v9, v15, v10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->mFocusFrame:[Lcom/samsung/android/glview/GLImage;

    aget-object v15, v15, v9

    int-to-float v0, v10

    move/from16 v16, v0

    mul-float v16, v16, v7

    add-float v16, v16, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->FRAME_IMAGE_WIDTH:F

    move/from16 v17, v0

    sub-float v17, v7, v17

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    add-float v16, v16, v17

    int-to-float v0, v8

    move/from16 v17, v0

    mul-float v17, v17, v6

    add-float v17, v17, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->FRAME_IMAGE_WIDTH:F

    move/from16 v18, v0

    sub-float v18, v6, v18

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    add-float v17, v17, v18

    invoke-virtual/range {v15 .. v17}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->mFocusFrame:[Lcom/samsung/android/glview/GLImage;

    aget-object v15, v15, v9

    const/16 v16, 0x4

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/samsung/android/glview/GLImage;->setVisibility(IZ)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v15, 0x2

    if-ne v4, v15, :cond_3

    sget-object v15, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    invoke-static {v15}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v15

    int-to-float v15, v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v13, v15, v16

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->SENSOR_FRAME_WIDTH:I

    int-to-float v15, v15

    div-float v7, v15, v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->SENSOR_FRAME_HEIGHT:I

    int-to-float v15, v15

    div-float v6, v15, v13

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v15

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_COLS_SQUARE_RATIO:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v7

    sub-float v15, v15, v16

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    add-float/2addr v11, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->SENSOR_FRAME_TOP_OFFSET:I

    int-to-float v15, v15

    div-float/2addr v15, v13

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_COLS_SQUARE_RATIO:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_ROWS_SQUARE_RATIO:I

    goto/16 :goto_0

    :cond_3
    sget-object v15, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_4BY3_LARGE:Ljava/lang/String;

    invoke-static {v15}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v15

    int-to-float v15, v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v13, v15, v16

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->SENSOR_FRAME_WIDTH:I

    int-to-float v15, v15

    div-float v7, v15, v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->SENSOR_FRAME_HEIGHT:I

    int-to-float v15, v15

    div-float v6, v15, v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->SENSOR_FRAME_LEFT_OFFSET:I

    int-to-float v15, v15

    div-float/2addr v15, v13

    add-float/2addr v11, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->SENSOR_FRAME_TOP_OFFSET:I

    int-to-float v15, v15

    div-float/2addr v15, v13

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_COLS_NORMAL_RATIO:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->NUM_OF_ROWS_NORMAL_RATIO:I

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_5
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->updateLayout(Z)V

    return-void
.end method
