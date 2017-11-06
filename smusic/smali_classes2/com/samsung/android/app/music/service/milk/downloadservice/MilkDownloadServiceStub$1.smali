.class Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub$1;
.super Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadService$Stub;
.source "MilkDownloadServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;

    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public isDownloading()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->access$000(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;)Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSequential()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->access$200(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;)Z

    move-result v0

    return v0
.end method

.method public removeItem(Ljava/lang/String;I)I
    .locals 3
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "trackType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 119
    const-string v0, "MilkDownloadServiceStub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeItem trackId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->access$100(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadQueueQueryUtils;->removeDownloadTrack(Landroid/content/Context;Ljava/lang/String;I)V

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->access$400(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;)Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->getItem()Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getTrackId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;

    .line 124
    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->access$400(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;)Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->getItem()Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getTrackType()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->access$400(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;)Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->cancel()V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->access$500(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->access$000(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;)Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->stop(Z)V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->access$002(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;)Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->access$200(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->access$300(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->access$202(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;Z)Z

    .line 135
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public startAll(Z)I
    .locals 2
    .param p1, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 86
    const-string v0, "MilkDownloadServiceStub"

    const-string/jumbo v1, "startAll is called"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    if-eqz p1, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub$1;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->access$000(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;)Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->stop(Z)V

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->access$002(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;)Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->access$100(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadQueueQueryUtils;->updateDownloadTrackResume(Landroid/content/Context;)V

    .line 96
    const-string v0, "MilkDownloadServiceStub"

    const-string v1, "force startAll"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub$1;->isDownloading()Z

    move-result v0

    if-nez v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->access$300(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->access$202(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;Z)Z

    .line 103
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public startItem(Ljava/lang/String;I)I
    .locals 4
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "trackType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 152
    const-string v0, "MilkDownloadServiceStub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startItem trackId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub$1;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->access$000(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;)Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->stop(Z)V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->access$600(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;Ljava/lang/String;I)V

    .line 157
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;

    invoke-static {v0, v3}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->access$202(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;Z)Z

    .line 158
    return v3
.end method

.method public stopAll()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 108
    const-string v0, "MilkDownloadServiceStub"

    const-string/jumbo v1, "stopAll is called"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->access$202(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;Z)Z

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub$1;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->access$000(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;)Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->stop(Z)V

    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->access$002(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;)Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;

    .line 114
    :cond_0
    return v2
.end method

.method public stopItem(Ljava/lang/String;I)I
    .locals 4
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "trackType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 140
    const-string v0, "MilkDownloadServiceStub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopItem trackId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->access$500(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->access$000(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;)Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->stop(Z)V

    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->access$002(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;)Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;

    invoke-static {v0, v3}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->access$202(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;Z)Z

    .line 147
    return v3
.end method
