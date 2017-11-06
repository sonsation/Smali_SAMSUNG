.class Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager$DcfFile;
.super Ljava/lang/Object;
.source "StorageDownloadedManager.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DcfFile"
.end annotation


# instance fields
.field private final mFilePath:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-object p1, p0, Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager$DcfFile;->mFilePath:Ljava/lang/String;

    .line 284
    return-void
.end method


# virtual methods
.method public active(Z)V
    .locals 0
    .param p1, "active"    # Z

    .prologue
    .line 330
    return-void
.end method

.method public getAvailableBytes()J
    .locals 2

    .prologue
    .line 309
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager$DcfFile;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager$DcfFile;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileRequest()Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;
    .locals 1

    .prologue
    .line 339
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayingUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager$DcfFile;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 323
    const-string v0, "dcf"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager$DcfFile;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileChain$PlayingUri;->obtain(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager$DcfFile;->mUri:Landroid/net/Uri;

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager$DcfFile;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getTotalBytes()J
    .locals 2

    .prologue
    .line 304
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager$DcfFile;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public isDead()Z
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x0

    return v0
.end method

.method public isLoadFinished()Z
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x1

    return v0
.end method

.method public obtainInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 344
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerListener(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;

    .prologue
    .line 314
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    .line 289
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterListener(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;

    .prologue
    .line 318
    return-void
.end method
