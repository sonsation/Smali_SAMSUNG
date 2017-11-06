.class final Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;
.super Ljava/lang/Object;
.source "QueueListProducer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$NowPlayingTrackQueryArgsAllSpec;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$OnResultListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EMPTY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-List"

.field private static final SUB_TAG:Ljava/lang/String; = "---- QueueBuilder >> "

.field private static final TAG:Ljava/lang/String; = "SV-List"


# instance fields
.field private final mBaseUri:Landroid/net/Uri;

.field private final mContext:Landroid/content/Context;

.field private final mIds:[J

.field private mIsCancel:Z

.field private final mListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$OnResultListener;

.field private final mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->EMPTY_LIST:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Landroid/net/Uri;[J)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "musicContents"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "ids"    # [J

    .prologue
    .line 54
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Landroid/net/Uri;[JLcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$OnResultListener;)V

    .line 55
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Landroid/net/Uri;[JLcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$OnResultListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "musicContents"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "ids"    # [J
    .param p5, "listener"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$OnResultListener;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->mIsCancel:Z

    .line 59
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    .line 61
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->mBaseUri:Landroid/net/Uri;

    .line 62
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->mIds:[J

    .line 63
    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->mListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$OnResultListener;

    .line 64
    return-void
.end method

.method private getQueueFromCursor(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Landroid/net/Uri;[J)Ljava/util/List;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "musicContents"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;
    .param p3, "baseUri"    # Landroid/net/Uri;
    .param p4, "queue"    # [J
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;",
            "Landroid/net/Uri;",
            "[J)",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    const-string v4, "SMUSIC-SV-List"

    const-string v5, "---- QueueBuilder >> 1 start query"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 114
    .local v0, "base":J
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;

    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$NowPlayingTrackQueryArgsAllSpec;

    invoke-direct {v4, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$NowPlayingTrackQueryArgsAllSpec;-><init>(Landroid/net/Uri;)V

    iget-object v4, v4, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$NowPlayingTrackQueryArgsAllSpec;->projection:[Ljava/lang/String;

    invoke-direct {v2, p1, p3, p4, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;-><init>(Landroid/content/Context;Landroid/net/Uri;[J[Ljava/lang/String;)V

    .local v2, "c":Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 116
    :try_start_0
    const-string v4, "SMUSIC-SV-List"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "---- QueueBuilder >> 2 query complete. takes : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 117
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 116
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_2

    .line 119
    const-string v4, "SMUSIC-SV-List"

    const-string v6, "---- QueueBuilder >> No data now playing queue"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->EMPTY_LIST:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 133
    if-eqz v2, :cond_0

    if-eqz v5, :cond_1

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return-object v3

    :catch_0
    move-exception v4

    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 123
    :cond_2
    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    :cond_3
    iget-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->mIsCancel:Z

    if-eqz v4, :cond_5

    .line 126
    const-string v4, "SV-List"

    const-string v6, "---- QueueBuilder >> Cancel compose this queue! - getQueueItem"

    invoke-static {v4, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->EMPTY_LIST:Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 133
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    if-eqz v2, :cond_0

    if-eqz v5, :cond_4

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v4

    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 129
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    :cond_5
    :try_start_4
    invoke-static {p2, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->getQueueItem(Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Landroid/database/Cursor;)Landroid/media/session/MediaSession$QueueItem;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 131
    const-string v4, "SMUSIC-SV-List"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "---- QueueBuilder >> 3 composed Queue size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 133
    if-eqz v2, :cond_0

    if-eqz v5, :cond_6

    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v4

    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 114
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    :catch_3
    move-exception v4

    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 133
    :catchall_0
    move-exception v5

    move-object v10, v5

    move-object v5, v4

    move-object v4, v10

    :goto_1
    if-eqz v2, :cond_7

    if-eqz v5, :cond_8

    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    :cond_7
    :goto_2
    throw v4

    :catch_4
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v4

    goto :goto_1
.end method

.method private static getQueueItem(Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Landroid/database/Cursor;)Landroid/media/session/MediaSession$QueueItem;
    .locals 27
    .param p0, "musicContents"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 137
    const/16 v24, 0x63

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 138
    .local v6, "id":J
    const-string/jumbo v24, "title"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 139
    .local v8, "title":Ljava/lang/String;
    const-string v24, "artist"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 140
    .local v9, "artist":Ljava/lang/String;
    const-string v24, "album"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 141
    .local v10, "album":Ljava/lang/String;
    const-string v24, "genre_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 142
    .local v11, "genre":Ljava/lang/String;
    const-string v24, "duration"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 143
    .local v12, "duration":J
    const-string v24, "album_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 144
    .local v14, "albumId":J
    const-string v24, "is_secretbox"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    const/16 v16, 0x1

    .line 150
    .local v16, "isPrivate":Z
    :goto_0
    :try_start_0
    const-string v24, "cp_attrs"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    .line 154
    .local v17, "cpAttrs":I
    :goto_1
    const-string/jumbo v24, "sampling_rate"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 155
    .local v23, "samplingRate":I
    const-string v24, "bit_depth"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 156
    .local v20, "bitDepth":I
    const-string v24, "mime_type"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 158
    .local v22, "mimeType":Ljava/lang/String;
    move/from16 v0, v23

    move/from16 v1, v20

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->getSoundQualityData(IILjava/lang/String;)J

    move-result-wide v18

    .line 161
    .local v18, "soundQualityData":J
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    int-to-long v4, v0

    .line 163
    .local v4, "queueItemId":J
    invoke-static/range {v4 .. v19}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueItemUtils;->obtainItem(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZIJ)Landroid/media/session/MediaSession$QueueItem;

    move-result-object v24

    return-object v24

    .line 144
    .end local v4    # "queueItemId":J
    .end local v16    # "isPrivate":Z
    .end local v17    # "cpAttrs":I
    .end local v18    # "soundQualityData":J
    .end local v20    # "bitDepth":I
    .end local v22    # "mimeType":Ljava/lang/String;
    .end local v23    # "samplingRate":I
    :cond_0
    const/16 v16, 0x0

    goto :goto_0

    .line 151
    .restart local v16    # "isPrivate":Z
    :catch_0
    move-exception v21

    .line 152
    .local v21, "e":Ljava/lang/IllegalArgumentException;
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x1

    aput v26, v24, v25

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs;->buildCpAttrs([I)I

    move-result v17

    .restart local v17    # "cpAttrs":I
    goto :goto_1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->mIsCancel:Z

    .line 68
    return-void
.end method

.method public getQueueItems()Ljava/util/List;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    const-string v1, "SV-List"

    const-string v2, "---- QueueBuilder >> Open a new list, Start to making QueueItem List"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->mBaseUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->mIds:[J

    .line 102
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->getQueueFromCursor(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Landroid/net/Uri;[J)Ljava/util/List;

    move-result-object v0

    .line 106
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-object v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 72
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->mIsCancel:Z

    if-eqz v1, :cond_1

    .line 73
    const-string v1, "SV-List"

    const-string v2, "---- QueueBuilder >> Cancel compose this queue! - run"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->getQueueItems()Ljava/util/List;

    move-result-object v0

    .line 77
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->mIsCancel:Z

    if-eqz v1, :cond_2

    .line 78
    const-string v1, "SV-List"

    const-string v2, "---- QueueBuilder >> Cancel compose this queue! - getQueueItems"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->mListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$OnResultListener;

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->mListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$OnResultListener;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->mIds:[J

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$OnResultListener;->onResult([JLjava/util/List;)V

    goto :goto_0
.end method
