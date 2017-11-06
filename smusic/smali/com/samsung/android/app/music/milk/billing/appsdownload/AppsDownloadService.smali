.class public Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;
.super Ljava/lang/Object;
.source "AppsDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;
    }
.end annotation


# static fields
.field public static final APPS_DOWNLOAD_SERVICE_PATH:Ljava/lang/String; = "com.sec.android.app.samsungapps.downloadservice.SamsungAppsDownloadService"


# instance fields
.field private mDownloadService:Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadService;

.field mHandler:Landroid/os/Handler;

.field private mObserver:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;

.field protected mServiceConnectionManager:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->mHandler:Landroid/os/Handler;

    .line 25
    new-instance v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$1;

    const-string v1, "com.sec.android.app.samsungapps.downloadservice.SamsungAppsDownloadService"

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$1;-><init>(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->mServiceConnectionManager:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;

    .line 31
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadService;)Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadService;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;
    .param p1, "x1"    # Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadService;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->mDownloadService:Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->callDownload(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->notifyFailed()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;JJ)V
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->notifyOnProgress(JJ)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->notifyOnInstallFailed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->notifyOnDownloadSuccess()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->notifyOnDownloadFailed()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->notifyOnDownloadCanceled()V

    return-void
.end method

.method private callDownload(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->mDownloadService:Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadService;

    new-instance v1, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;-><init>(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;)V

    invoke-interface {v0, p1, v1}, Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadService;->downloadByPackageName(Ljava/lang/String;Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback;)V

    .line 125
    return-void
.end method

.method private notifyFailed()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->mObserver:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->mObserver:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;->onBindFailed()V

    .line 163
    :cond_0
    return-void
.end method

.method private notifyOnDownloadCanceled()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->mObserver:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->mObserver:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;->onDownloadCanceled()V

    .line 157
    :cond_0
    return-void
.end method

.method private notifyOnDownloadFailed()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->mObserver:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->mObserver:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;->onDownloadFailed()V

    .line 151
    :cond_0
    return-void
.end method

.method private notifyOnDownloadSuccess()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->mObserver:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->mObserver:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;->onDownloadSuccess()V

    .line 145
    :cond_0
    return-void
.end method

.method private notifyOnInstallFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->mObserver:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->mObserver:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;->onInstallFailed(Ljava/lang/String;)V

    .line 139
    :cond_0
    return-void
.end method

.method private notifyOnProgress(JJ)V
    .locals 1
    .param p1, "downloadedSize"    # J
    .param p3, "totalSize"    # J

    .prologue
    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->mObserver:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->mObserver:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;->onProgress(JJ)V

    .line 133
    :cond_0
    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->mServiceConnectionManager:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->release()Z

    .line 61
    return-void
.end method

.method public setObserver(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;)V
    .locals 0
    .param p1, "observer"    # Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->mObserver:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;

    .line 35
    return-void
.end method

.method public startDownloadByPackageName(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->mServiceConnectionManager:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;

    new-instance v1, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$2;-><init>(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->checkServiceConnection(Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$IServiceBinderResult;)V

    .line 56
    return-void
.end method
