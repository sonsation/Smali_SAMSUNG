.class Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$1;
.super Ljava/lang/Object;
.source "DownloadQueueFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkStateChanged(Lcom/samsung/android/app/music/network/NetworkInfo;)V
    .locals 4
    .param p1, "networkInfo"    # Lcom/samsung/android/app/music/network/NetworkInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 255
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->access$000(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)Lcom/samsung/android/app/music/network/NetworkManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/music/network/NetworkManager;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/app/music/network/NetworkInfo;->all:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v0, v1, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->connected:Z

    .line 256
    .local v0, "isNetworkConnected":Z
    const-string v1, "DownloadQueueFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOnNetworkStateChangedListener isNetworkConnected : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v1, "DownloadQueueFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOnNetworkStateChangedListener isSequential : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    .line 259
    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->getMilkDownloadService()Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;->isSequential()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 258
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    if-eqz v0, :cond_0

    .line 262
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->hide()V

    .line 267
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->show()V

    .line 265
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->getMilkDownloadService()Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;->stopAll()I

    goto :goto_0
.end method
