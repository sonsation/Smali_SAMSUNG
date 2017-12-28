.class Lcom/android/launcher3/LauncherModel$LoaderTask;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;
.implements Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderTask"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLoadAndBindStepFinished:Z

.field private mStopped:Z

.field final synthetic this$0:Lcom/android/launcher3/LauncherModel;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 588
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 589
    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 590
    return-void
.end method

.method static synthetic access$1100(Lcom/android/launcher3/LauncherModel$LoaderTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel$LoaderTask;

    .prologue
    .line 583
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->endLoaderTask()V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/launcher3/LauncherModel$LoaderTask;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel$LoaderTask;
    .param p1, "x1"    # Z

    .prologue
    .line 583
    iput-boolean p1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/launcher3/LauncherModel$LoaderTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel$LoaderTask;

    .prologue
    .line 583
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/launcher3/LauncherModel$LoaderTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel$LoaderTask;

    .prologue
    .line 583
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->updateIconCache()V

    return-void
.end method

.method private endLoaderTask()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 795
    const-string v2, "Launcher.Model"

    const-string v3, "endLoaderTask"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    iput-object v4, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 800
    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher3/LauncherModel;->access$1400(Lcom/android/launcher3/LauncherModel;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 802
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher3/LauncherModel;->access$1800(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/LauncherModel$LoaderTask;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 803
    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/launcher3/LauncherModel;->access$1802(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/LauncherModel$LoaderTask;)Lcom/android/launcher3/LauncherModel$LoaderTask;

    .line 805
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/launcher3/LauncherModel;->access$1502(Lcom/android/launcher3/LauncherModel;Z)Z

    .line 806
    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/android/launcher3/LauncherModel;->access$1602(Lcom/android/launcher3/LauncherModel;Z)Z

    .line 808
    invoke-static {}, Lcom/android/launcher3/LauncherModel;->access$1900()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 809
    const-string v2, "Launcher.Model"

    const-string v4, "endLoaderTask, run sPackageChangeRunnables"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    invoke-static {}, Lcom/android/launcher3/LauncherModel;->access$1900()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 811
    .local v1, "r":Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 815
    .end local v1    # "r":Ljava/lang/Runnable;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 813
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/launcher3/LauncherModel;->access$1900()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 815
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 817
    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher3/LauncherModel;->access$2000(Lcom/android/launcher3/LauncherModel;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 818
    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v2, v5}, Lcom/android/launcher3/LauncherModel;->access$2002(Lcom/android/launcher3/LauncherModel;Z)Z

    .line 819
    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher3/LauncherModel;->access$2100(Lcom/android/launcher3/LauncherModel;)V

    .line 822
    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher3/LauncherModel;->access$300(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/common/customer/PostPositionController;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/customer/PostPositionController;

    move-result-object v0

    .line 823
    .local v0, "pp":Lcom/android/launcher3/common/customer/PostPositionController;
    invoke-virtual {v0}, Lcom/android/launcher3/common/customer/PostPositionController;->onFinishLoaderTask()V

    .line 824
    return-void
.end method

.method private loadAndBindAllApps()V
    .locals 3

    .prologue
    .line 918
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAndBindAllApps mAllAppsLoaded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher3/LauncherModel;->access$700(Lcom/android/launcher3/LauncherModel;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->access$700(Lcom/android/launcher3/LauncherModel;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 922
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAndBindAllApps mStoopped="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v0, :cond_0

    .line 924
    const-string v0, "Launcher.Model"

    const-string v1, "loadAndBindAllApps setup"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/model/AppsModel;->setup(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 927
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/model/AppsModel;->addModelListener(Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;)V

    .line 929
    const-string v0, "Launcher.Model"

    const-string v1, "loadAndBindAllApps notifyDirty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/model/AppsModel;->notifyDirty(Z)V

    .line 938
    :cond_0
    :goto_0
    return-void

    .line 934
    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v0, :cond_0

    .line 935
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/allapps/model/AppsModel;->bindItemsSync(ILcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    goto :goto_0
.end method

.method private loadAndBindDeepShortcuts()V
    .locals 6

    .prologue
    .line 888
    const-string v3, "Launcher.Model"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadAndBindDeepShortcuts mDeepShortcutsLoaded="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v5}, Lcom/android/launcher3/LauncherModel;->access$000(Lcom/android/launcher3/LauncherModel;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v3, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    .line 892
    .local v0, "loader":Lcom/android/launcher3/common/model/DataLoader;
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v3}, Lcom/android/launcher3/LauncherModel;->access$000(Lcom/android/launcher3/LauncherModel;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 893
    iget-object v3, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v4, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v4}, Lcom/android/launcher3/LauncherModel;->access$100(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->hasHostPermission()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/android/launcher3/LauncherModel;->access$202(Lcom/android/launcher3/LauncherModel;Z)Z

    .line 894
    iget-object v3, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v3}, Lcom/android/launcher3/LauncherModel;->access$200(Lcom/android/launcher3/LauncherModel;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 895
    iget-object v3, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 897
    .local v2, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    iget-object v4, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v4}, Lcom/android/launcher3/LauncherModel;->access$100(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->queryForAllShortcuts(Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v1

    .line 898
    .local v1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;>;"
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2, v1}, Lcom/android/launcher3/common/model/DataLoader;->updateDeepShortcutMap(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/util/List;)V

    goto :goto_1

    .line 890
    .end local v0    # "loader":Lcom/android/launcher3/common/model/DataLoader;
    .end local v1    # "shortcuts":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;>;"
    .end local v2    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v3, Lcom/android/launcher3/LauncherModel;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    goto :goto_0

    .line 902
    .restart local v0    # "loader":Lcom/android/launcher3/common/model/DataLoader;
    :cond_1
    monitor-enter p0

    .line 903
    :try_start_0
    iget-boolean v3, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v3, :cond_2

    .line 904
    monitor-exit p0

    .line 910
    :goto_2
    return-void

    .line 906
    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/launcher3/LauncherModel;->access$002(Lcom/android/launcher3/LauncherModel;Z)Z

    .line 907
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 909
    :cond_3
    invoke-virtual {v0}, Lcom/android/launcher3/common/model/DataLoader;->bindDeepShortcuts()V

    goto :goto_2

    .line 907
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private loadAndBindWorkspace()Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 593
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/launcher3/common/model/DataLoader;->setLoadingAndBindingWorkspace(Z)V

    .line 596
    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAndBindWorkspace mWorkspaceLoaded="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v3}, Lcom/android/launcher3/LauncherModel;->access$600(Lcom/android/launcher3/LauncherModel;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v1}, Lcom/android/launcher3/LauncherModel;->access$600(Lcom/android/launcher3/LauncherModel;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 600
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v1, v1, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/home/HomeLoader;->setup(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 601
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v1, v4}, Lcom/android/launcher3/LauncherModel;->access$702(Lcom/android/launcher3/LauncherModel;Z)Z

    .line 603
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v1, v1, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    const/16 v3, -0x3e9

    .line 604
    invoke-virtual {v2, v3, p0}, Lcom/android/launcher3/home/HomeLoader;->loadPageItems(ILcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Ljava/util/ArrayList;

    move-result-object v2

    .line 603
    invoke-virtual {v1, v2, v0, p0}, Lcom/android/launcher3/home/HomeLoader;->bindPageItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 607
    new-instance v0, Lcom/android/launcher3/LauncherModel$LoaderTask$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/LauncherModel$LoaderTask$1;-><init>(Lcom/android/launcher3/LauncherModel$LoaderTask;)V

    .line 633
    :goto_0
    return-object v0

    .line 631
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v1, v1, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, p0}, Lcom/android/launcher3/home/HomeLoader;->bindItemsSync(ILcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 632
    invoke-static {v4}, Lcom/android/launcher3/common/model/DataLoader;->setLoadingAndBindingWorkspace(Z)V

    goto :goto_0
.end method

.method private updateIconCache()V
    .locals 2

    .prologue
    .line 870
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 871
    .local v0, "packagesToIgnore":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v1, v1, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/home/HomeLoader;->getIgnorePackage(Ljava/util/HashSet;)V

    .line 872
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v1}, Lcom/android/launcher3/LauncherModel;->access$400(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/common/model/IconCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/model/IconCache;->updateDbIcons(Ljava/util/Set;)V

    .line 873
    return-void
.end method

.method private waitForIdle()V
    .locals 6

    .prologue
    .line 641
    monitor-enter p0

    .line 642
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 644
    .local v0, "workspaceWaitTime":J
    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher3/LauncherModel;->access$1300(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/common/model/DeferredHandler;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/LauncherModel$LoaderTask$2;

    invoke-direct {v3, p0}, Lcom/android/launcher3/LauncherModel$LoaderTask$2;-><init>(Lcom/android/launcher3/LauncherModel$LoaderTask;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/model/DeferredHandler;->postIdle(Ljava/lang/Runnable;)V

    .line 657
    :goto_0
    iget-boolean v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 661
    const-wide/16 v2, 0x3e8

    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 662
    :catch_0
    move-exception v2

    goto :goto_0

    .line 667
    :cond_0
    :try_start_2
    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "waited "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 668
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms for previous step to finish binding"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 667
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    monitor-exit p0

    .line 672
    return-void

    .line 671
    .end local v0    # "workspaceWaitTime":J
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method


# virtual methods
.method public addItemToFolder(Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "folder"    # Lcom/android/launcher3/folder/FolderInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/folder/FolderInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 992
    .local p2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    return-void
.end method

.method public createFolderAndAddItem(Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/item/ItemInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "folderInfo"    # Lcom/android/launcher3/folder/FolderInfo;
    .param p2, "targetItem"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/folder/FolderInfo;",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 996
    .local p3, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    return-void
.end method

.method dumpState()V
    .locals 3

    .prologue
    .line 876
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoaderTask.mStopped="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoaderTask.mLoadAndBindStepFinished="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeLoader;->dumpState()V

    .line 879
    return-void
.end method

.method public isStopped()Z
    .locals 1

    .prologue
    .line 883
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    return v0
.end method

.method public notifyUpdate(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 942
    .local p1, "updated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    return-void
.end method

.method public onLoadComplete(I)V
    .locals 1
    .param p1, "taskState"    # I

    .prologue
    .line 947
    new-instance v0, Lcom/android/launcher3/LauncherModel$LoaderTask$3;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/LauncherModel$LoaderTask$3;-><init>(Lcom/android/launcher3/LauncherModel$LoaderTask;I)V

    .line 971
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 972
    return-void
.end method

.method public onLoadStart()V
    .locals 0

    .prologue
    .line 984
    return-void
.end method

.method public removeAllItems()V
    .locals 0

    .prologue
    .line 976
    return-void
.end method

.method public removeAppsItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 980
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 716
    iget-object v4, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v4}, Lcom/android/launcher3/LauncherModel;->access$1400(Lcom/android/launcher3/LauncherModel;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 717
    :try_start_0
    iget-boolean v4, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v4, :cond_1

    monitor-exit v5

    .line 792
    :cond_0
    :goto_0
    return-void

    .line 718
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    const/4 v6, 0x1

    invoke-static {v4, v6}, Lcom/android/launcher3/LauncherModel;->access$1502(Lcom/android/launcher3/LauncherModel;Z)Z

    .line 719
    iget-object v4, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/android/launcher3/LauncherModel;->access$1602(Lcom/android/launcher3/LauncherModel;Z)Z

    .line 720
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 726
    invoke-static {}, Lcom/android/launcher3/common/model/DataLoader;->loadDefaultLayoutIfNecessary()V

    .line 727
    iget-object v4, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/launcher3/common/model/DataLoader;->setInstallingPackage(Landroid/content/Context;)V

    .line 729
    iget-object v4, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v5, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/android/launcher3/LauncherModel;->access$1700(Lcom/android/launcher3/LauncherModel;Landroid/content/Context;)V

    .line 731
    iget-object v4, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v4}, Lcom/android/launcher3/LauncherModel;->access$300(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 732
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v5

    .line 731
    invoke-virtual {v4, v5, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 734
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "com.sec.android.app.launcher.hideapps.prefs"

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 735
    const-string v4, "com.sec.android.app.launcher.hideapps.prefs"

    .line 736
    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 737
    .local v0, "hiddenItems":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    .line 738
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/model/FavoritesProvider;->applyHideItem(Ljava/util/Set;)V

    .line 741
    :cond_2
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 742
    .local v3, "prefsEditor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "com.sec.android.app.launcher.hideapps.prefs"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 743
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 746
    .end local v0    # "hiddenItems":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "prefsEditor":Landroid/content/SharedPreferences$Editor;
    :cond_3
    const-string v4, "Launcher.Model"

    const-string v5, "step 1: loading workspace"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->loadAndBindWorkspace()Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;

    move-result-object v1

    .line 749
    .local v1, "loaderCallback":Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;
    iget-boolean v4, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v4, :cond_4

    .line 750
    const-string v4, "Launcher.Model"

    const-string v5, "before waitForIdle : if stop, no need next steps."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 720
    .end local v1    # "loaderCallback":Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 753
    .restart local v1    # "loaderCallback":Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;
    .restart local v2    # "prefs":Landroid/content/SharedPreferences;
    :cond_4
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->waitForIdle()V

    .line 755
    iget-boolean v4, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v4, :cond_5

    .line 756
    const-string v4, "Launcher.Model"

    const-string v5, "after waitForIdle : if stop, no need next steps."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 759
    :cond_5
    if-eqz v1, :cond_6

    .line 760
    const-string v4, "Launcher.Model"

    const-string v5, "step 1-1: loading other workspace pages"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    iget-object v4, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v4, v1, p0}, Lcom/android/launcher3/home/HomeLoader;->startPageLoaderTask(Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 764
    :cond_6
    iget-boolean v4, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v4, :cond_7

    .line 765
    const-string v4, "Launcher.Model"

    const-string v5, "step 1-2 : if stop, no need next steps."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 769
    :cond_7
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 770
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 771
    const-string v4, "Launcher.Model"

    const-string v5, "step 2: HomeOnlyMode. skip loading all apps"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    if-nez v1, :cond_8

    .line 773
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->endLoaderTask()V

    .line 780
    :cond_8
    :goto_1
    iget-boolean v4, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v4, :cond_a

    .line 781
    const-string v4, "Launcher.Model"

    const-string v5, "step 2-1 : if stop, no need next steps."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 776
    :cond_9
    const-string v4, "Launcher.Model"

    const-string v5, "step 2: loading all apps"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->loadAndBindAllApps()V

    goto :goto_1

    .line 784
    :cond_a
    const-string v4, "Launcher.Model"

    const-string v5, "step 3: loading widgets"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iget-object v4, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v4, v7, v7, v9}, Lcom/android/launcher3/LauncherModel;->access$500(Lcom/android/launcher3/LauncherModel;[Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V

    .line 787
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportDeepShortcut()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 788
    const-string v4, "Launcher.Model"

    const-string v5, "step 4: loading deep shortcuts"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->loadAndBindDeepShortcuts()V

    goto/16 :goto_0
.end method

.method runBindSynchronousPage(I)V
    .locals 3
    .param p1, "synchronousBindPage"    # I

    .prologue
    const/4 v2, 0x0

    .line 675
    const/16 v0, -0x3e9

    if-ne p1, v0, :cond_0

    .line 677
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Should not call runBindSynchronousPage() without valid page index"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->access$700(Lcom/android/launcher3/LauncherModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->access$600(Lcom/android/launcher3/LauncherModel;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 683
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expecting AllApps and Workspace to be loaded"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 685
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->access$1400(Lcom/android/launcher3/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 686
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->access$1500(Lcom/android/launcher3/LauncherModel;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 689
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Error! Background loading is already running"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 691
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 700
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->access$1300(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/common/model/DeferredHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/DeferredHandler;->flush()V

    .line 705
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v0, p1, v2}, Lcom/android/launcher3/home/HomeLoader;->bindItemsSync(ILcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 708
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    const/4 v1, 0x1

    invoke-static {v0, v2, v2, v1}, Lcom/android/launcher3/LauncherModel;->access$500(Lcom/android/launcher3/LauncherModel;[Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V

    .line 712
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-virtual {v0, p1, v2}, Lcom/android/launcher3/allapps/model/AppsModel;->bindItemsSync(ILcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 713
    return-void
.end method

.method stopLocked()V
    .locals 2

    .prologue
    .line 827
    monitor-enter p0

    .line 828
    :try_start_0
    const-string v0, "Launcher.Model"

    const-string v1, "LoaderTask stopLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    .line 830
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeLoader;->setLoaderTaskStop(Z)V

    .line 831
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/model/AppsModel;->setLoaderTaskStop(Z)V

    .line 832
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mWidgetLoader:Lcom/android/launcher3/widget/model/WidgetLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/model/WidgetLoader;->setLoaderTaskStop(Z)V

    .line 833
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 834
    monitor-exit p0

    .line 835
    return-void

    .line 834
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public terminate()V
    .locals 0

    .prologue
    .line 1004
    return-void
.end method

.method tryGetCallbacks(Lcom/android/launcher3/LauncherModel$Callbacks;)Lcom/android/launcher3/LauncherModel$Callbacks;
    .locals 5
    .param p1, "oldCallbacks"    # Lcom/android/launcher3/LauncherModel$Callbacks;

    .prologue
    const/4 v1, 0x0

    .line 845
    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher3/LauncherModel;->access$1400(Lcom/android/launcher3/LauncherModel;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 846
    :try_start_0
    iget-boolean v3, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v3, :cond_0

    .line 847
    monitor-exit v2

    move-object v0, v1

    .line 863
    :goto_0
    return-object v0

    .line 850
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v3}, Lcom/android/launcher3/LauncherModel;->access$2200(Lcom/android/launcher3/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    if-nez v3, :cond_1

    .line 851
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 854
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v3}, Lcom/android/launcher3/LauncherModel;->access$2200(Lcom/android/launcher3/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherModel$Callbacks;

    .line 855
    .local v0, "callbacks":Lcom/android/launcher3/LauncherModel$Callbacks;
    if-eq v0, p1, :cond_2

    .line 856
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 858
    :cond_2
    if-nez v0, :cond_3

    .line 859
    const-string v3, "Launcher.Model"

    const-string v4, "no mCallbacks"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 863
    :cond_3
    monitor-exit v2

    goto :goto_0

    .line 864
    .end local v0    # "callbacks":Lcom/android/launcher3/LauncherModel$Callbacks;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateIconAndTitle(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 988
    .local p1, "updated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    return-void
.end method

.method public updateRestoreItems(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1000
    .local p1, "updates":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    return-void
.end method
