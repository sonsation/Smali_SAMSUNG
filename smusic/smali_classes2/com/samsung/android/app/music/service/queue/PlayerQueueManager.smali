.class final Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;
.super Ljava/lang/Object;
.source "PlayerQueueManager.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivePlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

.field private final mCachedExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mContext:Landroid/content/Context;

.field private mOnQueueChangedAdapterListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

.field private final mOnQueueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

.field private final mPlayerQueueArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

.field private mReloadFirstQueue:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-class v0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->TAG:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "musicContents"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;
    .param p3, "playingItemFactory"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;
    .param p4, "playerSettingManager"    # Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;
    .param p5, "defaultListQueryArgs"    # Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .param p6, "options"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->mPlayerQueueArray:Landroid/util/SparseArray;

    .line 49
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->mCachedExecutor:Ljava/util/concurrent/ExecutorService;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->mReloadFirstQueue:Z

    .line 57
    new-instance v0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;-><init>(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->mOnQueueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    .line 160
    iget-object v7, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->mPlayerQueueArray:Landroid/util/SparseArray;

    const/4 v8, 0x0

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;)V

    invoke-virtual {v7, v8, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->mPlayerQueueArray:Landroid/util/SparseArray;

    const/4 v1, 0x1

    new-instance v2, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    invoke-direct {v2, p1, p4}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 164
    iput-object p4, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    .line 165
    iput-object p1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->mContext:Landroid/content/Context;

    .line 166
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->mOnQueueChangedAdapterListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getActiveQueueType()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->changeActiveType(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->changeQueueTypeByNetworkChange(Ljava/lang/String;)V

    return-void
.end method

.method private changeActiveType(I)V
    .locals 4
    .param p1, "queueType"    # I

    .prologue
    .line 465
    iget-object v1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setActiveQueueType(I)V

    .line 466
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 467
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 468
    iget-object v1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->mOnQueueChangedAdapterListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    if-eqz v1, :cond_0

    .line 469
    iget-object v1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->mOnQueueChangedAdapterListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    const-string v2, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onExtraChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 472
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->mPlayerQueueArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    iput-object v1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->mActivePlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    .line 473
    iget-object v1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->mOnQueueChangedAdapterListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    if-eqz v1, :cond_1

    .line 474
    iget-object v1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->mOnQueueChangedAdapterListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->mActivePlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    .line 475
    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onMetaChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Z)V

    .line 476
    iget-object v1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->mOnQueueChangedAdapterListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->mActivePlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    .line 477
    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getQueue()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->mActivePlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onQueueComposed(Ljava/util/List;Landroid/os/Bundle;)V

    .line 479
    :cond_1
    return-void
.end method

.method private changeQueueTypeByNetworkChange(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x6

    .line 455
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->isActiveQueueType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 457
    .local v0, "err":Landroid/os/Bundle;
    const-string v1, "error_type"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 458
    iget-object v1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->mOnQueueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    const-string v2, "com.samsung.android.app.music.core.state.queue.ERROR"

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onExtraChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 460
    .end local v0    # "err":Landroid/os/Bundle;
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getRadioQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v1

    invoke-interface {v1, v3, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->onCustomEvent(ILjava/lang/String;)V

    .line 461
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v1

    invoke-interface {v1, v3, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->onCustomEvent(ILjava/lang/String;)V

    .line 462
    return-void
.end method

.method private getActiveQueueType()I
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getExtraInformation(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->mPlayerQueueArray:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    return-object v0
.end method

.method private getRadioQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->mPlayerQueueArray:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    return-object v0
.end method

.method private isActiveQueueType(I)Z
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getActiveQueueType()I

    move-result v0

    .line 154
    .local v0, "activeQueueType":I
    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMainThread()Z
    .locals 4

    .prologue
    .line 517
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public disableMode()V
    .locals 1

    .prologue
    .line 378
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->disableMode()V

    .line 379
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->dump(Ljava/io/PrintWriter;)V

    .line 171
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getRadioQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->dump(Ljava/io/PrintWriter;)V

    .line 172
    return-void
.end method

.method public enableMode()V
    .locals 1

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->enableMode()V

    .line 374
    return-void
.end method

.method public enqueue(Ljava/util/List;IZI)V
    .locals 1
    .param p2, "action"    # I
    .param p3, "doChange"    # Z
    .param p4, "increasingPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;IZI)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, "qItems":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->enqueue(Ljava/util/List;IZI)V

    .line 244
    return-void
.end method

.method public enqueue([JIZI)V
    .locals 1
    .param p1, "list"    # [J
    .param p2, "action"    # I
    .param p3, "doChange"    # Z
    .param p4, "increasingPosition"    # I

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->enqueue([JIZI)V

    .line 238
    return-void
.end method

.method public getCurAudioId()J
    .locals 2

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getCurAudioId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentBaseUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getCurrentBaseUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getCurrentUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getExtraInformation(I)Ljava/lang/Object;
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 483
    packed-switch p1, :pswitch_data_0

    move-object v1, v2

    .line 504
    :goto_0
    return-object v1

    .line 485
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->mActivePlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtraInformation(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 487
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getRadioQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v1

    goto :goto_0

    .line 489
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->mActivePlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    goto :goto_0

    .line 491
    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->mPlayerQueueArray:Landroid/util/SparseArray;

    .line 492
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getExtraData()Landroid/os/Bundle;

    move-result-object v0

    .line 493
    .local v0, "extra":Landroid/os/Bundle;
    if-nez v0, :cond_0

    move-object v1, v2

    .line 494
    goto :goto_0

    .line 496
    :cond_0
    const-string v1, "player_extra_content"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    .line 498
    .end local v0    # "extra":Landroid/os/Bundle;
    :pswitch_4
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    goto :goto_0

    .line 500
    :pswitch_5
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getRadioQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    goto :goto_0

    .line 502
    :pswitch_6
    iget-object v1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->mActivePlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v1

    goto :goto_0

    .line 483
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getKeyWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getKeyWord()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMode(I)I
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getMode(I)I

    move-result v0

    return v0
.end method

.method public getNowPlayingListPosition()I
    .locals 1

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getNowPlayingListPosition()I

    move-result v0

    return v0
.end method

.method public getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .locals 1

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    return-object v0
.end method

.method public getPrevItem()Landroid/media/session/MediaSession$QueueItem;
    .locals 1

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getPrevItem()Landroid/media/session/MediaSession$QueueItem;

    move-result-object v0

    return-object v0
.end method

.method public getQueue()Ljava/util/List;
    .locals 1
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
    .line 298
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getQueue()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getShuffleMode()I
    .locals 1

    .prologue
    .line 333
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getShuffleMode()I

    move-result v0

    return v0
.end method

.method public getSortMode()I
    .locals 1

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getSortMode()I

    move-result v0

    return v0
.end method

.method public getUnionMode()I
    .locals 1

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getUnionMode()I

    move-result v0

    return v0
.end method

.method public getUriType()I
    .locals 1

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getUriType()I

    move-result v0

    return v0
.end method

.method public loadSavedValues(Z)V
    .locals 4
    .param p1, "syncRequest"    # Z

    .prologue
    .line 189
    iget-object v2, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getActiveQueueType()I

    move-result v0

    .line 190
    .local v0, "activeQueueType":I
    iget-object v2, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->mPlayerQueueArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    iput-object v2, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->mActivePlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    .line 191
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 192
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 193
    iget-object v2, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->mOnQueueChangedAdapterListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    if-eqz v2, :cond_0

    .line 194
    iget-object v2, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->mOnQueueChangedAdapterListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    const-string v3, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    invoke-interface {v2, v3, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onExtraChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 196
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->mActivePlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->loadSavedValues(Z)V

    .line 197
    if-nez v0, :cond_1

    .line 198
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getRadioQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->loadSavedValues(Z)V

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->loadSavedValues(Z)V

    goto :goto_0
.end method

.method public movePosition(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "direction"    # I

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->movePosition(II)V

    .line 259
    return-void
.end method

.method public moveQueueItem(II)V
    .locals 1
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->moveQueueItem(II)V

    .line 274
    return-void
.end method

.method public moveToNext(ZZ)V
    .locals 1
    .param p1, "ignoreRepeatOne"    # Z
    .param p2, "isGaplessPlaying"    # Z

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->moveToNext(ZZ)V

    .line 249
    return-void
.end method

.method public moveToPrev()V
    .locals 1

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->moveToPrev()V

    .line 254
    return-void
.end method

.method public moveToQueueItem(JI)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "direction"    # I

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->moveToQueueItem(JI)V

    .line 264
    return-void
.end method

.method public onCustomEvent(ILjava/lang/String;)V
    .locals 5
    .param p1, "event"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 393
    packed-switch p1, :pswitch_data_0

    .line 452
    :goto_0
    return-void

    .line 395
    :pswitch_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 396
    .local v0, "queueType":I
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->isMainThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->mCachedExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$2;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$2;-><init>(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 404
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->changeActiveType(I)V

    goto :goto_0

    .line 408
    .end local v0    # "queueType":I
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 409
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v1

    invoke-interface {v1, v3, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->moveToNext(ZZ)V

    goto :goto_0

    .line 411
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getRadioQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v1

    invoke-interface {v1, v3, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->moveToNext(ZZ)V

    goto :goto_0

    .line 415
    :pswitch_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    .line 416
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->moveToPrev()V

    goto :goto_0

    .line 418
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getRadioQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->moveToPrev()V

    goto :goto_0

    .line 422
    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getRadioQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->reloadQueue(Z)V

    goto :goto_0

    .line 425
    :pswitch_4
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->isActiveQueueType(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 426
    iget-object v1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->mOnQueueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    const-string v2, "com.samsung.android.app.music.core.action.UPDATE_WIDGET_LIST"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onExtraChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 428
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getRadioQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v1

    invoke-interface {v1, v4, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->onCustomEvent(ILjava/lang/String;)V

    .line 429
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v1

    invoke-interface {v1, v4, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->onCustomEvent(ILjava/lang/String;)V

    goto :goto_0

    .line 432
    :pswitch_5
    iget-object v1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->mCachedExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$3;-><init>(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 393
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public release()V
    .locals 1

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->release()V

    .line 177
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getRadioQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->release()V

    .line 178
    return-void
.end method

.method public reloadAudioIds()V
    .locals 1

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->reloadAudioIds()V

    .line 221
    return-void
.end method

.method public reloadMeta()V
    .locals 1

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->reloadMeta()V

    .line 226
    return-void
.end method

.method public reloadQueue(Z)V
    .locals 1
    .param p1, "syncRequest"    # Z

    .prologue
    .line 206
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->mActivePlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->reloadQueue(Z)V

    .line 208
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->mReloadFirstQueue:Z

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getActiveQueueType()I

    move-result v0

    if-nez v0, :cond_1

    .line 210
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getRadioQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->reloadQueue(Z)V

    .line 214
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->mReloadFirstQueue:Z

    .line 216
    :cond_0
    return-void

    .line 212
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->reloadQueue(Z)V

    goto :goto_0
.end method

.method public removeTracks([J)V
    .locals 1
    .param p1, "ids"    # [J

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->removeTracks([J)V

    .line 269
    return-void
.end method

.method public removeTracksPositions([I)V
    .locals 1
    .param p1, "position"    # [I

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->removeTracksPositions([I)V

    .line 279
    return-void
.end method

.method public setList(ILjava/lang/String;[JLjava/util/List;I)V
    .locals 6
    .param p1, "uriType"    # I
    .param p2, "keyWord"    # Ljava/lang/String;
    .param p3, "list"    # [J
    .param p5, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[J",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p4, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->setList(ILjava/lang/String;[JLjava/util/List;I)V

    .line 232
    return-void
.end method

.method public setMode(II)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "value"    # I

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->setMode(II)V

    .line 359
    return-void
.end method

.method public setQueueChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;)V
    .locals 2
    .param p1, "queueChangedListener"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->mOnQueueChangedAdapterListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    .line 183
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->mOnQueueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->setQueueChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;)V

    .line 184
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getRadioQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->mOnQueueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->setQueueChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;)V

    .line 185
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1
    .param p1, "repeatMode"    # I

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->setRepeatMode(I)V

    .line 349
    return-void
.end method

.method public setShuffleMode(I)V
    .locals 1
    .param p1, "shuffleMode"    # I

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->setShuffleMode(I)V

    .line 339
    return-void
.end method

.method public setSortMode(I)V
    .locals 1
    .param p1, "sortMode"    # I

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->setSortMode(I)V

    .line 389
    return-void
.end method

.method public toggleMode(I)I
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->getPlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->toggleMode(I)I

    move-result v0

    return v0
.end method
