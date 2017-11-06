.class public Lcom/samsung/android/app/music/common/util/task/RemovePlaylistItemTask;
.super Lcom/samsung/android/app/music/common/util/task/PlaylistItemTask;
.source "RemovePlaylistItemTask.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAudioIds:[J

.field private final mPlaylistId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/samsung/android/app/music/common/util/task/RemovePlaylistItemTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/util/task/RemovePlaylistItemTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;J[JZ)V
    .locals 0
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "playlistId"    # J
    .param p4, "audioIds"    # [J
    .param p5, "finish"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1, p5}, Lcom/samsung/android/app/music/common/util/task/PlaylistItemTask;-><init>(Landroid/app/Activity;Z)V

    .line 36
    iput-wide p2, p0, Lcom/samsung/android/app/music/common/util/task/RemovePlaylistItemTask;->mPlaylistId:J

    .line 37
    iput-object p4, p0, Lcom/samsung/android/app/music/common/util/task/RemovePlaylistItemTask;->mAudioIds:[J

    .line 38
    return-void
.end method

.method private removeDefaultPlaylistItems(Landroid/content/Context;JLjava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "playlistId"    # J
    .param p4, "selection"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 93
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    .line 94
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 95
    .local v1, "values":Landroid/content/ContentValues;
    const-wide/16 v2, -0xc

    cmp-long v2, p2, v2

    if-nez v2, :cond_1

    .line 96
    const-string v2, "most_played"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    :cond_0
    :goto_0
    invoke-static {p1, v0, v1, p4, v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 108
    return-void

    .line 97
    :cond_1
    const-wide/16 v2, -0xd

    cmp-long v2, p2, v2

    if-nez v2, :cond_2

    .line 98
    const-string/jumbo v2, "recently_played"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 99
    :cond_2
    const-wide/16 v2, -0xe

    cmp-long v2, p2, v2

    if-nez v2, :cond_0

    .line 100
    const-string/jumbo v2, "recently_added_remove_flag"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method private removePlaylistItems(Landroid/content/Context;J[J)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "playlistId"    # J
    .param p4, "audioIds"    # [J
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 65
    if-eqz p4, :cond_0

    array-length v2, p4

    if-nez v2, :cond_1

    .line 66
    :cond_0
    const/4 v2, 0x0

    .line 85
    :goto_0
    return v2

    .line 68
    :cond_1
    const-string v2, "_id"

    .line 69
    invoke-static {v2, p4}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->convertAudioIdsToSelection(Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "selection":Ljava/lang/String;
    const-wide/16 v2, -0xb

    cmp-long v2, p2, v2

    if-nez v2, :cond_2

    .line 73
    invoke-static {p1}, Lcom/samsung/android/app/music/common/util/FavoriteTracksUtils;->getFavorietListId(Landroid/content/Context;)J

    move-result-wide v2

    const-string v4, "local"

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Members;->getContentUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 72
    invoke-static {p1, v2, v0, v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->delete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 85
    :goto_1
    array-length v2, p4

    goto :goto_0

    .line 75
    :cond_2
    const-wide/16 v2, -0xc

    cmp-long v2, p2, v2

    if-eqz v2, :cond_3

    const-wide/16 v2, -0xd

    cmp-long v2, p2, v2

    if-eqz v2, :cond_3

    const-wide/16 v2, -0xe

    cmp-long v2, p2, v2

    if-nez v2, :cond_4

    .line 78
    :cond_3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/music/common/util/task/RemovePlaylistItemTask;->removeDefaultPlaylistItems(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_1

    .line 81
    :cond_4
    const-string/jumbo v2, "unknown"

    .line 82
    invoke-static {p2, p3, v2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Members;->getContentUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 83
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {p1, v1, v0, v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->delete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/task/RemovePlaylistItemTask;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/samsung/android/app/music/common/util/task/RemovePlaylistItemTask;->mPlaylistId:J

    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/task/RemovePlaylistItemTask;->mAudioIds:[J

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/samsung/android/app/music/common/util/task/RemovePlaylistItemTask;->removePlaylistItems(Landroid/content/Context;J[J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/util/task/RemovePlaylistItemTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected setLoadingProgress()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method protected setMessage(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method
