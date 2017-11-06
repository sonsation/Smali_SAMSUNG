.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceDLNALoader;
.super Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceContentProviderLoader;
.source "ServiceDLNALoader.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sNoProxyConnectionFactory:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader$UrlConnectionFactory;


# instance fields
.field private final mLoader:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceDLNALoader;->TAG:Ljava/lang/String;

    .line 28
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceDLNALoader$1;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceDLNALoader$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceDLNALoader;->sNoProxyConnectionFactory:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader$UrlConnectionFactory;

    return-void
.end method

.method public constructor <init>(ILandroid/net/Uri;[Ljava/lang/String;)V
    .locals 3
    .param p1, "timeout"    # I
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceContentProviderLoader;-><init>(Landroid/net/Uri;[Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader;

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceDLNALoader;->sNoProxyConnectionFactory:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader$UrlConnectionFactory;

    invoke-direct {v0, p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader;-><init>(ILjava/lang/String;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader$UrlConnectionFactory;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceDLNALoader;->mLoader:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader;

    .line 40
    return-void
.end method

.method private static getAlbumId(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 88
    const/4 v1, 0x0

    .line 90
    .local v1, "id":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    .line 96
    :goto_0
    return-object v2

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceDLNALoader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wrong album id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v2, "-1"

    goto :goto_0
.end method


# virtual methods
.method public getMaxRequestDuration(Landroid/net/Uri;)J
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceDLNALoader;->mLoader:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader;->getMaxRequestDuration(Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isDiskCached(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public isMultiResolution(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public isRemote(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public loadArtwork(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "size"    # I
    .param p4, "options"    # Landroid/graphics/BitmapFactory$Options;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 46
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->Empty:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    .line 47
    .local v2, "res":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    const/4 v1, 0x0

    .line 48
    .local v1, "c":Landroid/database/Cursor;
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceDLNALoader;->getAlbumId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "albumId":Ljava/lang/String;
    :try_start_0
    const-string v5, "album_id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x0

    invoke-virtual {p0, p1, v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceDLNALoader;->openCursor(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 51
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 52
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 54
    .local v4, "stringUri":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 60
    if-eqz v1, :cond_0

    .line 61
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v3, v2

    .line 64
    .end local v2    # "res":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    .end local v4    # "stringUri":Ljava/lang/String;
    .local v3, "res":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    :goto_0
    return-object v3

    .line 57
    .end local v3    # "res":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    .restart local v2    # "res":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    .restart local v4    # "stringUri":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceDLNALoader;->mLoader:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, p1, v6, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader;->loadArtwork(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 60
    .end local v4    # "stringUri":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_3

    .line 61
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v3, v2

    .line 64
    .end local v2    # "res":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    .restart local v3    # "res":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    goto :goto_0

    .line 60
    .end local v3    # "res":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    .restart local v2    # "res":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    :catchall_0
    move-exception v5

    if-eqz v1, :cond_4

    .line 61
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v5
.end method
