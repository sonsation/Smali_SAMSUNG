.class public final Lcom/samsung/android/app/music/bixby/executor/local/CreatePlaylistPopupShowExecutor;
.super Ljava/lang/Object;
.source "CreatePlaylistPopupShowExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFragment:Landroid/app/Fragment;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/samsung/android/app/music/bixby/executor/local/CreatePlaylistPopupShowExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/bixby/executor/local/CreatePlaylistPopupShowExecutor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "executorManager"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "fragment"    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/local/CreatePlaylistPopupShowExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 39
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/local/CreatePlaylistPopupShowExecutor;->mFragment:Landroid/app/Fragment;

    .line 40
    return-void
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
    .locals 14
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 44
    const-string v11, "CREATE_PLAYLIST_POPUP"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 45
    iget-object v11, p0, Lcom/samsung/android/app/music/bixby/executor/local/CreatePlaylistPopupShowExecutor;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v11}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 46
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 47
    .local v2, "context":Landroid/content/Context;
    sget-boolean v11, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v11, :cond_1

    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v11

    if-nez v11, :cond_1

    .line 48
    invoke-static {v2}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->getSamsungAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 49
    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->canAccessNetwork(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_1

    move v7, v9

    .line 50
    .local v7, "onlinePlaylist":Z
    :goto_0
    sget-object v11, Lcom/samsung/android/app/music/bixby/executor/local/CreatePlaylistPopupShowExecutor;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "execute() - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 51
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", onlinePlaylist: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 50
    invoke-static {v11, v12}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    if-eqz v7, :cond_2

    sget-object v8, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->TAG:Ljava/lang/String;

    .line 56
    .local v8, "tag":Ljava/lang/String;
    :goto_1
    iget-object v11, p0, Lcom/samsung/android/app/music/bixby/executor/local/CreatePlaylistPopupShowExecutor;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v11}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    .line 57
    .local v5, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v5, v8}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Landroid/app/DialogFragment;

    .line 59
    .local v3, "dialogFragment":Landroid/app/DialogFragment;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/app/DialogFragment;->isResumed()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 60
    sget-object v9, Lcom/samsung/android/app/music/bixby/executor/local/CreatePlaylistPopupShowExecutor;->TAG:Ljava/lang/String;

    const-string v11, "execute() - Dialog fragment is already shown on activity."

    invoke-static {v9, v11}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "dialogFragment":Landroid/app/DialogFragment;
    .end local v5    # "fm":Landroid/app/FragmentManager;
    .end local v7    # "onlinePlaylist":Z
    .end local v8    # "tag":Ljava/lang/String;
    :cond_0
    :goto_2
    return v10

    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v2    # "context":Landroid/content/Context;
    :cond_1
    move v7, v10

    .line 49
    goto :goto_0

    .line 53
    .restart local v7    # "onlinePlaylist":Z
    :cond_2
    const-string v8, "CreatePlaylistDialogFragment"

    goto :goto_1

    .line 64
    .restart local v3    # "dialogFragment":Landroid/app/DialogFragment;
    .restart local v5    # "fm":Landroid/app/FragmentManager;
    .restart local v8    # "tag":Ljava/lang/String;
    :cond_3
    iget-object v10, p0, Lcom/samsung/android/app/music/bixby/executor/local/CreatePlaylistPopupShowExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    invoke-interface {v10, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->setNextCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V

    .line 66
    const/4 v6, 0x0

    .line 67
    .local v6, "ids":[J
    iget-object v10, p0, Lcom/samsung/android/app/music/bixby/executor/local/CreatePlaylistPopupShowExecutor;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v10}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 68
    .local v1, "args":Landroid/os/Bundle;
    if-eqz v1, :cond_4

    .line 69
    const-string v10, "args_checked_item_ids"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v6

    .line 72
    :cond_4
    iget-object v10, p0, Lcom/samsung/android/app/music/bixby/executor/local/CreatePlaylistPopupShowExecutor;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v10}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    instance-of v4, v10, Lcom/samsung/android/app/music/common/activity/AddtoPlaylistActivity;

    .line 74
    .local v4, "finishActivity":Z
    if-eqz v7, :cond_5

    .line 76
    invoke-static {v0, v6, v4, v9, v8}, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment$CreateOnlinePlaylistDialogLauncher;->show(Landroid/app/Activity;[JZZLjava/lang/String;)V

    :goto_3
    move v10, v9

    .line 81
    goto :goto_2

    .line 78
    :cond_5
    invoke-static {v6, v4, v9}, Lcom/samsung/android/app/music/common/dialog/CreatePlaylistDialogFragment;->getNewInstance([JZZ)Lcom/samsung/android/app/music/common/dialog/CreatePlaylistDialogFragment;

    move-result-object v10

    .line 79
    invoke-virtual {v10, v5, v8}, Lcom/samsung/android/app/music/common/dialog/CreatePlaylistDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_3
.end method
