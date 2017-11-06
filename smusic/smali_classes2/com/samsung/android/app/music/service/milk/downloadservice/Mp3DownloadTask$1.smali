.class Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask$1;
.super Ljava/lang/Object;
.source "Mp3DownloadTask.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadedMediaScannerClient$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;->scanFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 4
    .param p1, "localTrackId"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 94
    const-string v1, "DownloadTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "onScanCompleted localTrackId :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " quality : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;

    iget-object v3, v3, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    .line 95
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getBitrate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    if-eqz p1, :cond_0

    .line 97
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask$1$1;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask$1$1;-><init>(Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask$1;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 121
    :goto_0
    return-void

    .line 116
    :cond_0
    const-string v1, "DownloadTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "onScanCompleted localTrackId is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 119
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;

    const/16 v2, 0x6b

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;->onFailed(I)V

    goto :goto_0
.end method
