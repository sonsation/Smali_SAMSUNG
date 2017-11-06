.class final Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;
.super Ljava/lang/Object;
.source "ProviderInserter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter$OnResultListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final SUB_TAG:Ljava/lang/String; = "---- ProviderInserter >> "

.field private static final TAG:Ljava/lang/String; = "SV-List"

.field private static final UNDEFINED_ID:I = -0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsCancel:Z

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter$OnResultListener;

.field private final mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Ljava/util/List;Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter$OnResultListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "musicContents"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;
    .param p4, "listener"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter$OnResultListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter$OnResultListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->mIsCancel:Z

    .line 44
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    .line 45
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->mItems:Ljava/util/List;

    .line 46
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->mListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter$OnResultListener;

    .line 47
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method private addSong(Landroid/media/session/MediaSession$QueueItem;)J
    .locals 10
    .param p1, "item"    # Landroid/media/session/MediaSession$QueueItem;

    .prologue
    const-wide/16 v6, -0x1

    .line 131
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    const/4 v8, 0x1

    invoke-interface {v5, v8}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;->getMatchedUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 134
    .local v3, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->convert(Landroid/media/session/MediaSession$QueueItem;)Landroid/content/ContentValues;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 139
    .local v4, "v":Landroid/content/ContentValues;
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 140
    .local v2, "newUri":Landroid/net/Uri;
    if-nez v2, :cond_0

    .line 141
    const-string v5, "SV-List"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "---- ProviderInserter >> addSong but fail "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " try it one more time."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 143
    if-nez v2, :cond_0

    .line 144
    const-string v5, "SV-List"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "---- ProviderInserter >> addSong but failed again why? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .end local v2    # "newUri":Landroid/net/Uri;
    .end local v4    # "v":Landroid/content/ContentValues;
    :goto_0
    return-wide v6

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "SV-List"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "---- ProviderInserter >> addSong but fail when convert it."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "newUri":Landroid/net/Uri;
    .restart local v4    # "v":Landroid/content/ContentValues;
    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "id":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_0
.end method

