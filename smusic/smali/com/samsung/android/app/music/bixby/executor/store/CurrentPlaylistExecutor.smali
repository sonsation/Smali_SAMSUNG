.class public Lcom/samsung/android/app/music/bixby/executor/store/CurrentPlaylistExecutor;
.super Ljava/lang/Object;
.source "CurrentPlaylistExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# instance fields
.field private final mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFragment:Landroid/app/Fragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "executorManager"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/store/CurrentPlaylistExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 28
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/store/CurrentPlaylistExecutor;->mFragment:Landroid/app/Fragment;

    .line 29
    return-void
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
    .locals 7
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 33
    const-string v5, "SELECT_CURRENT_PLAYLIST"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 34
    iget-object v5, p0, Lcom/samsung/android/app/music/bixby/executor/store/CurrentPlaylistExecutor;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "args_checked_item_ids"

    .line 35
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    .line 36
    .local v1, "checkedItemIds":[J
    iget-object v5, p0, Lcom/samsung/android/app/music/bixby/executor/store/CurrentPlaylistExecutor;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 37
    .local v0, "a":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 38
    new-instance v5, Lcom/samsung/android/app/music/common/util/task/AddToNowPlayingTask;

    invoke-direct {v5, v0, v1, v3}, Lcom/samsung/android/app/music/common/util/task/AddToNowPlayingTask;-><init>(Landroid/app/Activity;[JZ)V

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v5, v4}, Lcom/samsung/android/app/music/common/util/task/AddToNowPlayingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 39
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 40
    .local v2, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v4, "ExceedMaxNumber"

    const-string v5, "Valid"

    const-string v6, "no"

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/store/CurrentPlaylistExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v5, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v5, v3, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 44
    .end local v0    # "a":Landroid/app/Activity;
    .end local v1    # "checkedItemIds":[J
    .end local v2    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method
