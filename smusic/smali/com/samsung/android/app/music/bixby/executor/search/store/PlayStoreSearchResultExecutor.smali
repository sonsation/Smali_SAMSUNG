.class public Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;
.super Lcom/samsung/android/app/music/bixby/executor/search/store/PlayAllStoreSearchResultExecutor;
.source "PlayStoreSearchResultExecutor.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PlayStoreSearchResultExecutor"


# instance fields
.field private mActivity:Landroid/app/Activity;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/content/Context;Lcom/samsung/android/app/music/bixby/executor/search/store/IPlaySearchResultFromStore;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "executorManager"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "callback"    # Lcom/samsung/android/app/music/bixby/executor/search/store/IPlaySearchResultFromStore;
    .param p5, "mediaChangeObservable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 56
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayAllStoreSearchResultExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/content/Context;Lcom/samsung/android/app/music/bixby/executor/search/store/IPlaySearchResultFromStore;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    .line 57
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;->mActivity:Landroid/app/Activity;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;->mActivity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected executePlay(Ljava/lang/String;Ljava/util/List;)Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .locals 5
    .param p1, "state"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<*>;)",
            "Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;"
        }
    .end annotation

    .prologue
    .line 82
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    const-string v3, "PlayFirstAlbum"

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, p2

    .line 83
    check-cast v0, Ljava/util/ArrayList;

    .line 84
    .local v0, "albumList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milksearch/SearchAlbum;>;"
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;->mActivity:Landroid/app/Activity;

    new-instance v4, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$1;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$1;-><init>(Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 181
    .end local v0    # "albumList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milksearch/SearchAlbum;>;"
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return-object v3

    .line 117
    :cond_1
    const-string v3, "PlayFirstStation"

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v2, p2

    .line 118
    check-cast v2, Ljava/util/ArrayList;

    .line 119
    .local v2, "stationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milksearch/SearchStation;>;"
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;->mActivity:Landroid/app/Activity;

    new-instance v4, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$2;

    invoke-direct {v4, p0, v2}, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$2;-><init>(Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 144
    .end local v2    # "stationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milksearch/SearchStation;>;"
    :cond_2
    const-string v3, "PlayFirstMV"

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, p2

    .line 145
    check-cast v1, Ljava/util/ArrayList;

    .line 146
    .local v1, "mvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milksearch/SearchMusicVideo;>;"
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;->mActivity:Landroid/app/Activity;

    new-instance v4, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$3;

    invoke-direct {v4, p0, v1}, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$3;-><init>(Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected getDisplaytype(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "ret":Ljava/lang/String;
    const-string v1, "PlayFirstAlbum"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    const-string v0, "2"

    .line 77
    :cond_0
    :goto_0
    return-object v0

    .line 71
    :cond_1
    const-string v1, "PlayFirstStation"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    const-string v0, "5"

    goto :goto_0

    .line 73
    :cond_2
    const-string v1, "PlayFirstMV"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    const-string v0, "6"

    goto :goto_0
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 202
    const-string v0, "PlayStoreSearchResultExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onExtrasChanged >>> Action("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 2
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 186
    const-string v0, "PlayStoreSearchResultExecutor"

    const-string/jumbo v1, "onMetadataChanged >>> "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 3
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 191
    const-string v0, "PlayStoreSearchResultExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPlaybackStateChanged >>> State ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "extras"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    const-string v0, "PlayStoreSearchResultExecutor"

    const-string/jumbo v1, "onQueueChanged >>> "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method protected permitAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string v0, "PLAY_FIRST_ITEM_STORE_SEARCH_RESULT"

    return-object v0
.end method
