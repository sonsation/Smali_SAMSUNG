.class public Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;
.source "MusicVideoActivity.java"

# interfaces
.implements Lcom/samsung/android/app/music/network/NetworkManager;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final NO_USE_GROUP_VALUE:I


# instance fields
.field private musicVideoTabHostFragment:Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoTabHostFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
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
    .line 85
    return-void
.end method

.method public getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    .line 35
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v5, 0x7f04012d

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoActivity;->setContentView(I)V

    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 39
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->getGroup(Landroid/content/Intent;)Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    move-result-object v2

    .line 40
    .local v2, "group":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    if-nez v2, :cond_0

    .line 42
    sget-object v5, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoActivity;->LOG_TAG:Ljava/lang/String;

    const-string v6, "onCreate : group is null"

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoActivity;->finish()V

    .line 69
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getMoreTypeList()Ljava/util/List;

    move-result-object v4

    .line 48
    .local v4, "moreTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 49
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 51
    const v5, 0x7f0a03d4

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setTitle(I)V

    .line 54
    :cond_1
    if-nez p1, :cond_2

    .line 55
    invoke-static {v4}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoTabHostFragment;->newInstance(Ljava/util/List;)Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoTabHostFragment;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoActivity;->musicVideoTabHostFragment:Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoTabHostFragment;

    .line 56
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    const v6, 0x7f1202cc

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoActivity;->musicVideoTabHostFragment:Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoTabHostFragment;

    .line 57
    invoke-virtual {v5, v6, v7}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v5

    .line 58
    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 61
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoActivity;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v1

    .line 62
    .local v1, "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    if-eqz v1, :cond_3

    .line 63
    const-string v5, "MusicVideos"

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    const/4 v7, 0x0

    new-instance v8, Lcom/samsung/android/app/music/bixby/executor/store/LaunchStoreMainGroupResponseExecutor;

    invoke-direct {v8, v1}, Lcom/samsung/android/app/music/bixby/executor/store/LaunchStoreMainGroupResponseExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;)V

    aput-object v8, v6, v7

    new-instance v7, Lcom/samsung/android/app/music/bixby/executor/store/MoveStoreSubTabExecutor;

    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoActivity;->musicVideoTabHostFragment:Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoTabHostFragment;

    invoke-direct {v7, v1, v8}, Lcom/samsung/android/app/music/bixby/executor/store/MoveStoreSubTabExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/musiclibrary/ui/TabControllable;)V

    aput-object v7, v6, v9

    invoke-interface {v1, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V

    .line 68
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoActivity;->initMiniPlayer()V

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 73
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 74
    return-void
.end method

.method public removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 90
    return-void
.end method
