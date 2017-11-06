.class Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CacheData"
.end annotation


# instance fields
.field private final downloadedBytes:J

.field final encryptType:I

.field final isSameQuality:Z

.field final path:Ljava/lang/String;

.field final serverTimeStamp:Ljava/lang/String;

.field final totalBytes:J


# direct methods
.method constructor <init>(Ljava/lang/String;JJLjava/lang/String;IZ)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "downloadedBytes"    # J
    .param p4, "totalBytes"    # J
    .param p6, "serverTimeStamp"    # Ljava/lang/String;
    .param p7, "encryptType"    # I
    .param p8, "isSameQuality"    # Z

    .prologue
    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;->path:Ljava/lang/String;

    .line 321
    iput-wide p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;->downloadedBytes:J

    .line 322
    iput-wide p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;->totalBytes:J

    .line 323
    iput-object p6, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;->serverTimeStamp:Ljava/lang/String;

    .line 324
    iput p7, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;->encryptType:I

    .line 325
    iput-boolean p8, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;->isSameQuality:Z

    .line 326
    return-void
.end method


# virtual methods
.method isFullDownloaded()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 329
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;->totalBytes:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;->downloadedBytes:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;->downloadedBytes:J

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;->totalBytes:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSkippableFile()Z
    .locals 2

    .prologue
    .line 333
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;->encryptType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;->isFullDownloaded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "totalBytes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;->totalBytes:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 341
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    const-string/jumbo v1, "serverTimeStamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;->serverTimeStamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
