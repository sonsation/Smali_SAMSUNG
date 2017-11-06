.class public Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadService;
.super Landroid/app/Service;
.source "MilkDownloadService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MilkDownloadService"


# instance fields
.field mStub:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadService;->mStub:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 18
    const-string v0, "MilkDownloadService"

    const-string v1, "onCreate  is called"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 20
    new-instance v0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadService;->mStub:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;

    .line 21
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 30
    const-string v0, "MilkDownloadService"

    const-string v1, "onDestroy is called"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 32
    return-void
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 3
    .param p1, "rootIntent"    # Landroid/content/Intent;

    .prologue
    .line 37
    const-string v0, "MilkDownloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy rootIntent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 39
    return-void
.end method
