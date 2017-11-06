.class public final Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;
.super Ljava/lang/Object;
.source "LegacyNowPlayingDbUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEBUG:Z = false

.field private static final DISABLE:Ljava/lang/String; = "disable"

.field private static final EXTERNAL:Ljava/lang/String; = "external"

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-LegacyNowplaying"

.field private static final MAX_BULK_ITEM:I = 0x3e8

.field private static final NOWPLAYING_LIST_NAME:Ljava/lang/String; = "now playing list 0123456789"

.field private static final PARAM_NOTIFY_CHANGE:Ljava/lang/String; = "notifyChange"

.field private static final PLAY_LIST_CONTENT_URI_INCLUDE_NESTED:Landroid/net/Uri;

.field private static final SEC_FILTER:Ljava/lang/String; = "secFilter"

.field private static final TAG:Ljava/lang/String; = "LegacyNowplaying"

.field private static final UNDEFINED:I = -0x1

.field private static final VALUE_INCLUDE:Ljava/lang/String; = "include"

.field private static sNowPlayingListId:J

.field private static final sNowPlayingListToken:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsCancel:Z

.field private final mMusicIds:[J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    sget-object v0, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 39
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "secFilter"

    const-string v2, "include"

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->PLAY_LIST_CONTENT_URI_INCLUDE_NESTED:Landroid/net/Uri;

    .line 66
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->sNowPlayingListId:J

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->sNowPlayingListToken:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;[J)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "musicIds"    # [J

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->mIsCancel:Z

    .line 77
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->mMusicIds:[J

    .line 79
    return-void
.end method

.method private addToNowPlayinglistInternal(Landroid/content/Context;[JJ)I
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ids"    # [J
    .param p3, "playlistid"    # J

    .prologue
    .line 169
    const/4 v2, 0x0

    .line 170
    .local v2, "numinserted":I
    if-nez p2, :cond_1

    .line 173
    const-string v6, "SMUSIC-LegacyNowplaying"

    const-string v7, "ListSelection null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v6, v2

    .line 193
    :goto_0
    return v6

    .line 175
    :cond_1
    const-string v6, "external"

    invoke-static {v6, p3, p4}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    .line 176
    .local v4, "uri":Landroid/net/Uri;
    array-length v3, p2

    .line 177
    .local v3, "size":I
    const/4 v0, 0x1

    .line 178
    .local v0, "baseOrder":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 179
    const/16 v6, 0x3e8

    invoke-direct {p0, p2, v1, v6, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->makeInsertItems([JIII)[Landroid/content/ContentValues;

    move-result-object v5

    .line 180
    .local v5, "values":[Landroid/content/ContentValues;
    iget-boolean v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->mIsCancel:Z

    if-eqz v6, :cond_2

    .line 181
    const-string v6, "LegacyNowplaying"

    const-string v7, "cancel add to now playing list in db."

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const/4 v6, 0x0

    goto :goto_0

    .line 186
    :cond_2
    if-nez v1, :cond_3

    .line 187
    invoke-direct {p0, p1, v2, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->deletePreviousAndInsertNew(Landroid/content/Context;ILandroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v2

    .line 178
    :goto_2
    add-int/lit16 v1, v1, 0x3e8

    goto :goto_1

    .line 190
    :cond_3
    invoke-static {p1, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->bulkInsert(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v6

    add-int/2addr v2, v6

    goto :goto_2
.end method

.method private debugPrintTrackNames(J)V
    .locals 9
    .param p1, "id"    # J

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 237
    const-string v0, "external"

    invoke-static {v0, p1, p2}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 238
    .local v1, "debuggingUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "title"

    aput-object v4, v2, v5

    const-string v5, "play_order"

    move-object v4, v3

    .line 239
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 242
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 245
    .local v7, "title":Ljava/lang/String;
    const-string v0, "SMUSIC-LegacyNowplaying"

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 248
    .end local v7    # "title":Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_2

    if-eqz v3, :cond_3

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 249
    :cond_2
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v0

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 238
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 248
    :catchall_0
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    :goto_1
    if-eqz v6, :cond_4

    if-eqz v3, :cond_5

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :goto_2
    throw v0

    :catch_2
    move-exception v2

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private deletePreviousAndInsertNew(Landroid/content/Context;ILandroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "numinserted"    # I
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "values"    # [Landroid/content/ContentValues;

    .prologue
    .line 202
    .line 203
    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->getDeleteBeforeInsertUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0, p4}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->bulkInsert(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    add-int/2addr p2, v0

    .line 204
    return p2
.end method

.method private static getNotifyDisabledUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "notifyChange"

    const-string v2, "disable"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static getNowPlayingListId(Landroid/content/Context;)J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    .line 86
    sget-wide v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->sNowPlayingListId:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    .line 87
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->sNowPlayingListToken:Ljava/lang/Object;

    monitor-enter v1

    .line 92
    :try_start_0
    sget-wide v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->sNowPlayingListId:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    .line 93
    if-nez p0, :cond_2

    .line 94
    const-string v0, "SMUSIC-LegacyNowplaying"

    const-string/jumbo v2, "try to getNowPlayingListId but id is minus value and context is null. Please check your logic"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :cond_1
    sget-wide v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->sNowPlayingListId:J

    return-wide v0

    .line 97
    :cond_2
    :try_start_1
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->makeNowplayingList(Landroid/content/Context;)V

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private makeInsertItems([JIII)[Landroid/content/ContentValues;
    .locals 6
    .param p1, "ids"    # [J
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "base"    # I

    .prologue
    .line 216
    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_0

    .line 217
    array-length v2, p1

    sub-int p3, v2, p2

    .line 221
    :cond_0
    new-array v1, p3, [Landroid/content/ContentValues;

    .line 225
    .local v1, "values":[Landroid/content/ContentValues;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 226
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->mIsCancel:Z

    if-eqz v2, :cond_2

    .line 227
    const/4 v1, 0x0

    .line 233
    .end local v1    # "values":[Landroid/content/ContentValues;
    :cond_1
    return-object v1

    .line 229
    .restart local v1    # "values":[Landroid/content/ContentValues;
    :cond_2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    aput-object v2, v1, v0

    .line 230
    aget-object v2, v1, v0

    const-string v3, "play_order"

    add-int v4, p4, p2

    add-int/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 231
    aget-object v2, v1, v0

    const-string v3, "audio_id"

    add-int v4, p2, v0

    aget-wide v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static makeNowplayingList(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    .line 111
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->PLAY_LIST_CONTENT_URI_INCLUDE_NESTED:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "name= ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "now playing list 0123456789"

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .local v6, "c":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 115
    if-eqz v6, :cond_0

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 117
    :cond_0
    const-string v0, "LegacyNowplaying"

    const-string v2, "Playlist but there are no now playing list. So make it."

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance v9, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v9, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 119
    .local v9, "value":Landroid/content/ContentValues;
    const-string v0, "name"

    const-string v2, "now playing list 0123456789"

    invoke-virtual {v9, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    sget-object v0, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 121
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->getNotifyDisabledUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 120
    invoke-static {p0, v0, v9}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->insert(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    .line 123
    .local v8, "uri2":Landroid/net/Uri;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {v8}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sput-wide v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->sNowPlayingListId:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 131
    .end local v8    # "uri2":Landroid/net/Uri;
    .end local v9    # "value":Landroid/content/ContentValues;
    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    if-eqz v10, :cond_5

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 134
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_2
    :goto_1
    const-string v0, "LegacyNowplaying"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeNowplayingList make result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->sNowPlayingListId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void

    .line 128
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_3
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 129
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    sput-wide v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->sNowPlayingListId:J
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 131
    :catchall_0
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    :goto_2
    if-eqz v6, :cond_4

    if-eqz v1, :cond_6

    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_4
    :goto_3
    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1

    .end local v6    # "c":Landroid/database/Cursor;
    :catch_1
    move-exception v7

    .line 132
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string v0, "LegacyNowplaying"

    const-string v1, "makeNowplayingList() - IllegalArgumentException!!"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 131
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v6    # "c":Landroid/database/Cursor;
    :catch_2
    move-exception v0

    :try_start_7
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catch_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v10

    goto :goto_2
.end method


# virtual methods
.method cancel()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->mIsCancel:Z

    .line 83
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    .line 139
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->getNowPlayingListId(Landroid/content/Context;)J

    move-result-wide v2

    .line 140
    .local v2, "id":J
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    .line 141
    const-string v4, "LegacyNowplaying"

    const-string v5, "id is -1 return"

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->mIsCancel:Z

    if-nez v4, :cond_0

    .line 150
    const-string v4, "external"

    .line 151
    invoke-static {v4, v2, v3}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    .line 150
    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->getNotifyDisabledUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 153
    .local v1, "uri":Landroid/net/Uri;
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v1, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->delete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 156
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->mMusicIds:[J

    .line 157
    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/MediaIdConverter;->convertToMediaProviderIds(Landroid/content/Context;[J)[J

    move-result-object v5

    .line 156
    invoke-direct {p0, v4, v5, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->addToNowPlayinglistInternal(Landroid/content/Context;[JJ)I

    .line 158
    const-string v4, "LegacyNowplaying"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addToPlaylistInternal now playing id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "LegacyNowplaying"

    const-string/jumbo v5, "saveNowPlayingQueue() - IllegalArgumentException!!"

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
