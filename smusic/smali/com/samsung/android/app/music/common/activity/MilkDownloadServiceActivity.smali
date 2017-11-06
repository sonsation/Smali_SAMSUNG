.class public abstract Lcom/samsung/android/app/music/common/activity/MilkDownloadServiceActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;
.source "MilkDownloadServiceActivity.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/activity/MilkDownloadServiceGetter;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MilkDownloadServiceActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;-><init>()V

    return-void
.end method

.method private isMilkDownloadServiceConnected()Z
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MilkDownloadServiceActivity;->getMilkDownloadService()Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;->isConnected()Z

    move-result v0

    return v0
.end method

.method private unbindService()V
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MilkDownloadServiceActivity;->getMilkDownloadService()Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected bindDownloadService()V
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MilkDownloadServiceActivity;->getMilkDownloadService()Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;->bindService(Landroid/content/ServiceConnection;)Z

    .line 40
    return-void
.end method

.method public getMilkDownloadService()Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MilkDownloadServiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onDestroy()V

    .line 53
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/MilkDownloadServiceActivity;->isMilkDownloadServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const-string v0, "MilkDownloadServiceActivity"

    const-string/jumbo v1, "onStop() unbindService"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/MilkDownloadServiceActivity;->unbindService()V

    .line 59
    :cond_0
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 26
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MilkDownloadServiceActivity;->getPermissionManager()Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->isAllGranted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    const-string v0, "MilkDownloadServiceActivity"

    const-string/jumbo v1, "onStart() All permission granted. start bindService"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MilkDownloadServiceActivity;->bindDownloadService()V

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    const-string v0, "MilkDownloadServiceActivity"

    const-string/jumbo v1, "onStart() All(or some) permission is not granted"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.app.music.service.milk.downloadservice.MilkDownloadService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/MilkDownloadServiceActivity;->mServiceStateListener:Ljava/util/ArrayList;

    monitor-enter v2

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MilkDownloadServiceActivity;->mServiceStateListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ServiceConnection;

    .line 70
    .local v0, "listener":Landroid/content/ServiceConnection;
    invoke-interface {v0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0

    .line 72
    .end local v0    # "listener":Landroid/content/ServiceConnection;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.app.music.service.milk.downloadservice.MilkDownloadService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/MilkDownloadServiceActivity;->mServiceStateListener:Ljava/util/ArrayList;

    monitor-enter v2

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MilkDownloadServiceActivity;->mServiceStateListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ServiceConnection;

    .line 82
    .local v0, "listener":Landroid/content/ServiceConnection;
    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 84
    .end local v0    # "listener":Landroid/content/ServiceConnection;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    :cond_1
    return-void
.end method
