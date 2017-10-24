.class Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "EnterpriseDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    .prologue
    .line 439
    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 486
    const-string/jumbo v6, "EnterpriseDeviceManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onPackageUpdateFinished - packageName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 487
    const-string/jumbo v8, ", uid: "

    .line 486
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    monitor-enter v7

    .line 489
    const/4 v5, 0x0

    .line 490
    .local v5, "updatedAdmin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    iget-object v6, v6, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "admin$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 492
    .local v2, "admin":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v6}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->isProxy()Z

    move-result v6

    if-nez v6, :cond_0

    .line 495
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v6}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 496
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v6}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne p2, v6, :cond_0

    .line 497
    const-string/jumbo v6, "EnterpriseDeviceManagerService"

    const-string/jumbo v8, "Admin found on map with same package name!"

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-object v5, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    .end local v2    # "admin":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;>;"
    .end local v5    # "updatedAdmin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    :cond_1
    if-eqz v5, :cond_3

    .line 504
    const/4 v1, 0x0

    .line 506
    .local v1, "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    :try_start_1
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-static {v6, v8, v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->-wrap0(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 510
    .end local v1    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    :goto_0
    if-nez v1, :cond_2

    .line 511
    :try_start_2
    const-string/jumbo v6, "EnterpriseDeviceManagerService"

    const-string/jumbo v8, "Removing Admin as component name changed"

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v8, v9}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v9, v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    .line 514
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    .line 515
    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 516
    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 514
    invoke-static {v6, v8, v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->-wrap5(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Landroid/content/ComponentName;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v7

    .line 517
    return-void

    .line 507
    .restart local v1    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    :catch_0
    move-exception v4

    .line 508
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    goto :goto_0

    .line 519
    .end local v1    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    :try_start_3
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    iget-object v6, v6, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 520
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    iget-object v6, v6, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    iget-object v6, v6, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    iget-object v6, v6, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    monitor-exit v7

    .line 529
    invoke-static {}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->updateAdminPermissions()V

    .line 485
    return-void

    .line 488
    .end local v3    # "admin$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public onSomePackagesChanged()V
    .locals 12

    .prologue
    .line 442
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    monitor-enter v8

    .line 443
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->getChangingUserId()I

    move-result v6

    .line 444
    .local v6, "userId":I
    const-string/jumbo v7, "EnterpriseDeviceManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Package has changed for user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    iget-object v7, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_4

    .line 447
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    iget-object v7, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 449
    .local v0, "adm":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->isProxy()Z

    move-result v7

    if-nez v7, :cond_0

    .line 450
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-eq v7, v6, :cond_1

    .line 446
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 453
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 454
    .local v5, "packageName":Ljava/lang/String;
    const-string/jumbo v7, "EnterpriseDeviceManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Admin package name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v1

    .line 457
    .local v1, "change":I
    const/4 v7, 0x3

    if-eq v1, v7, :cond_2

    const/4 v7, 0x2

    if-ne v1, v7, :cond_3

    .line 458
    :cond_2
    const-string/jumbo v7, "EnterpriseDeviceManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Admin unexpectedly uninstalled: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v9, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v10, v11}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    .line 461
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-static {v7, v9, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->-wrap5(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Landroid/content/ComponentName;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 442
    .end local v0    # "adm":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v1    # "change":I
    .end local v3    # "i":I
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "userId":I
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 462
    .restart local v0    # "adm":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v1    # "change":I
    .restart local v3    # "i":I
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v6    # "userId":I
    :cond_3
    :try_start_1
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->isPackageModified(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-eqz v7, :cond_0

    .line 463
    const/4 v4, 0x0

    .line 465
    .local v4, "info":Landroid/content/pm/ActivityInfo;
    :try_start_2
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    iget-object v7, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10, v6}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 472
    .end local v4    # "info":Landroid/content/pm/ActivityInfo;
    :goto_2
    if-nez v4, :cond_0

    .line 473
    :try_start_3
    const-string/jumbo v7, "EnterpriseDeviceManagerService"

    .line 474
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Admin package change removed component: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 473
    invoke-static {v7, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v9, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v10, v11}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    .line 477
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-static {v7, v9, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->-wrap5(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Landroid/content/ComponentName;I)V

    goto/16 :goto_1

    .line 466
    .restart local v4    # "info":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v2

    .line 467
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "EnterpriseDeviceManagerService"

    .line 468
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onSomePackagesChanged EX:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 467
    invoke-static {v7, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 469
    const/4 v4, 0x0

    goto :goto_2

    .end local v0    # "adm":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v1    # "change":I
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "info":Landroid/content/pm/ActivityInfo;
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_4
    monitor-exit v8

    .line 441
    return-void
.end method
