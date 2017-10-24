.class Lcom/android/server/pm/PackageManagerService$19;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "val$packageName"    # Ljava/lang/String;
    .param p3, "val$userId"    # I
    .param p4, "val$observer"    # Landroid/content/pm/IPackageDataObserver;

    .prologue
    .line 21851
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$19;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$19;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$19;->val$userId:I

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$19;->val$observer:Landroid/content/pm/IPackageDataObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v10, 0x0

    .line 21853
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$19;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v9, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 21855
    const/4 v2, 0x0

    .local v2, "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    :try_start_0
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$19;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$19;->val$packageName:Ljava/lang/String;

    .line 21856
    const-string/jumbo v12, "clearApplicationUserData"

    .line 21855
    invoke-virtual {v9, v11, v12}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    move-result-object v2

    .line 21857
    .local v2, "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$19;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v9, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 21858
    :try_start_1
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$19;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, p0, Lcom/android/server/pm/PackageManagerService$19;->val$packageName:Ljava/lang/String;

    iget v13, p0, Lcom/android/server/pm/PackageManagerService$19;->val$userId:I

    invoke-static {v9, v12, v13}, Lcom/android/server/pm/PackageManagerService;->-wrap2(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .local v8, "succeeded":Z
    :try_start_2
    monitor-exit v11

    .line 21860
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$19;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$19;->val$packageName:Ljava/lang/String;

    iget v12, p0, Lcom/android/server/pm/PackageManagerService$19;->val$userId:I

    const/4 v13, 0x1

    invoke-static {v9, v11, v12, v13}, Lcom/android/server/pm/PackageManagerService;->-wrap28(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZ)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 21861
    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_0
    :goto_0
    if-eqz v10, :cond_4

    throw v10

    .line 21857
    .end local v8    # "succeeded":Z
    :catchall_0
    move-exception v9

    :try_start_4
    monitor-exit v11

    throw v9
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 21861
    .end local v2    # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    :catch_0
    move-exception v9

    :try_start_5
    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v10

    move-object v14, v10

    move-object v10, v9

    move-object v9, v14

    :goto_1
    if-eqz v2, :cond_1

    :try_start_6
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    :cond_1
    :goto_2
    if-eqz v10, :cond_3

    throw v10

    .restart local v2    # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    .restart local v8    # "succeeded":Z
    :catch_1
    move-exception v10

    goto :goto_0

    .end local v2    # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    .end local v8    # "succeeded":Z
    :catch_2
    move-exception v11

    if-nez v10, :cond_2

    move-object v10, v11

    goto :goto_2

    :cond_2
    if-eq v10, v11, :cond_1

    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    throw v9

    .line 21864
    .restart local v2    # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    .restart local v8    # "succeeded":Z
    :cond_4
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$19;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$19;->val$packageName:Ljava/lang/String;

    iget v11, p0, Lcom/android/server/pm/PackageManagerService$19;->val$userId:I

    const/16 v12, 0x80

    invoke-virtual {v9, v10, v12, v11}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 21865
    .local v5, "sdpAppInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v5, :cond_5

    iget-object v9, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v9, :cond_5

    .line 21866
    iget-object v3, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 21867
    .local v3, "infoBundle":Landroid/os/Bundle;
    if-eqz v3, :cond_5

    const-string/jumbo v9, "sdp"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 21868
    const-string/jumbo v9, "sdp"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 21869
    .local v6, "sdpMetadata":Ljava/lang/String;
    const-string/jumbo v9, "enabled"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 21872
    :try_start_7
    const-string/jumbo v9, "sdp"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/os/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISdpManagerService;

    move-result-object v7

    .line 21873
    .local v7, "sdpService":Landroid/os/ISdpManagerService;
    if-eqz v7, :cond_8

    iget v9, p0, Lcom/android/server/pm/PackageManagerService$19;->val$userId:I

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$19;->val$packageName:Ljava/lang/String;

    invoke-interface {v7, v9, v10}, Landroid/os/ISdpManagerService;->clearEncPkgData(ILjava/lang/String;)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    move-result v9

    if-eqz v9, :cond_8

    .line 21884
    .end local v3    # "infoBundle":Landroid/os/Bundle;
    .end local v6    # "sdpMetadata":Ljava/lang/String;
    .end local v7    # "sdpService":Landroid/os/ISdpManagerService;
    :cond_5
    :goto_3
    if-eqz v8, :cond_6

    .line 21887
    const-class v9, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 21886
    invoke-static {v9}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 21888
    .local v0, "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    if-eqz v0, :cond_6

    .line 21889
    invoke-interface {v0}, Lcom/android/server/storage/DeviceStorageMonitorInternal;->checkMemory()V

    .line 21892
    .end local v0    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    :cond_6
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$19;->val$observer:Landroid/content/pm/IPackageDataObserver;

    if-eqz v9, :cond_7

    .line 21894
    :try_start_8
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$19;->val$observer:Landroid/content/pm/IPackageDataObserver;

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$19;->val$packageName:Ljava/lang/String;

    invoke-interface {v9, v10, v8}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4

    .line 21852
    :cond_7
    :goto_4
    return-void

    .line 21874
    .restart local v3    # "infoBundle":Landroid/os/Bundle;
    .restart local v6    # "sdpMetadata":Ljava/lang/String;
    .restart local v7    # "sdpService":Landroid/os/ISdpManagerService;
    :cond_8
    :try_start_9
    const-string/jumbo v9, "PackageManager"

    const-string/jumbo v10, "Failed to clear data for enc pkg.."

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_3

    .line 21876
    .end local v7    # "sdpService":Landroid/os/ISdpManagerService;
    :catch_3
    move-exception v4

    .line 21877
    .local v4, "re":Landroid/os/RemoteException;
    const-string/jumbo v9, "PackageManager"

    const-string/jumbo v10, "RemoteException from call unregisterListener"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 21895
    .end local v3    # "infoBundle":Landroid/os/Bundle;
    .end local v4    # "re":Landroid/os/RemoteException;
    .end local v6    # "sdpMetadata":Ljava/lang/String;
    :catch_4
    move-exception v1

    .line 21896
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v9, "PackageManager"

    const-string/jumbo v10, "Observer no longer exists."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 21861
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    .end local v5    # "sdpAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "succeeded":Z
    :catchall_2
    move-exception v9

    goto/16 :goto_1
.end method