.method private checkId(Landroid/media/session/MediaSession$QueueItem;)J
    .locals 10
    .param p1, "item"    # Landroid/media/session/MediaSession$QueueItem;

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 104
    invoke-virtual {p1}, Landroid/media/session/MediaSession$QueueItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaDescription;->getMediaId()Ljava/lang/String;

    move-result-object v7

    .line 109
    .local v7, "songId":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    .line 110
    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;->getMatchedUri(I)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "source_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x2

    .line 113
    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->buildCpAttrSelection(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 110
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 115
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v8

    .line 126
    .local v8, "id":J
    :goto_0
    if-eqz v6, :cond_0

    if-eqz v4, :cond_2

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 127
    :cond_0
    :goto_1
    return-wide v8

    .line 121
    .end local v8    # "id":J
    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->addSong(Landroid/media/session/MediaSession$QueueItem;)J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v8

    .restart local v8    # "id":J
    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 109
    .end local v8    # "id":J
    :catch_1
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 126
    :catchall_0
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    :goto_2
    if-eqz v6, :cond_3

    if-eqz v4, :cond_4

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_3
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v4, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method private convert(Landroid/media/session/MediaSession$QueueItem;)Landroid/content/ContentValues;
    .locals 13
    .param p1, "item"    # Landroid/media/session/MediaSession$QueueItem;

    .prologue
    .line 153
    invoke-virtual {p1}, Landroid/media/session/MediaSession$QueueItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaDescription;->getMediaId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 154
    .local v1, "sourceId":J
    invoke-virtual {p1}, Landroid/media/session/MediaSession$QueueItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaDescription;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v12, "com.google.android.music.mediasession.music_metadata"

    .line 155
    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/media/MediaMetadata;

    .line 156
    .local v10, "meta":Landroid/media/MediaMetadata;
    const-string v0, "android.media.metadata.TITLE"

    invoke-virtual {v10, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "title":Ljava/lang/String;
    const-string v0, "android.media.metadata.ARTIST"

    invoke-virtual {v10, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 158
    .local v4, "artist":Ljava/lang/String;
    const-string v0, "android.media.metadata.ALBUM"

    invoke-virtual {v10, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 159
    .local v5, "album":Ljava/lang/String;
    const-string v0, "android.media.metadata.DURATION"

    invoke-virtual {v10, v0}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 161
    .local v8, "duration":J
    invoke-virtual {p1}, Landroid/media/session/MediaSession$QueueItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaDescription;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v12, "com.samsung.android.app.music.metadata.music_metadata.META_OTHERS"

    .line 162
    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/media/MediaMetadata;

    .line 163
    .local v11, "other":Landroid/media/MediaMetadata;
    const-string v0, "com.samsung.android.app.music.metadata.ALBUM_ID"

    invoke-virtual {v11, v0}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .local v6, "albumId":J
    move-object v0, p0

    .line 164
    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->makeOnlineTrackContentValue(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method private doInsertDB()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 64
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->mItems:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    new-array v5, v8, [J

    .line 65
    .local v5, "list":[J
    const/4 v0, 0x0

    .line 66
    .local v0, "i":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v6, "newItems":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->mItems:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/session/MediaSession$QueueItem;

    .line 68
    .local v4, "item":Landroid/media/session/MediaSession$QueueItem;
    iget-boolean v9, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->mIsCancel:Z

    if-eqz v9, :cond_2

    .line 73
    const-string v8, "SV-List"

    const-string v9, "---- ProviderInserter >> doInsertDB is Canceled!"

    invoke-static {v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .end local v4    # "item":Landroid/media/session/MediaSession$QueueItem;
    :cond_1
    :goto_1
    return-void

    .line 77
    .restart local v4    # "item":Landroid/media/session/MediaSession$QueueItem;
    :cond_2
    invoke-direct {p0, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->checkId(Landroid/media/session/MediaSession$QueueItem;)J

    move-result-wide v2

    .line 78
    .local v2, "id":J
    const-wide/16 v10, 0x0

    cmp-long v9, v2, v10

    if-lez v9, :cond_0

    .line 79
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aput-wide v2, v5, v0

    .line 80
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 84
    .end local v2    # "id":J
    .end local v4    # "item":Landroid/media/session/MediaSession$QueueItem;
    :cond_3
    const-string v8, "SV-List"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "---- ProviderInserter >> doInsertDB mItems.size() "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->mItems:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " real size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->mItems:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-eq v8, v0, :cond_4

    .line 86
    new-array v7, v0, [J

    .line 87
    .local v7, "shrinkList":[J
    invoke-static {v5, v12, v7, v12, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    move-object v5, v7

    .line 95
    .end local v7    # "shrinkList":[J
    :cond_4
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->mListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter$OnResultListener;

    if-eqz v8, :cond_1

    .line 96
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->mListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter$OnResultListener;

    invoke-interface {v8, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter$OnResultListener;->onResult([JLjava/util/List;)V

    goto :goto_1
.end method

.method private makeOnlineTrackContentValue(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Landroid/content/ContentValues;
    .locals 4
    .param p1, "sourceId"    # J
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "artist"    # Ljava/lang/String;
    .param p5, "album"    # Ljava/lang/String;
    .param p6, "albumId"    # J
    .param p8, "duration"    # J

    .prologue
    .line 169
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 170
    .local v0, "value":Landroid/content/ContentValues;
    const-string/jumbo v1, "source_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 172
    const-string v1, "_data"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dummy_data_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string/jumbo v1, "title_key"

    const-string/jumbo v2, "title_key_dummy"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v1, "duration"

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 176
    const-string v1, "artist"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v1, "album"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v1, "album_id"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 182
    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->mIsCancel:Z

    .line 52
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->doInsertDB()V

    .line 57
    return-void
.end method
