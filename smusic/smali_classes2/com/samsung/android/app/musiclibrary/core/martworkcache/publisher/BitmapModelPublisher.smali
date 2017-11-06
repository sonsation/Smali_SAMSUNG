.class public Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;
.super Ljava/lang/Object;
.source "BitmapModelPublisher.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;


# static fields
.field private static final DEBUG:Z

.field public static final LOG_TAG:Ljava/lang/String; = "ArtWork"


# instance fields
.field private final mHolder:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

.field private final mModel:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;)V
    .locals 1
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;
    .param p2, "model"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;->mHolder:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    .line 44
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;->mModel:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;->mModel:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->setUser(Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;)Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;->mModel:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;->mHolder:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    return-object v0
.end method


# virtual methods
.method public onPublishArtwork(Landroid/net/Uri;Landroid/graphics/Bitmap;J)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "elapsedTime"    # J

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;->mHolder:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher$1;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->inAnimationThread(Ljava/lang/Runnable;)V

    .line 76
    return-void
.end method

.method public onStartBackgroundRequest(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;->mModel:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getUser()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;->mModel:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;->mHolder:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getDefaultAlbumArt()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;->mHolder:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->requestRender()V

    .line 54
    :cond_0
    return-void
.end method

.method public onStillUsedArtwork(Landroid/net/Uri;J)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "elapsedTime"    # J

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;->mModel:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getUser()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
