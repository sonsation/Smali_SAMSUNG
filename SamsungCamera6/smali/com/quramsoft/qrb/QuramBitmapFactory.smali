.class public Lcom/quramsoft/qrb/QuramBitmapFactory;
.super Ljava/lang/Object;
.source "QuramBitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/quramsoft/qrb/QuramBitmapFactory$MidPointerData;,
        Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEC_CANCELED:I = 0x6

.field public static final DEC_FAIL:I = 0x0

.field public static final DEC_PROGRESS:I = 0x4

.field public static final DEC_SUCCESS:I = 0x1

.field public static final LENGTH_OF_MID_POINTER:I = 0x3c

.field public static final Quram_JPEG:Ljava/lang/String; = "Quram_JPEG"

.field private static final TAG:Ljava/lang/String; = "QuramBitmapFactory"

.field protected static final USE_AUTO_BUFFERMODE:I = 0x2

.field protected static final USE_AUTO_FILEMODE:I = 0x0

.field public static final USE_FULLSIZE_BUFFER:I = 0x0

.field public static final USE_ITERSIZE_BUFFER:I = 0x1

.field public static final USE_MAKE_REGIONMAP:I = 0x2

.field protected static final USE_POWER_PROCESS:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "Qjpeg"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native AbortJPEGFromFileIter(I)I
.end method

.method public static native CompareJPEG(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;IIJJJI)D
.end method

.method public static native DecodeCancel(I)V
.end method

.method static native DecodeJPEGFromFileIter(ILandroid/graphics/Bitmap;IIII)I
.end method

.method static native DecodeJPEGFromFileIter4LTN(ILandroid/graphics/Bitmap;IIII)I
.end method

.method static native DecodeJPEGFromFileIter4LTNToBuffer(ILjava/nio/Buffer;IIIII)I
.end method

.method static native DecodeJPEGFromFileIter4LTNToBufferMidpoint(ILjava/nio/Buffer;IIIIII)I
.end method

