.class Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater$Saver;
.super Ljava/lang/Object;
.source "NowPlayingDbUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Saver"
.end annotation


# static fields
.field private static final MAX_BULK_ITEM:I = 0x3e8


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIds:[J

.field private mIsCancel:Z


# direct methods
.method constructor <init>(Landroid/content/Context;[J)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "list"    # [J

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater$Saver;->mIsCancel:Z

    .line 71
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater$Saver;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater$Saver;->mIds:[J

    .line 73
    return-void
.end method

.method private addToNowPlayinglistInternal(Landroid/content/Context;[JJ)I
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ids"    # [J
    .param p3, "playlistid"    # J

    .prologue
    .line 106
    const/4 v2, 0x0

    .line 107
    .local v2, "numinserted":I
    if-nez p2, :cond_1

    .line 110
    const-string v6, "SMUSIC-SV-List"

    const-string v7, "ListSelection null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v6, v2

    .line 130
    :goto_0
    return v6

    .line 112
    :cond_1
    invoke-direct {p0, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater$Saver;->getPlaylistsUri(J)Landroid/net/Uri;

    move-result-object v4

    .line 113
    .local v4, "uri":Landroid/net/Uri;
    array-length v3, p2

    .line 114
    .local v3, "size":I
    const/4 v0, 0x1

    .line 115
    .local v0, "baseOrder":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 116
    const/16 v6, 0x3e8

    invoke-direct {p0, p2, v1, v6, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater$Saver;->makeInsertItems([JIII)[Landroid/content/ContentValues;

    move-result-object v5

    .line 117
    .local v5, "values":[Landroid/content/ContentValues;
    iget-boolean v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater$Saver;->mIsCancel:Z

    if-eqz v6, :cond_2

    .line 118
    const-string v6, "SV-List"

    const-string v7, "cancel add to now playing list in db."

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const/4 v6, 0x0

    goto :goto_0

    .line 123
    :cond_2
    if-nez v1, :cond_3

    .line 124
    invoke-direct {p0, p1, v2, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater$Saver;->deletePreviousAndInsertNew(Landroid/content/Context;ILandroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v2

    .line 115
    :goto_2
    add-int/lit16 v1, v1, 0x3e8

    goto :goto_1

    .line 127
    :cond_3
    invoke-static {p1, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->bulkInsert(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v6

    add-int/2addr v2, v6

    goto :goto_2
.end method

.method private deletePreviousAndInsertNew(Landroid/content/Context;ILandroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "numinserted"    # I
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "values"    # [Landroid/content/ContentValues;

    .prologue
    .line 139
    .line 140
    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->getDeleteBeforeInsertUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0, p4}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->bulkInsert(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    add-int/2addr p2, v0

    .line 141
    return p2
.end method

.method private getPlaylistsUri(J)Landroid/net/Uri;
    .locals 1
    .param p1, "playlistId"    # J

    .prologue
    .line 101
    const-string v0, "local"

    .line 102
    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Members;->getContentUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private makeInsertItems([JIII)[Landroid/content/ContentValues;
    .locals 6
    .param p1, "ids"    # [J
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "base"    # I

    .prologue
    .line 153
    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_0

    .line 154
    array-length v2, p1

    sub-int p3, v2, p2

    .line 158
    :cond_0
    new-array v1, p3, [Landroid/content/ContentValues;

    .line 162
    .local v1, "values":[Landroid/content/ContentValues;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 163
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater$Saver;->mIsCancel:Z

    if-eqz v2, :cond_2

    .line 164
    const/4 v1, 0x0

    .line 170
    .end local v1    # "values":[Landroid/content/ContentValues;
    :cond_1
    return-object v1

    .line 166
    .restart local v1    # "values":[Landroid/content/ContentValues;
    :cond_2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    aput-object v2, v1, v0

    .line 167
    aget-object v2, v1, v0

    const-string v3, "play_order"

    add-int v4, p4, p2

    add-int/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 168
    aget-object v2, v1, v0

    const-string v3, "audio_id"

    add-int v4, p2, v0

    aget-wide v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method cancel()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater$Saver;->mIsCancel:Z

    .line 79
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    .line 83
    sget-object v6, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->NOW_PLAYLIST_QUEUE_URI:Landroid/net/Uri;

    .line 84
    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->getNotifyDisabledUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    .line 83
    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->getDeleteBeforeInsertUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 86
    .local v4, "uri":Landroid/net/Uri;
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater$Saver;->mIds:[J

    array-length v3, v6

    .line 87
    .local v3, "size":I
    new-array v5, v3, [Landroid/content/ContentValues;

    .line 88
    .local v5, "values":[Landroid/content/ContentValues;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 89
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    aput-object v6, v5, v2

    .line 90
    aget-object v6, v5, v2

    const-string v7, "audio_id"

    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater$Saver;->mIds:[J

    aget-wide v8, v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater$Saver;->mContext:Landroid/content/Context;

    invoke-static {v6, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->bulkInsert(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    .line 94
    .local v0, "count":I
    const-string v6, "SMUSIC-SV-List"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "saveNowPlayingQueue now playing count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v0    # "count":I
    :goto_1
    return-void

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "SV-List"

    const-string/jumbo v7, "saveNowPlayingQueue() - IllegalArgumentException!!"

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
