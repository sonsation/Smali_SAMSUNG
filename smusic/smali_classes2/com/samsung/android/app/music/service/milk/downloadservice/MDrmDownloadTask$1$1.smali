.class Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask$1$1;
.super Ljava/lang/Object;
.source "MDrmDownloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask$1;->onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask$1;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask$1;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask$1;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask$1$1;->this$1:Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask$1;

    iput-object p2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask$1$1;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 103
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask$1$1;->this$1:Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask;

    iget-object v1, v1, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask$1$1;->this$1:Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask$1;

    iget-object v2, v2, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask;

    iget-object v2, v2, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadQueueQueryUtils;->removeDownloadTrack(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;)V

    .line 104
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask$1$1;->this$1:Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask;

    iget-object v1, v1, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask;->mCallback:Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadCallback;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask$1$1;->this$1:Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask;

    iget-object v1, v1, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask;->mCallback:Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadCallback;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask$1$1;->this$1:Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask$1;

    iget-object v2, v2, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask;

    iget-object v2, v2, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadCallback;->onSuccess(Ljava/lang/String;)V

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask$1$1;->this$1:Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask;

    iget-object v1, v1, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask$1$1;->this$1:Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask$1;

    iget-object v2, v2, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask$1;->val$fullPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask$1$1;->val$uri:Landroid/net/Uri;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->parsingMdrmContent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    const-string v1, "DownloadTask"

    const-string v2, "doSyncDrmFile : drm song parsing success"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask$1$1;->this$1:Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask;

    iget-object v1, v1, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask;->mContext:Landroid/content/Context;

    const/16 v2, 0xe

    .line 110
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->sync(Landroid/content/Context;I)V

    .line 119
    :cond_1
    :goto_0
    return-void

    .line 112
    :cond_2
    const-string v1, "DownloadTask"

    const-string v2, "doSyncDrmFile : drm song parsing failed"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask$1$1;->this$1:Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask$1;->val$fullPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    .line 115
    const-string v1, "DownloadTask"

    const-string v2, "doSyncDrmFile : failed to delete this file"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
