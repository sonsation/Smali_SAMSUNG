.class public Lcom/samsung/android/app/music/common/util/BlurBackgroundController;
.super Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;
.source "BlurBackgroundController.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;,
        Lcom/samsung/android/app/music/common/util/BlurBackgroundController$LoaderClient;,
        Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;,
        Lcom/samsung/android/app/music/common/util/BlurBackgroundController$RequestType;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final LOG_TAG:Ljava/lang/String;

.field static final REQUEST_INIT_BACKGROUND:I = 0x0

.field static final REQUEST_UPDATE_BACKGROUND:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static sLoader:Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;


# instance fields
.field private final mBlurView:Landroid/widget/ImageView;

.field private mFirstMeta:Z

.field private mFixedBackgroundRequest:Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;

.field private mLastRequest:Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;

.field private final mLoaderClient:Lcom/samsung/android/app/music/common/util/BlurBackgroundController$LoaderClient;

.field private mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/DebugCompat;->isProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->DEBUG:Z

    .line 52
    const-class v0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->TAG:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "blurView"    # Landroid/widget/ImageView;
    .param p3, "observable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;-><init>()V

    .line 68
    new-instance v2, Landroid/os/Handler;

    new-instance v3, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$1;-><init>(Lcom/samsung/android/app/music/common/util/BlurBackgroundController;)V

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->mUiHandler:Landroid/os/Handler;

    .line 90
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->mFirstMeta:Z

    .line 103
    iput-object p2, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->mBlurView:Landroid/widget/ImageView;

    .line 104
    iput-object p3, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 105
    iget-object v2, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v2, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 106
    const-class v3, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;

    monitor-enter v3

    .line 107
    :try_start_0
    sget-object v2, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->sLoader:Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;

    if-nez v2, :cond_0

    .line 108
    new-instance v2, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->sLoader:Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;

    .line 110
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 116
    .local v1, "blurSize":I
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;-><init>(Landroid/content/Context;I)V

    .line 120
    .local v0, "androidBlurGenerator":Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;
    new-instance v2, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$LoaderClient;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->mUiHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$LoaderClient;-><init>(Landroid/os/Handler;Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;Lcom/samsung/android/app/music/common/util/BlurBackgroundController$1;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->mLoaderClient:Lcom/samsung/android/app/music/common/util/BlurBackgroundController$LoaderClient;

    .line 121
    sget-object v2, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->sLoader:Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->mLoaderClient:Lcom/samsung/android/app/music/common/util/BlurBackgroundController$LoaderClient;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;->setClient(Lcom/samsung/android/app/music/common/util/BlurBackgroundController$LoaderClient;)V

    .line 122
    return-void

    .line 110
    .end local v0    # "androidBlurGenerator":Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;
    .end local v1    # "blurSize":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/util/BlurBackgroundController;Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/util/BlurBackgroundController;
    .param p1, "x1"    # Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->needUpdateBackground(Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/util/BlurBackgroundController;Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/util/BlurBackgroundController;
    .param p1, "x1"    # Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;
    .param p2, "x2"    # Landroid/graphics/Bitmap;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->assignBlurBackground(Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/common/util/BlurBackgroundController;)Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/util/BlurBackgroundController;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->mFixedBackgroundRequest:Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/common/util/BlurBackgroundController;)Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/util/BlurBackgroundController;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->mLastRequest:Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;

    return-object v0
.end method

.method private assignBlurBackground(Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "req"    # Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 366
    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->mBlurView:Landroid/widget/ImageView;

    .line 367
    .local v1, "iv":Landroid/widget/ImageView;
    sget-boolean v2, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->DEBUG:Z

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 368
    sget-object v2, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->LOG_TAG:Ljava/lang/String;

    const-string v3, "assignBlurBackground ignored, view is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    .end local v1    # "iv":Landroid/widget/ImageView;
    :goto_0
    return-void

    .line 371
    .restart local v1    # "iv":Landroid/widget/ImageView;
    :cond_0
    const/4 v0, 0x0

    .line 372
    .local v0, "blurImageView":Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;
    instance-of v2, v1, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 373
    check-cast v0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    .line 375
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->needCrossFade(Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 376
    sget-object v2, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->LOG_TAG:Ljava/lang/String;

    const-string v3, "assignBlurBackground cross fade"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    check-cast v1, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    .end local v1    # "iv":Landroid/widget/ImageView;
    invoke-virtual {v1, p2}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->crossFadeTo(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 379
    .restart local v1    # "iv":Landroid/widget/ImageView;
    :cond_2
    sget-object v2, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->LOG_TAG:Ljava/lang/String;

    const-string v3, "assignBlurBackground directly"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    if-eqz v0, :cond_3

    .line 381
    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->setBlurredImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 383
    :cond_3
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private needCrossFade(Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;)Z
    .locals 2
    .param p1, "req"    # Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;

    .prologue
    const/4 v0, 0x1

    .line 389
    invoke-static {p1}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;->access$1100(Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needUpdateBackground(Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;)Z
    .locals 1
    .param p1, "req"    # Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->mFixedBackgroundRequest:Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->mLastRequest:Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 87
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->mFixedBackgroundRequest:Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private setBlurBackground(Landroid/net/Uri;J)V
    .locals 2
    .param p1, "baseThumbnailUri"    # Landroid/net/Uri;
    .param p2, "thumbnailId"    # J

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->setBlurBackground(Landroid/net/Uri;JI)V

    .line 141
    return-void
.end method

.method private setBlurBackground(Landroid/net/Uri;JI)V
    .locals 6
    .param p1, "baseThumbnailUri"    # Landroid/net/Uri;
    .param p2, "thumbnailId"    # J
    .param p4, "requestType"    # I

    .prologue
    .line 146
    iget-object v2, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->mFixedBackgroundRequest:Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;

    if-eqz v2, :cond_0

    .line 147
    sget-object v2, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "setBlurBackground() ignored, fixed background already set"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :goto_0
    return-void

    .line 150
    :cond_0
    new-instance v1, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;-><init>(Landroid/net/Uri;JI)V

    .line 151
    .local v1, "newRequest":Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;
    iget-object v2, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->mLastRequest:Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    sget-object v2, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "setBlurBackground() ignored, same background already set"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 155
    :cond_1
    iput-object v1, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->mLastRequest:Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;

    .line 156
    sget-object v2, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBlurBackground() called with: baseThumbnailUri = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], thumbnailId = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], requestType = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    sget-object v2, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->sLoader:Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->mLastRequest:Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;->getCachedBitmap(Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 159
    .local v0, "blurredBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->mLastRequest:Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->needUpdateBackground(Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 160
    iget-object v2, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->mLastRequest:Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->assignBlurBackground(Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 162
    :cond_2
    sget-boolean v2, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 163
    sget-object v2, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->LOG_TAG:Ljava/lang/String;

    const-string v3, "background request"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_3
    const v2, 0x7f0d00c3

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->withDimension(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v2

    .line 166
    invoke-virtual {v2, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->withBaseUri(Landroid/net/Uri;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->sLoader:Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;

    .line 167
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->mLastRequest:Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->loadToHandler(Landroid/os/Handler;Landroid/os/Parcelable;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public changeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 1
    .param p1, "observable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 208
    iput-object p1, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 209
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 210
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 203
    sget-object v0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->sLoader:Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->mLoaderClient:Lcom/samsung/android/app/music/common/util/BlurBackgroundController$LoaderClient;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;->releaseClient(Lcom/samsung/android/app/music/common/util/BlurBackgroundController$LoaderClient;)V

    .line 204
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->mFirstMeta:Z

    .line 197
    sget-object v0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->sLoader:Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->mLoaderClient:Lcom/samsung/android/app/music/common/util/BlurBackgroundController$LoaderClient;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;->setClient(Lcom/samsung/android/app/music/common/util/BlurBackgroundController$LoaderClient;)V

    .line 198
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 192
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 8
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    const/4 v4, 0x0

    .line 173
    iget-boolean v5, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->mFirstMeta:Z

    if-eqz v5, :cond_0

    move v3, v4

    .line 174
    .local v3, "requestType":I
    :goto_0
    const-string v5, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {p1, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v2, v6

    .line 175
    .local v2, "cpAttrs":I
    const-string v5, "com.samsung.android.app.music.metadata.ALBUM_ID"

    invoke-virtual {p1, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 176
    .local v0, "albumId":J
    iput-boolean v4, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->mFirstMeta:Z

    .line 177
    invoke-static {v2}, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->getArtWorkUri(I)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, v4, v0, v1, v3}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->setBlurBackground(Landroid/net/Uri;JI)V

    .line 178
    return-void

    .line 173
    .end local v0    # "albumId":J
    .end local v2    # "cpAttrs":I
    .end local v3    # "requestType":I
    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 183
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
    .line 188
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method

.method public setBlurBackground(IJ)V
    .locals 2
    .param p1, "listType"    # I
    .param p2, "thumbnailId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 136
    invoke-static {p1}, Lcom/samsung/android/app/music/common/martworkcache/Thumbnails;->convertListTypeToUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->setBlurBackground(Landroid/net/Uri;J)V

    .line 137
    return-void
.end method

.method public setFixedBlurBackground(Landroid/net/Uri;J)V
    .locals 4
    .param p1, "baseThumbnailUri"    # Landroid/net/Uri;
    .param p2, "thumbnailId"    # J

    .prologue
    const/4 v3, 0x0

    .line 125
    sget-object v0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFixedBlurBackground() called with: baseThumbnailUri = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], thumbnailId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-direct {p0, p1, p2, p3, v3}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->setBlurBackground(Landroid/net/Uri;JI)V

    .line 129
    new-instance v0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;

    invoke-direct {v0, p1, p2, p3, v3}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;-><init>(Landroid/net/Uri;JI)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->mFixedBackgroundRequest:Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;

    .line 131
    return-void
.end method
