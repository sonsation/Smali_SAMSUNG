.class public final Lcom/samsung/android/app/music/bixby/executor/local/CreatePlaylistPopupLocalWorkExecutor;
.super Ljava/lang/Object;
.source "CreatePlaylistPopupLocalWorkExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mDialogFragment:Landroid/app/DialogFragment;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPlaylistNameEditable:Lcom/samsung/android/app/musiclibrary/ui/dialog/PlaylistNameEditable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/samsung/android/app/music/bixby/executor/local/CreatePlaylistPopupLocalWorkExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/bixby/executor/local/CreatePlaylistPopupLocalWorkExecutor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/app/DialogFragment;Lcom/samsung/android/app/musiclibrary/ui/dialog/PlaylistNameEditable;)V
    .locals 0
    .param p1, "executorManager"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "dialogFragment"    # Landroid/app/DialogFragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "playlistNameEditable"    # Lcom/samsung/android/app/musiclibrary/ui/dialog/PlaylistNameEditable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/local/CreatePlaylistPopupLocalWorkExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 47
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/local/CreatePlaylistPopupLocalWorkExecutor;->mDialogFragment:Landroid/app/DialogFragment;

    .line 48
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/executor/local/CreatePlaylistPopupLocalWorkExecutor;->mPlaylistNameEditable:Lcom/samsung/android/app/musiclibrary/ui/dialog/PlaylistNameEditable;

    .line 49
    return-void
.end method

