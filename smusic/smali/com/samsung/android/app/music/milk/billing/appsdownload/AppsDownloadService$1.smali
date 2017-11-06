.class Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$1;
.super Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;
.source "AppsDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "servicePath"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$1;->this$0:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bindService(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$1;->this$0:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;

    invoke-static {p1}, Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->access$002(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadService;)Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadService;

    .line 29
    return-void
.end method
