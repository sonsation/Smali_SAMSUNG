.class Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;
.super Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback$Stub;
.source "AppsDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->callDownload(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;->this$0:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;

    invoke-direct {p0}, Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadCanceled()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;->this$0:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$5;-><init>(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    return-void
.end method

.method public onDownloadFailed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;->this$0:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$4;-><init>(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 112
    return-void
.end method

.method public onDownloadSuccess()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;->this$0:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$3;-><init>(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 101
    return-void
.end method

.method public onInstallFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;->this$0:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$2;-><init>(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    return-void
.end method

.method public onProgress(JJ)V
    .locals 7
    .param p1, "downloadedSize"    # J
    .param p3, "totalSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;->this$0:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;

    iget-object v6, v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$1;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$1;-><init>(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;JJ)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    return-void
.end method
