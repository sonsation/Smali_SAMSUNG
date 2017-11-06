.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/ResizeArtworkRequest;
.super Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/PublishBaseArtworkRequest;
.source "ResizeArtworkRequest.java"


# static fields
.field private static final DEBUG:Z

.field private static final LOG_TAG:Ljava/lang/String; = "ArtWork"


# instance fields
.field private final mSourceBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/ResizeArtworkRequest;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;)V
    .locals 0
    .param p1, "sourceBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "key"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;
    .param p3, "publisher"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;

    .prologue
    .line 39
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/PublishBaseArtworkRequest;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;)V

    .line 40
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/ResizeArtworkRequest;->mSourceBitmap:Landroid/graphics/Bitmap;

    .line 41
    return-void
.end method


# virtual methods
.method public handle()V
    .locals 4

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/ResizeArtworkRequest;->requestStillNecessary()Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    :goto_0
    return-void

    .line 48
    :cond_0
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/ResizeArtworkRequest;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 49
    const-string v1, "ArtWork"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/ResizeArtworkRequest;->key:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget v1, v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mSize:I

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/ResizeArtworkRequest;->mSourceBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->resizeIfNeed(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 52
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->getCache()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/ResizeArtworkRequest;->key:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->putToMemCache(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Landroid/graphics/Bitmap;)V

    .line 53
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/ResizeArtworkRequest;->publish(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "ResizeArtworkRequest"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/ResizeArtworkRequest;->getToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