.method private addTracksToPlaylist(Ljava/lang/String;)V
    .locals 10
    .param p1, "playlistName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 136
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/local/CreatePlaylistPopupLocalWorkExecutor;->mDialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {v1}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 137
    .local v0, "args":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 138
    sget-object v1, Lcom/samsung/android/app/music/bixby/executor/local/CreatePlaylistPopupLocalWorkExecutor;->TAG:Ljava/lang/String;

    const-string v6, "addTracksToPlaylist() - Will not add tracks to playlist due to null args."

    invoke-static {v1, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :goto_0
    return-void

    .line 143
    :cond_0
    const-string v1, "args_checked_item_ids"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v3

    .line 144
    .local v3, "ids":[J
    if-nez v3, :cond_1

    .line 145
    sget-object v1, Lcom/samsung/android/app/music/bixby/executor/local/CreatePlaylistPopupLocalWorkExecutor;->TAG:Ljava/lang/String;

    const-string v6, "addTracksToPlaylist() - Will not add tracks to playlist due to empty ids."

    invoke-static {v1, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/local/CreatePlaylistPopupLocalWorkExecutor;->mDialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {v1}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 151
    .local v2, "activity":Landroid/app/Activity;
    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    .line 153
    .local v9, "context":Landroid/content/Context;
    invoke-direct {p0, v9, p1}, Lcom/samsung/android/app/music/bixby/executor/local/CreatePlaylistPopupLocalWorkExecutor;->getPlaylistId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    .line 154
    .local v4, "playlistId":J
    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    .line 155
    sget-object v1, Lcom/samsung/android/app/music/bixby/executor/local/CreatePlaylistPopupLocalWorkExecutor;->TAG:Ljava/lang/String;

    const-string v6, "addTracksToPlaylist() - Will not add tracks to playlist due to wrong playlist id."

    invoke-static {v1, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_2
    new-instance v1, Lcom/samsung/android/app/music/common/util/task/AddToPlaylistTask;

    const-string v6, "args_finish_activity"

    .line 161
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "args_launch_track_activity"

    .line 162
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/app/music/common/util/task/AddToPlaylistTask;-><init>(Landroid/app/Activity;[JJZZLjava/lang/String;)V

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Void;

    .line 163
    invoke-virtual {v1, v6}, Lcom/samsung/android/app/music/common/util/task/AddToPlaylistTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private createPlaylist(Ljava/lang/String;)Z
    .locals 11
    .param p1, "playlistName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 114
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/local/CreatePlaylistPopupLocalWorkExecutor;->mDialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {v1}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 116
    .local v0, "context":Landroid/content/Context;
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "name"

    aput-object v3, v2, v10

    const-string v3, "name=?"

    new-array v4, v9, [Ljava/lang/String;

    aput-object p1, v4, v10

    .line 117
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 120
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lez v1, :cond_1

    move v7, v9

    .line 121
    .local v7, "existSameName":Z
    :goto_0
    if-eqz v6, :cond_0

    if-eqz v5, :cond_2

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 122
    :cond_0
    :goto_1
    if-eqz v7, :cond_5

    .line 124
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/local/CreatePlaylistPopupLocalWorkExecutor;->mPlaylistNameEditable:Lcom/samsung/android/app/musiclibrary/ui/dialog/PlaylistNameEditable;

    const v2, 0x7f0a0152

    new-array v3, v9, [Ljava/lang/Object;

    aput-object p1, v3, v10

    .line 125
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/dialog/PlaylistNameEditable;->setErrorMessage(Ljava/lang/String;)V

    .line 131
    :goto_2
    return v10

    .end local v7    # "existSameName":Z
    :cond_1
    move v7, v10

    .line 120
    goto :goto_0

    .line 121
    .restart local v7    # "existSameName":Z
    :catch_0
    move-exception v1

    invoke-virtual {v5, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 116
    .end local v7    # "existSameName":Z
    :catch_1
    move-exception v5

    :try_start_2
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    if-eqz v5, :cond_4

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_3
    throw v1

    :catch_2
    move-exception v2

    invoke-virtual {v5, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 128
    .restart local v7    # "existSameName":Z
    :cond_5
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 129
    .local v8, "values":Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v8, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v1, v8}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->insert(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move v10, v9

    .line 131
    goto :goto_2
.end method

.method private getPlaylistId(Landroid/content/Context;Ljava/lang/String;)J
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "playlistName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 167
    const-wide/16 v8, -0x1

    .line 168
    .local v8, "id":J
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const-string v3, "name=? COLLATE NOCASE"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v5

    const-string v5, "name"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, "c":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 172
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v8

    .line 175
    :cond_0
    if-eqz v6, :cond_1

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 176
    :cond_1
    :goto_0
    return-wide v8

    .line 175
    :catch_0
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 168
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    :catchall_0
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_1
    if-eqz v6, :cond_3

    if-eqz v1, :cond_4

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_2
    throw v0

    :catch_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
    .locals 8
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 53
    const-string v5, "CREATE_PLAYLIST_POPUP"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 54
    const-string v5, "KEYWORD"

    invoke-virtual {p1, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "playlistName":Ljava/lang/String;
    sget-object v5, Lcom/samsung/android/app/music/bixby/executor/local/CreatePlaylistPopupLocalWorkExecutor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "execute() - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 56
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", playlistName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 55
    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 69
    iget-object v5, p0, Lcom/samsung/android/app/music/bixby/executor/local/CreatePlaylistPopupLocalWorkExecutor;->mPlaylistNameEditable:Lcom/samsung/android/app/musiclibrary/ui/dialog/PlaylistNameEditable;

    invoke-interface {v5}, Lcom/samsung/android/app/musiclibrary/ui/dialog/PlaylistNameEditable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "defaultPlaylistName":Ljava/lang/String;
    sget-object v5, Lcom/samsung/android/app/music/bixby/executor/local/CreatePlaylistPopupLocalWorkExecutor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "execute() - Using default playlist name due to empty parameter. defaultPlaylistName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    move-object v2, v0

    .line 79
    .end local v0    # "defaultPlaylistName":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/app/music/bixby/executor/local/CreatePlaylistPopupLocalWorkExecutor;->mPlaylistNameEditable:Lcom/samsung/android/app/musiclibrary/ui/dialog/PlaylistNameEditable;

    invoke-interface {v5}, Lcom/samsung/android/app/musiclibrary/ui/dialog/PlaylistNameEditable;->isInvalidMessage()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 80
    sget-object v5, Lcom/samsung/android/app/music/bixby/executor/local/CreatePlaylistPopupLocalWorkExecutor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "execute() - Invalid playlist name. - playlistName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    const-string v5, "CreateMyPlaylist"

    invoke-direct {v1, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 83
    .local v1, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v5, "keyword"

    const-string v6, "Valid"

    const-string v7, "no"

    invoke-virtual {v1, v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v5, p0, Lcom/samsung/android/app/music/bixby/executor/local/CreatePlaylistPopupLocalWorkExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v6, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v6, v4, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v5, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 110
    .end local v1    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .end local v2    # "playlistName":Ljava/lang/String;
    :goto_1
    return v3

    .line 75
    .restart local v2    # "playlistName":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/app/music/bixby/executor/local/CreatePlaylistPopupLocalWorkExecutor;->mPlaylistNameEditable:Lcom/samsung/android/app/musiclibrary/ui/dialog/PlaylistNameEditable;

    invoke-interface {v5, v2}, Lcom/samsung/android/app/musiclibrary/ui/dialog/PlaylistNameEditable;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_1
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/bixby/executor/local/CreatePlaylistPopupLocalWorkExecutor;->createPlaylist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 90
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/bixby/executor/local/CreatePlaylistPopupLocalWorkExecutor;->addTracksToPlaylist(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 93
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    const-string v4, "CreateMyPlaylist"

    invoke-direct {v1, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 94
    .restart local v1    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v4, "keyword"

    const-string v5, "AlreadyExist"

    const-string v6, "no"

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/local/CreatePlaylistPopupLocalWorkExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v5, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v5, v3, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    goto :goto_1

    .line 98
    .end local v1    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/local/CreatePlaylistPopupLocalWorkExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v5, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v5, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(Z)V

    invoke-interface {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    goto :goto_1

    .line 101
    :cond_3
    sget-object v5, Lcom/samsung/android/app/music/bixby/executor/local/CreatePlaylistPopupLocalWorkExecutor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "execute() - Exist same playlist name. - playlistName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    const-string v5, "CreateMyPlaylist"

    invoke-direct {v1, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 104
    .restart local v1    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v5, "keyword"

    const-string v6, "AlreadyExist"

    const-string/jumbo v7, "yes"

    invoke-virtual {v1, v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v5, p0, Lcom/samsung/android/app/music/bixby/executor/local/CreatePlaylistPopupLocalWorkExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v6, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v6, v4, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v5, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    goto :goto_1

    .end local v1    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .end local v2    # "playlistName":Ljava/lang/String;
    :cond_4
    move v3, v4

    .line 110
    goto :goto_1
.end method
