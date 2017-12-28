.class public Lcom/android/launcher3/home/HomeLoader$AppsAvailabilityCheck;
.super Landroid/content/BroadcastReceiver;
.source "HomeLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/HomeLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppsAvailabilityCheck"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1632
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1635
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$5600()Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 1636
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1637
    .local v7, "packagesRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1638
    .local v8, "packagesUnavailable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$5700()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1639
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 1640
    .local v9, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1641
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1642
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1643
    .local v1, "component":Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1644
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$5800()Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v13

    invoke-virtual {v13, v0, v9}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->isActivityEnabledForProfile(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 1645
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$6000()Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v13

    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$5900()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x2000

    invoke-virtual/range {v13 .. v16}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->isAppEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Z

    move-result v5

    .line 1646
    .local v5, "packageOnSdcard":Z
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$6100()Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v13

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14, v9}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v13

    invoke-static {v13, v0}, Lcom/android/launcher3/home/HomeLoader;->access$6200(Ljava/util/List;Landroid/content/ComponentName;)Z

    move-result v3

    .line 1647
    .local v3, "isValidComp":Z
    if-eqz v5, :cond_2

    if-eqz v3, :cond_2

    .line 1648
    const-string v13, "HomeLoader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Component found on sd-card: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1649
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1668
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "component":Ljava/lang/String;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    .end local v3    # "isValidComp":Z
    .end local v5    # "packageOnSdcard":Z
    .end local v7    # "packagesRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "packagesUnavailable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 1651
    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v1    # "component":Ljava/lang/String;
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    .restart local v3    # "isValidComp":Z
    .restart local v5    # "packageOnSdcard":Z
    .restart local v7    # "packagesRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "packagesUnavailable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_2
    :try_start_1
    const-string v13, "HomeLoader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Component not found: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1652
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1656
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "component":Ljava/lang/String;
    .end local v3    # "isValidComp":Z
    .end local v5    # "packageOnSdcard":Z
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    .line 1657
    const/4 v4, 0x3

    .line 1658
    .local v4, "op":I
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 1659
    .local v6, "packages":[Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$6400()Lcom/android/launcher3/LauncherModel;

    move-result-object v10

    new-instance v13, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$6300()Lcom/android/launcher3/LauncherModel;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v13, v14, v4, v6, v9}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v10, v13}, Lcom/android/launcher3/LauncherModel;->enqueueItemUpdatedTask(Ljava/lang/Runnable;)V

    .line 1661
    .end local v4    # "op":I
    .end local v6    # "packages":[Ljava/lang/String;
    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1662
    const/4 v4, 0x4

    .line 1663
    .restart local v4    # "op":I
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 1664
    .restart local v6    # "packages":[Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$6600()Lcom/android/launcher3/LauncherModel;

    move-result-object v10

    new-instance v13, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$6500()Lcom/android/launcher3/LauncherModel;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v13, v14, v4, v6, v9}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v10, v13}, Lcom/android/launcher3/LauncherModel;->enqueueItemUpdatedTask(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1667
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    .end local v4    # "op":I
    .end local v6    # "packages":[Ljava/lang/String;
    .end local v9    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_5
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$6700()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    .line 1668
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1669
    return-void
.end method
