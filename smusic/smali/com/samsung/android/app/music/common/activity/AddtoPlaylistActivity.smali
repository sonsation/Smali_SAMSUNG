.class public Lcom/samsung/android/app/music/common/activity/AddtoPlaylistActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;
.source "AddtoPlaylistActivity.java"

# interfaces
.implements Lcom/samsung/android/app/music/network/NetworkManager;


# instance fields
.field private mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;-><init>()V

    return-void
.end method

.method private onCreatePhoneUi()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 56
    const v7, 0x7f040022

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/common/activity/AddtoPlaylistActivity;->setContentView(I)V

    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/AddtoPlaylistActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    .line 59
    .local v4, "fm":Landroid/app/FragmentManager;
    const/16 v7, 0x11

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 61
    .local v6, "tag":Ljava/lang/String;
    invoke-virtual {v4, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    .line 62
    .local v3, "fg":Landroid/app/Fragment;
    if-nez v3, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/AddtoPlaylistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 64
    .local v2, "data":Landroid/os/Bundle;
    const-string v7, "extra_checked_item_ids"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v5

    .line 65
    .local v5, "ids":[J
    const-string v7, "add_to_queue"

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 66
    .local v1, "addToQueue":Z
    const-string v7, "add_to_favourites"

    .line 67
    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 68
    .local v0, "addToFavourites":Z
    invoke-static {v5, v1, v0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->newInstance([JZZ)Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;

    move-result-object v3

    .line 69
    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    const v8, 0x7f1200fd

    invoke-virtual {v7, v8, v3, v6}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commit()I

    .line 71
    .end local v0    # "addToFavourites":Z
    .end local v1    # "addToQueue":Z
    .end local v2    # "data":Landroid/os/Bundle;
    .end local v5    # "ids":[J
    :cond_0
    return-void
.end method

.method private onCreateTabletUi()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 74
    const v7, 0x7f040023

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/common/activity/AddtoPlaylistActivity;->setContentView(I)V

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/AddtoPlaylistActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    .line 77
    .local v4, "fm":Landroid/app/FragmentManager;
    const/16 v7, 0x11

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 79
    .local v6, "tag":Ljava/lang/String;
    invoke-virtual {v4, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    .line 80
    .local v3, "fg":Landroid/app/Fragment;
    if-nez v3, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/AddtoPlaylistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 82
    .local v2, "data":Landroid/os/Bundle;
    const-string v7, "extra_checked_item_ids"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v5

    .line 83
    .local v5, "ids":[J
    const-string v7, "add_to_queue"

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 84
    .local v1, "addToQueue":Z
    const-string v7, "add_to_favourites"

    .line 85
    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 86
    .local v0, "addToFavourites":Z
    invoke-static {v5, v1, v0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->newInstance([JZZ)Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;

    move-result-object v3

    .line 87
    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    const v8, 0x7f1200fd

    invoke-virtual {v7, v8, v3, v6}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commit()I

    .line 89
    .end local v0    # "addToFavourites":Z
    .end local v1    # "addToQueue":Z
    .end local v2    # "data":Landroid/os/Bundle;
    .end local v5    # "ids":[J
    :cond_0
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;[JLandroid/os/Bundle;)V
    .locals 4
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "ids"    # [J
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ATPL"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/music/common/activity/AddtoPlaylistActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "extra_checked_item_ids"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 95
    const-string v1, "add_to_queue"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 96
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v1, :cond_1

    .line 97
    const-string v1, "add_to_favourites"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 102
    :goto_0
    if-eqz p2, :cond_0

    .line 103
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 105
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 106
    return-void

    .line 99
    :cond_1
    const-string v1, "add_to_favourites"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/AddtoPlaylistActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/AddtoPlaylistActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 120
    :cond_0
    return-void
.end method

.method public getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/AddtoPlaylistActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/AddtoPlaylistActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/network/NetworkInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/music/network/NetworkInfo;-><init>()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 31
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/AddtoPlaylistActivity;->getPermissionManager()Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object v0

    .line 34
    .local v0, "permissionManager":Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;
    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v4, v2, v3

    invoke-virtual {v0, v5, v2}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->setPermissions(Z[Ljava/lang/String;)V

    .line 36
    const v2, 0x7f0a006f

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/common/activity/AddtoPlaylistActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/common/activity/AddtoPlaylistActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/AddtoPlaylistActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 38
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getUiType(Landroid/content/Context;)I

    move-result v1

    .line 39
    .local v1, "uiType":I
    packed-switch v1, :pswitch_data_0

    .line 47
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    .line 41
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/AddtoPlaylistActivity;->onCreatePhoneUi()V

    .line 49
    :goto_0
    sget-boolean v2, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v2, :cond_0

    .line 50
    new-instance v2, Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/AddtoPlaylistActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/common/activity/AddtoPlaylistActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    .line 51
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/AddtoPlaylistActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/common/activity/AddtoPlaylistActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 53
    :cond_0
    return-void

    .line 44
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/AddtoPlaylistActivity;->onCreateTabletUi()V

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/AddtoPlaylistActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/AddtoPlaylistActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 128
    :cond_0
    return-void
.end method
