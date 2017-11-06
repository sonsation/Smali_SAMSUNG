.class Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask$1$1;
.super Ljava/lang/Object;
.source "Mp3DownloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask$1;->onScanCompleted(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask$1;

.field final synthetic val$localTrackId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask$1;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask$1;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask$1$1;->this$1:Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask$1;

    iput-object p2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask$1$1;->val$localTrackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask$1$1;->this$1:Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask$1$1;->val$localTrackId:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask$1$1;->this$1:Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask$1;

    iget-object v3, v3, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;

    iget-object v3, v3, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getBitrate()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;->access$000(Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask$1$1;->this$1:Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;

    iget-object v1, v1, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask$1$1;->this$1:Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask$1;

    iget-object v2, v2, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;

    iget-object v2, v2, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    .line 104
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadQueueQueryUtils;->removeDownloadTrack(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;)V

    .line 106
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask$1$1;->this$1:Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;

    iget-object v1, v1, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;->mCallback:Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadCallback;

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask$1$1;->this$1:Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;

    iget-object v1, v1, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;->mCallback:Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadCallback;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask$1$1;->this$1:Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask$1;

    iget-object v2, v2, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;

    iget-object v2, v2, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadCallback;->onSuccess(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method
