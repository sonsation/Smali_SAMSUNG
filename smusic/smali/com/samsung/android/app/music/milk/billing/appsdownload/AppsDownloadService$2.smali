.class Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$2;
.super Ljava/lang/Object;
.source "AppsDownloadService.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$IServiceBinderResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->startDownloadByPackageName(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$2;->this$0:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$2;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceBindFailed()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$2;->this$0:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->access$200(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;)V

    .line 54
    return-void
.end method

.method public onServiceBinded()V
    .locals 3

    .prologue
    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$2;->this$0:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$2;->val$packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->access$100(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 47
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$2;->this$0:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->access$200(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;)V

    goto :goto_0
.end method
