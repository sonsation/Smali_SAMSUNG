.class public Lcom/quramsoft/qrb/QuramBitmapRegionDecoderNative;
.super Ljava/lang/Object;
.source "QuramBitmapRegionDecoderNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QuramBitmapRegionDecoderNative"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    :try_start_0
    const-string v1, "Qjpeg"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "QuramBitmapRegionDecoderNative"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Library load fail : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native nativeClean(I)V
.end method

.method public static nativeDecodeRegion(IIIIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 12

    const/4 v7, 0x0

    move-object/from16 v0, p5

    iget v10, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-eqz p0, :cond_0

    if-eqz p5, :cond_0

    move-object/from16 v0, p5

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-gtz v2, :cond_2

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    move-object/from16 v0, p5

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/16 v8, 0x8

    if-le v2, v8, :cond_3

    const/16 v2, 0x8

    move-object/from16 v0, p5

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_3
    move-object/from16 v0, p5

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v3, p1, v2

    move-object/from16 v0, p5

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v4, p2, v2

    move-object/from16 v0, p5

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v5, p3, v2

    move-object/from16 v0, p5

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v6, p4, v2

    if-lez v5, :cond_4

    if-gtz v6, :cond_5

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    move-object/from16 v0, p5

    iget-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v2, v8, :cond_8

    const/4 v7, 0x0

    :goto_1
    const/4 v1, 0x0

    if-nez v1, :cond_6

    move-object/from16 v0, p5

    iget-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_6
    move-object/from16 v0, p5

    iget v8, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move v2, p0

    invoke-static/range {v1 .. v8}, Lcom/quramsoft/qrb/QuramBitmapRegionDecoderNative;->nativeDoDecodeRegion(Landroid/graphics/Bitmap;IIIIIII)I

    move-object/from16 v0, p5

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ge v2, v10, :cond_1

    move-object/from16 v0, p5

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/2addr v2, v5

    div-int/2addr v2, v10

    if-lez v2, :cond_7

    move-object/from16 v0, p5

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/2addr v2, v6

    div-int/2addr v2, v10

    if-gtz v2, :cond_a

    :cond_7
    const/4 v1, 0x0

    goto :goto_0

    :cond_8
    move-object/from16 v0, p5

    iget-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v2, v8, :cond_9

    const/4 v7, 0x1

    goto :goto_1

    :cond_9
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, p5

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v7, 0x0

    goto :goto_1

    :cond_a
    move-object/from16 v0, p5

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/2addr v2, v5

    div-int/2addr v2, v10

    move-object/from16 v0, p5

    iget v8, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/2addr v8, v6

    div-int/2addr v8, v10

    const/4 v11, 0x0

    invoke-static {v1, v2, v8, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    move-object v1, v9

    move-object/from16 v0, p5

    iput v10, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto/16 :goto_0
.end method

.method public static native nativeDoDecodeRegion(Landroid/graphics/Bitmap;IIIIIII)I
.end method

.method public static native nativeGetHeight(I)I
.end method

.method public static native nativeGetWidth(I)I
.end method

.method public static native nativeNewInstance(Ljava/lang/String;ZLcom/quramsoft/qrb/QuramBitmapFactory$Options;)Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;
.end method

.method public static native nativeNewInstanceWithDec(Ljava/lang/String;Landroid/graphics/Bitmap;IZLcom/quramsoft/qrb/QuramBitmapFactory$Options;)Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;
.end method

.method public static native nativeNewInstanceWithOpt(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;I)Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;
.end method
