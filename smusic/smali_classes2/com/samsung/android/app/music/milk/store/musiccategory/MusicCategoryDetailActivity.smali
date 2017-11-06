.class public Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;
.source "MusicCategoryDetailActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/samsung/android/app/music/network/NetworkManager;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MusicCategoryDetailActivity"


# instance fields
.field private tabHostFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailActivity;->title:Ljava/lang/String;

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
    .line 114
    return-void
.end method

.method public getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 36
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v8, 0x7f04012d

    invoke-virtual {p0, v8}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailActivity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 40
    .local v4, "intent":Landroid/content/Intent;
    const-string v8, "key_category_detail_title"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailActivity;->title:Ljava/lang/String;

    .line 42
    const-string v8, "key_category_type"

    .line 43
    invoke-virtual {v4, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 44
    .local v2, "categoryType":I
    const-string v8, "key_category_id"

    .line 45
    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "categoryId":Ljava/lang/String;
    const-string v8, "key_category_year_list"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 48
    .local v7, "yearList":[Ljava/lang/String;
    const-string v8, "key_category_year_id"

    .line 49
    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 51
    .local v6, "yearId":Ljava/lang/String;
    const-string v8, "MusicCategoryDetailActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCreate : categoryType - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v8, "MusicCategoryDetailActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCreate : categoryId - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 55
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0, v12}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 59
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v5, "tabTitleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v8, 0xa

    if-ne v2, v8, :cond_4

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0010

    .line 63
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 62
    invoke-static {v5, v8}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 69
    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 71
    invoke-static {v2, v1, v5, v7, v6}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;->newInstance(ILjava/lang/String;Ljava/util/ArrayList;[Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailActivity;->tabHostFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;

    .line 72
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v8

    const v9, 0x7f1202cc

    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailActivity;->tabHostFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;

    invoke-virtual {v8, v9, v10}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v8

    .line 73
    invoke-virtual {v8}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 76
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailActivity;->initMiniPlayer()V

    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailActivity;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v3

    .line 80
    .local v3, "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    if-eqz v3, :cond_3

    .line 81
    const-string v8, "CategoryDetails"

    const/4 v9, 0x3

    new-array v9, v9, [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    new-instance v10, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/LaunchDetailResponseExecutor;

    invoke-direct {v10, v3}, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/LaunchDetailResponseExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;)V

    aput-object v10, v9, v11

    new-instance v10, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/MoveDetailExecutor;

    iget-object v11, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailActivity;->tabHostFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;

    invoke-direct {v10, v3, v11}, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/MoveDetailExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/musiclibrary/ui/TabControllable;)V

    aput-object v10, v9, v12

    const/4 v10, 0x2

    new-instance v11, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/PlayDetailExecutor;

    iget-object v12, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailActivity;->tabHostFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;

    invoke-direct {v11, v3, v12}, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/PlayDetailExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/milk/executorinterface/IMusicCategoryDetailTabExecutor;)V

    aput-object v11, v9, v10

    invoke-interface {v3, v8, v9}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V

    .line 86
    :cond_3
    return-void

    .line 64
    .end local v3    # "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    :cond_4
    const/16 v8, 0xb

    if-ne v2, v8, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0012

    .line 66
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 65
    invoke-static {v5, v8}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onNavigateUp()Z
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailActivity;->finish()V

    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailActivity;->title:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 92
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 96
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 97
    return-void
.end method

.method public removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 120
    return-void
.end method
