.class Lcom/android/server/pm/PackageManagerService$MeasureParams;
.super Lcom/android/server/pm/PackageManagerService$HandlerParams;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MeasureParams"
.end annotation


# instance fields
.field private final mObserver:Landroid/content/pm/IPackageStatsObserver;

.field private final mStats:Landroid/content/pm/PackageStats;

.field private mSuccess:Z

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageStats;Landroid/content/pm/IPackageStatsObserver;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "stats"    # Landroid/content/pm/PackageStats;
    .param p3, "observer"    # Landroid/content/pm/IPackageStatsObserver;

    .prologue
    .line 16426
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 16427
    new-instance v0, Landroid/os/UserHandle;

    iget v1, p2, Landroid/content/pm/PackageStats;->userHandle:I

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    .line 16428
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mObserver:Landroid/content/pm/IPackageStatsObserver;

    .line 16429
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    .line 16426
    return-void
.end method


# virtual methods
.method handleReturnCode()V
    .locals 4

    .prologue
    .line 16502
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mObserver:Landroid/content/pm/IPackageStatsObserver;

    if-eqz v1, :cond_0

    .line 16504
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mObserver:Landroid/content/pm/IPackageStatsObserver;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mSuccess:Z

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageStatsObserver;->onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16501
    :cond_0
    :goto_0
    return-void

    .line 16505
    :catch_0
    move-exception v0

    .line 16506
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PackageManager"

    const-string/jumbo v2, "Observer no longer exists."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method handleServiceError()V
    .locals 3

    .prologue
    .line 16513
    const-string/jumbo v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Could not measure application "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v2, v2, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 16514
    const-string/jumbo v2, " external storage"

    .line 16513
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16512
    return-void
.end method

