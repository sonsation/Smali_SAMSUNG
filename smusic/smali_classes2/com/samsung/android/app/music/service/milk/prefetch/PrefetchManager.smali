.class public Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;
.super Ljava/lang/Object;
.source "PrefetchManager.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/prefetch/IPrefetchManager;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_PREFETCH_RETRY_COUNT:I = 0x3

.field public static final NOTIFY_PREFETCH_DONE:Ljava/lang/String; = "com.samsung.common.service.prefetch.notify_prefetch_done"

.field private static volatile sInstance:Lcom/samsung/android/app/music/service/milk/prefetch/IPrefetchManager;


# instance fields
.field private coldStart:Z

.field protected mContext:Landroid/content/Context;

.field private mNotifyToGear:Z

.field private final mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

.field private numRetryCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->LOG_TAG:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->sInstance:Lcom/samsung/android/app/music/service/milk/prefetch/IPrefetchManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->coldStart:Z

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->numRetryCount:I

    .line 558
    new-instance v0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager$3;-><init>(Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->mContext:Landroid/content/Context;

    .line 65
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;)V

    .line 66
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private checkDeleteStationValidation(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/Station;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 375
    .local p1, "stations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Station;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v0, "recoverIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Station;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/Station;

    .line 378
    .local v1, "station":Lcom/samsung/android/app/music/common/model/Station;
    const-string v3, "2"

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Station;->getGenreType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "03"

    .line 379
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Station;->getStationType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 380
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 384
    .end local v1    # "station":Lcom/samsung/android/app/music/common/model/Station;
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/Station;

    .line 385
    .restart local v1    # "station":Lcom/samsung/android/app/music/common/model/Station;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 387
    .end local v1    # "station":Lcom/samsung/android/app/music/common/model/Station;
    :cond_2
    return-void
.end method

.method private getAllNotHiddenStationSize(Ljava/util/ArrayList;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/Station;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "allStation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Station;>;"
    const/4 v0, 0x0

    .line 86
    .local v0, "ret":I
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 87
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/Station;

    .line 88
    .local v1, "station":Lcom/samsung/android/app/music/common/model/Station;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Station;->isHiddenStation()Z

    move-result v3

    if-nez v3, :cond_0

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    .end local v1    # "station":Lcom/samsung/android/app/music/common/model/Station;
    :cond_1
    sget-object v2, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAllNotHiddenStationSize >> AllStation ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") Not Hidden Station("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_2
    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/prefetch/IPrefetchManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    sget-object v0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->sInstance:Lcom/samsung/android/app/music/service/milk/prefetch/IPrefetchManager;

    if-nez v0, :cond_0

    .line 70
    const-class v1, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;

    monitor-enter v1

    .line 71
    :try_start_0
    new-instance v0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->sInstance:Lcom/samsung/android/app/music/service/milk/prefetch/IPrefetchManager;

    .line 72
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->sInstance:Lcom/samsung/android/app/music/service/milk/prefetch/IPrefetchManager;

    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private insertOrUpdateToAlbumDb(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/Station;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 364
    .local p1, "stations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Station;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/Station;

    .line 365
    .local v0, "station":Lcom/samsung/android/app/music/common/model/Station;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Station;->getTracks()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Station;->getTracks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 366
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Station;->getTracks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 367
    .local v1, "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    .line 368
    .local v2, "value":Landroid/content/ContentValues;
    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails;->MILK_ALBUM:Landroid/net/Uri;

    invoke-static {v5, v6, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->insert(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 372
    .end local v0    # "station":Lcom/samsung/android/app/music/common/model/Station;
    .end local v1    # "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    .end local v2    # "value":Landroid/content/ContentValues;
    :cond_1
    return-void
.end method

.method private startPrefetch(IZ)V
    .locals 6
    .param p1, "appId"    # I
    .param p2, "shouldClearCache"    # Z

    .prologue
    .line 78
    const/4 v3, 0x0

    .line 79
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/PrefetchWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    move v2, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/PrefetchWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;Z)V

    .line 80
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/PrefetchWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/PrefetchWorker;->doWork()V

    .line 81
    return-void
.end method


# virtual methods
.method public doPrefetchChunkData(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "chunkUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 439
    sget-object v3, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "doPrefetchChunkData >> doPrefetchChunkData is called"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/GenreDAO;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->updatePrefetchedAll(I)Z

    .line 442
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->mContext:Landroid/content/Context;

    const-string v4, "com.samsung.radio.prefetch.manager.prefetch_delayed"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/music/common/preferences/Pref;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 443
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->mContext:Landroid/content/Context;

    const-string v4, "com.samsung.radio.prefetch.manager.prefetch_delayed_chunk_urls"

    invoke-static {v3, v4, v7}, Lcom/samsung/android/app/music/common/preferences/Pref;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-boolean v3, p0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->mNotifyToGear:Z

    if-eqz v3, :cond_0

    .line 446
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.common.service.prefetch.notify_prefetch_done"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 447
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 454
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->mContext:Landroid/content/Context;

    const-string v4, "com.samsung.radio.prefetch.manager.prefetch_stations_fetched"

    invoke-static {v3, v4, v6}, Lcom/samsung/android/app/music/common/preferences/Pref;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 456
    sget-object v3, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "doPrefetchChunkData >> KEY_PREFETCH_IS_REQUESTING set false"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->mContext:Landroid/content/Context;

    const-string v4, "com.samsung.radio.prefetch.manager.prefetch_is_requesting"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/music/common/preferences/Pref;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 459
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->notifyPrefetchStatus(I)V

    .line 461
    sget-object v3, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "doPrefetchChunkData >> hide loading"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    sget-object v3, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "doPrefetchChunkData >> Download file START"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-boolean v3, p0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->coldStart:Z

    if-nez v3, :cond_1

    .line 468
    sget-object v3, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "doPrefetchChunkData >> colstart is false, what?"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->mContext:Landroid/content/Context;

    const-string v4, "com.samsung.radio.prefetch.manager.prefetch_delayed"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/music/common/preferences/Pref;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 470
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->mContext:Landroid/content/Context;

    const-string v4, "com.samsung.radio.prefetch.manager.prefetch_delayed_chunk_urls"

    invoke-static {v3, v4, v7}, Lcom/samsung/android/app/music/common/preferences/Pref;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    :goto_0
    return-void

    .line 473
    :cond_1
    if-nez p1, :cond_2

    .line 474
    sget-object v3, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "doPrefetchChunkData >> chunkUrls is null"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->mContext:Landroid/content/Context;

    const-string v4, "com.samsung.radio.prefetch.manager.prefetch_delayed"

    invoke-static {v3, v4, v6}, Lcom/samsung/android/app/music/common/preferences/Pref;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 479
    :cond_2
    new-instance v1, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager$1;-><init>(Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;Ljava/util/ArrayList;)V

    .line 501
    .local v1, "runnable":Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager$2;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager$2;-><init>(Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;Ljava/lang/Runnable;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 507
    .local v2, "thread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->run()V

    .line 510
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->mContext:Landroid/content/Context;

    const-string v4, "com.samsung.radio.prefetch.manager.prefetch_delayed"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/music/common/preferences/Pref;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 511
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->mContext:Landroid/content/Context;

    const-string v4, "com.samsung.radio.prefetch.manager.prefetch_delayed_chunk_urls"

    invoke-static {v3, v4, v7}, Lcom/samsung/android/app/music/common/preferences/Pref;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    sget-object v3, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "doPrefetchChunkData >> Download file END"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;)V

    goto :goto_0
.end method

.method public declared-synchronized handlePrefetchChunkData(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 46
    .param p2, "initGenreVisible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/PrefetchData;",
            ">;Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "prefetchData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/PrefetchData;>;"
    monitor-enter p0

    const/16 v35, 0x0

    .line 108
    .local v35, "stationCount":I
    :try_start_0
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v22, "insertStations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Station;>;"
    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v39, "updateStations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Station;>;"
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v40, "updateStationsOrdinalOnly":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Station;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v13, "deleteStations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Station;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v21, "insertGenres":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Genre;>;"
    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v38, "updateGenres":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Genre;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v12, "deleteGenres":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Genre;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v4, "allPrefetchGenre":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Genre;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v3, "allGenres":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Genre;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v14, "finalChunkUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v11, "defaultChunkUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v26, "otherChunkUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v36, Ljava/util/HashMap;

    invoke-direct/range {v36 .. v36}, Ljava/util/HashMap;-><init>()V

    .line 124
    .local v36, "stationMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Station;>;>;"
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 127
    .local v16, "genreMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/app/music/common/model/Genre;>;"
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/GenreDAO;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getAllGenres()Ljava/util/ArrayList;

    move-result-object v3

    .line 128
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v42

    :goto_0
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_0

    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/app/music/common/model/Genre;

    .line 129
    .local v15, "genre":Lcom/samsung/android/app/music/common/model/Genre;
    invoke-virtual {v15}, Lcom/samsung/android/app/music/common/model/Genre;->getGenreId()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v16

    move-object/from16 v1, v43

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 106
    .end local v3    # "allGenres":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Genre;>;"
    .end local v4    # "allPrefetchGenre":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Genre;>;"
    .end local v11    # "defaultChunkUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "deleteGenres":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Genre;>;"
    .end local v13    # "deleteStations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Station;>;"
    .end local v14    # "finalChunkUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15    # "genre":Lcom/samsung/android/app/music/common/model/Genre;
    .end local v16    # "genreMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/app/music/common/model/Genre;>;"
    .end local v21    # "insertGenres":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Genre;>;"
    .end local v22    # "insertStations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Station;>;"
    .end local v26    # "otherChunkUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v36    # "stationMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Station;>;>;"
    .end local v38    # "updateGenres":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Genre;>;"
    .end local v39    # "updateStations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Station;>;"
    .end local v40    # "updateStationsOrdinalOnly":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Station;>;"
    :catchall_0
    move-exception v42

    monitor-exit p0

    throw v42

    .line 133
    .restart local v3    # "allGenres":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Genre;>;"
    .restart local v4    # "allPrefetchGenre":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Genre;>;"
    .restart local v11    # "defaultChunkUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "deleteGenres":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Genre;>;"
    .restart local v13    # "deleteStations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Station;>;"
    .restart local v14    # "finalChunkUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16    # "genreMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/app/music/common/model/Genre;>;"
    .restart local v21    # "insertGenres":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Genre;>;"
    .restart local v22    # "insertStations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Station;>;"
    .restart local v26    # "otherChunkUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v36    # "stationMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Station;>;>;"
    .restart local v38    # "updateGenres":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Genre;>;"
    .restart local v39    # "updateStations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Station;>;"
    .restart local v40    # "updateStationsOrdinalOnly":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Station;>;"
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationDAO;

    move-result-object v42

    const/16 v43, 0x0

    new-instance v44, Ljava/util/ArrayList;

    invoke-direct/range {v44 .. v44}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v42 .. v44}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getModels(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v37

    .line 134
    .local v37, "stations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Station;>;"
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v42

    :goto_1
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_2

    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/samsung/android/app/music/common/model/Station;

    .line 135
    .local v34, "station":Lcom/samsung/android/app/music/common/model/Station;
    invoke-virtual/range {v34 .. v34}, Lcom/samsung/android/app/music/common/model/Station;->getGenreId()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v36

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/ArrayList;

    .line 136
    .local v25, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Station;>;"
    if-nez v25, :cond_1

    .line 137
    new-instance v25, Ljava/util/ArrayList;

    .end local v25    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Station;>;"
    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .restart local v25    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Station;>;"
    invoke-virtual/range {v34 .. v34}, Lcom/samsung/android/app/music/common/model/Station;->getGenreId()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v36

    move-object/from16 v1, v43

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_1
    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 145
    .end local v25    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Station;>;"
    .end local v34    # "station":Lcom/samsung/android/app/music/common/model/Station;
    :cond_2
    const/16 v20, -0x1

    .line 147
    .local v20, "indexOfUpdateGenre":I
    if-eqz p1, :cond_18

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v42

    if-eqz v42, :cond_18

    .line 148
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v35

    .line 151
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v42

    move/from16 v0, v19

    move/from16 v1, v42

    if-ge v0, v1, :cond_f

    .line 152
    const/16 v24, 0x0

    .line 153
    .local v24, "lastUpdateTime":Ljava/lang/String;
    const/16 v18, 0x0

    .line 154
    .local v18, "genre_id":Ljava/lang/String;
    const/16 v17, 0x0

    .line 155
    .local v17, "genreName":Ljava/lang/String;
    const/4 v15, 0x0

    .line 156
    .restart local v15    # "genre":Lcom/samsung/android/app/music/common/model/Genre;
    const/16 v42, 0x0

    invoke-static/range {v42 .. v42}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 157
    .local v5, "allStationIsEmpty":Ljava/lang/Boolean;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v6, "allStations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Station;>;"
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/samsung/android/app/music/common/model/PrefetchData;

    .line 161
    .local v32, "singlePrefetchData":Lcom/samsung/android/app/music/common/model/PrefetchData;
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/samsung/android/app/music/common/model/PrefetchData;->stationList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v42

    if-lez v42, :cond_3

    .line 162
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/samsung/android/app/music/common/model/PrefetchData;->stationList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    invoke-virtual/range {v42 .. v43}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual/range {v42 .. v42}, Lcom/samsung/android/app/music/common/model/Station;->getGenreId()Ljava/lang/String;

    move-result-object v18

    .line 163
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/samsung/android/app/music/common/model/PrefetchData;->stationList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    invoke-virtual/range {v42 .. v43}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual/range {v42 .. v42}, Lcom/samsung/android/app/music/common/model/Station;->getGenre()Ljava/lang/String;

    move-result-object v17

    .line 164
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/samsung/android/app/music/common/model/PrefetchData;->genreTypeCode:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/common/model/Genre;->createGenre(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Genre;

    move-result-object v15

    .line 166
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/samsung/android/app/music/common/model/PrefetchData;->fileUpdatedDate:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    invoke-virtual {v15, v0}, Lcom/samsung/android/app/music/common/model/Genre;->setLastUpdateTime(Ljava/lang/String;)V

    .line 167
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_5

    .line 168
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/samsung/android/app/music/common/model/Genre;

    invoke-virtual/range {v42 .. v42}, Lcom/samsung/android/app/music/common/model/Genre;->getLastUpdateTime()Ljava/lang/String;

    move-result-object v24

    .line 170
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/samsung/android/app/music/common/model/Genre;

    invoke-virtual/range {v42 .. v42}, Lcom/samsung/android/app/music/common/model/Genre;->getVisible()I

    move-result v41

    .line 171
    .local v41, "visible":I
    move/from16 v0, v41

    invoke-virtual {v15, v0}, Lcom/samsung/android/app/music/common/model/Genre;->setVisible(I)V

    .line 172
    move-object/from16 v0, v38

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    add-int/lit8 v20, v20, 0x1

    .line 177
    .end local v41    # "visible":I
    :goto_3
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    move-object/from16 v0, v36

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "allStations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Station;>;"
    check-cast v6, Ljava/util/ArrayList;

    .line 180
    .restart local v6    # "allStations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Station;>;"
    if-nez v6, :cond_3

    .line 181
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "allStations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Station;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .restart local v6    # "allStations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Station;>;"
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->mContext:Landroid/content/Context;

    move-object/from16 v42, v0

    const-string v43, "com.samsung.radio.prefetch.manager.prefetch_stations_fetched"

    const/16 v44, 0x0

    .line 190
    invoke-static/range {v42 .. v44}, Lcom/samsung/android/app/music/common/preferences/Pref;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v29

    .line 191
    .local v29, "prefetched":Z
    if-eqz v24, :cond_6

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/samsung/android/app/music/common/model/PrefetchData;->fileUpdatedDate:Ljava/lang/String;

    move-object/from16 v42, v0

    if-eqz v42, :cond_6

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/samsung/android/app/music/common/model/PrefetchData;->fileUpdatedDate:Ljava/lang/String;

    move-object/from16 v42, v0

    .line 192
    move-object/from16 v0, v24

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_6

    if-eqz v29, :cond_6

    .line 193
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->getAllNotHiddenStationSize(Ljava/util/ArrayList;)I

    move-result v42

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/samsung/android/app/music/common/model/PrefetchData;->stationList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    .line 194
    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->size()I

    move-result v43

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_6

    .line 196
    sget-object v42, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->LOG_TAG:Ljava/lang/String;

    const-string v43, "handlePrefetchChunkData >> last update time is same, segment url list do not update"

    invoke-static/range {v42 .. v43}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    move-object/from16 v0, v38

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 199
    add-int/lit8 v20, v20, -0x1

    .line 241
    :cond_4
    const/16 v23, 0x0

    .local v23, "k":I
    :goto_4
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/samsung/android/app/music/common/model/PrefetchData;->stationList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v42

    move/from16 v0, v23

    move/from16 v1, v42

    if-ge v0, v1, :cond_e

    .line 242
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/samsung/android/app/music/common/model/PrefetchData;->stationList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/samsung/android/app/music/common/model/Station;

    .line 243
    .local v33, "singleStation":Lcom/samsung/android/app/music/common/model/Station;
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/samsung/android/app/music/common/model/PrefetchData;->fileUpdatedDate:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/Station;->setGenreLastUpdated(Ljava/lang/String;)V

    .line 245
    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_d

    .line 246
    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/app/music/common/model/Station;->getLastUpdated()Ljava/lang/String;

    move-result-object v28

    .line 247
    .local v28, "prefetchLastUpdated":Ljava/lang/String;
    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v42

    move/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/samsung/android/app/music/common/model/Station;

    .line 248
    invoke-virtual/range {v42 .. v42}, Lcom/samsung/android/app/music/common/model/Station;->getLastUpdated()Ljava/lang/String;

    move-result-object v10

    .line 251
    .local v10, "dbLastUpdated":Ljava/lang/String;
    if-eqz v28, :cond_c

    .line 252
    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_c

    .line 253
    const-string v42, "01"

    move-object/from16 v0, v33

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/Station;->setStationType(Ljava/lang/String;)V

    .line 254
    move-object/from16 v0, v39

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    sget-object v42, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->LOG_TAG:Ljava/lang/String;

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "handlePrefetchChunkData >> Update Station name is "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    .line 256
    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/app/music/common/model/Station;->getStationName()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    .line 255
    invoke-static/range {v42 .. v43}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .end local v10    # "dbLastUpdated":Ljava/lang/String;
    .end local v28    # "prefetchLastUpdated":Ljava/lang/String;
    :goto_5
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_4

    .line 175
    .end local v23    # "k":I
    .end local v29    # "prefetched":Z
    .end local v33    # "singleStation":Lcom/samsung/android/app/music/common/model/Station;
    :cond_5
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 206
    .restart local v29    # "prefetched":Z
    :cond_6
    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/app/music/common/model/PrefetchData;->getSegmentUrl()Ljava/lang/String;

    move-result-object v42

    if-eqz v42, :cond_4

    .line 207
    const-string v42, "2"

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/samsung/android/app/music/common/model/PrefetchData;->genreTypeCode:Ljava/lang/String;

    move-object/from16 v43, v0

    .line 208
    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_9

    .line 209
    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/app/music/common/model/PrefetchData;->getSegmentUrl()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    :goto_6
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v42

    if-nez v42, :cond_4

    .line 218
    const/16 v30, 0x0

    .local v30, "q":I
    :goto_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v42

    move/from16 v0, v30

    move/from16 v1, v42

    if-ge v0, v1, :cond_4

    .line 219
    const/4 v8, 0x1

    .line 220
    .local v8, "bDeleteStation":Z
    const/16 v31, 0x0

    .local v31, "r":I
    :goto_8
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/samsung/android/app/music/common/model/PrefetchData;->stationList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v42

    move/from16 v0, v31

    move/from16 v1, v42

    if-ge v0, v1, :cond_7

    .line 221
    move/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual/range {v42 .. v42}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/samsung/android/app/music/common/model/PrefetchData;->stationList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    .line 222
    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/samsung/android/app/music/common/model/Station;

    .line 223
    invoke-virtual/range {v42 .. v42}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v42

    .line 222
    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_b

    .line 224
    const/4 v8, 0x0

    .line 230
    :cond_7
    if-eqz v8, :cond_8

    .line 231
    move/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v43, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->LOG_TAG:Ljava/lang/String;

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "handlePrefetchChunkData >> delete Station name is "

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 234
    move/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual/range {v42 .. v42}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v44

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    .line 232
    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_8
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_7

    .line 210
    .end local v8    # "bDeleteStation":Z
    .end local v30    # "q":I
    .end local v31    # "r":I
    :cond_9
    const-string v42, "3"

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/samsung/android/app/music/common/model/PrefetchData;->genreTypeCode:Ljava/lang/String;

    move-object/from16 v43, v0

    .line 211
    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_a

    .line 212
    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/app/music/common/model/PrefetchData;->getSegmentUrl()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 214
    :cond_a
    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/app/music/common/model/PrefetchData;->getSegmentUrl()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 227
    .restart local v8    # "bDeleteStation":Z
    .restart local v30    # "q":I
    .restart local v31    # "r":I
    :cond_b
    const/4 v8, 0x1

    .line 220
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_8

    .line 258
    .end local v8    # "bDeleteStation":Z
    .end local v30    # "q":I
    .end local v31    # "r":I
    .restart local v10    # "dbLastUpdated":Ljava/lang/String;
    .restart local v23    # "k":I
    .restart local v28    # "prefetchLastUpdated":Ljava/lang/String;
    .restart local v33    # "singleStation":Lcom/samsung/android/app/music/common/model/Station;
    :cond_c
    move-object/from16 v0, v40

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 262
    .end local v10    # "dbLastUpdated":Ljava/lang/String;
    .end local v28    # "prefetchLastUpdated":Ljava/lang/String;
    :cond_d
    const-string v42, "01"

    move-object/from16 v0, v33

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/Station;->setStationType(Ljava/lang/String;)V

    .line 263
    move-object/from16 v0, v22

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    sget-object v42, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->LOG_TAG:Ljava/lang/String;

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "handlePrefetchChunkData >> Insert Station name is "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    .line 265
    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/app/music/common/model/Station;->getStationName()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    .line 264
    invoke-static/range {v42 .. v43}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 151
    .end local v33    # "singleStation":Lcom/samsung/android/app/music/common/model/Station;
    :cond_e
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_2

    .line 270
    .end local v5    # "allStationIsEmpty":Ljava/lang/Boolean;
    .end local v6    # "allStations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Station;>;"
    .end local v15    # "genre":Lcom/samsung/android/app/music/common/model/Genre;
    .end local v17    # "genreName":Ljava/lang/String;
    .end local v18    # "genre_id":Ljava/lang/String;
    .end local v23    # "k":I
    .end local v24    # "lastUpdateTime":Ljava/lang/String;
    .end local v29    # "prefetched":Z
    .end local v32    # "singlePrefetchData":Lcom/samsung/android/app/music/common/model/PrefetchData;
    :cond_f
    sget-object v42, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->LOG_TAG:Ljava/lang/String;

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "handlePrefetchChunkData >> allGenres size is "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    sget-object v42, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->LOG_TAG:Ljava/lang/String;

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "handlePrefetchChunkData >> allPrefetchGenre size is "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    .line 272
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    .line 271
    invoke-static/range {v42 .. v43}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v42

    if-nez v42, :cond_14

    .line 275
    const/16 v30, 0x0

    .restart local v30    # "q":I
    :goto_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v42

    move/from16 v0, v30

    move/from16 v1, v42

    if-ge v0, v1, :cond_14

    .line 276
    const/4 v7, 0x0

    .line 277
    .local v7, "bDeleteGenre":Z
    const/16 v31, 0x0

    .restart local v31    # "r":I
    :goto_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v42

    move/from16 v0, v31

    move/from16 v1, v42

    if-ge v0, v1, :cond_11

    .line 278
    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/samsung/android/app/music/common/model/Genre;

    invoke-virtual/range {v42 .. v42}, Lcom/samsung/android/app/music/common/model/Genre;->getGenreId()Ljava/lang/String;

    move-result-object v43

    .line 279
    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/samsung/android/app/music/common/model/Genre;

    invoke-virtual/range {v42 .. v42}, Lcom/samsung/android/app/music/common/model/Genre;->getGenreId()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_10

    .line 280
    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/samsung/android/app/music/common/model/Genre;

    invoke-virtual/range {v42 .. v42}, Lcom/samsung/android/app/music/common/model/Genre;->isHiddenGenre()Z

    move-result v42

    if-eqz v42, :cond_13

    .line 281
    :cond_10
    const/4 v7, 0x0

    .line 287
    :cond_11
    if-eqz v7, :cond_12

    .line 288
    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_12
    add-int/lit8 v30, v30, 0x1

    goto :goto_9

    .line 284
    :cond_13
    const/4 v7, 0x1

    .line 277
    add-int/lit8 v31, v31, 0x1

    goto :goto_a

    .line 297
    .end local v7    # "bDeleteGenre":Z
    .end local v30    # "q":I
    .end local v31    # "r":I
    :cond_14
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v42

    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->size()I

    move-result v43

    add-int v42, v42, v43

    if-lez v42, :cond_15

    const/16 v42, 0x1

    :goto_b
    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->mNotifyToGear:Z

    .line 301
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/GenreDAO;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v12}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->delete(Ljava/util/Collection;)I

    .line 302
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 304
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/GenreDAO;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->insertWithTx(Ljava/util/Collection;)I

    .line 305
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    .line 307
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/GenreDAO;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->updateWithTx(Ljava/util/Collection;)I

    .line 308
    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->clear()V

    .line 310
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->checkDeleteStationValidation(Ljava/util/ArrayList;)V

    .line 311
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationDAO;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v13}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->delete(Ljava/util/Collection;)I

    .line 312
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 314
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationDAO;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->insertWithTx(Ljava/util/Collection;)I

    .line 315
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->insertOrUpdateToAlbumDb(Ljava/util/ArrayList;)V

    .line 316
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    .line 318
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationDAO;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->updateWithTx(Ljava/util/Collection;)I

    .line 319
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->insertOrUpdateToAlbumDb(Ljava/util/ArrayList;)V

    .line 320
    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->clear()V

    .line 322
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationDAO;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->updateOnlyOrdinalMetadata(Ljava/util/List;)Z

    .line 323
    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->clear()V

    .line 327
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/GenreDAO;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->deleteEmptyStationGenre()V

    .line 331
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 332
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v42

    :goto_c
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_16

    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/samsung/android/app/music/common/model/PrefetchData;

    .line 333
    .local v27, "prefetch":Lcom/samsung/android/app/music/common/model/PrefetchData;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/android/app/music/common/model/PrefetchData;->stationList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-virtual/range {v43 .. v44}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/samsung/android/app/music/common/model/Station;

    .line 334
    .restart local v34    # "station":Lcom/samsung/android/app/music/common/model/Station;
    invoke-virtual/range {v34 .. v34}, Lcom/samsung/android/app/music/common/model/Station;->getGenreId()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v34 .. v34}, Lcom/samsung/android/app/music/common/model/Station;->getGenre()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/android/app/music/common/model/PrefetchData;->genreTypeCode:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-static/range {v43 .. v45}, Lcom/samsung/android/app/music/common/model/Genre;->createGenre(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Genre;

    move-result-object v15

    .line 336
    .restart local v15    # "genre":Lcom/samsung/android/app/music/common/model/Genre;
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 297
    .end local v15    # "genre":Lcom/samsung/android/app/music/common/model/Genre;
    .end local v27    # "prefetch":Lcom/samsung/android/app/music/common/model/PrefetchData;
    .end local v34    # "station":Lcom/samsung/android/app/music/common/model/Station;
    :cond_15
    const/16 v42, 0x0

    goto/16 :goto_b

    .line 339
    :cond_16
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/GenreDAO;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->updateGenreOrdinals(Ljava/util/ArrayList;)I

    .line 342
    if-eqz p2, :cond_17

    .line 344
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/GenreDAO;

    move-result-object v42

    const/16 v43, 0x1

    invoke-virtual/range {v42 .. v43}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->clearGenreVisibilty(Z)V

    .line 350
    :cond_17
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/samsung/android/app/music/provider/DaoMaster;->cleanupStaledTrackRecord()I

    move-result v9

    .line 352
    .local v9, "cleanupCount":I
    sget-object v42, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->LOG_TAG:Ljava/lang/String;

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "handlePrefetchChunkData >> clean up count - "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 355
    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    .end local v9    # "cleanupCount":I
    .end local v19    # "i":I
    :cond_18
    monitor-exit p0

    return-object v14
.end method

.method public loadPrefetchUrls()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 402
    iget-object v7, p0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->mContext:Landroid/content/Context;

    const-string v8, "com.samsung.radio.prefetch.manager.prefetch_delayed_chunk_urls"

    invoke-static {v7, v8, v6}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 403
    .local v5, "urls":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 405
    .local v1, "chunkUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 406
    .local v4, "json":Lorg/json/JSONObject;
    const-string/jumbo v7, "segmentUrl"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 407
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 408
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 410
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v3    # "i":I
    .end local v4    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 411
    .local v2, "e":Lorg/json/JSONException;
    iget-object v7, p0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->mContext:Landroid/content/Context;

    const-string v8, "com.samsung.radio.prefetch.manager.prefetch_delayed_chunk_urls"

    invoke-static {v7, v8, v6}, Lcom/samsung/android/app/music/common/preferences/Pref;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    sget-object v7, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->LOG_TAG:Ljava/lang/String;

    const-string v8, "loadPrefetchUrls >> JSONException"

    invoke-static {v7, v8, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v6

    .line 415
    .end local v1    # "chunkUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_0
    return-object v1
.end method

.method public notifyPrefetchStatus(I)V
    .locals 4
    .param p1, "prefetchStatus"    # I

    .prologue
    .line 550
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.common.service.prefetch.notify_prefetch_status"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 552
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "prefetch_status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 553
    sget-object v1, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyPrefetchStatus >> prefetchStatus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 556
    return-void
.end method

.method public prefetchDataList(Ljava/util/ArrayList;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/PrefetchData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "prefetchData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/PrefetchData;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 534
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->notifyPrefetchStatus(I)V

    .line 536
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->mContext:Landroid/content/Context;

    const-string v4, "com.samsung.radio.prefetch.manager.prefetch_stations_fetched"

    .line 537
    invoke-static {v3, v4, v2}, Lcom/samsung/android/app/music/common/preferences/Pref;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 539
    .local v1, "initGenreVisible":Z
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->handlePrefetchChunkData(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 541
    .local v0, "finalChunkUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->doPrefetchChunkData(Ljava/util/ArrayList;)V

    .line 542
    sget-object v2, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "prefetchDataList >> END"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    return-void

    .end local v0    # "finalChunkUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "initGenreVisible":Z
    :cond_0
    move v1, v2

    .line 537
    goto :goto_0
.end method

.method public savePrefetchUrls(Ljava/util/ArrayList;I)V
    .locals 8
    .param p2, "startIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 420
    .local p1, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 421
    .local v2, "json":Lorg/json/JSONObject;
    move v1, p2

    .local v1, "j":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 422
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 423
    .local v4, "u":Ljava/lang/String;
    const-string/jumbo v5, "segmentUrl"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 421
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 425
    .end local v4    # "u":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 426
    .local v3, "out":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->mContext:Landroid/content/Context;

    const-string v6, "com.samsung.radio.prefetch.manager.prefetch_delayed"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/samsung/android/app/music/common/preferences/Pref;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 427
    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->mContext:Landroid/content/Context;

    const-string v6, "com.samsung.radio.prefetch.manager.prefetch_delayed_chunk_urls"

    invoke-static {v5, v6, v3}, Lcom/samsung/android/app/music/common/preferences/Pref;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    .end local v1    # "j":I
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "out":Ljava/lang/String;
    :goto_1
    return-void

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public startPrefetch()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 391
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->canAccessNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 392
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "startPrefetch >> offline mode is on or cannot access network."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.radio.prefetch.manager.prefetch_delayed"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/common/preferences/Pref;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 398
    :goto_0
    return-void

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "should_clear_prefetch_cache"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/common/preferences/Pref;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->startPrefetch(IZ)V

    goto :goto_0
.end method
