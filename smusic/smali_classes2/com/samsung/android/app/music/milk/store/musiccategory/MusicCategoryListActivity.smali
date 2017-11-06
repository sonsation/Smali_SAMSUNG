.class public Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;
.source "MusicCategoryListActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/samsung/android/app/music/network/NetworkManager;


# static fields
.field private static final TAB_TAG:Ljava/lang/String; = "categoryTab"

.field private static final TAG:Ljava/lang/String; = "MusicCategoryListActivity"


# instance fields
.field private tabHostFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
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
    .line 103
    return-void
.end method

.method public getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListActivity;->tabHostFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListActivity;->tabHostFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onBackPressed()V

    .line 116
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    .line 38
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v5, 0x7f04012d

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListActivity;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 42
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 47
    .local v4, "intent":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 48
    .local v3, "genreIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_1

    .line 49
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 50
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->MUSIC_CATEGORY:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    .line 51
    invoke-virtual {v6}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 52
    const-string v5, "genreIdList"

    .line 53
    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 55
    const-string v5, "MusicCategoryListActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate : genreIds size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 61
    .local v2, "fm":Landroid/app/FragmentManager;
    const-string v5, "categoryTab"

    invoke-virtual {v2, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;

    iput-object v5, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListActivity;->tabHostFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;

    .line 63
    const-string v5, "MusicCategoryListActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate. tabHost - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListActivity;->tabHostFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", savedInstanceState - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListActivity;->tabHostFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;

    if-nez v5, :cond_2

    .line 65
    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;->newInstance(Ljava/util/ArrayList;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListActivity;->tabHostFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    const v6, 0x7f1202cc

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListActivity;->tabHostFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;

    const-string v8, "categoryTab"

    invoke-virtual {v5, v6, v7, v8}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v5

    .line 67
    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 70
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListActivity;->initMiniPlayer()V

    .line 72
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListActivity;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v1

    .line 73
    .local v1, "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    if-eqz v1, :cond_3

    .line 74
    const-string v5, "MusicCategory"

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    const/4 v7, 0x0

    new-instance v8, Lcom/samsung/android/app/music/bixby/executor/store/LaunchStoreMainGroupResponseExecutor;

    invoke-direct {v8, v1}, Lcom/samsung/android/app/music/bixby/executor/store/LaunchStoreMainGroupResponseExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;)V

    aput-object v8, v6, v7

    new-instance v7, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/MoveMusicCategoryTabExecutor;

    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListActivity;->tabHostFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;

    invoke-direct {v7, v1, v8}, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/MoveMusicCategoryTabExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/musiclibrary/ui/TabControllable;)V

    aput-object v7, v6, v9

    invoke-interface {v1, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V

    .line 78
    :cond_3
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 83
    const v0, 0x7f0a03c7

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListActivity;->setTitle(I)V

    .line 84
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 88
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 89
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.app.music.service.milk.MilkService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    :cond_0
    return-void
.end method

.method public removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 109
    return-void
.end method
