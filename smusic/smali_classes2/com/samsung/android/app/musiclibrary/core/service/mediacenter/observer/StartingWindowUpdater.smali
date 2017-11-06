.class public final Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;
.super Ljava/lang/Object;
.source "StartingWindowUpdater.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$AlbumSaveData;,
        Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$FileUtils;,
        Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$BgSaveHandler;
    }
.end annotation


# static fields
.field private static final CUSTOM_IMAGE:Ljava/lang/String; = "/custom_image"

.field private static final DATA_USER:Ljava/lang/String; = "/data/user/"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-MediaCenter"

.field private static final ORIGINAL_BLUR_IMAGE_FILE_NAME:Ljava/lang/String; = "OriginalBlurImage.jpg"

.field private static final SEPARATOR:Ljava/lang/String; = "/"

.field private static final STARTING_WINDOW_FILE_NAME_LAND:Ljava/lang/String; = "CustomStartingWindowImage_land.jpg"

.field private static final STARTING_WINDOW_FILE_NAME_PORT:Ljava/lang/String; = "CustomStartingWindowImage_port.jpg"

.field private static final SUB_TAG:Ljava/lang/String; = "StartingWindow: "

.field private static final TAG:Ljava/lang/String; = "SV-MediaCenter"

.field private static final THREAD_NAME_STARTING_WINDOW:Ljava/lang/String; = "smusic_window_saver"

.field private static final USE_LATEST_SAVE_METHOD:Z

.field private static volatile sInstance:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private volatile mAndroidBlurGenerator:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;

.field private mBgSaveHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$BgSaveHandler;

.field private mBgSaveThread:Landroid/os/HandlerThread;

.field private final mBlurSizeResId:I
    .annotation build Landroid/support/annotation/DimenRes;
    .end annotation
.end field

.field private final mClsAppMain:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentArtKey:J

.field private mDefaultBlurAlbumArt:Landroid/graphics/Bitmap;

.field private mLastSavedArtKey:Ljava/lang/Object;

.field private final mSupportLandscape:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->USE_LATEST_SAVE_METHOD:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/Class;IZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "blurSizeResId"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param
    .param p4, "supportLandscape"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;IZ)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p2, "clsAppMain":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mContext:Landroid/content/Context;

    .line 154
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mClsAppMain:Ljava/lang/Class;

    .line 155
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mBlurSizeResId:I

    .line 156
    iput-boolean p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mSupportLandscape:Z

    .line 157
    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$AlbumSaveData;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;
    .param p1, "x1"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$AlbumSaveData;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->save(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$AlbumSaveData;)V

    return-void
.end method

.method private cancelSaveRequest()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mBgSaveHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$BgSaveHandler;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mBgSaveHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$BgSaveHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$BgSaveHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 262
    :cond_0
    return-void
.end method

.method public static createInstance(Landroid/content/Context;Ljava/lang/Class;I)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "blurSizeResId"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;I)",
            "Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "clsAppMain":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->createInstance(Landroid/content/Context;Ljava/lang/Class;IZ)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;

    move-result-object v0

    return-object v0
.end method