.method static native DecodeJPEGFromFileIter4LTNToNativeBufferArray(IIII[IIII)I
.end method

.method static native DecodeJPEGFromFileIterToBuffer(ILjava/nio/Buffer;IIIII)I
.end method

.method static native DecodeJPEGFromFileMultiOutBuf(I[Landroid/graphics/Bitmap;IIII)I
.end method

.method public static native DecodeJPEGGetMidpoint(ILandroid/graphics/Bitmap;[BIIII)I
.end method

.method public static native DecodeJPEGThumbnail(ILandroid/graphics/Bitmap;III)I
.end method

.method static native DecodeJPEGThumbnailToNativeBuffer(I[III)I
.end method

.method public static native DecodeJpegFromStream(Ljava/io/InputStream;ILcom/quramsoft/qrb/QuramBitmapFactory$Options;[BILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
.end method

.method static native DecodePNGIterToNativeBufferArray(IIIIII[III)I
.end method

.method static native GetJPEGMidPoint(III)I
.end method

.method public static native GetJpegOffsetFromSRWFile(Ljava/lang/String;[I)I
.end method

.method public static native GetMidpoint([B)I
.end method

.method public static native PDecodeJPEGFromFile(ILandroid/graphics/Bitmap;III)I
.end method

.method static native PrepareJPEGFromFileIter(III)I
.end method

.method static native PrepareJPEGFromFileIterMidpoint(I[BIII)I
.end method

.method public static native RegionMapCancel(I)V
.end method

.method public static abortFileIter(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    invoke-static {v0}, Lcom/quramsoft/qrb/QuramBitmapFactory;->AbortJPEGFromFileIter(I)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    :cond_0
    return-void
.end method

.method public static abortIter(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    invoke-static {v0}, Lcom/quramsoft/qrb/QuramBitmapFactory;->AbortJPEGFromFileIter(I)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    :cond_0
    return-void
.end method

.method public static cancelDecode(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)V
    .locals 1

    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inCancelingRequested:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inCancelingRequested:Z

    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    invoke-static {v0}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeCancel(I)V

    goto :goto_0
.end method

.method public static cancelRegionMap(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)V
    .locals 1

    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inCancelingRequested:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inCancelingRequested:Z

    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    invoke-static {v0}, Lcom/quramsoft/qrb/QuramBitmapFactory;->RegionMapCancel(I)V

    goto :goto_0
.end method

.method public static compressToByte(Landroid/graphics/Bitmap;Ljava/lang/String;[BII)I
    .locals 2

    const/4 v0, 0x0

    const-string v1, "Quram_JPEG"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, p2, p3, p4, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeEncodeByteArray(Landroid/graphics/Bitmap;[BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v0

    move v1, v0

    goto :goto_0
.end method

.method public static compressToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
    .locals 7

    const/4 v6, 0x0

    const-string v0, "Quram_JPEG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move-object v0, p0

    move-object v1, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeEncodeFile(Landroid/graphics/Bitmap;Ljava/lang/String;IIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v6

    move v0, v6

    goto :goto_0
.end method

.method public static compressToFile([BLjava/lang/String;Ljava/lang/String;IIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
    .locals 7

    const/4 v6, 0x0

    const-string v0, "Quram_JPEG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeEncodeFileFromByte([BLjava/lang/String;IIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v6

    move v0, v6

    goto :goto_0
.end method

.method public static createDecInfo(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-static {p0, p1, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeCreateDecFileInfo(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;I)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    goto :goto_0
.end method

.method public static createDecInfo([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-nez p3, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeCreateDecBufferInfo([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    goto :goto_0
.end method

.method public static decodeByteArray([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    if-lez p2, :cond_0

    array-length v2, p0

    add-int v3, p2, p1

    if-lt v2, v3, :cond_0

    invoke-virtual {p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeDecodeByteArray([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method public static decodeFile(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, p1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeDecodeFile(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    move-object v1, v0

    goto :goto_0
.end method

.method public static decodeFile(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;III)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1, p2}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setWidth(I)V

    invoke-virtual {p1, p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setWidth(I)V

    invoke-static {p0, p1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeDecodeFile(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    move-object v1, v0

    goto :goto_0
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .locals 2

    new-instance v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    invoke-direct {v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/16 v1, 0x4000

    new-array v3, v1, [B

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {p2}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "QuramBitmapFactory"

    const-string v2, "option Fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v8

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    iget v1, p2, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    iget v4, p2, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJpegFromStream(Ljava/io/InputStream;ILcom/quramsoft/qrb/QuramBitmapFactory$Options;[BILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :cond_1
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v3, 0x0

    move-object v1, v6

    goto :goto_0

    :cond_2
    :try_start_2
    iget v1, p2, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    iget v4, p2, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJpegFromStream(Ljava/io/InputStream;ILcom/quramsoft/qrb/QuramBitmapFactory$Options;[BILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    goto :goto_1

    :catch_0
    move-exception v7

    const-string v1, "QuramBitmapFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v8

    goto :goto_0

    :catch_1
    move-exception v7

    const-string v1, "QuramBitmapFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v8

    goto :goto_0
.end method

.method public static decodeFileFromThumbnail(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;III)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1, p2}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setWidth(I)V

    invoke-virtual {p1, p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHeight(I)V

    invoke-static {p0, p1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeDecodeFile(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    move-object v1, v0

    goto :goto_0
.end method

.method public static decodeFileIter(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;Landroid/graphics/Bitmap;IIII)I
    .locals 7

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    packed-switch p5, :pswitch_data_0

    :goto_1
    :pswitch_0
    if-nez v6, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p2, 0x0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    const/4 v4, 0x0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v5, p6

    invoke-static/range {v0 .. v5}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGFromFileIter(ILandroid/graphics/Bitmap;IIII)I

    move-result v6

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-static/range {v0 .. v5}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGFromFileIter4LTN(ILandroid/graphics/Bitmap;IIII)I

    move-result v6

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    if-ne v6, v0, :cond_5

    if-eqz p5, :cond_4

    const/4 v0, 0x1

    if-ne p5, v0, :cond_5

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    :cond_5
    move v0, v6

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static decodeFileIter(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;Ljava/nio/Buffer;IIIII)I
    .locals 8

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    packed-switch p6, :pswitch_data_0

    :goto_1
    :pswitch_0
    if-nez v7, :cond_4

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    const/4 v5, 0x0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v6, p7

    invoke-static/range {v0 .. v6}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGFromFileIterToBuffer(ILjava/nio/Buffer;IIIII)I

    move-result v7

    goto :goto_1

    :pswitch_2
    add-int/lit8 v0, p7, 0x2

    if-ne v0, p3, :cond_3

    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-static/range {v0 .. v6}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGFromFileIter4LTNToBuffer(ILjava/nio/Buffer;IIIII)I

    move-result v7

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    if-ne v7, v0, :cond_6

    if-eqz p6, :cond_5

    const/4 v0, 0x1

    if-ne p6, v0, :cond_6

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    :cond_6
    move v0, v7

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static decodeFileIterToNativeBufferArray(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;III[IIII)I
    .locals 9

    const/4 v8, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    packed-switch p1, :pswitch_data_0

    :goto_1
    :pswitch_0
    if-nez v8, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v7}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGFromFileIter4LTNToNativeBufferArray(IIII[IIII)I

    move-result v8

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    if-ne v8, v0, :cond_4

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    :cond_4
    move v0, v8

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static decodeFileIterWithMidPointer(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;Ljava/nio/Buffer;IIIIIZ)I
    .locals 9

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    packed-switch p6, :pswitch_data_0

    :goto_1
    :pswitch_0
    if-nez v8, :cond_5

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    const/4 v5, 0x0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v6, p7

    invoke-static/range {v0 .. v6}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGFromFileIterToBuffer(ILjava/nio/Buffer;IIIII)I

    move-result v8

    goto :goto_1

    :pswitch_2
    add-int/lit8 v0, p7, 0x2

    if-ne v0, p3, :cond_4

    if-eqz p8, :cond_3

    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    const/4 v2, 0x2

    move-object v1, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v7}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGFromFileIter4LTNToBufferMidpoint(ILjava/nio/Buffer;IIIIII)I

    move-result v8

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    invoke-static/range {v0 .. v6}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGFromFileIter4LTNToBuffer(ILjava/nio/Buffer;IIIII)I

    move-result v8

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    if-ne v8, v0, :cond_7

    if-eqz p6, :cond_6

    const/4 v0, 0x1

    if-ne p6, v0, :cond_7

    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    :cond_7
    move v0, v8

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static decodeFileStream(Ljava/io/InputStream;IILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/quramsoft/qrb/QuramBitmapFactory;->decodeStream(Ljava/io/InputStream;IILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFileToBuffer(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;II)Ljava/nio/ByteBuffer;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory;->decodeFileToBuffer(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;III)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFileToBuffer(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;III)Ljava/nio/ByteBuffer;
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget v3, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_2

    mul-int v3, p2, p3

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_1
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setWidth(I)V

    invoke-virtual {p1, p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHeight(I)V

    invoke-static {p0, v0, p1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeDecodeFileToBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v1

    invoke-virtual {p1, v6}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    if-eqz v1, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_2
    iget v3, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    if-nez v3, :cond_3

    mul-int v3, p2, p3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget v3, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    mul-int v3, p2, p3

    add-int/lit8 v4, p2, 0x1

    shr-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, p3, 0x1

    shr-int/lit8 v5, v5, 0x1

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v6}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    goto :goto_0
.end method

.method public static decodeFileToThumbnail(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;IIIZI)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeCreateDecFileInfo(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;I)I

    move-result v7

    if-nez v7, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    const/4 v3, 0x7

    if-ne v0, v3, :cond_2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    :cond_3
    iget v0, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    if-nez v0, :cond_4

    const/4 v0, 0x1

    iput v0, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    :cond_4
    if-eqz p5, :cond_7

    mul-int/lit8 v0, p6, 0x3c

    add-int/lit8 v0, v0, 0x4

    new-array v2, v0, [B

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    const/4 v6, 0x1

    move v3, p6

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v6}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGGetMidpoint(ILandroid/graphics/Bitmap;[BIIII)I

    move-result v7

    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setMidpoint([BI)V

    :cond_5
    :goto_2
    if-nez v7, :cond_8

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    const/4 v3, 0x1

    invoke-static {v0, v1, p2, p3, v3}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGThumbnail(ILandroid/graphics/Bitmap;III)I

    move-result v7

    goto :goto_2

    :cond_8
    const/4 v0, 0x6

    if-ne v7, v0, :cond_9

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static decodeImageToBuffer(Ljava/lang/String;IILcom/quramsoft/qrb/QuramBitmapFactory$Options;Lcom/quramsoft/qrb/ImageBufferData;)I
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    if-eqz p4, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x2

    invoke-static {p0, p3, v3}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeCreateDecFileInfo(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;I)I

    move-result v1

    if-eqz v1, :cond_3

    new-array v0, v4, [I

    invoke-virtual {p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v3

    invoke-static {v3, v0, p1, p2}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGThumbnailToNativeBuffer(I[III)I

    move-result v1

    if-ne v1, v4, :cond_2

    sget-object v3, Lcom/quramsoft/qrb/ImageBufferData$Type;->HANDLE:Lcom/quramsoft/qrb/ImageBufferData$Type;

    iput-object v3, p4, Lcom/quramsoft/qrb/ImageBufferData;->type:Lcom/quramsoft/qrb/ImageBufferData$Type;

    iput p1, p4, Lcom/quramsoft/qrb/ImageBufferData;->width:I

    iput p2, p4, Lcom/quramsoft/qrb/ImageBufferData;->height:I

    aget v3, v0, v2

    iput v3, p4, Lcom/quramsoft/qrb/ImageBufferData;->handle:I

    :cond_2
    if-nez v1, :cond_3

    :cond_3
    invoke-virtual {p3, v2}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    move v2, v1

    goto :goto_0
.end method

.method public static decodeIter(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;Landroid/graphics/Bitmap;IIII)I
    .locals 7

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/quramsoft/qrb/QuramBitmapFactory;->decodeFileIter(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;Landroid/graphics/Bitmap;IIII)I

    move-result v0

    return v0
.end method

.method public static decodeIter(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;Ljava/nio/Buffer;IIIII)I
    .locals 8

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lcom/quramsoft/qrb/QuramBitmapFactory;->decodeFileIter(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;Ljava/nio/Buffer;IIIII)I

    move-result v0

    return v0
.end method

.method public static decodeStream(Ljava/io/InputStream;IILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-nez p0, :cond_0

    const-string v6, "QuramBitmapFactory"

    const-string v7, "inputstream is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v5

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_1
    if-gtz v3, :cond_1

    const-string v6, "QuramBitmapFactory"

    const-string v7, "inpustream open fail"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_1
    new-array v1, v3, [B

    :try_start_1
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    invoke-virtual {p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "QuramBitmapFactory"

    const-string v7, "option Fail"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    const/4 v1, 0x0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_2
    invoke-virtual {p3, p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setWidth(I)V

    invoke-virtual {p3, p2}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHeight(I)V

    const/4 v5, 0x0

    invoke-static {v1, v5, v3, p3}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeDecodeByteArray([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v5, v0

    goto :goto_0
.end method

.method public static decodeThumbnailByteArrayToBuffer([BIILcom/quramsoft/qrb/ImageBufferData;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-lez p2, :cond_0

    array-length v4, p0

    add-int v5, p2, p1

    if-lt v4, v5, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p4}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p0, v3, p2, p4}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeGetImageInfoFromBuffer([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v1

    invoke-virtual {p4}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p4, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4}, Lcom/quramsoft/qrb/QuramBitmapFactory;->round(F)I

    move-result v2

    invoke-virtual {p4}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p4, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4}, Lcom/quramsoft/qrb/QuramBitmapFactory;->round(F)I

    move-result v0

    if-nez v1, :cond_2

    invoke-virtual {p4, v3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    goto :goto_0

    :cond_2
    iget v4, p4, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_3

    mul-int v4, v2, v0

    mul-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p3, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    :goto_1
    iget-object v4, p3, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p4, v2}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setWidth(I)V

    invoke-virtual {p4, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHeight(I)V

    iget-object v4, p3, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {p0, v4, p1, p2, p4}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeDecodeByteArrayToBuffer([BLjava/nio/ByteBuffer;IILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v1

    invoke-virtual {p4}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getWidth()I

    move-result v4

    iput v4, p3, Lcom/quramsoft/qrb/ImageBufferData;->width:I

    invoke-virtual {p4}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHeight()I

    move-result v4

    iput v4, p3, Lcom/quramsoft/qrb/ImageBufferData;->height:I

    invoke-virtual {p4, v3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    iget-object v4, p3, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    iget v4, p4, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    if-nez v4, :cond_4

    mul-int v4, v2, v0

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p3, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_4
    iget v4, p4, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    mul-int v4, v2, v0

    add-int/lit8 v5, v2, 0x1

    shr-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v0, 0x1

    shr-int/lit8 v6, v6, 0x1

    mul-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p3, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_5
    invoke-virtual {p4, v3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    goto/16 :goto_0
.end method

.method public static getExifData(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
    .locals 3

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v2

    invoke-static {p0, v2, p1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeGetExifData(Ljava/lang/String;ILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setExif(I)V

    goto :goto_0
.end method

.method public static getJPEGMidPointer(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;I)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v1

    iget v2, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    invoke-static {v1, v2, p1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->GetJPEGMidPoint(III)I

    move-result v0

    move v1, v0

    goto :goto_0
.end method

.method public static native nativeCreateDecBufferInfo([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
.end method

.method public static native nativeCreateDecFileInfo(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;I)I
.end method

.method public static native nativeDecodeByteArray([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method public static native nativeDecodeByteArrayToBuffer([BLjava/nio/ByteBuffer;IILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
.end method

.method public static native nativeDecodeFile(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method public static native nativeDecodeFileToBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
.end method

.method public static native nativeDecodeJPEG(ILandroid/graphics/Bitmap;III)I
.end method

.method public static native nativeEncodeByteArray(Landroid/graphics/Bitmap;[BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
.end method

.method public static native nativeEncodeFile(Landroid/graphics/Bitmap;Ljava/lang/String;IIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
.end method

.method public static native nativeEncodeFileFromByte([BLjava/lang/String;IIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
.end method

.method public static native nativeGetExifData(Ljava/lang/String;ILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
.end method

.method public static native nativeGetImageInfoFromBuffer([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
.end method

.method public static native nativeGetImageInfoFromFile(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
.end method

.method public static native nativePartialDecodeByteArray([BIIIIIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method public static native nativePartialDecodeByteArrayToBuffer([BLjava/nio/ByteBuffer;IIIIIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
.end method

.method public static native nativePartialDecodeFile(Ljava/lang/String;IIIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method public static partialDecodeByteArray([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;IIII)Landroid/graphics/Bitmap;
    .locals 14

    const/4 v9, 0x0

    move-object/from16 v0, p3

    iget v12, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    const/4 v13, 0x0

    const/4 v11, 0x0

    if-gez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    if-gtz p2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    array-length v1, p0

    add-int v2, p2, p1

    if-ge v1, v2, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p3

    iget v1, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    if-nez v1, :cond_5

    const/4 v1, 0x1

    move-object/from16 v0, p3

    iput v1, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    :cond_4
    :goto_1
    sub-int v6, p5, p4

    sub-int v7, p7, p6

    move-object v1, p0

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p4

    move/from16 v5, p6

    move-object/from16 v8, p3

    invoke-static/range {v1 .. v8}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativePartialDecodeByteArray([BIIIIIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    invoke-virtual/range {p3 .. p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getWidth()I

    move-result v13

    invoke-virtual/range {p3 .. p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v11

    if-nez v9, :cond_6

    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    move-object/from16 v0, p3

    iget v1, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    const/16 v2, 0x8

    if-le v1, v2, :cond_4

    const/16 v1, 0x8

    move-object/from16 v0, p3

    iput v1, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    :cond_6
    move-object/from16 v0, p3

    iget v1, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    if-ge v1, v12, :cond_7

    move-object/from16 v0, p3

    iget v1, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    mul-int/2addr v1, v13

    div-int/2addr v1, v12

    move-object/from16 v0, p3

    iget v2, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    mul-int/2addr v2, v11

    div-int/2addr v2, v12

    const/4 v3, 0x0

    invoke-static {v9, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    move-object v9, v10

    move-object/from16 v0, p3

    iput v12, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    :cond_7
    move-object v1, v9

    goto :goto_0
.end method

.method public static partialDecodeByteArrayToBuffer([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;IIIILcom/quramsoft/qrb/ImageBufferData;)I
    .locals 13

    const/4 v11, 0x0

    if-gez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    if-gtz p2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    array-length v1, p0

    add-int v2, p2, p1

    if-ge v1, v2, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p3

    iget v1, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    const/16 v2, 0x8

    if-gt v1, v2, :cond_4

    move-object/from16 v0, p3

    iget v1, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    if-gez v1, :cond_5

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    if-nez p8, :cond_6

    const/4 v1, 0x0

    goto :goto_0

    :cond_6
    move-object/from16 v0, p3

    iget v1, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    if-nez v1, :cond_8

    const/4 v1, 0x1

    move-object/from16 v0, p3

    iput v1, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    :cond_7
    :goto_1
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-static {p0, v1, p2, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeGetImageInfoFromBuffer([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v11

    invoke-virtual/range {p3 .. p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getWidth()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p3

    iget v2, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->round(F)I

    move-result v12

    invoke-virtual/range {p3 .. p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHeight()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p3

    iget v2, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->round(F)I

    move-result v10

    if-nez v11, :cond_9

    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_8
    move-object/from16 v0, p3

    iget v1, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    const/16 v2, 0x8

    if-le v1, v2, :cond_7

    const/16 v1, 0x8

    move-object/from16 v0, p3

    iput v1, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    :cond_9
    move-object/from16 v0, p3

    iget v1, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_a

    mul-int v1, v12, v10

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    move-object/from16 v0, p8

    iput-object v1, v0, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    :goto_2
    move-object/from16 v0, p8

    iget-object v1, v0, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setWidth(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHeight(I)V

    move-object/from16 v0, p8

    iget-object v2, v0, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    sub-int v7, p5, p4

    sub-int v8, p7, p6

    move-object v1, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p4

    move/from16 v6, p6

    move-object/from16 v9, p3

    invoke-static/range {v1 .. v9}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativePartialDecodeByteArrayToBuffer([BLjava/nio/ByteBuffer;IIIIIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v11

    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    move-object/from16 v0, p8

    iget-object v1, v0, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_d

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p3

    iget v1, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    if-nez v1, :cond_b

    mul-int v1, v12, v10

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    move-object/from16 v0, p8

    iput-object v1, v0, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_b
    move-object/from16 v0, p3

    iget v1, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_c

    mul-int v1, v12, v10

    add-int/lit8 v2, v12, 0x1

    shr-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v10, 0x1

    shr-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    move-object/from16 v0, p8

    iput-object v1, v0, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_c
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_d
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public static partialDecodeFile(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;IIII)Landroid/graphics/Bitmap;
    .locals 12

    const/4 v9, 0x0

    const/4 v6, 0x0

    iget v10, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput v0, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    :cond_1
    :goto_1
    sub-int v3, p3, p2

    sub-int v4, p5, p4

    move-object v0, p0

    move v1, p2

    move/from16 v2, p4

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativePartialDecodeFile(Ljava/lang/String;IIIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    if-nez v6, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget v0, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    const/16 v0, 0x8

    iput v0, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getWidth()I

    move-result v11

    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v8

    iget v0, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    if-ge v0, v10, :cond_4

    sub-int v0, p3, p2

    iget v1, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    div-int v11, v0, v1

    sub-int v0, p5, p4

    iget v1, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    div-int v8, v0, v1

    iget v0, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    mul-int/2addr v0, v11

    div-int/2addr v0, v10

    iget v1, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    mul-int/2addr v1, v8

    div-int/2addr v1, v10

    const/4 v2, 0x0

    invoke-static {v6, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    move-object v6, v7

    iput v10, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    :cond_4
    move-object v0, v6

    goto :goto_0
.end method

.method public static prepareDecodeFileIter(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;IIZ)I
    .locals 5

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v2

    if-eqz v2, :cond_0

    if-lez p2, :cond_0

    if-gtz p3, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getMidpoint()[B

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v2

    invoke-static {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->access$0(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)[B

    move-result-object v3

    invoke-static {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->access$1(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v4

    invoke-static {v2, v3, v4, p2, p3}, Lcom/quramsoft/qrb/QuramBitmapFactory;->PrepareJPEGFromFileIterMidpoint(I[BIII)I

    move-result v0

    :goto_1
    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v2

    invoke-static {v2, p2, p3}, Lcom/quramsoft/qrb/QuramBitmapFactory;->PrepareJPEGFromFileIter(III)I

    move-result v0

    goto :goto_1
.end method

.method public static prepareDecodeIter(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;II)I
    .locals 3

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v2

    if-eqz v2, :cond_0

    if-lez p1, :cond_0

    if-gtz p2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v2

    invoke-static {v2, p1, p2}, Lcom/quramsoft/qrb/QuramBitmapFactory;->PrepareJPEGFromFileIter(III)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    goto :goto_0
.end method

.method static native recycleNativeBuffer(I)V
.end method

.method public static round(F)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static translateBitmapFactoryOptions(Landroid/graphics/BitmapFactory$Options;)Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    .locals 4

    const/4 v3, 0x7

    new-instance v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    invoke-direct {v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;-><init>()V

    iget-object v1, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_0

    iput v3, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    :goto_0
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput v1, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->access$2(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;I)V

    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->access$3(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;I)V

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    iput v1, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    goto :goto_0

    :cond_1
    iput v3, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    goto :goto_0
.end method
