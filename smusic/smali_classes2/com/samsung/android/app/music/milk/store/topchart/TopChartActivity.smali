.class public Lcom/samsung/android/app/music/milk/store/topchart/TopChartActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;
.source "TopChartActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/samsung/android/app/music/network/NetworkManager;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TopChartActivity"


# instance fields
.field private topChartTabHostFragment:Lcom/samsung/android/app/music/milk/store/topchart/TopChartTabHostFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 98
    return-void
.end method

.method public getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    .line 38
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v5, 0x7f04012d

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartActivity;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 42
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->getGroup(Landroid/content/Intent;)Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    move-result-object v2

    .line 43
    .local v2, "group":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    if-nez v2, :cond_0

    .line 45
    const-string v5, "TopChartActivity"

    const-string v6, "onCreate : group is null"

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartActivity;->finish()V

    .line 72
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getMoreTypeList()Ljava/util/List;

    move-result-object v4

    .line 52
    .local v4, "moreTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 53
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 57
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartActivity;->initMiniPlayer()V

    .line 58
    if-nez p1, :cond_2

    .line 59
    invoke-static {v4}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTabHostFragment;->newInstance(Ljava/util/List;)Lcom/samsung/android/app/music/milk/store/topchart/TopChartTabHostFragment;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartActivity;->topChartTabHostFragment:Lcom/samsung/android/app/music/milk/store/topchart/TopChartTabHostFragment;

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    const v6, 0x7f1202cc

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartActivity;->topChartTabHostFragment:Lcom/samsung/android/app/music/milk/store/topchart/TopChartTabHostFragment;

    .line 61
    invoke-virtual {v5, v6, v7}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 64
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartActivity;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v1

    .line 65
    .local v1, "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    if-eqz v1, :cond_3

    .line 66
    const-string v5, "TopCharts"

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    const/4 v7, 0x0

    new-instance v8, Lcom/samsung/android/app/music/bixby/executor/store/LaunchStoreMainGroupResponseExecutor;

    invoke-direct {v8, v1}, Lcom/samsung/android/app/music/bixby/executor/store/LaunchStoreMainGroupResponseExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;)V

    aput-object v8, v6, v7

    new-instance v7, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/MoveTopChartsTabExecutor;

    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartActivity;->topChartTabHostFragment:Lcom/samsung/android/app/music/milk/store/topchart/TopChartTabHostFragment;

    invoke-direct {v7, v1, v8}, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/MoveTopChartsTabExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/musiclibrary/ui/TabControllable;)V

    aput-object v7, v6, v9

    invoke-interface {v1, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V

    .line 71
    :cond_3
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v5

    const-string v6, "982"

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 77
    const v0, 0x7f0a03e0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartActivity;->setTitle(I)V

    .line 78
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 82
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 87
    return-void
.end method

.method public removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 104
    return-void
.end method