.method handleStartCopy()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 16441
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v9, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v10

    .line 16442
    :try_start_0
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v11, v11, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget v12, v12, Landroid/content/pm/PackageStats;->userHandle:I

    iget-object v13, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    invoke-static {v9, v11, v12, v13}, Lcom/android/server/pm/PackageManagerService;->-wrap3(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILandroid/content/pm/PackageStats;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mSuccess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v10

    .line 16445
    iget-boolean v9, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mSuccess:Z

    if-eqz v9, :cond_2

    .line 16446
    const/4 v3, 0x0

    .line 16448
    .local v3, "mounted":Z
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    .line 16449
    .local v7, "status":Ljava/lang/String;
    const-string/jumbo v9, "mounted"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 16450
    const-string/jumbo v9, "mounted_ro"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    .line 16454
    .end local v3    # "mounted":Z
    .end local v7    # "status":Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_0

    .line 16455
    new-instance v8, Landroid/os/Environment$UserEnvironment;

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget v9, v9, Landroid/content/pm/PackageStats;->userHandle:I

    invoke-direct {v8, v9}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 16457
    .local v8, "userEnv":Landroid/os/Environment$UserEnvironment;
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v10}, Lcom/android/server/pm/PackageManagerService;->-get1(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v10

    .line 16458
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v11, v11, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppCacheDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v11

    .line 16457
    invoke-static {v10, v11}, Lcom/android/server/pm/PackageManagerService;->-wrap24(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J

    move-result-wide v10

    iput-wide v10, v9, Landroid/content/pm/PackageStats;->externalCacheSize:J

    .line 16460
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v10}, Lcom/android/server/pm/PackageManagerService;->-get1(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v10

    .line 16461
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v11, v11, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v11

    .line 16460
    invoke-static {v10, v11}, Lcom/android/server/pm/PackageManagerService;->-wrap24(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J

    move-result-wide v10

    iput-wide v10, v9, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 16464
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-wide v10, v9, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-object v12, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-wide v12, v12, Landroid/content/pm/PackageStats;->externalCacheSize:J

    sub-long/2addr v10, v12

    iput-wide v10, v9, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 16466
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v10}, Lcom/android/server/pm/PackageManagerService;->-get1(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v10

    .line 16467
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v11, v11, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v11

    .line 16466
    invoke-static {v10, v11}, Lcom/android/server/pm/PackageManagerService;->-wrap24(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J

    move-result-wide v10

    iput-wide v10, v9, Landroid/content/pm/PackageStats;->externalMediaSize:J

    .line 16469
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v10}, Lcom/android/server/pm/PackageManagerService;->-get1(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v10

    .line 16470
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v11, v11, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v11

    .line 16469
    invoke-static {v10, v11}, Lcom/android/server/pm/PackageManagerService;->-wrap24(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J

    move-result-wide v10

    iput-wide v10, v9, Landroid/content/pm/PackageStats;->externalObbSize:J

    .line 16474
    .end local v8    # "userEnv":Landroid/os/Environment$UserEnvironment;
    :cond_0
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v10, v10, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget v11, v11, Landroid/content/pm/PackageStats;->userHandle:I

    const/16 v12, 0x80

    invoke-virtual {v9, v10, v12, v11}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 16475
    .local v4, "sdpAppInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_2

    iget-object v9, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v9, :cond_2

    .line 16476
    iget-object v2, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 16477
    .local v2, "infoBundle":Landroid/os/Bundle;
    if-eqz v2, :cond_2

    const-string/jumbo v9, "sdp"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 16478
    const-string/jumbo v9, "sdp"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 16479
    .local v5, "sdpMetadata":Ljava/lang/String;
    const-string/jumbo v9, "enabled"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 16481
    const-string/jumbo v9, "sdp"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/os/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISdpManagerService;

    move-result-object v6

    .line 16482
    .local v6, "sdpService":Landroid/os/ISdpManagerService;
    if-eqz v6, :cond_1

    .line 16483
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget v9, v9, Landroid/content/pm/PackageStats;->userHandle:I

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v10, v10, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-interface {v6, v9, v10}, Landroid/os/ISdpManagerService;->getEncPkgDataSizeInfo(ILjava/lang/String;)Landroid/content/pm/PackageStats;

    move-result-object v1

    .line 16484
    .local v1, "encPkgStats":Landroid/content/pm/PackageStats;
    :cond_1
    if-nez v1, :cond_4

    .line 16485
    const-string/jumbo v9, "PackageManager"

    const-string/jumbo v10, "Failed to get enc pkg info.."

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16440
    .end local v1    # "encPkgStats":Landroid/content/pm/PackageStats;
    .end local v2    # "infoBundle":Landroid/os/Bundle;
    .end local v4    # "sdpAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "sdpMetadata":Ljava/lang/String;
    .end local v6    # "sdpService":Landroid/os/ISdpManagerService;
    :cond_2
    :goto_1
    return-void

    .line 16441
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .line 16449
    .restart local v3    # "mounted":Z
    .restart local v7    # "status":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 16487
    .end local v3    # "mounted":Z
    .end local v7    # "status":Ljava/lang/String;
    .restart local v1    # "encPkgStats":Landroid/content/pm/PackageStats;
    .restart local v2    # "infoBundle":Landroid/os/Bundle;
    .restart local v4    # "sdpAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "sdpMetadata":Ljava/lang/String;
    .restart local v6    # "sdpService":Landroid/os/ISdpManagerService;
    :cond_4
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-wide v10, v9, Landroid/content/pm/PackageStats;->dataSize:J

    iget-wide v12, v1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v10, v12

    iput-wide v10, v9, Landroid/content/pm/PackageStats;->dataSize:J

    .line 16488
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-wide v10, v9, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-wide v12, v1, Landroid/content/pm/PackageStats;->cacheSize:J

    add-long/2addr v10, v12

    iput-wide v10, v9, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 16489
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-wide v10, v9, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-wide v12, v1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v10, v12

    iput-wide v10, v9, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 16490
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-wide v10, v9, Landroid/content/pm/PackageStats;->externalCacheSize:J

    iget-wide v12, v1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v10, v12

    iput-wide v10, v9, Landroid/content/pm/PackageStats;->externalCacheSize:J

    goto :goto_1

    .line 16451
    .end local v1    # "encPkgStats":Landroid/content/pm/PackageStats;
    .end local v2    # "infoBundle":Landroid/os/Bundle;
    .end local v4    # "sdpAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "sdpMetadata":Ljava/lang/String;
    .end local v6    # "sdpService":Landroid/os/ISdpManagerService;
    .restart local v3    # "mounted":Z
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 16434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MeasureParams{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 16435
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 16434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 16436
    const-string/jumbo v1, " "

    .line 16434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 16436
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v1, v1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    .line 16434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 16436
    const-string/jumbo v1, "}"

    .line 16434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
