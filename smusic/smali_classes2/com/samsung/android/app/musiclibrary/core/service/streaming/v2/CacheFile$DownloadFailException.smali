.class final Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile$DownloadFailException;
.super Ljava/lang/Exception;
.source "CacheFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DownloadFailException"
.end annotation


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "Fail to download"


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;)V
    .locals 2
    .param p1, "downloadFile"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;

    .prologue
    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fail to download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 520
    return-void
.end method
