.class Lcom/android/server/policy/GlobalActions$ExtractColor;
.super Ljava/lang/Object;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExtractColor"
.end annotation


# static fields
.field static mDefaultColor:I

.field static mLimittedColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xff

    const/16 v1, 0xc8

    const/16 v0, 0x6e

    .line 6374
    invoke-static {v2, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/android/server/policy/GlobalActions$ExtractColor;->mDefaultColor:I

    .line 6375
    invoke-static {v2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/android/server/policy/GlobalActions$ExtractColor;->mLimittedColor:I

    .line 6371
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColorHSV(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)[F
    .locals 25
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "region"    # Landroid/graphics/Rect;

    .prologue
    .line 6387
    const/4 v15, 0x0

    .local v15, "sumHue":F
    const/16 v16, 0x0

    .local v16, "sumSaturation":F
    const/16 v17, 0x0

    .line 6388
    .local v17, "sumValue":F
    const/4 v4, 0x0

    .local v4, "curHue":F
    const/4 v5, 0x0

    .local v5, "curSaturation":F
    const/4 v6, 0x0

    .line 6395
    .local v6, "curValue":F
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v10, v0, [F

    .line 6396
    .local v10, "pixelHSV":[F
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v11, v0, [F

    .line 6398
    .local v11, "result":[F
    const/4 v13, 0x0

    .line 6400
    .local v13, "sampleCount":I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    .line 6401
    .local v19, "w":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 6403
    .local v8, "h":I
    move/from16 v0, v19

    if-le v0, v8, :cond_1

    int-to-float v0, v8

    move/from16 v22, v0

    const/high16 v23, 0x42c80000    # 100.0f

    div-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v14, v0

    .line 6404
    .local v14, "step":I
    :goto_0
    if-gtz v14, :cond_0

    const/4 v14, 0x1

    .line 6406
    :cond_0
    move-object/from16 v0, p1

    iget v9, v0, Landroid/graphics/Rect;->left:I

    .line 6407
    .local v9, "left":I
    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/Rect;->right:I

    .line 6408
    .local v12, "right":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    .line 6409
    .local v18, "top":I
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 6410
    .local v3, "bottom":I
    move/from16 v20, v9

    .local v20, "x":I
    :goto_1
    move/from16 v0, v20

    if-ge v0, v12, :cond_3

    .line 6411
    move/from16 v21, v18

    .local v21, "y":I
    :goto_2
    move/from16 v0, v21

    if-ge v0, v3, :cond_2

    .line 6412
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v22

    move/from16 v0, v22

    invoke-static {v0, v10}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 6413
    const/16 v22, 0x0

    aget v22, v10, v22

    add-float v15, v15, v22

    .line 6414
    const/16 v22, 0x1

    aget v22, v10, v22

    add-float v16, v16, v22

    .line 6415
    const/16 v22, 0x2

    aget v22, v10, v22

    add-float v17, v17, v22

    .line 6416
    add-int/lit8 v13, v13, 0x1

    .line 6411
    add-int v21, v21, v14

    goto :goto_2

    .line 6403
    .end local v3    # "bottom":I
    .end local v9    # "left":I
    .end local v12    # "right":I
    .end local v14    # "step":I
    .end local v18    # "top":I
    .end local v20    # "x":I
    .end local v21    # "y":I
    :cond_1
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x42c80000    # 100.0f

    div-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v14, v0

    goto :goto_0

    .line 6410
    .restart local v3    # "bottom":I
    .restart local v9    # "left":I
    .restart local v12    # "right":I
    .restart local v14    # "step":I
    .restart local v18    # "top":I
    .restart local v20    # "x":I
    .restart local v21    # "y":I
    :cond_2
    add-int v20, v20, v14

    goto :goto_1

    .line 6420
    .end local v21    # "y":I
    :cond_3
    int-to-float v0, v13

    move/from16 v22, v0

    div-float v22, v15, v22

    const/16 v23, 0x0

    aput v22, v11, v23

    .line 6421
    int-to-float v0, v13

    move/from16 v22, v0

    div-float v22, v16, v22

    const/16 v23, 0x1

    aput v22, v11, v23

    .line 6422
    int-to-float v0, v13

    move/from16 v22, v0

    div-float v22, v17, v22

    const/16 v23, 0x2

    aput v22, v11, v23
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6424
    return-object v11

    .line 6426
    .end local v3    # "bottom":I
    .end local v8    # "h":I
    .end local v9    # "left":I
    .end local v12    # "right":I
    .end local v14    # "step":I
    .end local v18    # "top":I
    .end local v19    # "w":I
    .end local v20    # "x":I
    :catch_0
    move-exception v7

    .line 6427
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v22, "GlobalActions"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Exception = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6429
    const/16 v22, 0x0

    return-object v22
.end method

.method public static getDefaultColor()I
    .locals 1

    .prologue
    .line 6383
    sget v0, Lcom/android/server/policy/GlobalActions$ExtractColor;->mDefaultColor:I

    return v0
.end method

.method public static setDefaultColor(I)V
    .locals 1
    .param p0, "color"    # I

    .prologue
    .line 6378
    sget v0, Lcom/android/server/policy/GlobalActions$ExtractColor;->mDefaultColor:I

    if-eq p0, v0, :cond_0

    .line 6379
    sput p0, Lcom/android/server/policy/GlobalActions$ExtractColor;->mDefaultColor:I

    .line 6377
    :cond_0
    return-void
.end method
