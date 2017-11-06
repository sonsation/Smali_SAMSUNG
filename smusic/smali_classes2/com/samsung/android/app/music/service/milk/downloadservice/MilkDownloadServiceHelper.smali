.class public Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;
.super Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;
.source "MilkDownloadServiceHelper.java"


# static fields
.field public static final INTENT_BIND_REMOTE_SERVICE:Ljava/lang/String; = "com.samsung.android.app.music.service.milk.IDownloadService"

.field public static final SERVICE_NAME:Ljava/lang/String; = "com.samsung.android.app.music.service.milk.downloadservice.MilkDownloadService"

.field private static mInstance:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;


# instance fields
.field private mApplicationContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mComponent:Landroid/content/ComponentName;

.field private mService:Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadService;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;->mApplicationContext:Ljava/lang/ref/WeakReference;

    .line 22
    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;->mComponent:Landroid/content/ComponentName;

    .line 25
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;->mApplicationContext:Ljava/lang/ref/WeakReference;

    .line 26
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.app.music.service.milk.downloadservice.MilkDownloadService"

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;->mComponent:Landroid/content/ComponentName;

    .line 27
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    sget-object v0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;->mInstance:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;

    if-nez v0, :cond_1

    .line 31
    const-class v1, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;

    monitor-enter v1

    .line 32
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;->mInstance:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;->mInstance:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;

    .line 35
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;->mInstance:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;->mApplicationContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method protected getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method protected getServiceIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.app.music.service.milk.IDownloadService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    return-object v0
.end method

.method protected handleServiceConnected(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 52
    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadService;

    .line 53
    return-void
.end method

.method protected handleServiceDisconnected()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadService;

    .line 58
    return-void
.end method

.method protected handleUnbindService()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDownloading()Z
    .locals 2

    .prologue
    .line 145
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadService;

    invoke-interface {v1}, Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadService;->isDownloading()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 151
    :goto_0
    return v1

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 151
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSequential()Z
    .locals 2

    .prologue
    .line 156
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadService;

    invoke-interface {v1}, Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadService;->isSequential()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 162
    :goto_0
    return v1

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 162
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeItem(Ljava/lang/String;I)I
    .locals 2
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "trackType"    # I

    .prologue
    .line 112
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadService;->removeItem(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public startAll()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 79
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadService;->startAll(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_0
    :goto_0
    return v3

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public startAll(Z)I
    .locals 2
    .param p1, "force"    # Z

    .prologue
    .line 90
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadService;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadService;->startAll(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public startItem(Ljava/lang/String;I)I
    .locals 2
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "trackType"    # I

    .prologue
    .line 134
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadService;->startItem(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopAll()I
    .locals 2

    .prologue
    .line 101
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadService;

    invoke-interface {v1}, Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadService;->stopAll()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopItem(Ljava/lang/String;I)I
    .locals 2
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "trackType"    # I

    .prologue
    .line 123
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadService;->stopItem(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
