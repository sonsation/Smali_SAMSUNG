.class public Lcom/sec/android/app/camera/util/ContentData;
.super Ljava/lang/Object;
.source "ContentData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final FULL_SCREEN_HEIGHT:I

.field private static final FULL_SCREEN_WIDTH:I

.field private static final SCREEN_NORMAL_HEIGHT:I

.field private static final SCREEN_NORMAL_WIDTH:I

.field private static final SCREEN_WIDE_HEIGHT:I

.field private static final SCREEN_WIDE_WIDTH:I

.field private static final TAG:Ljava/lang/String; = "ContentData"

.field private static final THUMBNAIL_IMAGE_HEIGHT:I

.field private static final THUMBNAIL_IMAGE_WIDTH:I

.field private static final THUMBNAIL_SAMPLE_SIZE:I = 0x1


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mContentUri:Landroid/net/Uri;

.field private mDateTaken:J

.field private mFilePath:Ljava/lang/String;

.field private mIsVideoType:Z

.field private mJpegData:[B

.field private mLock:Ljava/lang/Object;

.field private mOptions:Landroid/graphics/BitmapFactory$Options;

.field private mOrientation:I

.field private mSampleSize:I

.field private mThumbnailJpegData:[B

.field private mTitle:Ljava/lang/String;

.field private mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f0b003c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/util/ContentData;->FULL_SCREEN_WIDTH:I

    const v0, 0x7f0b003b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/util/ContentData;->FULL_SCREEN_HEIGHT:I

    const v0, 0x7f0b003a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/util/ContentData;->SCREEN_WIDE_WIDTH:I

    const v0, 0x7f0b0039

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/util/ContentData;->SCREEN_WIDE_HEIGHT:I

    const v0, 0x7f0b0038

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/util/ContentData;->SCREEN_NORMAL_WIDTH:I

    const v0, 0x7f0b0037

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/util/ContentData;->SCREEN_NORMAL_HEIGHT:I

    const v0, 0x7f0b029a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/util/ContentData;->THUMBNAIL_IMAGE_WIDTH:I

    const v0, 0x7f0b0299

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/util/ContentData;->THUMBNAIL_IMAGE_HEIGHT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/util/ContentData;->mSampleSize:I

    iput-object v1, p0, Lcom/sec/android/app/camera/util/ContentData;->mContentUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/sec/android/app/camera/util/ContentData;->mFilePath:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/camera/util/ContentData;->mTitle:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/util/ContentData;->mIsVideoType:Z

    iput-object v1, p0, Lcom/sec/android/app/camera/util/ContentData;->mOptions:Landroid/graphics/BitmapFactory$Options;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/util/ContentData;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private prepareCaptureBitmap()V
    .locals 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/util/ContentData;->mOptions:Landroid/graphics/BitmapFactory$Options;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/util/ContentData;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iget-object v0, p0, Lcom/sec/android/app/camera/util/ContentData;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/util/ContentData;->mOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-object v0, p0, Lcom/sec/android/app/camera/util/ContentData;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/util/ContentData;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const/16 v1, 0x4000

    new-array v1, v1, [B

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    iget-object v0, p0, Lcom/sec/android/app/camera/util/ContentData;->mOptions:Landroid/graphics/BitmapFactory$Options;

    sget v1, Lcom/sec/android/app/camera/util/ContentData;->THUMBNAIL_IMAGE_WIDTH:I

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget-object v0, p0, Lcom/sec/android/app/camera/util/ContentData;->mOptions:Landroid/graphics/BitmapFactory$Options;

    sget v1, Lcom/sec/android/app/camera/util/ContentData;->THUMBNAIL_IMAGE_HEIGHT:I

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/util/ContentData;->mThumbnailJpegData:[B

    if-eqz v0, :cond_1

    const-string v0, "ContentData"

    const-string v1, "use thumbnail in exif"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/util/ContentData;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget-object v0, p0, Lcom/sec/android/app/camera/util/ContentData;->mThumbnailJpegData:[B

    iget-object v1, p0, Lcom/sec/android/app/camera/util/ContentData;->mThumbnailJpegData:[B

    array-length v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/util/ContentData;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v3, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/util/ContentData;->mBitmap:Landroid/graphics/Bitmap;

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/util/ContentData;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/util/ContentData;->mJpegData:[B

    if-eqz v0, :cond_2

    const-string v0, "ContentData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No thumbnail in exif. create thumbnail from jpeg, mSampleSize : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/util/ContentData;->mSampleSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/util/ContentData;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iget v2, p0, Lcom/sec/android/app/camera/util/ContentData;->mSampleSize:I

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget-object v0, p0, Lcom/sec/android/app/camera/util/ContentData;->mJpegData:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/camera/util/ContentData;->mJpegData:[B

    array-length v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/util/ContentData;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/util/ContentData;->mBitmap:Landroid/graphics/Bitmap;

    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/sec/android/app/camera/util/ContentData;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/util/ContentData;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/sec/android/app/camera/util/ContentData;->mJpegData:[B

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v2, p0, Lcom/sec/android/app/camera/util/ContentData;->mThumbnailJpegData:[B

    iget-object v0, p0, Lcom/sec/android/app/camera/util/ContentData;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iput-object v2, p0, Lcom/sec/android/app/camera/util/ContentData;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/util/ContentData;->mContentUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iput-object v2, p0, Lcom/sec/android/app/camera/util/ContentData;->mContentUri:Landroid/net/Uri;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/util/ContentData;->mIsVideoType:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/util/ContentData;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_2

    iput-object v2, p0, Lcom/sec/android/app/camera/util/ContentData;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/util/ContentData;->mFilePath:Ljava/lang/String;

    if-eqz v0, :cond_3

    iput-object v2, p0, Lcom/sec/android/app/camera/util/ContentData;->mFilePath:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/util/ContentData;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_4

    iput-object v2, p0, Lcom/sec/android/app/camera/util/ContentData;->mTitle:Ljava/lang/String;

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public clearCaptureData()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/util/ContentData;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/sec/android/app/camera/util/ContentData;->mJpegData:[B

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v2, p0, Lcom/sec/android/app/camera/util/ContentData;->mThumbnailJpegData:[B

    iget-object v0, p0, Lcom/sec/android/app/camera/util/ContentData;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iput-object v2, p0, Lcom/sec/android/app/camera/util/ContentData;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/util/ContentData;

    iget-object v1, p0, Lcom/sec/android/app/camera/util/ContentData;->mJpegData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/util/ContentData;->mJpegData:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lcom/sec/android/app/camera/util/ContentData;->mJpegData:[B

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/util/ContentData;->mThumbnailJpegData:[B

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/util/ContentData;->mThumbnailJpegData:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lcom/sec/android/app/camera/util/ContentData;->mThumbnailJpegData:[B

    :cond_1
    return-object v0
.end method

.method public getCaptureBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/util/ContentData;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/util/ContentData;->prepareCaptureBitmap()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/util/ContentData;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/util/ContentData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getCaptureData()[B
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/camera/util/ContentData;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/util/ContentData;->mJpegData:[B

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/util/ContentData;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getDateTaken()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/camera/util/ContentData;->mDateTaken:J

    return-wide v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/util/ContentData;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/util/ContentData;->mOrientation:I

    return v0
.end method

.method public getReviewBitmap(I)Landroid/graphics/Bitmap;
    .locals 2

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/ContentData;->getReviewBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getReviewBitmap(II)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v4, 0x0

    iget-object v8, p0, Lcom/sec/android/app/camera/util/ContentData;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Lcom/sec/android/app/camera/util/ContentData;->mJpegData:[B

    if-eqz v7, :cond_0

    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v7, p0, Lcom/sec/android/app/camera/util/ContentData;->mJpegData:[B

    invoke-direct {v5, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v4, v5

    :cond_0
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/util/ContentData;->getCaptureBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    :goto_0
    return-object v7

    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    :cond_1
    new-instance v6, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    invoke-direct {v6}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;-><init>()V

    const/4 v7, 0x7

    iput v7, v6, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    const/4 v7, 0x1

    iput v7, v6, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    invoke-static {p1, p2}, Lcom/sec/android/app/camera/util/Util;->getAspectRatio(II)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->getAspectRatioType(D)I

    move-result v2

    if-nez v2, :cond_4

    sget v7, Lcom/sec/android/app/camera/util/ContentData;->SCREEN_WIDE_WIDTH:I

    if-ge p1, v7, :cond_3

    invoke-static {v4, p1, p2, v6}, Lcom/quramsoft/qrb/QuramBitmapFactory;->decodeFileStream(Ljava/io/InputStream;IILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/camera/util/ContentData;->mBitmap:Landroid/graphics/Bitmap;

    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    iget-object v7, p0, Lcom/sec/android/app/camera/util/ContentData;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v7, :cond_2

    const-string v7, "ContentData"

    const-string v8, "getReviewBitmap : mBitmap is null"

    invoke-static {v7, v8}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    sget v7, Lcom/sec/android/app/camera/util/ContentData;->FULL_SCREEN_WIDTH:I

    sget v8, Lcom/sec/android/app/camera/util/ContentData;->FULL_SCREEN_HEIGHT:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/camera/util/ContentData;->mBitmap:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v7, p0, Lcom/sec/android/app/camera/util/ContentData;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_3
    sget v7, Lcom/sec/android/app/camera/util/ContentData;->SCREEN_WIDE_WIDTH:I

    sget v8, Lcom/sec/android/app/camera/util/ContentData;->SCREEN_WIDE_WIDTH:I

    int-to-double v8, v8

    div-double/2addr v8, v0

    double-to-int v8, v8

    invoke-static {v4, v7, v8, v6}, Lcom/quramsoft/qrb/QuramBitmapFactory;->decodeFileStream(Ljava/io/InputStream;IILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/camera/util/ContentData;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_4
    const/4 v7, 0x2

    if-ne v2, v7, :cond_6

    sget v7, Lcom/sec/android/app/camera/util/ContentData;->SCREEN_NORMAL_HEIGHT:I

    if-ge p1, v7, :cond_5

    invoke-static {v4, p1, p2, v6}, Lcom/quramsoft/qrb/QuramBitmapFactory;->decodeFileStream(Ljava/io/InputStream;IILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/camera/util/ContentData;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_5
    sget v7, Lcom/sec/android/app/camera/util/ContentData;->SCREEN_NORMAL_HEIGHT:I

    sget v8, Lcom/sec/android/app/camera/util/ContentData;->SCREEN_NORMAL_HEIGHT:I

    invoke-static {v4, v7, v8, v6}, Lcom/quramsoft/qrb/QuramBitmapFactory;->decodeFileStream(Ljava/io/InputStream;IILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/camera/util/ContentData;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_6
    sget v7, Lcom/sec/android/app/camera/util/ContentData;->SCREEN_NORMAL_WIDTH:I

    if-ge p1, v7, :cond_7

    invoke-static {v4, p1, p2, v6}, Lcom/quramsoft/qrb/QuramBitmapFactory;->decodeFileStream(Ljava/io/InputStream;IILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/camera/util/ContentData;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_7
    sget v7, Lcom/sec/android/app/camera/util/ContentData;->SCREEN_NORMAL_WIDTH:I

    sget v8, Lcom/sec/android/app/camera/util/ContentData;->SCREEN_NORMAL_WIDTH:I

    int-to-double v8, v8

    div-double/2addr v8, v0

    double-to-int v8, v8

    invoke-static {v4, v7, v8, v6}, Lcom/quramsoft/qrb/QuramBitmapFactory;->decodeFileStream(Ljava/io/InputStream;IILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/camera/util/ContentData;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v7, "ContentData"

    const-string v8, "ByteArrayInputStream"

    invoke-static {v7, v8, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/util/ContentData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/util/ContentData;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public isContentVideoType()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/util/ContentData;->mIsVideoType:Z

    return v0
.end method

.method public isJpegDataAvailable()Z
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/camera/util/ContentData;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/util/ContentData;->mJpegData:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCaptureData([BI)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/camera/util/ContentData;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/sec/android/app/camera/util/ContentData;->mJpegData:[B

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput p2, p0, Lcom/sec/android/app/camera/util/ContentData;->mSampleSize:I

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setCaptureThumbnailData([B)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/util/ContentData;->mThumbnailJpegData:[B

    return-void
.end method

.method public setContentUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/util/ContentData;->mContentUri:Landroid/net/Uri;

    return-void
.end method

.method public setContentVideoType(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/util/ContentData;->mIsVideoType:Z

    return-void
.end method

.method public setDateTaken(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sec/android/app/camera/util/ContentData;->mDateTaken:J

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/util/ContentData;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/util/ContentData;->mOrientation:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/util/ContentData;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setVideoFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/util/ContentData;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-void
.end method
