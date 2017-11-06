.class public Lcom/samsung/android/app/music/common/util/task/AddToPlaylistTask;
.super Lcom/samsung/android/app/music/common/util/task/PlaylistItemTask;
.source "AddToPlaylistTask.java"


# static fields
.field private static final MAX_PLAYLIST_ITEM:I = 0x3e8


# instance fields
.field private mIsPlaylistFull:Z

.field private mLaunchTrack:Z

.field private mList:[J

.field private final mPlaylistId:J

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;[JJZ)V
    .locals 1
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "list"    # [J
    .param p3, "playlistId"    # J
    .param p5, "finish"    # Z

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p5}, Lcom/samsung/android/app/music/common/util/task/PlaylistItemTask;-><init>(Landroid/app/Activity;Z)V

    .line 23
    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/util/task/AddToPlaylistTask;->mLaunchTrack:Z

    .line 27
    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/util/task/AddToPlaylistTask;->mIsPlaylistFull:Z

    .line 38
    iput-object p2, p0, Lcom/samsung/android/app/music/common/util/task/AddToPlaylistTask;->mList:[J

    .line 39
    iput-wide p3, p0, Lcom/samsung/android/app/music/common/util/task/AddToPlaylistTask;->mPlaylistId:J

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;[JJZZLjava/lang/String;)V
    .locals 1
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "list"    # [J
    .param p3, "playlistId"    # J
    .param p5, "finish"    # Z
    .param p6, "launchTrack"    # Z
    .param p7, "title"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p5}, Lcom/samsung/android/app/music/common/util/task/PlaylistItemTask;-><init>(Landroid/app/Activity;Z)V

    .line 23
    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/util/task/AddToPlaylistTask;->mLaunchTrack:Z

    .line 27
    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/util/task/AddToPlaylistTask;->mIsPlaylistFull:Z

    .line 45
    iput-object p2, p0, Lcom/samsung/android/app/music/common/util/task/AddToPlaylistTask;->mList:[J

    .line 46
    iput-wide p3, p0, Lcom/samsung/android/app/music/common/util/task/AddToPlaylistTask;->mPlaylistId:J

    .line 47
    iput-boolean p6, p0, Lcom/samsung/android/app/music/common/util/task/AddToPlaylistTask;->mLaunchTrack:Z

    .line 48
    iput-object p7, p0, Lcom/samsung/android/app/music/common/util/task/AddToPlaylistTask;->mTitle:Ljava/lang/String;

    .line 49
    return-void
.end method

.method private makeSongListToAdd(Landroid/content/Context;[JJ)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ids"    # [J
    .param p3, "playlistId"    # J

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0x3e8

    const/4 v8, 0x0

    .line 92
    array-length v3, p2

    .line 93
    .local v3, "size":I
    invoke-static {p1, p3, p4}, Lcom/samsung/android/app/music/common/util/task/AddToPlaylistTask;->getPlaylistSongCount(Landroid/content/Context;J)I

    move-result v0

    .line 94
    .local v0, "base":I
    add-int v5, v0, v3

    if-le v5, v9, :cond_0

    .line 95
    const v5, 0x7f0a020a

    .line 96
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    .line 97
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    .line 96
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, "toastMessage":Ljava/lang/String;
    invoke-static {p1, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 99
    if-lt v0, v9, :cond_1

    .line 100
    iput-boolean v10, p0, Lcom/samsung/android/app/music/common/util/task/AddToPlaylistTask;->mIsPlaylistFull:Z

    .line 110
    .end local v4    # "toastMessage":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 105
    .restart local v4    # "toastMessage":Ljava/lang/String;
    :cond_1
    rsub-int v1, v0, 0x3e8

    .line 106
    .local v1, "maxSize":I
    new-array v2, v1, [J

    .line 107
    .local v2, "newIds":[J
    invoke-static {p2, v8, v2, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    iput-object v2, p0, Lcom/samsung/android/app/music/common/util/task/AddToPlaylistTask;->mList:[J

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/util/task/AddToPlaylistTask;->mIsPlaylistFull:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/task/AddToPlaylistTask;->mList:[J

    if-nez v0, :cond_1

    .line 62
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/task/AddToPlaylistTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/task/AddToPlaylistTask;->mList:[J

    iget-wide v2, p0, Lcom/samsung/android/app/music/common/util/task/AddToPlaylistTask;->mPlaylistId:J

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/common/util/task/AddToPlaylistTask;->addToPlaylistInternal(Landroid/content/Context;[JJ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/util/task/AddToPlaylistTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/util/task/PlaylistItemTask;->onPostExecute(Ljava/lang/Integer;)V

    .line 70
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/util/task/AddToPlaylistTask;->mLaunchTrack:Z

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/task/AddToPlaylistTask;->mActivity:Landroid/app/Activity;

    const v1, 0x100005

    iget-wide v2, p0, Lcom/samsung/android/app/music/common/util/task/AddToPlaylistTask;->mPlaylistId:J

    .line 72
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/common/util/task/AddToPlaylistTask;->mTitle:Ljava/lang/String;

    .line 71
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/common/util/LaunchUtils;->startTrackActivity(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/util/task/AddToPlaylistTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/task/AddToPlaylistTask;->mList:[J

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/task/AddToPlaylistTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/task/AddToPlaylistTask;->mList:[J

    iget-wide v2, p0, Lcom/samsung/android/app/music/common/util/task/AddToPlaylistTask;->mPlaylistId:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/app/music/common/util/task/AddToPlaylistTask;->makeSongListToAdd(Landroid/content/Context;[JJ)V

    .line 56
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/common/util/task/PlaylistItemTask;->onPreExecute()V

    .line 57
    return-void
.end method

.method protected setLoadingProgress()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method protected setMessage(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 83
    .local v0, "message":Ljava/lang/String;
    return-object v0
.end method
