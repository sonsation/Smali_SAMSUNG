.class public final Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;
.super Ljava/lang/Object;
.source "DefaultDrawableCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache$DefaultDrawableCacheHolder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final sDefaultBitmapLock:Ljava/lang/Object;

.field private static final sDefaultBlurBitmapLock:Ljava/lang/Object;


# instance fields
.field private volatile mDefaultBitmap:Landroid/graphics/Bitmap;

.field private volatile mDefaultBlurBitmap:Landroid/graphics/Bitmap;

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->LOG_TAG:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->sDefaultBitmapLock:Ljava/lang/Object;

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->sDefaultBlurBitmapLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->mUiHandler:Landroid/os/Handler;

    return-void
.end method

.method private getBitmapFromDrawable(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawableId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 86
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 87
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_0

    .line 88
    sget-object v5, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to get drawable context: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " drawableId: 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 89
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 88
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 92
    .restart local v2    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-static {v2}, Lcom/samsung/android/app/music/support/samsung/graphics/spr/SprCompat;->isSpr(Landroid/graphics/drawable/Drawable;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 93
    invoke-static {v2}, Lcom/samsung/android/app/music/support/samsung/graphics/spr/SprCompat;->getBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_1
    instance-of v5, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_2

    .line 95
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 98
    .restart local v2    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 99
    .local v4, "w":I
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 100
    .local v3, "h":I
    if-lez v4, :cond_3

    if-gtz v3, :cond_4

    .line 101
    :cond_3
    sget-object v5, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to get drawable context: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " drawableId: 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 102
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " w: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " h: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " drawable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 101
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 106
    :cond_4
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 107
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 108
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v2, v6, v6, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 109
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache$DefaultDrawableCacheHolder;->sInstance:Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;

    return-object v0
.end method


# virtual methods
.method public getDefaultBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->mDefaultBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->mDefaultBitmap:Landroid/graphics/Bitmap;

    .line 55
    :goto_0
    return-object v0

    .line 42
    :cond_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->sDefaultBitmapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->mDefaultBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->mDefaultBitmap:Landroid/graphics/Bitmap;

    monitor-exit v1

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 50
    :cond_1
    :try_start_1
    sget v0, Lcom/samsung/android/app/musiclibrary/R$drawable;->music_player_default_cover:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getBitmapFromDrawable(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->mDefaultBitmap:Landroid/graphics/Bitmap;

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->mDefaultBitmap:Landroid/graphics/Bitmap;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getDefaultBlurBackground(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->mDefaultBlurBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->mDefaultBlurBitmap:Landroid/graphics/Bitmap;

    .line 81
    :goto_0
    return-object v0

    .line 63
    :cond_0
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->sDefaultBlurBitmapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->mDefaultBlurBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->mDefaultBlurBitmap:Landroid/graphics/Bitmap;

    monitor-exit v2

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 71
    :cond_1
    :try_start_1
    sget v1, Lcom/samsung/android/app/musiclibrary/R$drawable;->music_blur_default_bg:I

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getBitmapFromDrawable(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 72
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 73
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Try to get a default bitmap from resource but fail"

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    :cond_2
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->mDefaultBlurBitmap:Landroid/graphics/Bitmap;

    .line 81
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
