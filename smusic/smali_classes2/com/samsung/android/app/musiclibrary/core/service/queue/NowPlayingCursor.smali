.class public final Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;
.super Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;
.source "NowPlayingCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor$InputPreventHandler;
    }
.end annotation


# static fields
.field private static final COLUMN_INDEX_OTHER_INFO:I = 0x6

.field private static final DEBUG:Z = false

.field private static final INDEX_AUDIO_ID:I = 0xa

.field private static final INDEX_IS_PRIVATE:I = 0x7

.field private static final INDEX_ITEM_ID:I = 0x0

.field private static final INVALID_VALUE:I = -0x1

.field private static final LOG_DEBUG:Z

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-List"

.field private static final META_KEY:[Ljava/lang/String;

.field private static final PROJECTION:[Ljava/lang/String;

.field public static final SOUND_QUALITY_DATA:Ljava/lang/String; = "sound_quality_data"

.field private static final TAG:Ljava/lang/String; = "SV-List"


# instance fields
.field private mCurrentMeta:Landroid/media/MediaMetadata;

.field private mCurrentMetaOtherInfo:Landroid/media/MediaMetadata;

.field private mIsAvailableNetwork:Z

.field private mIsLocalMode:Z

.field private mItem:Landroid/media/session/MediaSession$QueueItem;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mListLength:I

.field private mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

.field private final mPreventer:Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor$InputPreventHandler;

.field private mShuffle:I

.field private mShufflePositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSortMode:I

.field private mSortPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportLocalOnlyMode:Z

.field private final mSupportShuffleOrder:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 37
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/DebugCompat;->isProductDev()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->LOG_DEBUG:Z

    .line 131
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v1

    const-string/jumbo v3, "title"

    aput-object v3, v0, v2

    const-string v3, "artist"

    aput-object v3, v0, v5

    const-string v3, "duration"

    aput-object v3, v0, v6

    const-string v3, "album"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string v4, "genre_name"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "album_id"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "is_secretbox"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "sound_quality_data"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "cp_attrs"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string v4, "audio_id"

    aput-object v4, v0, v3

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->PROJECTION:[Ljava/lang/String;

    .line 155
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v1

    const-string v1, "android.media.metadata.TITLE"

    aput-object v1, v0, v2

    const-string v1, "android.media.metadata.ARTIST"

    aput-object v1, v0, v5

    const-string v1, "android.media.metadata.DURATION"

    aput-object v1, v0, v6

    const-string v1, "android.media.metadata.ALBUM"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "android.media.metadata.GENRE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.samsung.android.app.music.metadata.ALBUM_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.samsung.android.app.music.metadata.ATTRIBUTE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.samsung.android.app.music.metadata.SOUND_QUALITY_DATA"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.samsung.android.app.music.metadata.CP_ATTRS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->META_KEY:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 37
    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/List;Landroid/os/Bundle;Z)V
    .locals 2
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "supportShuffleOrder"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;-><init>()V

    .line 64
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSupportLocalOnlyMode:Z

    .line 66
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mIsLocalMode:Z

    .line 68
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mIsAvailableNetwork:Z

    .line 73
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor$InputPreventHandler;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor$InputPreventHandler;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mPreventer:Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor$InputPreventHandler;

    .line 77
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mList:Ljava/util/List;

    .line 78
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mList:Ljava/util/List;

    if-nez v1, :cond_0

    :goto_0
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mListLength:I

    .line 79
    iput-boolean p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSupportShuffleOrder:Z

    .line 80
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->setExtra(Landroid/os/Bundle;)V

    .line 81
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method private cleanPositions(Ljava/util/List;I)Ljava/util/List;
    .locals 5
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 323
    .local v3, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 324
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 325
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 326
    .local v2, "index":I
    if-ltz v2, :cond_0

    .line 327
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 328
    add-int/lit8 v0, v0, 0x1

    .line 324
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 331
    .end local v2    # "index":I
    :cond_1
    return-object v3
.end method

.method private ensureLocalOnlyPlayable()V
    .locals 4

    .prologue
    .line 500
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    if-nez v0, :cond_0

    .line 501
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mList:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mShufflePositions:Ljava/util/List;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSortPositions:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    .line 503
    :cond_0
    return-void
.end method

.method private getInternalQueuePosition(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 445
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->isShuffleModeOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 446
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    if-eqz v1, :cond_1

    .line 447
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->getShuffleQueuePosition(I)I

    move-result p1

    .line 463
    .end local p1    # "position":I
    :cond_0
    :goto_0
    return p1

    .line 449
    .restart local p1    # "position":I
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mShufflePositions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    .line 450
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->isSortModeOn()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 451
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    if-eqz v1, :cond_3

    .line 452
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->getSortQueuePosition(I)I

    move-result p1

    goto :goto_0

    .line 454
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSortPositions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    .line 455
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    if-eqz v1, :cond_0

    .line 456
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->getQueuePosition(I)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 458
    :catch_0
    move-exception v0

    .line 459
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v1, "SV-List"

    const-string v2, "getInternalQueuePosition but the index is out of bound, handle it go to first song."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private getLongValue(Landroid/media/MediaMetadata;Ljava/lang/String;)J
    .locals 3
    .param p1, "meta"    # Landroid/media/MediaMetadata;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 244
    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    invoke-virtual {p1, p2}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 251
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private getMediaId(Landroid/media/session/MediaSession$QueueItem;)J
    .locals 4
    .param p1, "item"    # Landroid/media/session/MediaSession$QueueItem;

    .prologue
    const-wide/16 v2, -0x1

    .line 228
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/session/MediaSession$QueueItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v1

    if-nez v1, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-wide v2

    .line 232
    :cond_1
    invoke-virtual {p1}, Landroid/media/session/MediaSession$QueueItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaDescription;->getMediaId()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 236
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0
.end method

.method private getMetaByColumnIndex(I)Landroid/media/MediaMetadata;
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 240
    const/4 v0, 0x6

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mCurrentMeta:Landroid/media/MediaMetadata;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mCurrentMetaOtherInfo:Landroid/media/MediaMetadata;

    goto :goto_0
.end method

.method private getStringValue(Landroid/media/MediaMetadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "meta"    # Landroid/media/MediaMetadata;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 255
    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    invoke-virtual {p1, p2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDeviceSortModeOn()Z
    .locals 2

    .prologue
    .line 492
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSortMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLocalModeEnabled()Z
    .locals 1

    .prologue
    .line 567
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSupportLocalOnlyMode:Z

    if-eqz v0, :cond_1

    .line 568
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->isDeviceSortModeOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mIsLocalMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mIsAvailableNetwork:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShuffleModeOn()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 488
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSupportShuffleOrder:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mShuffle:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSortModeOn()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 496
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSortMode:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateCursorPositions()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 412
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    if-eqz v0, :cond_1

    .line 416
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->move(I)Z

    .line 417
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->move(I)Z

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getCount()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 420
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->isFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 421
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->move(I)Z

    .line 422
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->move(I)Z

    goto :goto_0

    .line 424
    :cond_2
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->move(I)Z

    .line 425
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->move(I)Z

    goto :goto_0
.end method


# virtual methods
.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->getCount()I

    move-result v0

    .line 122
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mListLength:I

    goto :goto_0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 272
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 267
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public getInt(I)I
    .locals 4
    .param p1, "column"    # I

    .prologue
    .line 191
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mItem:Landroid/media/session/MediaSession$QueueItem;

    if-nez v2, :cond_0

    .line 192
    const/4 v2, -0x1

    .line 202
    :goto_0
    return v2

    .line 194
    :cond_0
    if-nez p1, :cond_1

    .line 195
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mItem:Landroid/media/session/MediaSession$QueueItem;

    invoke-virtual {v2}, Landroid/media/session/MediaSession$QueueItem;->getQueueId()J

    move-result-wide v2

    long-to-int v2, v2

    goto :goto_0

    .line 196
    :cond_1
    const/16 v2, 0xa

    if-ne p1, v2, :cond_2

    .line 197
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mItem:Landroid/media/session/MediaSession$QueueItem;

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getMediaId(Landroid/media/session/MediaSession$QueueItem;)J

    move-result-wide v2

    long-to-int v2, v2

    goto :goto_0

    .line 198
    :cond_2
    const/4 v2, 0x7

    if-ne p1, v2, :cond_4

    .line 199
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getMetaByColumnIndex(I)Landroid/media/MediaMetadata;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->META_KEY:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getLongValue(Landroid/media/MediaMetadata;Ljava/lang/String;)J

    move-result-wide v0

    .line 200
    .local v0, "attribute":J
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Content;->isPrivate(J)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 202
    .end local v0    # "attribute":J
    :cond_4
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getMetaByColumnIndex(I)Landroid/media/MediaMetadata;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->META_KEY:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getLongValue(Landroid/media/MediaMetadata;Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v2, v2

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 4
    .param p1, "column"    # I

    .prologue
    .line 212
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mItem:Landroid/media/session/MediaSession$QueueItem;

    if-nez v2, :cond_0

    .line 213
    const-wide/16 v2, -0x1

    .line 223
    :goto_0
    return-wide v2

    .line 215
    :cond_0
    if-nez p1, :cond_1

    .line 216
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mItem:Landroid/media/session/MediaSession$QueueItem;

    invoke-virtual {v2}, Landroid/media/session/MediaSession$QueueItem;->getQueueId()J

    move-result-wide v2

    goto :goto_0

    .line 217
    :cond_1
    const/16 v2, 0xa

    if-ne p1, v2, :cond_2

    .line 218
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mItem:Landroid/media/session/MediaSession$QueueItem;

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getMediaId(Landroid/media/session/MediaSession$QueueItem;)J

    move-result-wide v2

    goto :goto_0

    .line 219
    :cond_2
    const/4 v2, 0x7

    if-ne p1, v2, :cond_4

    .line 220
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getMetaByColumnIndex(I)Landroid/media/MediaMetadata;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->META_KEY:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getLongValue(Landroid/media/MediaMetadata;Ljava/lang/String;)J

    move-result-wide v0

    .line 221
    .local v0, "attribute":J
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Content;->isPrivate(J)Z

    move-result v2

    if-eqz v2, :cond_3

    const-wide/16 v2, 0x1

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 223
    .end local v0    # "attribute":J
    :cond_4
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getMetaByColumnIndex(I)Landroid/media/MediaMetadata;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->META_KEY:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getLongValue(Landroid/media/MediaMetadata;Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public getOrderedPosition(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 471
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->isShuffleModeOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 472
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    if-eqz v0, :cond_1

    .line 473
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->getShuffleOrderedPosition(I)I

    move-result p1

    .line 484
    .end local p1    # "position":I
    :cond_0
    :goto_0
    return p1

    .line 475
    .restart local p1    # "position":I
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mShufflePositions:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    .line 476
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->isSortModeOn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 477
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    if-eqz v0, :cond_3

    .line 478
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->getSortOrderedPosition(I)I

    move-result p1

    goto :goto_0

    .line 480
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSortPositions:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    .line 481
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->getOrderedQueuePosition(I)I

    move-result p1

    goto :goto_0
.end method

.method public getQueuePosition(I)I
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 436
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getInternalQueuePosition(I)I

    move-result p1

    .line 440
    return p1
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 183
    const/4 v0, -0x1

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getMetaByColumnIndex(I)Landroid/media/MediaMetadata;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->META_KEY:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getStringValue(Landroid/media/MediaMetadata;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNull(I)Z
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public isShuffleEnabled()Z
    .locals 1

    .prologue
    .line 507
    const/4 v0, 0x0

    return v0
.end method

.method public onMove(II)Z
    .locals 6
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    const/4 v3, 0x1

    .line 90
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mListLength:I

    if-lt p2, v2, :cond_0

    .line 91
    const-string v2, "SMUSIC-SV-List"

    const-string v3, "NowPlayingCursor fail to onMove. It over list length."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v2, 0x0

    .line 114
    :goto_0
    return v2

    .line 95
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    if-eqz v2, :cond_1

    .line 96
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    .line 97
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->isShuffleModeOn()Z

    move-result v4

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->isSortModeOn()Z

    move-result v5

    invoke-virtual {v2, v4, v5, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->getQueuePosition(ZZI)I

    move-result v1

    .line 98
    .local v1, "position":I
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaSession$QueueItem;

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mItem:Landroid/media/session/MediaSession$QueueItem;

    .line 102
    .end local v1    # "position":I
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mItem:Landroid/media/session/MediaSession$QueueItem;

    invoke-virtual {v2}, Landroid/media/session/MediaSession$QueueItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaDescription;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "com.google.android.music.mediasession.music_metadata"

    .line 103
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/media/MediaMetadata;

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mCurrentMeta:Landroid/media/MediaMetadata;

    .line 104
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mItem:Landroid/media/session/MediaSession$QueueItem;

    invoke-virtual {v2}, Landroid/media/session/MediaSession$QueueItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaDescription;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "com.samsung.android.app.music.metadata.music_metadata.META_OTHERS"

    .line 105
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/media/MediaMetadata;

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mCurrentMetaOtherInfo:Landroid/media/MediaMetadata;

    move v2, v3

    .line 114
    goto :goto_0

    .line 100
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mList:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getInternalQueuePosition(I)I

    move-result v4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaSession$QueueItem;

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mItem:Landroid/media/session/MediaSession$QueueItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 106
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SMUSIC-SV-List"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NowPlayingCursor fail to onMove "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 112
    goto :goto_0
.end method

.method public removeItems([I)V
    .locals 12
    .param p1, "positions"    # [I

    .prologue
    .line 282
    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mPreventer:Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor$InputPreventHandler;

    invoke-virtual {v9}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor$InputPreventHandler;->isPrevent()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 283
    const-string v9, "SMUSIC-SV-List"

    const-string v10, "NowPlayingCursor removeItems but prevent sequential event."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mPreventer:Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor$InputPreventHandler;

    invoke-virtual {v9}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor$InputPreventHandler;->setPreventEventForAwhile()V

    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, "count":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v7, "removeList":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    array-length v9, p1

    new-array v6, v9, [I

    .line 293
    .local v6, "queuePositions":[I
    :try_start_0
    array-length v10, p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x0

    move v1, v0

    .end local v0    # "count":I
    .local v1, "count":I
    :goto_1
    if-ge v9, v10, :cond_1

    :try_start_1
    aget v4, p1, v9

    .line 294
    .local v4, "position":I
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getQueuePosition(I)I

    move-result v5

    .line 295
    .local v5, "queuePos":I
    iget-object v11, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mList:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    .line 296
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    :try_start_2
    aput v5, v6, v1
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 293
    add-int/lit8 v9, v9, 0x1

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_1

    .line 298
    .end local v4    # "position":I
    .end local v5    # "queuePos":I
    :cond_1
    :try_start_3
    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mList:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    move v0, v1

    .line 305
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :goto_2
    :try_start_4
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->isSortModeOn()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 306
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 307
    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSortPositions:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    .line 308
    .local v8, "size":I
    array-length v9, p1

    add-int/lit8 v3, v9, -0x1

    .local v3, "i":I
    :goto_3
    if-ltz v3, :cond_2

    .line 309
    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSortPositions:Ljava/util/List;

    aget v10, p1, v3

    invoke-interface {v9, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    .line 308
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 299
    .end local v3    # "i":I
    .end local v8    # "size":I
    :catch_0
    move-exception v2

    .line 300
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_4
    const-string v9, "SMUSIC-SV-List"

    const-string v10, "NowPlayingCursor removeItems but wrong index. ignore this request."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 311
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v3    # "i":I
    .restart local v8    # "size":I
    :cond_2
    :try_start_5
    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSortPositions:Ljava/util/List;

    invoke-direct {p0, v9, v8}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->cleanPositions(Ljava/util/List;I)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSortPositions:Ljava/util/List;
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    .line 317
    .end local v3    # "i":I
    .end local v8    # "size":I
    :cond_3
    :goto_5
    const-string v9, "SMUSIC-SV-List"

    const-string v10, "NowPlayingCursor removeItems end"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->removeQueuePosition([I)I

    goto :goto_0

    .line 313
    :catch_1
    move-exception v2

    .line 314
    .restart local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v9, "SMUSIC-SV-List"

    const-string v10, "NowPlayingCursor sort removeItems but wrong index. ignore this request."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 299
    .end local v0    # "count":I
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v1    # "count":I
    :catch_2
    move-exception v2

    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_4
.end method

.method public reorder(II)V
    .locals 5
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 340
    if-ne p1, p2, :cond_0

    .line 356
    :goto_0
    return-void

    .line 343
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mList:Ljava/util/List;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/media/session/MediaSession$QueueItem;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/session/MediaSession$QueueItem;

    .line 344
    .local v0, "list":[Landroid/media/session/MediaSession$QueueItem;
    aget-object v2, v0, p1

    .line 345
    .local v2, "tmp":Landroid/media/session/MediaSession$QueueItem;
    if-ge p1, p2, :cond_2

    .line 346
    add-int/lit8 v3, p1, 0x1

    sub-int v4, p2, p1

    invoke-static {v0, v3, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 350
    :cond_1
    :goto_1
    aput-object v2, v0, p2

    .line 351
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mList:Ljava/util/List;

    .line 352
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getPosition()I

    move-result v1

    .line 354
    .local v1, "pos":I
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->onMove(II)Z

    .line 355
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->moveQueueItem(II)V

    goto :goto_0

    .line 347
    .end local v1    # "pos":I
    :cond_2
    if-le p1, p2, :cond_1

    .line 348
    add-int/lit8 v3, p2, 0x1

    sub-int v4, p1, p2

    invoke-static {v0, p2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method

.method public setAvailableNetwork(Z)V
    .locals 1
    .param p1, "isAvailable"    # Z

    .prologue
    .line 544
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSupportLocalOnlyMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mIsAvailableNetwork:Z

    if-ne p1, v0, :cond_1

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mIsAvailableNetwork:Z

    .line 548
    if-nez p1, :cond_3

    .line 549
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->ensureLocalOnlyPlayable()V

    .line 562
    :cond_2
    :goto_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->move(I)Z

    .line 563
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->move(I)Z

    goto :goto_0

    .line 551
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->isLocalModeEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 552
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    goto :goto_1
.end method

.method public setExtra(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 360
    if-nez p1, :cond_0

    .line 402
    :goto_0
    return-void

    .line 363
    :cond_0
    const-string v4, "com.samsung.android.app.music.core.state.queue.MODE_VALUES"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 364
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 365
    const-string v4, "extra.shuffle_list"

    .line 366
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mShufflePositions:Ljava/util/List;

    .line 367
    const-string v4, "extra.shuffle_state"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mShuffle:I

    .line 368
    const-string v4, "extra.sort_list"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSortPositions:Ljava/util/List;

    .line 369
    const-string v4, "extra.sort_state"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSortMode:I

    .line 378
    :goto_1
    sget-boolean v4, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->LOG_DEBUG:Z

    if-eqz v4, :cond_3

    .line 379
    const-string v3, "SV-List"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NowPlayingCursor setExtra mShuffle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mShuffle:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mShufflePositions : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mShufflePositions:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  sortMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSortMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mSortPositions : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSortPositions:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    if-nez v3, :cond_6

    .line 391
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->isLocalModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 392
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->ensureLocalOnlyPlayable()V

    .line 401
    :cond_1
    :goto_3
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->updateCursorPositions()V

    goto :goto_0

    .line 371
    :cond_2
    const-string v4, "extra.shuffle_list"

    .line 372
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mShufflePositions:Ljava/util/List;

    .line 373
    const-string v4, "extra.shuffle_state"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mShuffle:I

    .line 374
    const-string v4, "extra.sort_list"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSortPositions:Ljava/util/List;

    .line 375
    const-string v4, "extra.sort_state"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSortMode:I

    goto :goto_1

    .line 384
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mShufflePositions:Ljava/util/List;

    if-nez v4, :cond_4

    move v1, v3

    .line 385
    .local v1, "shuffleSize":I
    :goto_4
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSortPositions:Ljava/util/List;

    if-nez v4, :cond_5

    move v2, v3

    .line 386
    .local v2, "sortSize":I
    :goto_5
    const-string v3, "SV-List"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NowPlayingCursor setExtra mShuffle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mShuffle:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mShuffle size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  sortMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSortMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mSort size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 384
    .end local v1    # "shuffleSize":I
    .end local v2    # "sortSize":I
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mShufflePositions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_4

    .line 385
    .restart local v1    # "shuffleSize":I
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSortPositions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_5

    .line 395
    .end local v1    # "shuffleSize":I
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->isLocalModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 396
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mShufflePositions:Ljava/util/List;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSortPositions:Ljava/util/List;

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->setOrderPositions(Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_3

    .line 398
    :cond_7
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    goto/16 :goto_3
.end method

.method public setLocalMode(Z)V
    .locals 1
    .param p1, "isLocalMode"    # Z

    .prologue
    .line 512
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSupportLocalOnlyMode:Z

    if-nez v0, :cond_0

    .line 532
    :goto_0
    return-void

    .line 515
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mIsLocalMode:Z

    .line 516
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mIsLocalMode:Z

    if-eqz v0, :cond_2

    .line 517
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->ensureLocalOnlyPlayable()V

    .line 530
    :cond_1
    :goto_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->move(I)Z

    .line 531
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->move(I)Z

    goto :goto_0

    .line 519
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->isLocalModeEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 520
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mLocalOnlyPlayable:Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;

    goto :goto_1
.end method

.method public setSupportLocalMode(Z)V
    .locals 1
    .param p1, "isSupported"    # Z

    .prologue
    .line 536
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->mSupportLocalOnlyMode:Z

    .line 537
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->isLocalModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->ensureLocalOnlyPlayable()V

    .line 540
    :cond_0
    return-void
.end method
