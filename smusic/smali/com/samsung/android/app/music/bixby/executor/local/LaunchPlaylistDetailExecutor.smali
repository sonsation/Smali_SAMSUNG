.class public final Lcom/samsung/android/app/music/bixby/executor/local/LaunchPlaylistDetailExecutor;
.super Ljava/lang/Object;
.source "LaunchPlaylistDetailExecutor.java"

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
    .line 26
    const-class v0, Lcom/samsung/android/app/music/bixby/executor/local/LaunchPlaylistDetailExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/bixby/executor/local/LaunchPlaylistDetailExecutor;->TAG:Ljava/lang/String;

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
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/local/LaunchPlaylistDetailExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 41
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/local/LaunchPlaylistDetailExecutor;->mDialogFragment:Landroid/app/DialogFragment;

    .line 42
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/executor/local/LaunchPlaylistDetailExecutor;->mPlaylistNameEditable:Lcom/samsung/android/app/musiclibrary/ui/dialog/PlaylistNameEditable;

    .line 43
    return-void
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

    .line 70
    const-wide/16 v8, -0x1

    .line 71
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

    .line 75
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v8

    .line 78
    :cond_0
    if-eqz v6, :cond_1

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 79
    :cond_1
    :goto_0
    return-wide v8

    .line 78
    :catch_0
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 71
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
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
    .locals 9
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x1

    .line 47
    const-string v6, "LAUNCH_PLAYLIST_DETAIL"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 48
    iget-object v6, p0, Lcom/samsung/android/app/music/bixby/executor/local/LaunchPlaylistDetailExecutor;->mPlaylistNameEditable:Lcom/samsung/android/app/musiclibrary/ui/dialog/PlaylistNameEditable;

    invoke-interface {v6}, Lcom/samsung/android/app/musiclibrary/ui/dialog/PlaylistNameEditable;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, "playlistName":Ljava/lang/String;
    sget-object v6, Lcom/samsung/android/app/music/bixby/executor/local/LaunchPlaylistDetailExecutor;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "execute() - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 50
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", playlistName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 49
    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v6, p0, Lcom/samsung/android/app/music/bixby/executor/local/LaunchPlaylistDetailExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    invoke-interface {v6, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->setNextCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V

    .line 54
    iget-object v6, p0, Lcom/samsung/android/app/music/bixby/executor/local/LaunchPlaylistDetailExecutor;->mDialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {v6}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 56
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0, v6, v4}, Lcom/samsung/android/app/music/bixby/executor/local/LaunchPlaylistDetailExecutor;->getPlaylistId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    .line 57
    .local v2, "playlistId":J
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 58
    .local v1, "extra":Landroid/os/Bundle;
    const-string v6, "args_launch_picker_activity"

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 60
    const v6, 0x100005

    .line 61
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    .line 60
    invoke-static {v0, v6, v7, v4, v1}, Lcom/samsung/android/app/music/common/util/LaunchUtils;->startTrackActivity(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 63
    iget-object v6, p0, Lcom/samsung/android/app/music/bixby/executor/local/LaunchPlaylistDetailExecutor;->mDialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {v6}, Landroid/app/DialogFragment;->dismiss()V

    .line 66
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "extra":Landroid/os/Bundle;
    .end local v2    # "playlistId":J
    .end local v4    # "playlistName":Ljava/lang/String;
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method
