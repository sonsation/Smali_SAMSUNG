.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;
.super Ljava/lang/Object;
.source "ImageViewPublisher.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;


# static fields
.field private static final DEBUG:Z

.field public static final LOG_TAG:Ljava/lang/String; = "ArtWork"

.field private static final sUiCallback:Landroid/os/Handler$Callback;

.field private static volatile sUiHandler:Landroid/os/Handler;

.field private static final sUiHandlerLock:Ljava/lang/Object;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mDefaultRes:I

.field private final mImageView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final mSetDefaultImageBeforeLoad:Z

.field private final mUIThreadId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->sUiHandler:Landroid/os/Handler;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->sUiHandlerLock:Ljava/lang/Object;

    .line 52
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->DEBUG:Z

    .line 56
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher$1;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->sUiCallback:Landroid/os/Handler$Callback;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;I)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "defaultRes"    # I

    .prologue
    .line 66
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;-><init>(Landroid/widget/ImageView;IZ)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;IZ)V
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "defaultRes"    # I
    .param p3, "setDefaultImageBeforeLoad"    # Z

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->mUIThreadId:J

    .line 72
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->mImageView:Ljava/lang/ref/WeakReference;

    .line 73
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->mDefaultRes:I

    .line 74
    iput-boolean p3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->mSetDefaultImageBeforeLoad:Z

    .line 75
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->doPublishBitmap()V

    return-void
.end method

.method private doPublishBitmap()V
    .locals 4

    .prologue
    .line 140
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 141
    .local v0, "iv":Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 143
    const-string v1, "ArtWork"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "publish to image view: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bitmap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 146
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->assignBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 153
    :cond_1
    :goto_0
    return-void

    .line 148
    :cond_2
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->mDefaultRes:I

    if-lez v1, :cond_1

    .line 149
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->mDefaultRes:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->assignDefaultResource(Landroid/widget/ImageView;I)V

    goto :goto_0
.end method

.method private ensureHandler()V
    .locals 4

    .prologue
    .line 126
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->sUiHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 127
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->sUiHandlerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 128
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->sUiCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->sUiHandler:Landroid/os/Handler;

    .line 129
    monitor-exit v1

    .line 131
    :cond_0
    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isUiThread()Z
    .locals 4

    .prologue
    .line 164
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->mUIThreadId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected allowPublish(Landroid/net/Uri;Landroid/graphics/Bitmap;JZ)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "elapsedTime"    # J
    .param p5, "uiThread"    # Z

    .prologue
    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method protected assignBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 156
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 157
    return-void
.end method

.method protected assignDefaultResource(Landroid/widget/ImageView;I)V
    .locals 0
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "defaultRes"    # I

    .prologue
    .line 160
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 161
    return-void
.end method

.method public onPublishArtwork(Landroid/net/Uri;Landroid/graphics/Bitmap;J)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "elapsedTime"    # J

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->isUiThread()Z

    move-result v6

    .local v6, "uiThread":Z
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    .line 89
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->allowPublish(Landroid/net/Uri;Landroid/graphics/Bitmap;JZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    :goto_0
    return-void

    .line 92
    :cond_0
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->mBitmap:Landroid/graphics/Bitmap;

    .line 93
    if-eqz v6, :cond_1

    .line 94
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->doPublishBitmap()V

    goto :goto_0

    .line 96
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->ensureHandler()V

    .line 97
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->sUiHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 98
    .local v0, "msg":Landroid/os/Message;
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->sUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onStartBackgroundRequest(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 80
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 81
    .local v0, "iv":Landroid/widget/ImageView;
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->mSetDefaultImageBeforeLoad:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->mDefaultRes:I

    if-lez v1, :cond_0

    .line 82
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->mDefaultRes:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->assignDefaultResource(Landroid/widget/ImageView;I)V

    .line 84
    :cond_0
    return-void
.end method

.method public onStillUsedArtwork(Landroid/net/Uri;J)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "elapsedTime"    # J

    .prologue
    .line 135
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 136
    .local v0, "iv":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
