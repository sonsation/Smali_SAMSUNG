.class Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;
.super Ljava/lang/Object;
.source "HeartFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MArtWorkCacheImageViewPublisher"
.end annotation


# instance fields
.field private final DEBUG:Z

.field private final LOG_TAG:Ljava/lang/String;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mDefaultDrawable:Landroid/graphics/drawable/Drawable;

.field private volatile mUiHandler:Landroid/os/Handler;

.field private final mUiHandlerLock:Ljava/lang/Object;

.field private final mViewHolders:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final sUiCallback:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "viewHolder"    # Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;
    .param p2, "defaultDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1063
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1028
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;->mUiHandler:Landroid/os/Handler;

    .line 1030
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;->mUiHandlerLock:Ljava/lang/Object;

    .line 1032
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->DEBUG:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;->DEBUG:Z

    .line 1034
    const-string v0, "ArtWork"

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;->LOG_TAG:Ljava/lang/String;

    .line 1036
    new-instance v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher$1;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;->sUiCallback:Landroid/os/Handler$Callback;

    .line 1064
    iget-object v0, p1, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1065
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;->mViewHolders:Ljava/lang/ref/WeakReference;

    .line 1066
    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 1067
    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;->mViewHolders:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;

    .prologue
    .line 1018
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private ensureHandler()V
    .locals 4

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;->mUiHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1095
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;->mUiHandlerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1096
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;->sUiCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;->mUiHandler:Landroid/os/Handler;

    .line 1097
    monitor-exit v1

    .line 1099
    :cond_0
    return-void

    .line 1097
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onPublishArtwork(Landroid/net/Uri;Landroid/graphics/Bitmap;J)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "elapsedTime"    # J

    .prologue
    .line 1081
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;->ensureHandler()V

    .line 1082
    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;->mBitmap:Landroid/graphics/Bitmap;

    .line 1083
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;->mUiHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1084
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1085
    return-void
.end method

.method public onStartBackgroundRequest(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1071
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;->mViewHolders:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;

    .line 1072
    .local v0, "holder":Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;
    iget-object v1, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1074
    iget-object v1, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1075
    iget-object v1, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f120118

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1077
    :cond_0
    return-void
.end method

.method public onStillUsedArtwork(Landroid/net/Uri;J)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "elapsedTime"    # J

    .prologue
    .line 1089
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;->mViewHolders:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;

    iget-object v0, v1, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    .line 1090
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
