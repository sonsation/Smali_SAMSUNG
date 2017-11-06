.class public final Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;
.super Ljava/lang/Object;
.source "DefaultUriDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/UriDataSource;


# instance fields
.field private final assetDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

.field private final contentDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

.field private dataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

.field private final fileDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

.field private final httpDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Lcom/google/android/exoplayer/upstream/UriDataSource;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/google/android/exoplayer/upstream/TransferListener;
    .param p3, "httpDataSource"    # Lcom/google/android/exoplayer/upstream/UriDataSource;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-static {p3}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/upstream/UriDataSource;

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->httpDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    .line 111
    new-instance v0, Lcom/google/android/exoplayer/upstream/FileDataSource;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer/upstream/FileDataSource;-><init>(Lcom/google/android/exoplayer/upstream/TransferListener;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->fileDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    .line 112
    new-instance v0, Lcom/google/android/exoplayer/upstream/AssetDataSource;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer/upstream/AssetDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->assetDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    .line 113
    new-instance v0, Lcom/google/android/exoplayer/upstream/ContentDataSource;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer/upstream/ContentDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->contentDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/google/android/exoplayer/upstream/TransferListener;
    .param p3, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;Z)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/google/android/exoplayer/upstream/TransferListener;
    .param p3, "userAgent"    # Ljava/lang/String;
    .param p4, "allowCrossProtocolRedirects"    # Z

    .prologue
    const/16 v4, 0x1f40

    .line 95
    new-instance v0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;

    const/4 v2, 0x0

    move-object v1, p3

    move-object v3, p2

    move v5, v4

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/util/Predicate;Lcom/google/android/exoplayer/upstream/TransferListener;IIZ)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Lcom/google/android/exoplayer/upstream/UriDataSource;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 65
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;Z)V

    .line 66
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 150
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->dataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    if-eqz v0, :cond_0

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->dataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/UriDataSource;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    iput-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->dataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    .line 157
    :cond_0
    return-void

    .line 154
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->dataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    throw v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->dataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->dataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/UriDataSource;->getUri()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public open(Lcom/google/android/exoplayer/upstream/DataSpec;)J
    .locals 4
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->dataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 120
    iget-object v1, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "scheme":Ljava/lang/String;
    iget-object v1, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/google/android/exoplayer/util/Util;->isLocalFileUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    iget-object v1, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/android_asset/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->assetDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    iput-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->dataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    .line 135
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->dataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    invoke-interface {v1, p1}, Lcom/google/android/exoplayer/upstream/UriDataSource;->open(Lcom/google/android/exoplayer/upstream/DataSpec;)J

    move-result-wide v2

    return-wide v2

    .line 118
    .end local v0    # "scheme":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 125
    .restart local v0    # "scheme":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->fileDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    iput-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->dataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    goto :goto_1

    .line 127
    :cond_2
    const-string v1, "asset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 128
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->assetDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    iput-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->dataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    goto :goto_1

    .line 129
    :cond_3
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 130
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->contentDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    iput-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->dataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    goto :goto_1

    .line 132
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->httpDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    iput-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->dataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    goto :goto_1
.end method

.method public read([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->dataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer/upstream/UriDataSource;->read([BII)I

    move-result v0

    return v0
.end method
