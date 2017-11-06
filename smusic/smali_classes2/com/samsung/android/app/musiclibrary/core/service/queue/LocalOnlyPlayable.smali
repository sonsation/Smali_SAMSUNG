.class final Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;
.super Ljava/lang/Object;
.source "LocalOnlyPlayable.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-List"

.field private static final TAG:Ljava/lang/String; = "SV-List"


# instance fields
.field private mLocalPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    .local p2, "shufflePositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, "sortPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->makeLocalPositions(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->mLocalPositions:Ljava/util/List;

    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->mLocalPositions:Ljava/util/List;

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->makePositions(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->mShufflePositions:Ljava/util/List;

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->mLocalPositions:Ljava/util/List;

    invoke-direct {p0, p3, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->makePositions(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->mSortPositions:Ljava/util/List;

    .line 39
    return-void
.end method

.method private makeLocalPositions(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v3, "localPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 57
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaSession$QueueItem;

    .line 58
    .local v2, "item":Landroid/media/session/MediaSession$QueueItem;
    invoke-virtual {v2}, Landroid/media/session/MediaSession$QueueItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaDescription;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "com.samsung.android.app.music.metadata.music_metadata.META_OTHERS"

    .line 59
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/media/MediaMetadata;

    .line 60
    .local v4, "meta":Landroid/media/MediaMetadata;
    const-string v5, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {v4, v5}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v0, v6

    .line 61
    .local v0, "cpAttrs":I
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs;->isLocal(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    .end local v0    # "cpAttrs":I
    .end local v2    # "item":Landroid/media/session/MediaSession$QueueItem;
    .end local v4    # "meta":Landroid/media/MediaMetadata;
    :cond_1
    return-object v3
.end method

.method private makePositions(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "localPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 70
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 78
    :cond_1
    return-object v0

    .line 72
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v0, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 74
    .local v1, "pos":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_3

    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method getCount()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->mLocalPositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method getOrderedQueuePosition(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->mLocalPositions:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method getQueuePosition(I)I
    .locals 2
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->mLocalPositions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    throw v0
.end method

.method getQueuePosition(ZZI)I
    .locals 3
    .param p1, "isShuffle"    # Z
    .param p2, "isSort"    # Z
    .param p3, "position"    # I

    .prologue
    .line 90
    if-eqz p1, :cond_0

    .line 91
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->getShuffleQueuePosition(I)I

    move-result p3

    .line 102
    :goto_0
    return p3

    .line 92
    :cond_0
    if-eqz p2, :cond_1

    .line 93
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->getSortQueuePosition(I)I

    move-result p3

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->getQueuePosition(I)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v1, "SV-List"

    const-string v2, "LocalOnlyPlayable getQueuePosition but the index is out of bound, handle it go to first song."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 p3, 0x0

    goto :goto_0
.end method

.method getShuffleOrderedPosition(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->mShufflePositions:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method getShuffleQueuePosition(I)I
    .locals 2
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->mShufflePositions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    throw v0
.end method

.method getSortOrderedPosition(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->mSortPositions:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method getSortQueuePosition(I)I
    .locals 2
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->mSortPositions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    throw v0
.end method

.method setOrderPositions(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "shufflePositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "sortPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->mLocalPositions:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->makePositions(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->mShufflePositions:Ljava/util/List;

    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->mLocalPositions:Ljava/util/List;

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->makePositions(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LocalOnlyPlayable;->mSortPositions:Ljava/util/List;

    .line 49
    return-void
.end method