.method public static createInstance(Landroid/content/Context;Ljava/lang/Class;IZ)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "blurSizeResId"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param
    .param p3, "supportLandscape"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;IZ)",
            "Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, "clsAppMain":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;

    if-nez v0, :cond_1

    .line 134
    const-class v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;

    monitor-enter v1

    .line 135
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;-><init>(Landroid/content/Context;Ljava/lang/Class;IZ)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;

    .line 139
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :cond_1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;

    return-object v0

    .line 139
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private deleteMusicLaunchImage(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 311
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->getSavedFolder(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "customFolder":Ljava/lang/String;
    invoke-direct {p0, p1, v4, v6}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->setCustomStartingImage(Landroid/content/Context;ILjava/lang/String;)V

    .line 314
    const/4 v5, 0x1

    invoke-direct {p0, p1, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->setCustomStartingImage(Landroid/content/Context;ILjava/lang/String;)V

    .line 317
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 318
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 319
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 320
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_0

    .line 321
    array-length v5, v3

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v3, v4

    .line 323
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 321
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 327
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "files":[Ljava/io/File;
    :cond_0
    return-void
.end method

.method private declared-synchronized ensureSaverThread()V
    .locals 2

    .prologue
    .line 505
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mBgSaveThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 506
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "smusic_window_saver"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mBgSaveThread:Landroid/os/HandlerThread;

    .line 507
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mBgSaveThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mBgSaveHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$BgSaveHandler;

    if-nez v0, :cond_1

    .line 510
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$BgSaveHandler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mBgSaveThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$BgSaveHandler;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mBgSaveHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$BgSaveHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    :cond_1
    monitor-exit p0

    return-void

    .line 505
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getAlphaMaskBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 416
    if-nez p1, :cond_0

    .line 417
    const-string v5, "SMUSIC-SV-MediaCenter"

    const-string v6, "StartingWindow: trying to alpha masking but it\'s result is null. Please check alpha masking logic"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const/4 v3, 0x0

    .line 430
    :goto_0
    return-object v3

    .line 421
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 422
    .local v4, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 423
    .local v1, "height":I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 424
    .local v3, "transBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 425
    .local v0, "c":Landroid/graphics/Canvas;
    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 426
    new-instance v2, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 428
    .local v2, "paint":Landroid/graphics/Paint;
    const/16 v5, 0xa2

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 429
    invoke-virtual {v0, p1, v7, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private getBlurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 402
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mAndroidBlurGenerator:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;

    if-nez v0, :cond_0

    .line 403
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mContext:Landroid/content/Context;

    .line 404
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mBlurSizeResId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mAndroidBlurGenerator:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mAndroidBlurGenerator:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->getBlurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 407
    if-nez p1, :cond_1

    .line 408
    const-string v0, "SMUSIC-SV-MediaCenter"

    const-string v1, "StartingWindow: trying to apply blur effect, the the result is null. Please check the blur method."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const/4 p1, 0x0

    .line 412
    .end local p1    # "bm":Landroid/graphics/Bitmap;
    :cond_1
    return-object p1
.end method

.method private static getCenterCrop(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "deviceWidth"    # I
    .param p2, "deviceHeight"    # I
    .param p3, "isPortrait"    # Z

    .prologue
    .line 475
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 476
    .local v6, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 478
    .local v3, "height":I
    mul-int v7, p1, v6

    div-int/2addr v7, p2

    add-int/lit8 v5, v7, -0x1

    .line 479
    .local v5, "newWidth":I
    mul-int v7, p2, v3

    div-int/2addr v7, p1

    add-int/lit8 v4, v7, -0x1

    .line 480
    .local v4, "newHeight":I
    sub-int v7, v6, v5

    div-int/lit8 v0, v7, 0x2

    .line 481
    .local v0, "cropX":I
    sub-int v7, v3, v4

    div-int/lit8 v1, v7, 0x2

    .line 482
    .local v1, "cropY":I
    if-eqz p3, :cond_0

    .line 483
    const-string v7, "SMUSIC-SV-MediaCenter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "StartingWindow: saveMusicLaunchImage newWidth : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " width : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " cropX : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :goto_0
    if-eqz p3, :cond_1

    .line 493
    const/4 v7, 0x0

    :try_start_0
    invoke-static {p0, v0, v7, v5, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 500
    :goto_1
    return-object v7

    .line 487
    :cond_0
    const-string v7, "SMUSIC-SV-MediaCenter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "StartingWindow: saveMusicLaunchImage newHeight : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " height : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " cropY : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 495
    :cond_1
    const/4 v7, 0x0

    :try_start_1
    invoke-static {p0, v7, v1, v6, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto :goto_1

    .line 497
    :catch_0
    move-exception v2

    .line 498
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v7, "SMUSIC-SV-MediaCenter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "StartingWindow: IllegalArgumentException during saveMusicLaunchImage msg : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 499
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 498
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private getDefaultBlurAlbumArt()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 244
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mDefaultBlurAlbumArt:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 245
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mDefaultBlurAlbumArt:Landroid/graphics/Bitmap;

    .line 255
    :goto_0
    return-object v0

    .line 247
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/app/musiclibrary/R$drawable;->music_blur_default_bg:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 249
    .local v1, "res":Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 250
    const-string v2, "SMUSIC-SV-MediaCenter"

    const-string v3, "default image is not exist !!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v0, 0x0

    goto :goto_0

    .line 253
    :cond_1
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->getBlurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 254
    .local v0, "blurRes":Landroid/graphics/Bitmap;
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mDefaultBlurAlbumArt:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public static getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;
    .locals 2

    .prologue
    .line 145
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please call createInstance method first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;

    return-object v0
.end method

.method public static getOriginalBlurFromDisk(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 344
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 345
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/custom_image"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 347
    .local v1, "customFolder":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    const-string v4, "OriginalBlurImage.jpg"

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    .local v2, "file":Ljava/io/File;
    const/4 v0, 0x0

    .line 349
    .local v0, "blur":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 350
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 352
    :cond_0
    return-object v0
.end method

.method private static getSavedFolder(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 331
    sget-boolean v3, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->USE_LATEST_SAVE_METHOD:Z

    if-eqz v3, :cond_0

    .line 332
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 333
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/custom_image"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v0

    .line 335
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/UserHandleCompat;->myUserId()I

    move-result v2

    .line 336
    .local v2, "taskUserId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/user/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 337
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/custom_image"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, "folder":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$FileUtils;->access$100(Ljava/io/File;)V

    goto :goto_0
.end method

.method private isLatestRequest(Landroid/net/Uri;)Z
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 202
    if-nez p1, :cond_0

    .line 204
    const/4 v1, 0x1

    .line 207
    :goto_0
    return v1

    .line 206
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "id":Ljava/lang/String;
    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mCurrentArtKey:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private resizeBitmap(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "isPortrait"    # Z

    .prologue
    const/4 v3, 0x0

    .line 435
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 436
    .local v2, "dm":Landroid/util/DisplayMetrics;
    const-string v4, "SMUSIC-SV-MediaCenter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StartingWindow: saveMusicLaunchImage width : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " height : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isPortrait : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    if-eqz p2, :cond_2

    .line 447
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v4, v5, :cond_0

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 448
    .local v1, "deviceWidth":I
    :goto_0
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v4, v5, :cond_1

    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 457
    .local v0, "deviceHeight":I
    :goto_1
    invoke-static {p1, v1, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->getCenterCrop(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 458
    if-nez p1, :cond_5

    .line 459
    const-string v4, "SMUSIC-SV-MediaCenter"

    const-string v5, "StartingWindow: trying to save music launch image but it is fail to crop. Please check the album art spec."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :goto_2
    return-object v3

    .line 447
    .end local v0    # "deviceHeight":I
    .end local v1    # "deviceWidth":I
    :cond_0
    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    .line 448
    .restart local v1    # "deviceWidth":I
    :cond_1
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_1

    .line 450
    .end local v1    # "deviceWidth":I
    :cond_2
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v4, v5, :cond_3

    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 451
    .restart local v1    # "deviceWidth":I
    :goto_3
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v4, v5, :cond_4

    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .restart local v0    # "deviceHeight":I
    :goto_4
    goto :goto_1

    .line 450
    .end local v0    # "deviceHeight":I
    .end local v1    # "deviceWidth":I
    :cond_3
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_3

    .line 451
    .restart local v1    # "deviceWidth":I
    :cond_4
    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_4

    .line 464
    .restart local v0    # "deviceHeight":I
    :cond_5
    const/4 v4, 0x0

    invoke-static {p1, v1, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 465
    if-nez p1, :cond_6

    .line 466
    const-string v4, "SMUSIC-SV-MediaCenter"

    const-string v5, "StartingWindow: trying to scale to screen size but it\'s result is null. Please check sale logic"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    move-object v3, p1

    .line 470
    goto :goto_2
.end method

.method private save(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$AlbumSaveData;)V
    .locals 12
    .param p1, "data"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$AlbumSaveData;

    .prologue
    const/4 v9, 0x1

    .line 275
    iget-object v7, p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$AlbumSaveData;->bm:Landroid/graphics/Bitmap;

    if-nez v7, :cond_1

    .line 276
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->getDefaultBlurAlbumArt()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 277
    .local v3, "defaultBlur":Landroid/graphics/Bitmap;
    if-nez v3, :cond_0

    .line 278
    const-string v7, "SMUSIC-SV-MediaCenter"

    const-string v8, "The default image doesn\'t exist. Please check logic."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->deleteMusicLaunchImage(Landroid/content/Context;)V

    .line 308
    .end local v3    # "defaultBlur":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 282
    .restart local v3    # "defaultBlur":Landroid/graphics/Bitmap;
    :cond_0
    iput-object v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$AlbumSaveData;->bm:Landroid/graphics/Bitmap;

    .line 284
    .end local v3    # "defaultBlur":Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 286
    .local v4, "elapsed":J
    iget-boolean v7, p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$AlbumSaveData;->isBlur:Z

    if-eqz v7, :cond_3

    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$AlbumSaveData;->bm:Landroid/graphics/Bitmap;

    .line 287
    .local v0, "blurBm":Landroid/graphics/Bitmap;
    :goto_1
    if-eqz v0, :cond_2

    .line 288
    iget-object v7, p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$AlbumSaveData;->artKey:Ljava/lang/Object;

    iput-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mLastSavedArtKey:Ljava/lang/Object;

    .line 289
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->getSavedFolder(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 290
    .local v2, "customFolder":Ljava/lang/String;
    const-string v7, "OriginalBlurImage.jpg"

    invoke-direct {p0, v0, v2, v7}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->saveToPrivateData(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 293
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->getAlphaMaskBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 294
    .local v1, "blurMaskBm":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 295
    invoke-direct {p0, v1, v9}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->resizeBitmap(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    const-string v8, "CustomStartingWindowImage_port.jpg"

    invoke-direct {p0, v7, v2, v8}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->saveToPrivateData(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 297
    .local v6, "filePath":Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8, v6}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->setCustomStartingImage(Landroid/content/Context;ILjava/lang/String;)V

    .line 298
    iget-boolean v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mSupportLandscape:Z

    if-eqz v7, :cond_2

    .line 299
    invoke-direct {p0, v1, v9}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->resizeBitmap(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    const-string v8, "CustomStartingWindowImage_land.jpg"

    invoke-direct {p0, v7, v2, v8}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->saveToPrivateData(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 301
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7, v9, v6}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->setCustomStartingImage(Landroid/content/Context;ILjava/lang/String;)V

    .line 305
    .end local v1    # "blurMaskBm":Landroid/graphics/Bitmap;
    .end local v2    # "customFolder":Ljava/lang/String;
    .end local v6    # "filePath":Ljava/lang/String;
    :cond_2
    const-string v7, "SMUSIC-SV-MediaCenter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "StartingWindow: saveMusicLaunchImage elapsed : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 306
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " milli sec"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 305
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 286
    .end local v0    # "blurBm":Landroid/graphics/Bitmap;
    :cond_3
    iget-object v7, p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$AlbumSaveData;->bm:Landroid/graphics/Bitmap;

    invoke-direct {p0, v7}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->getBlurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method private saveToPrivateData(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "dataDir"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    .line 356
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 357
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 359
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 362
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 363
    .end local v1    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .local v3, "fos":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 364
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {p1, v4, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 365
    if-eqz v3, :cond_1

    if-eqz v5, :cond_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 368
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 365
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v4

    :try_start_3
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 366
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 365
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 363
    :catch_2
    move-exception v4

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 365
    :catchall_0
    move-exception v5

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    :goto_1
    if-eqz v3, :cond_3

    if-eqz v5, :cond_4

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_3
    :goto_2
    :try_start_7
    throw v4

    :catch_3
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v4

    goto :goto_1
.end method

.method private setCustomStartingImage(Landroid/content/Context;ILjava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rotation"    # I
    .param p3, "filepath"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 372
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mClsAppMain:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v5, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    .local v1, "cn":Landroid/content/ComponentName;
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/UserHandleCompat;->myUserId()I

    move-result v4

    .line 374
    .local v4, "taskUserId":I
    const-string v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 375
    .local v0, "am":Landroid/app/ActivityManager;
    if-nez p3, :cond_1

    .line 378
    invoke-static {v0, v1, v4, v6, p2}, Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityManagerCompat;->setCustomImageForPackage(Landroid/app/ActivityManager;Landroid/content/ComponentName;ILjava/io/FileDescriptor;I)Z

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .local v3, "in":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 388
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-static {v0, v1, v4, v7, p2}, Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityManagerCompat;->setCustomImageForPackage(Landroid/app/ActivityManager;Landroid/content/ComponentName;ILjava/io/FileDescriptor;I)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 394
    if-eqz v3, :cond_0

    if-eqz v6, :cond_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v6

    :try_start_3
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v3    # "in":Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    .line 395
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "SMUSIC-SV-MediaCenter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StartingWindow: setCustomStartingImage ignored : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 394
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :cond_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 385
    :catch_2
    move-exception v5

    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 394
    :catchall_0
    move-exception v6

    move-object v8, v6

    move-object v6, v5

    move-object v5, v8

    :goto_1
    if-eqz v3, :cond_3

    if-eqz v6, :cond_4

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_3
    :goto_2
    :try_start_7
    throw v5

    :catch_3
    move-exception v7

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v5

    goto :goto_1
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 184
    const-string v2, "com.samsung.android.app.music.core.state.BLUR_ARTWORK_UPDATED"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    const-string v2, "artwork_uri"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 186
    .local v1, "uri":Landroid/net/Uri;
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->isLatestRequest(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 187
    const-string v2, "SMUSIC-SV-MediaCenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StartingWindow: It is not current meta artwork uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mCurrentArtKey:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 190
    .restart local v1    # "uri":Landroid/net/Uri;
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mLastSavedArtKey:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mLastSavedArtKey:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 191
    const-string v2, "SMUSIC-SV-MediaCenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StartingWindow: It is same with last saved album id, thus do not save starting window. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mLastSavedArtKey:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 196
    :cond_2
    const-string v2, "artwork_blurred"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 197
    .local v0, "blur":Landroid/graphics/Bitmap;
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->requestSaveStartingWindow(Ljava/lang/Object;Landroid/graphics/Bitmap;Z)V

    goto :goto_0
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 6
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->cancelSaveRequest()V

    .line 163
    const-string v1, "com.samsung.android.app.music.metadata.ALBUM_ID"

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mCurrentArtKey:J

    .line 164
    const-string v1, "android.media.metadata.ALBUM_ART"

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 165
    .local v0, "artwork":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 166
    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mCurrentArtKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->requestSaveStartingWindow(Ljava/lang/Object;Landroid/graphics/Bitmap;Z)V

    .line 168
    :cond_0
    const-string v1, "SMUSIC-SV-MediaCenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StartingWindow: onMetadataChanged. current "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mCurrentArtKey:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 174
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "extras"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 212
    sput-object v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;

    .line 213
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mAndroidBlurGenerator:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;

    .line 214
    .local v0, "g":Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;
    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mAndroidBlurGenerator:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;

    .line 215
    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->release()V

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mBgSaveHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$BgSaveHandler;

    if-eqz v1, :cond_1

    .line 219
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mBgSaveHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$BgSaveHandler;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$BgSaveHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 220
    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mBgSaveHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$BgSaveHandler;

    .line 222
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mBgSaveThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_2

    .line 223
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mBgSaveThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 224
    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mBgSaveThread:Landroid/os/HandlerThread;

    .line 226
    :cond_2
    return-void
.end method

.method public requestSaveStartingWindow(Ljava/lang/Object;Landroid/graphics/Bitmap;Z)V
    .locals 6
    .param p1, "artKey"    # Ljava/lang/Object;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "isBlur"    # Z

    .prologue
    const/4 v5, 0x0

    .line 230
    const-string v2, "SMUSIC-SV-MediaCenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StartingWindow: requestSaveStartingWindow. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$AlbumSaveData;

    invoke-direct {v0, v5}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$AlbumSaveData;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$1;)V

    .line 232
    .local v0, "data":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$AlbumSaveData;
    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$AlbumSaveData;->artKey:Ljava/lang/Object;

    .line 233
    iput-object p2, v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$AlbumSaveData;->bm:Landroid/graphics/Bitmap;

    .line 234
    iput-boolean p3, v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$AlbumSaveData;->isBlur:Z

    .line 236
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->ensureSaverThread()V

    .line 237
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mBgSaveHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$BgSaveHandler;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$BgSaveHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 238
    .local v1, "msg":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 239
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mBgSaveHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$BgSaveHandler;

    invoke-virtual {v2, v5}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$BgSaveHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 240
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mBgSaveHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$BgSaveHandler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v1, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$BgSaveHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 241
    return-void
.end method
