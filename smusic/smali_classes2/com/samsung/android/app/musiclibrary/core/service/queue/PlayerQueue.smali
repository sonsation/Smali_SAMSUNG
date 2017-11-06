.class public final Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;
.super Ljava/lang/Object;
.source "PlayerQueue.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;
.implements Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver$OnContentChangeListener;
.implements Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_TSP:Z = false

.field private static final GAP_DEFAULT_REQUEST:I = 0x32

.field private static final HEX_DIGITS:[C

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-List"

.field private static final MOVE_TO_COUNT_RESET_INTERVAL:I = 0x3e8

.field private static final MY_QUEUE_TYPE:I = 0x0

.field private static final QUEUE_VERSION:J = 0x1L

.field private static final TAG:Ljava/lang/String; = "SV-List"

.field private static final TEST_DUMMY_QUEUE:Z = false

.field private static final TEST_DUMMY_QUEUE_SIZE:I = 0x2710

.field private static final THREAD_NAME_QUEUE:Ljava/lang/String; = "smusic_queue"

.field private static final UNDEFINED_ID:I = -0x1


# instance fields
.field private mBaseUri:Landroid/net/Uri;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentPlayingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

.field private final mCurrentSongObserver:Landroid/database/ContentObserver;

.field private mDBUpdater:Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;

.field private final mDefaultQueryArgs:Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mExtras:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;

.field private mFirstIndex:I

.field private mIsAvailableNetwork:Z

.field private mIsContentObserverRegistered:Z

.field private mKeyWord:Ljava/lang/String;

.field private mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

.field private mMoveToRequestCount:I

.field private final mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

.field private mNextPlayingItemProducer:Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;

.field private mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

.field private mObserver:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;

.field private final mOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

.field private final mOrderController:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;

.field private mPlayList:[J

.field private mPlayListLength:I

.field private mPlayPos:I

.field private final mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

.field private final mPlayingItemFactory:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;

.field private mProviderInserter:Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;

.field private mQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private mQueueProducer:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;

.field private final mRecentlyPositions:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;

.field private mRepeatMode:I

.field private final mRequest:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;

.field private final mShuffleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mShuffleMode:I

.field private mShufflePlayPos:I

.field private mThread:Landroid/os/HandlerThread;

.field private mUnionMode:I

.field private mUriType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->HEX_DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "musicContents"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;
    .param p3, "playingItemFactory"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;
    .param p4, "playerSettingManager"    # Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;
    .param p5, "defaultListQueryArgs"    # Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .param p6, "options"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 132
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRecentlyPositions:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;

    .line 150
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mFirstIndex:I

    .line 156
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleList:Ljava/util/ArrayList;

    .line 163
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRepeatMode:I

    .line 165
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleMode:I

    .line 167
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mUnionMode:I

    .line 171
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mIsContentObserverRegistered:Z

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mIsAvailableNetwork:Z

    .line 748
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$1;

    new-instance v1, Landroid/os/Handler;

    .line 749
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mCurrentSongObserver:Landroid/database/ContentObserver;

    .line 1633
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$4;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;

    .line 195
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mContext:Landroid/content/Context;

    .line 196
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    .line 197
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayingItemFactory:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;

    .line 198
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    .line 199
    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mDefaultQueryArgs:Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    .line 200
    iput-object p6, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    .line 201
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;

    invoke-direct {v0, p1, p4, p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mOrderController:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;

    .line 202
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mContentResolver:Landroid/content/ContentResolver;

    .line 203
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-boolean v1, v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportUnionMode:Z

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mExtras:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;

    .line 204
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->ensureContentObserver()V

    .line 205
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;)[J
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayList:[J

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;[J)[J
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;
    .param p1, "x1"    # [J

    .prologue
    .line 68
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayList:[J

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;Landroid/net/Uri;[JZI)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # [J
    .param p3, "x3"    # Z
    .param p4, "x4"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->buildUpQueue(Landroid/net/Uri;[JZI)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;[J[J)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;
    .param p1, "x1"    # [J
    .param p2, "x2"    # [J

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->isSameList([J[J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;
    .param p1, "x1"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->notifyQueueComposed(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->internalReloadSavedQueue(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;Landroid/net/Uri;ILjava/lang/String;[JLjava/util/List;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # [J
    .param p5, "x5"    # Ljava/util/List;
    .param p6, "x6"    # I

    .prologue
    .line 68
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->internalSetList(Landroid/net/Uri;ILjava/lang/String;[JLjava/util/List;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;[JIZI)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;
    .param p1, "x1"    # [J
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->internalEnqueue([JIZI)V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;Ljava/util/List;IZI)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->internalEnqueue(Ljava/util/List;IZI)V

    return-void
.end method

.method static synthetic access$1700(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;[J)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;
    .param p1, "x1"    # [J

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->internalRemoveIds([J)V

    return-void
.end method

.method static synthetic access$1800(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;ZIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->internalMoveTo(ZIZ)V

    return-void
.end method

.method static synthetic access$1900(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;[I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;
    .param p1, "x1"    # [I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->internalRemovePositions([I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->internalResetMoveToCount()V

    return-void
.end method

.method static synthetic access$202(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    return p1
.end method

.method static synthetic access$2100(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->internalSetPosition(IIZ)V

    return-void
.end method

.method static synthetic access$2200(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;JI)V
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->internalSetQueueItem(JI)V

    return-void
.end method

.method static synthetic access$2300(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;II)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->internalReorder(II)V

    return-void
.end method

.method static synthetic access$2400(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;IZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->internalChangeShuffle(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;IZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->internalChangeRepeat(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;IZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->internalChangeSortMode(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->internalReloadMeta()V

    return-void
.end method

.method static synthetic access$2800(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->internalNotifyLegalError()V

    return-void
.end method

.method static synthetic access$302(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mQueue:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$402(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mUriType:I

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    .prologue
    .line 68
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleMode:I

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    .prologue
    .line 68
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;
    .param p1, "x1"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->createShuffleIndex(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getDefaultLocalUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->changeBaseUri(Landroid/net/Uri;)V

    return-void
.end method

.method private addToList(Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;[JI)Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;
    .locals 5
    .param p1, "info"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;
    .param p2, "addList"    # [J
    .param p3, "position"    # I

    .prologue
    .line 2350
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addToList position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->printLog(Ljava/lang/String;)V

    .line 2351
    array-length v0, p2

    .line 2352
    .local v0, "addLen":I
    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;->playList:[J

    array-length v2, v3

    .line 2353
    .local v2, "prevListLength":I
    if-gez p3, :cond_0

    .line 2354
    const/4 p3, 0x0

    .line 2355
    const/4 v2, 0x0

    .line 2357
    :cond_0
    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;->playList:[J

    add-int v4, v2, v0

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->ensurePlayListCapacity([JI)[J

    move-result-object v1

    .line 2358
    .local v1, "newList":[J
    if-le p3, v2, :cond_1

    .line 2359
    move p3, v2

    .line 2362
    :cond_1
    if-lez v2, :cond_2

    .line 2364
    add-int v3, p3, v0

    sub-int v4, v2, p3

    invoke-static {v1, p3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2367
    iget v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;->playPos:I

    if-lt v3, p3, :cond_2

    .line 2368
    iget v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;->playPos:I

    add-int/2addr v3, v0

    iput v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;->playPos:I

    .line 2372
    :cond_2
    const/4 v3, 0x0

    invoke-static {p2, v3, v1, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2373
    add-int/2addr v2, v0

    .line 2374
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->shrinkQueue([JI)[J

    move-result-object v3

    iput-object v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;->playList:[J

    .line 2377
    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;->recentlyPlayList:Ljava/util/List;

    array-length v4, p2

    .line 2378
    invoke-direct {p0, v3, p3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->buildAddedRecentlyPositions(Ljava/util/List;II)Ljava/util/List;

    move-result-object v3

    iput-object v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;->recentlyPlayList:Ljava/util/List;

    .line 2379
    return-object p1
.end method

.method private appendWithBaseUri(J)Landroid/net/Uri;
    .locals 5
    .param p1, "audioId"    # J

    .prologue
    .line 1303
    const/4 v0, 0x0

    .line 1304
    .local v0, "uri":Landroid/net/Uri;
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    .line 1305
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getCurrentBaseUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1307
    :cond_0
    return-object v0
.end method

.method private buildAddedRecentlyPositions(Ljava/util/List;II)Ljava/util/List;
    .locals 5
    .param p2, "addedPos"    # I
    .param p3, "addedListSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2384
    .local p1, "prevList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2385
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 2386
    add-int v4, p2, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2385
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2392
    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 2393
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2394
    .local v3, "prevPos":I
    if-ge v3, p2, :cond_1

    .line 2395
    move v0, v3

    .line 2399
    .local v0, "calculatedPos":I
    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2392
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2397
    .end local v0    # "calculatedPos":I
    :cond_1
    add-int v0, v3, p3

    .restart local v0    # "calculatedPos":I
    goto :goto_2

    .line 2401
    .end local v0    # "calculatedPos":I
    .end local v3    # "prevPos":I
    :cond_2
    return-object v2
.end method

.method private buildRecentlyPositions(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 2164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2165
    .local v1, "recently":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 2166
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2168
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRecentlyPositions:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;->setRecentlyPlayList(Ljava/util/List;)V

    .line 2169
    return-void
.end method

.method private buildRemainRecentlyPositions(Ljava/util/List;Ljava/util/List;)V
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
    .line 2575
    .local p1, "retainPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "prevList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 2576
    .local v0, "prevSize":I
    invoke-interface {p2, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 2577
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->calculateReorderInRecentlyList(Ljava/util/List;I)V

    .line 2578
    return-void
.end method

.method private buildRemovedRecentlyPositions([I)V
    .locals 6
    .param p1, "positions"    # [I

    .prologue
    .line 2563
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRecentlyPositions:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;->getRecentlyPlayList()Ljava/util/List;

    move-result-object v1

    .line 2564
    .local v1, "prevList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 2565
    .local v2, "prevSize":I
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget v0, p1, v3

    .line 2566
    .local v0, "position":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2565
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2569
    .end local v0    # "position":I
    :cond_0
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->calculateReorderInRecentlyList(Ljava/util/List;I)V

    .line 2570
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->pushExtraSortModeChanged()V

    .line 2571
    return-void
.end method

.method private buildReorderedRecentlyPositions(II)V
    .locals 4
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 2806
    if-ne p1, p2, :cond_0

    .line 2814
    :goto_0
    return-void

    .line 2809
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRecentlyPositions:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;->getRecentlyPlayList()Ljava/util/List;

    move-result-object v1

    .line 2810
    .local v1, "recentlyPlayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2811
    .local v0, "fromPos":I
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2812
    .local v2, "toPos":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, p2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2813
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private buildSortList(Z)V
    .locals 9
    .param p1, "sync"    # Z

    .prologue
    .line 2963
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mUriType:I

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mKeyWord:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mBaseUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayList:[J

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    iget v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mQueue:Ljava/util/List;

    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRecentlyPositions:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;

    .line 2965
    invoke-virtual {v8}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;->getRecentlyPlayList()Ljava/util/List;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;-><init>(ILjava/lang/String;Landroid/net/Uri;[JIILjava/util/List;Ljava/util/List;)V

    .line 2966
    .local v0, "queueInfo":Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mOrderController:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->createSortList(Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;Z)V

    .line 2967
    if-eqz p1, :cond_0

    .line 2968
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->pushExtraSortModeChanged()V

    .line 2970
    :cond_0
    return-void
.end method

.method private buildUpQueue(Landroid/net/Uri;[JZI)V
    .locals 6
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "ids"    # [J
    .param p3, "syncRequest"    # Z
    .param p4, "queueChangedReason"    # I

    .prologue
    .line 943
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mUriType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 944
    const-string v0, "SV-List"

    const-string v1, "Open a new list, but it is not in media track thus do not make a queue objects!"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    :goto_0
    return-void

    .line 949
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->clearQueue()V

    .line 950
    if-eqz p3, :cond_1

    .line 951
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Landroid/net/Uri;[J)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mQueueProducer:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;

    .line 952
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mQueueProducer:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->getQueueItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mQueue:Ljava/util/List;

    goto :goto_0

    .line 956
    :cond_1
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    new-instance v5, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$3;

    invoke-direct {v5, p0, p4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$3;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;I)V

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Landroid/net/Uri;[JLcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$OnResultListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mQueueProducer:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;

    .line 974
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mQueueProducer:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private calculateNextPosition(II)[I
    .locals 5
    .param p1, "currentPosition"    # I
    .param p2, "shufflePosition"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1160
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRepeatMode:I

    packed-switch v2, :pswitch_data_0

    .line 1185
    const-string v2, "SMUSIC-SV-List"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not support repeat mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRepeatMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 1186
    :cond_0
    :goto_0
    return-object v0

    .line 1162
    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-boolean v2, v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportRepeatEndFirst:Z

    if-eqz v2, :cond_1

    .line 1163
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getNextPosition(II)[I

    move-result-object v0

    .line 1164
    .local v0, "positions":[I
    aget v2, v0, v3

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mFirstIndex:I

    if-ne v2, v3, :cond_0

    .line 1165
    const-string v2, "ATT_10776 calculateNextPosition() : Repeat.OFF, no next song"

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->printLog(Ljava/lang/String;)V

    move-object v0, v1

    .line 1166
    goto :goto_0

    .line 1170
    .end local v0    # "positions":[I
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->isEndOfPosition()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1171
    const-string v2, "calculateNextPosition() : Repeat.OFF, last song was played, no next song."

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->printLog(Ljava/lang/String;)V

    move-object v0, v1

    .line 1173
    goto :goto_0

    .line 1175
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getNextPosition(II)[I

    move-result-object v0

    goto :goto_0

    .line 1180
    :pswitch_1
    const-string v1, "calculateNextPosition() : Repeat.One, current song is next song."

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->printLog(Ljava/lang/String;)V

    .line 1181
    const/4 v1, 0x2

    new-array v0, v1, [I

    aput p1, v0, v3

    const/4 v1, 0x1

    aput p2, v0, v1

    goto :goto_0

    .line 1183
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getNextPosition(II)[I

    move-result-object v0

    goto :goto_0

    .line 1160
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private calculateReorderInRecentlyList(Ljava/util/List;I)V
    .locals 4
    .param p2, "prevSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1865
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 1867
    .local v2, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 1868
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1869
    .local v1, "index":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 1870
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1871
    add-int/lit8 v2, v2, 0x1

    .line 1867
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1874
    .end local v1    # "index":I
    :cond_1
    return-void
.end method

.method private cancelConverter(Z)V
    .locals 1
    .param p1, "reschedule"    # Z

    .prologue
    .line 862
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mProviderInserter:Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mProviderInserter:Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;->cancel()V

    .line 865
    :cond_0
    if-eqz p1, :cond_1

    .line 866
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->executeConverter()V

    .line 868
    :cond_1
    return-void
.end method

.method private changeBaseUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 901
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->registerContentObserver(Landroid/net/Uri;)V

    .line 902
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mBaseUri:Landroid/net/Uri;

    .line 903
    return-void
.end method

.method private checkLocalContent(Ljava/util/List;II)Z
    .locals 5
    .param p2, "direction"    # I
    .param p3, "startPos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 730
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    const-wide/16 v0, 0x0

    .line 735
    .local v0, "base":J
    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getMovedPlayPosByDirection(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    .line 736
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaSession$QueueItem;

    .line 737
    .local v2, "currentItem":Landroid/media/session/MediaSession$QueueItem;
    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getCpAttrsFromQueueItem(Landroid/media/session/MediaSession$QueueItem;)I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs;->isLocal(I)Z

    move-result v3

    .line 738
    .local v3, "isLocal":Z
    if-eqz v3, :cond_1

    .line 745
    :goto_0
    return v3

    .line 741
    :cond_1
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    if-ne p3, v4, :cond_0

    goto :goto_0
.end method

.method private clearAll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2723
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->EMPTY_PLAYLIST:[J

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayList:[J

    .line 2724
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    .line 2725
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    .line 2726
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->clearQueue()V

    .line 2727
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRecentlyPositions:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo;->EMPTY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;->setRecentlyPlayList(Ljava/util/List;)V

    .line 2728
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mOrderController:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->clearAll()V

    .line 2729
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->pushExtraSortModeChanged()V

    .line 2730
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2733
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2734
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShufflePlayPos:I

    .line 2735
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->pushExtraShuffleChanged()V

    .line 2737
    :cond_0
    return-void
.end method

.method private clearQueue()V
    .locals 1

    .prologue
    .line 2157
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mQueueProducer:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;

    if-eqz v0, :cond_0

    .line 2158
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mQueueProducer:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->cancel()V

    .line 2160
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mQueue:Ljava/util/List;

    .line 2161
    return-void
.end method

.method private convertRepeatUnionMode(II)V
    .locals 3
    .param p1, "repeat"    # I
    .param p2, "shuffle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1384
    packed-switch p1, :pswitch_data_0

    .line 1401
    :goto_0
    return-void

    .line 1386
    :pswitch_0
    if-ne p2, v1, :cond_0

    .line 1387
    const/4 v0, 0x3

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->setUnionMode(ZIZ)V

    goto :goto_0

    .line 1389
    :cond_0
    invoke-direct {p0, v2, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->setUnionMode(ZIZ)V

    goto :goto_0

    .line 1393
    :pswitch_1
    invoke-direct {p0, v2, v1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->setUnionMode(ZIZ)V

    goto :goto_0

    .line 1396
    :pswitch_2
    const/4 v0, 0x2

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->setUnionMode(ZIZ)V

    goto :goto_0

    .line 1384
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private convertShuffleUnionMode(I)V
    .locals 4
    .param p1, "shuffle"    # I

    .prologue
    const/4 v3, 0x0

    .line 1445
    packed-switch p1, :pswitch_data_0

    .line 1456
    :goto_0
    return-void

    .line 1447
    :pswitch_0
    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-direct {p0, v3, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->setUnionMode(ZIZ)V

    goto :goto_0

    .line 1450
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getRepeatMode()I

    move-result v0

    .line 1451
    .local v0, "repeat":I
    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->convertRepeatUnionMode(II)V

    goto :goto_0

    .line 1445
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private convertToMusicProvidersId([JI)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;
    .locals 5
    .param p1, "list"    # [J
    .param p2, "position"    # I

    .prologue
    .line 1881
    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;-><init>(Landroid/content/Context;[JI)V

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->convert()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;

    move-result-object v0

    .line 1882
    .local v0, "converted":Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;
    const/4 v2, 0x1

    .line 1883
    .local v2, "uriType":I
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getQueryKey()Ljava/lang/String;

    move-result-object v1

    .line 1884
    .local v1, "keyWord":Ljava/lang/String;
    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->list:[J

    iget v4, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->position:I

    invoke-direct {p0, v3, v4, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->saveQueue([JIILjava/lang/String;)V

    .line 1885
    return-object v0
.end method

.method private createCurrentPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .locals 9
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayingItemFactory:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mContext:Landroid/content/Context;

    .line 1313
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getCurrentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getUriType()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mKeyWord:Ljava/lang/String;

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    iget v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;->getPlayingItem(Landroid/content/Context;Landroid/net/Uri;ILjava/lang/String;III)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v8

    .line 1315
    .local v8, "item":Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    if-nez v8, :cond_0

    .line 1316
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v8

    .line 1318
    .end local v8    # "item":Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    :cond_0
    return-object v8
.end method

.method private createShuffleIndex(I)V
    .locals 10
    .param p1, "position"    # I

    .prologue
    .line 1002
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1003
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createShuffleIndex start mPosition:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->printLog(Ljava/lang/String;)V

    .line 1004
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayList:[J

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    if-gtz v5, :cond_1

    .line 1005
    :cond_0
    const/4 v5, 0x0

    iput v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShufflePlayPos:I

    .line 1006
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1007
    monitor-exit v6

    .line 1049
    :goto_0
    return-void

    .line 1010
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1011
    .local v4, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    if-ge v0, v5, :cond_2

    .line 1012
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1011
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1015
    :cond_2
    const/4 v5, 0x0

    iput v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShufflePlayPos:I

    .line 1016
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    .line 1017
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1020
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1025
    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    if-ltz v5, :cond_3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    add-int/lit8 v7, v7, 0x1

    if-ge v5, v7, :cond_4

    .line 1026
    :cond_3
    const-string v5, "SV-List"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to createShuffleIndex - tempList.size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mPlayPos: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    monitor-exit v6

    goto :goto_0

    .line 1047
    .end local v0    # "i":I
    .end local v4    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1030
    .restart local v0    # "i":I
    .restart local v4    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_4
    :try_start_1
    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1032
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v8, v9}, Ljava/util/Random;-><init>(J)V

    .line 1033
    .local v1, "rand":Ljava/util/Random;
    const/4 v0, 0x1

    :goto_2
    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    if-ge v0, v5, :cond_6

    .line 1034
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_5

    .line 1035
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1036
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1033
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1038
    :cond_5
    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    sub-int v3, v5, v0

    .line 1039
    .local v3, "remainCount":I
    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 1040
    .local v2, "randomIndex":I
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1043
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 1046
    .end local v2    # "randomIndex":I
    .end local v3    # "remainCount":I
    :cond_6
    const-string v5, "SV-List"

    const-string v7, "createShuffleIndex end"

    invoke-static {v5, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1048
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mExtras:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShufflePlayPos:I

    iget v8, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleMode:I

    iget v9, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mUnionMode:I

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->pushShuffleExtras(Ljava/util/ArrayList;III)V

    goto/16 :goto_0
.end method

.method private enqueueInternal(Ljava/util/List;I)V
    .locals 2
    .param p2, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 2405
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mQueue:Ljava/util/List;

    if-nez v1, :cond_0

    .line 2406
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mQueue:Ljava/util/List;

    .line 2426
    :goto_0
    return-void

    .line 2409
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 2421
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 2424
    .local v0, "addPosition":I
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mQueue:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_0

    .line 2411
    .end local v0    # "addPosition":I
    :pswitch_0
    const/4 v0, 0x0

    .line 2412
    .restart local v0    # "addPosition":I
    goto :goto_1

    .line 2414
    .end local v0    # "addPosition":I
    :pswitch_1
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    .line 2415
    .restart local v0    # "addPosition":I
    goto :goto_1

    .line 2417
    .end local v0    # "addPosition":I
    :pswitch_2
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    add-int/lit8 v0, v1, 0x1

    .line 2418
    .restart local v0    # "addPosition":I
    goto :goto_1

    .line 2409
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private enqueueInternal([JIZI)V
    .locals 9
    .param p1, "list"    # [J
    .param p2, "action"    # I
    .param p3, "doChange"    # Z
    .param p4, "positionToPlay"    # I

    .prologue
    const/4 v8, 0x1

    .line 2221
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayList:[J

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRecentlyPositions:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;

    .line 2222
    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;->getRecentlyPlayList()Ljava/util/List;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    invoke-direct {v2, v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;-><init>([JLjava/util/List;I)V

    .line 2223
    .local v2, "listInfo":Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;
    array-length v0, p1

    .line 2224
    .local v0, "addingSize":I
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    .line 2225
    .local v3, "prevListSize":I
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v5}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getDuplicateOption()Z

    move-result v1

    .line 2227
    .local v1, "duplicateOption":Z
    if-gez p4, :cond_0

    .line 2229
    const/4 p3, 0x0

    .line 2232
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 2260
    const v5, 0x7fffffff

    invoke-direct {p0, v2, p1, v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->addToList(Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;[JI)Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;

    move-result-object v4

    .line 2262
    .local v4, "resultListInfo":Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;
    if-eqz p3, :cond_1

    if-lez v0, :cond_1

    .line 2263
    add-int v5, v3, p4

    iput v5, v4, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;->playPos:I

    .line 2269
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 2270
    invoke-direct {p0, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getUniqueTrackList(Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;)Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;

    move-result-object v4

    .line 2274
    :cond_2
    invoke-direct {p0, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->removeOldItemFirstByLimit(Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;)Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;

    move-result-object v4

    .line 2276
    iget-object v5, v4, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;->playList:[J

    iput-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayList:[J

    .line 2277
    iget-object v5, v4, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;->playList:[J

    array-length v5, v5

    iput v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    .line 2279
    if-gez p4, :cond_6

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    invoke-direct {p0, p4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getBoundCheckedPosition(II)I

    move-result v5

    :goto_1
    iput v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    .line 2282
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRecentlyPositions:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;

    iget-object v6, v4, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;->recentlyPlayList:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;->setRecentlyPlayList(Ljava/util/List;)V

    .line 2284
    invoke-direct {p0, v8}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->buildSortList(Z)V

    .line 2286
    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleMode:I

    if-ne v5, v8, :cond_3

    .line 2288
    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    invoke-direct {p0, v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->createShuffleIndex(I)V

    .line 2291
    :cond_3
    if-eqz v1, :cond_4

    .line 2292
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    array-length v6, p1

    add-int/2addr v6, v3

    iget v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    sub-int/2addr v6, v7

    array-length v7, p1

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->notifyDeleteDuplicate(II)V

    .line 2295
    :cond_4
    return-void

    .line 2234
    .end local v4    # "resultListInfo":Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;
    :pswitch_0
    const/4 v5, 0x0

    invoke-direct {p0, v2, p1, v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->addToList(Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;[JI)Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;

    move-result-object v4

    .line 2236
    .restart local v4    # "resultListInfo":Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;
    if-eqz p3, :cond_1

    if-lez v0, :cond_1

    .line 2237
    iput p4, v4, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;->playPos:I

    goto :goto_0

    .line 2241
    .end local v4    # "resultListInfo":Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;
    :pswitch_1
    iget v5, v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;->playPos:I

    invoke-direct {p0, v2, p1, v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->addToList(Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;[JI)Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;

    move-result-object v4

    .line 2243
    .restart local v4    # "resultListInfo":Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;
    if-eqz p3, :cond_1

    if-lez v0, :cond_1

    .line 2244
    iget v5, v4, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;->playPos:I

    add-int/2addr v5, p4

    iput v5, v4, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;->playPos:I

    goto :goto_0

    .line 2248
    .end local v4    # "resultListInfo":Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;
    :pswitch_2
    iget v5, v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;->playPos:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0, v2, p1, v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->addToList(Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;[JI)Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;

    move-result-object v4

    .line 2250
    .restart local v4    # "resultListInfo":Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;
    if-eqz p3, :cond_1

    if-lez v0, :cond_1

    .line 2251
    if-nez v3, :cond_5

    .line 2252
    iput p4, v4, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;->playPos:I

    goto :goto_0

    .line 2254
    :cond_5
    iget v5, v4, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;->playPos:I

    add-int/lit8 v6, p4, 0x1

    add-int/2addr v5, v6

    iput v5, v4, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;->playPos:I

    goto :goto_0

    .line 2279
    :cond_6
    iget v5, v4, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;->playPos:I

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget v6, v6, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->limitQueueSize:I

    add-int/lit8 v6, v6, -0x1

    if-le v5, v6, :cond_7

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget v5, v5, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->limitQueueSize:I

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_7
    iget v5, v4, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;->playPos:I

    goto :goto_1

    .line 2232
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private ensureContentObserver()V
    .locals 3

    .prologue
    .line 912
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "smusic_queue"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mThread:Landroid/os/HandlerThread;

    .line 913
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 914
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mObserver:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;

    .line 915
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mObserver:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;->setContentChangeListener(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver$OnContentChangeListener;)V

    .line 916
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;-><init>(Landroid/os/Looper;Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    .line 917
    return-void
.end method

.method private ensurePlayListCapacity([JI)[J
    .locals 3
    .param p1, "list"    # [J
    .param p2, "size"    # I

    .prologue
    const/4 v2, 0x0

    .line 2034
    if-eqz p1, :cond_0

    array-length v1, p1

    if-le p2, v1, :cond_2

    .line 2038
    :cond_0
    mul-int/lit8 v1, p2, 0x2

    new-array v0, v1, [J

    .line 2039
    .local v0, "newList":[J
    if-eqz p1, :cond_1

    .line 2040
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2042
    :cond_1
    move-object p1, v0

    .line 2044
    .end local v0    # "newList":[J
    :cond_2
    return-object p1
.end method

.method private executeConverter()V
    .locals 5

    .prologue
    .line 871
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mUriType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 872
    const-string v0, "SV-List"

    const-string v1, "This is not online track type"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    :goto_0
    return-void

    .line 875
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mQueue:Ljava/util/List;

    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Ljava/util/List;Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter$OnResultListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mProviderInserter:Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;

    .line 894
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mProviderInserter:Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private executeNextPlayingItem()V
    .locals 18

    .prologue
    .line 2975
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    if-nez v2, :cond_0

    .line 3031
    :goto_0
    return-void

    .line 2978
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShufflePlayPos:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->calculateNextPosition(II)[I

    move-result-object v16

    .line 2979
    .local v16, "positions":[I
    if-nez v16, :cond_1

    .line 2980
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->onNextMetaChanged(Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    goto :goto_0

    .line 2983
    :cond_1
    const/4 v2, 0x0

    aget v8, v16, v2

    .line 2984
    .local v8, "position":I
    const-string v2, "SV-List"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "positions[0]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", positions[1]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, v16, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2985
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayList:[J

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    if-nez v2, :cond_3

    .line 2986
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->onNextMetaChanged(Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    goto :goto_0

    .line 2989
    :cond_3
    if-ltz v8, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayList:[J

    array-length v2, v2

    if-lt v8, v2, :cond_6

    .line 2990
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 2991
    .local v17, "shuffleListSize":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayList:[J

    array-length v2, v2

    move/from16 v0, v17

    if-eq v2, v0, :cond_5

    .line 2996
    const-string v2, "SV-List"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "next playing item position is out of index. unmatched playlist and shuffle list. playList length : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayList:[J

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", shuffle list length : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3002
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->onNextMetaChanged(Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    goto/16 :goto_0

    .line 3000
    :cond_5
    const-string v2, "SV-List"

    const-string v3, "next playing item position is out of index."

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3006
    .end local v17    # "shuffleListSize":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayList:[J

    aget-wide v14, v2, v8

    .line 3009
    .local v14, "nextId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-gez v2, :cond_7

    .line 3010
    const-string v2, "SMUSIC-SV-List"

    const-string v3, "executeNextPlayingItem next playing item id is wrong !! "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3011
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->onNextMetaChanged(Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    goto/16 :goto_0

    .line 3014
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->appendWithBaseUri(J)Landroid/net/Uri;

    move-result-object v5

    .line 3015
    .local v5, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mNextPlayingItemProducer:Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;

    if-eqz v2, :cond_8

    .line 3016
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mNextPlayingItemProducer:Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->getUri()Landroid/net/Uri;

    move-result-object v13

    .line 3017
    .local v13, "nextUri":Landroid/net/Uri;
    if-eqz v13, :cond_8

    invoke-virtual {v13, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3018
    const-string v2, "SV-List"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeNextPlayingItem() but it already set up Uri : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3019
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mNextPlayingItemProducer:Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;->getItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v12

    .line 3020
    .local v12, "item":Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    if-eqz v12, :cond_8

    .line 3021
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    invoke-virtual {v2, v13, v12}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->onNextMetaChanged(Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    goto/16 :goto_0

    .line 3026
    .end local v12    # "item":Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .end local v13    # "nextUri":Landroid/net/Uri;
    :cond_8
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayingItemFactory:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;

    .line 3027
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getUriType()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mKeyWord:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    .line 3029
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getSortMode()I

    move-result v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->isSkipCondition(I)Z

    move-result v11

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;Landroid/net/Uri;ILjava/lang/String;IILcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mNextPlayingItemProducer:Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;

    .line 3030
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mExecutor:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mNextPlayingItemProducer:Lcom/samsung/android/app/musiclibrary/core/service/queue/NextPlayingItemProducer;

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private getAllTrackAudioIds()[J
    .locals 10

    .prologue
    .line 1889
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mDefaultQueryArgs:Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    .line 1890
    .local v6, "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mContext:Landroid/content/Context;

    iget-object v1, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    iget-object v2, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    iget-object v3, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v4, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v5, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    .line 1891
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1890
    .local v7, "c":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 1893
    :try_start_0
    invoke-direct {p0, v7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getAudioIds(Landroid/database/Cursor;)[J

    move-result-object v8

    .line 1894
    .local v8, "list":[J
    const-string v2, "SV-List"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadLocalAllTrack list.length "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v8, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1896
    if-eqz v7, :cond_0

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    return-object v8

    .line 1894
    :cond_1
    :try_start_2
    array-length v0, v8
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 1896
    :catch_0
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1890
    .end local v8    # "list":[J
    :catch_1
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1896
    :catchall_0
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_2
    if-eqz v7, :cond_3

    if-eqz v1, :cond_4

    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_3
    throw v0

    :catch_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method private getAudioIds(Landroid/content/Context;[J)[J
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "list"    # [J

    .prologue
    const/4 v4, 0x0

    .line 3089
    .line 3090
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getCurrentBaseUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v0, "_id"

    .line 3091
    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->convertAudioIdsToSelection(Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v3

    const-string v5, "_id"

    move-object v0, p1

    .line 3090
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3094
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3095
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 3096
    .local v10, "size":I
    new-array v9, v10, [J

    .line 3097
    .local v9, "index":[J
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 3099
    .local v8, "idx":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v10, :cond_0

    .line 3100
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    aput-wide v0, v9, v7

    .line 3101
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3099
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3105
    :cond_0
    if-eqz v6, :cond_1

    if-eqz v4, :cond_2

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 3106
    .end local v7    # "i":I
    .end local v8    # "idx":I
    .end local v9    # "index":[J
    .end local v10    # "size":I
    :cond_1
    :goto_1
    return-object v9

    .line 3105
    .restart local v7    # "i":I
    .restart local v8    # "idx":I
    .restart local v9    # "index":[J
    .restart local v10    # "size":I
    :catch_0
    move-exception v0

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v7    # "i":I
    .end local v8    # "idx":I
    .end local v9    # "index":[J
    .end local v10    # "size":I
    :cond_3
    if-eqz v6, :cond_4

    if-eqz v4, :cond_5

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    :goto_2
    move-object v9, v4

    .line 3106
    goto :goto_1

    .line 3105
    :catch_1
    move-exception v0

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 3089
    :catch_2
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3105
    :catchall_0
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    :goto_3
    if-eqz v6, :cond_6

    if-eqz v4, :cond_7

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_6
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v4, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method private getAudioIds(Landroid/database/Cursor;)[J
    .locals 13
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v12, 0x0

    .line 2672
    const-string v9, "SV-List"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getAudioIds() - cursor: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2673
    if-nez p1, :cond_0

    .line 2674
    sget-object v7, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->EMPTY_PLAYLIST:[J

    .line 2712
    :goto_0
    return-object v7

    .line 2677
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 2678
    .local v4, "len":I
    if-nez v4, :cond_1

    .line 2679
    sget-object v7, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->EMPTY_PLAYLIST:[J

    goto :goto_0

    .line 2681
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2685
    :try_start_0
    const-string v9, "audio_id"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2690
    .local v1, "index":I
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    new-array v7, v9, [J

    .line 2691
    .local v7, "list":[J
    const/4 v5, 0x0

    .line 2695
    .local v5, "length":I
    :cond_2
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2696
    .local v2, "id":J
    const-wide/16 v10, 0x0

    cmp-long v9, v2, v10

    if-lez v9, :cond_3

    .line 2697
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "length":I
    .local v6, "length":I
    aput-wide v2, v7, v5

    move v5, v6

    .line 2699
    .end local v6    # "length":I
    .restart local v5    # "length":I
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 2701
    if-nez v5, :cond_4

    .line 2702
    sget-object v7, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->EMPTY_PLAYLIST:[J

    goto :goto_0

    .line 2686
    .end local v1    # "index":I
    .end local v2    # "id":J
    .end local v5    # "length":I
    .end local v7    # "list":[J
    :catch_0
    move-exception v0

    .line 2687
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v9, "_id"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .restart local v1    # "index":I
    goto :goto_1

    .line 2705
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "id":J
    .restart local v5    # "length":I
    .restart local v7    # "list":[J
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-eq v5, v9, :cond_5

    .line 2706
    new-array v8, v5, [J

    .line 2707
    .local v8, "temp":[J
    invoke-static {v7, v12, v8, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2708
    move-object v7, v8

    .line 2711
    .end local v8    # "temp":[J
    :cond_5
    const-string v9, "SV-List"

    const-string v10, "getAudioIds end"

    invoke-static {v9, v10}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getBoundCheckedPosition(II)I
    .locals 6
    .param p1, "position"    # I
    .param p2, "listSize"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 1273
    if-gez p1, :cond_2

    .line 1274
    if-lez p2, :cond_0

    .line 1277
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 1278
    .local v0, "rand":Ljava/util/Random;
    invoke-virtual {v0, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    .line 1280
    .end local v0    # "rand":Ljava/util/Random;
    :cond_0
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleMode:I

    if-eq v1, v4, :cond_1

    .line 1281
    iput v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleMode:I

    .line 1282
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleMode:I

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setShuffle(I)V

    .line 1284
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-boolean v1, v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportUnionMode:Z

    if-eqz v1, :cond_2

    .line 1285
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mUnionMode:I

    if-eq v1, v5, :cond_2

    .line 1286
    iput v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mUnionMode:I

    .line 1287
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mUnionMode:I

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setUnionShuffleRepeat(I)V

    .line 1288
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRepeatMode:I

    if-eqz v1, :cond_2

    .line 1289
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRepeatMode:I

    .line 1290
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRepeatMode:I

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setRepeat(I)V

    .line 1295
    :cond_2
    if-lt p1, p2, :cond_3

    .line 1296
    const-string v1, "SMUSIC-SV-List"

    const-string v2, "mPosition is over length so adjust it"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    const/4 p1, 0x0

    .line 1299
    :cond_3
    return p1
.end method

.method private getCpAttrsFromQueueItem(Landroid/media/session/MediaSession$QueueItem;)I
    .locals 4
    .param p1, "item"    # Landroid/media/session/MediaSession$QueueItem;

    .prologue
    .line 1609
    invoke-virtual {p1}, Landroid/media/session/MediaSession$QueueItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaDescription;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.samsung.android.app.music.metadata.music_metadata.META_OTHERS"

    .line 1610
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/media/MediaMetadata;

    .line 1611
    .local v0, "meta":Landroid/media/MediaMetadata;
    const-string v1, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v1, v2

    return v1
.end method

.method private getDefaultLocalUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 535
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;->getMatchedUri(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getLastPositionInQueue()I
    .locals 3

    .prologue
    .line 647
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleMode:I

    if-nez v1, :cond_1

    .line 648
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getSortMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 649
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    add-int/lit8 v1, v1, -0x1

    .line 656
    :goto_0
    return v1

    .line 651
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getSortList()Ljava/util/List;

    move-result-object v0

    .line 652
    .local v0, "sortList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 655
    .end local v0    # "sortList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShufflePlayPos:I

    .line 656
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShufflePlayPos:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private getListFromArray([J)Ljava/util/List;
    .locals 6
    .param p1, "list"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1813
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1814
    .local v2, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-wide v0, p1, v3

    .line 1815
    .local v0, "item":J
    long-to-int v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1814
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1817
    .end local v0    # "item":J
    :cond_0
    return-object v2
.end method

.method private getMovedPlayPosByDirection(I)I
    .locals 4
    .param p1, "direction"    # I

    .prologue
    const/4 v3, 0x1

    .line 688
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 689
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShufflePlayPos:I

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getPrevPosition(IIZ)I

    move-result v0

    .line 693
    .local v0, "playPos":I
    :goto_0
    return v0

    .line 691
    .end local v0    # "playPos":I
    :cond_0
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShufflePlayPos:I

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getNextPosition(IIZ)I

    move-result v0

    .restart local v0    # "playPos":I
    goto :goto_0
.end method

.method private getNetworkError()I
    .locals 3

    .prologue
    .line 772
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    .line 773
    .local v1, "playerSettingManager":Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;
    const/4 v0, -0x1

    .line 774
    .local v0, "error":I
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->isDataUsageAgreed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 775
    const/4 v0, 0x4

    .line 783
    :cond_0
    :goto_0
    return v0

    .line 776
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isWiFiConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 777
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->isMobileDataOn()Z

    move-result v2

    if-nez v2, :cond_2

    .line 778
    const/4 v0, 0x5

    goto :goto_0

    .line 779
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isMobileConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 780
    const/4 v0, 0x6

    goto :goto_0
.end method

.method private getNextPosition(IIZ)I
    .locals 4
    .param p1, "position"    # I
    .param p2, "shufflePosition"    # I
    .param p3, "updateShuffle"    # Z

    .prologue
    const/4 v3, 0x1

    .line 359
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleMode:I

    if-ne v2, v3, :cond_3

    .line 360
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge p2, v2, :cond_1

    .line 361
    add-int/lit8 p2, p2, 0x1

    .line 365
    :goto_0
    if-eqz p3, :cond_0

    .line 366
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShufflePlayPos:I

    .line 369
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 370
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 394
    :goto_1
    return p1

    .line 363
    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    .line 372
    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    .line 375
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getSortMode()I

    move-result v2

    if-ne v2, v3, :cond_5

    .line 376
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    add-int/lit8 v2, v2, -0x1

    if-ge p1, v2, :cond_4

    .line 377
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 379
    :cond_4
    const/4 p1, 0x0

    goto :goto_1

    .line 382
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getSortList()Ljava/util/List;

    move-result-object v1

    .line 383
    .local v1, "sortedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 384
    const/4 p1, 0x0

    goto :goto_1

    .line 386
    :cond_6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 387
    .local v0, "sortPosition":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_7

    .line 388
    const/4 v0, 0x0

    .line 390
    :cond_7
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1
.end method

.method private getNextPosition(II)[I
    .locals 5
    .param p1, "position"    # I
    .param p2, "shufflePosition"    # I

    .prologue
    const/4 v4, 0x1

    .line 1197
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleMode:I

    if-ne v2, v4, :cond_2

    .line 1198
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge p2, v2, :cond_0

    .line 1199
    add-int/lit8 p2, p2, 0x1

    .line 1204
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1205
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1229
    :goto_1
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    aput p2, v2, v4

    return-object v2

    .line 1201
    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    .line 1207
    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    .line 1210
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getSortMode()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 1211
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    add-int/lit8 v2, v2, -0x1

    if-ge p1, v2, :cond_3

    .line 1212
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1214
    :cond_3
    const/4 p1, 0x0

    goto :goto_1

    .line 1217
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getSortList()Ljava/util/List;

    move-result-object v1

    .line 1218
    .local v1, "sortedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1219
    const/4 p1, 0x0

    goto :goto_1

    .line 1221
    :cond_5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 1222
    .local v0, "sortPosition":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_6

    .line 1223
    const/4 v0, 0x0

    .line 1225
    :cond_6
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1
.end method

.method private getPlayableItemOnSkipCondition(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .locals 3
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x0

    .line 674
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    if-eqz v1, :cond_0

    .line 675
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    invoke-virtual {v1, v2, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->onNextMetaChanged(Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    .line 678
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    .line 679
    .local v0, "startPos":I
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mQueue:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 680
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getPlayableItemOnSkipConditionByBuildQueue(II)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v1

    .line 682
    :goto_0
    return-object v1

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mQueue:Ljava/util/List;

    invoke-direct {p0, v1, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getPlayableItemOnSkipConditionFromQueue(Ljava/util/List;II)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v1

    goto :goto_0
.end method

.method private getPlayableItemOnSkipConditionByBuildQueue(II)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .locals 8
    .param p1, "direction"    # I
    .param p2, "startPos"    # I

    .prologue
    .line 697
    const-wide/16 v0, 0x0

    .line 701
    .local v0, "base":J
    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    .line 702
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getCurrentBaseUri()Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayList:[J

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Landroid/net/Uri;[J)V

    .line 703
    .local v3, "queueProducer":Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->getQueueItems()Ljava/util/List;

    move-result-object v2

    .line 708
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    invoke-direct {p0, v2, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getPlayableItemOnSkipConditionFromQueue(Ljava/util/List;II)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v4

    return-object v4
.end method

.method private getPlayableItemOnSkipConditionFromQueue(Ljava/util/List;II)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .locals 8
    .param p2, "direction"    # I
    .param p3, "startPos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;II)",
            "Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;"
        }
    .end annotation

    .prologue
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    const/4 v2, 0x1

    .line 713
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->checkLocalContent(Ljava/util/List;II)Z

    .line 714
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    if-ne p3, v0, :cond_1

    .line 715
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->isLocalMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    .line 723
    :goto_0
    return-object v0

    .line 718
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getSortMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 719
    invoke-direct {p0, v2, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->internalChangeSortMode(IZ)Z

    .line 722
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayingItemFactory:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mContext:Landroid/content/Context;

    .line 723
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getCurrentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getUriType()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mKeyWord:Ljava/lang/String;

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    iget v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    move v7, p2

    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;->getPlayingItem(Landroid/content/Context;Landroid/net/Uri;ILjava/lang/String;III)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    goto :goto_0
.end method

.method private getPrevPosition(IIZ)I
    .locals 4
    .param p1, "position"    # I
    .param p2, "shufflePosition"    # I
    .param p3, "updateShuffle"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1233
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleMode:I

    if-ne v2, v3, :cond_3

    .line 1234
    if-lez p2, :cond_1

    .line 1235
    add-int/lit8 p2, p2, -0x1

    .line 1239
    :goto_0
    if-eqz p3, :cond_0

    .line 1240
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShufflePlayPos:I

    .line 1243
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1244
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1268
    :goto_1
    return p1

    .line 1237
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 p2, v2, -0x1

    goto :goto_0

    .line 1246
    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    .line 1249
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getSortMode()I

    move-result v2

    if-ne v2, v3, :cond_5

    .line 1250
    if-lez p1, :cond_4

    .line 1251
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 1253
    :cond_4
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    add-int/lit8 p1, v2, -0x1

    goto :goto_1

    .line 1256
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getSortList()Ljava/util/List;

    move-result-object v1

    .line 1257
    .local v1, "sortedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1258
    const/4 p1, 0x0

    goto :goto_1

    .line 1260
    :cond_6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 1261
    .local v0, "sortPosition":I
    if-gez v0, :cond_7

    .line 1262
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 1264
    :cond_7
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1
.end method

.method private getQueueString([J)Ljava/lang/String;
    .locals 12
    .param p1, "list"    # [J

    .prologue
    const-wide/16 v10, 0x0

    .line 843
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 844
    .local v4, "start":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 845
    .local v1, "q":Ljava/lang/StringBuilder;
    array-length v7, p1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_3

    aget-wide v2, p1, v6

    .line 846
    .local v2, "id":J
    cmp-long v8, v2, v10

    if-nez v8, :cond_1

    .line 847
    const-string v8, "0;"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 848
    :cond_1
    cmp-long v8, v2, v10

    if-lez v8, :cond_0

    .line 849
    :goto_2
    cmp-long v8, v2, v10

    if-eqz v8, :cond_2

    .line 850
    const-wide/16 v8, 0xf

    and-long/2addr v8, v2

    long-to-int v0, v8

    .line 851
    .local v0, "digit":I
    const/4 v8, 0x4

    ushr-long/2addr v2, v8

    .line 852
    sget-object v8, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->HEX_DIGITS:[C

    aget-char v8, v8, v0

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 854
    .end local v0    # "digit":I
    :cond_2
    const/16 v8, 0x3b

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 857
    .end local v2    # "id":J
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "created queue string in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->printLog(Ljava/lang/String;)V

    .line 858
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private getRecentlyQueueString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 829
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRecentlyPositions:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;->getRecentlyPlayList()Ljava/util/List;

    move-result-object v2

    .line 830
    .local v2, "recentlyPlayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v1, v3, [J

    .line 831
    .local v1, "recently":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 832
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v4, v3

    aput-wide v4, v1, v0

    .line 831
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 834
    :cond_0
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getQueueString([J)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getRemovedAudioIds([J[J)[J
    .locals 11
    .param p1, "originalList"    # [J
    .param p2, "existAudioIds"    # [J

    .prologue
    const/4 v10, 0x0

    .line 3072
    const/4 v3, 0x0

    .line 3073
    .local v3, "size":I
    array-length v5, p1

    new-array v2, v5, [J

    .line 3074
    .local v2, "removedIds":[J
    array-length v5, p1

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    move v4, v3

    .end local v3    # "size":I
    .local v4, "size":I
    :goto_0
    if-ltz v0, :cond_0

    .line 3075
    aget-wide v6, p1, v0

    .line 3076
    .local v6, "trackId":J
    invoke-static {p2, v6, v7}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v5

    if-gez v5, :cond_1

    .line 3077
    const-string v5, "SV-List"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "item no longer exists in db: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3078
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "size":I
    .restart local v3    # "size":I
    aput-wide v6, v2, v4

    .line 3074
    :goto_1
    add-int/lit8 v0, v0, -0x1

    move v4, v3

    .end local v3    # "size":I
    .restart local v4    # "size":I
    goto :goto_0

    .line 3082
    .end local v6    # "trackId":J
    :cond_0
    new-array v1, v4, [J

    .line 3083
    .local v1, "list":[J
    invoke-static {v2, v10, v1, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3084
    return-object v1

    .end local v1    # "list":[J
    .restart local v6    # "trackId":J
    :cond_1
    move v3, v4

    .end local v4    # "size":I
    .restart local v3    # "size":I
    goto :goto_1
.end method

.method private getSortList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 398
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mOrderController:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->getSortInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;

    move-result-object v0

    .line 399
    .local v0, "sortInfo":Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;->getOrderedList()Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method private getUniqueTrackList(Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;)Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;
    .locals 29
    .param p1, "listInfo"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;

    .prologue
    .line 1901
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;->recentlyPlayList:Ljava/util/List;

    move-object/from16 v21, v0

    .line 1902
    .local v21, "recentlyPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;->playList:[J

    move-object/from16 v20, v0

    .line 1904
    .local v20, "prevList":[J
    if-eqz v20, :cond_0

    move-object/from16 v0, v20

    array-length v2, v0

    if-gtz v2, :cond_2

    .line 1905
    :cond_0
    const-string v2, "SV-List"

    const-string v3, "[getUniqueTrackList] insert listInfo is empty"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v24, p1

    .line 1980
    :cond_1
    :goto_0
    return-object v24

    .line 1909
    :cond_2
    move-object/from16 v0, v20

    array-length v2, v0

    new-array v0, v2, [Landroid/content/ContentValues;

    move-object/from16 v27, v0

    .line 1910
    .local v27, "values":[Landroid/content/ContentValues;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    move-object/from16 v0, v20

    array-length v2, v0

    if-ge v11, v2, :cond_3

    .line 1911
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 1912
    .local v15, "newValues":Landroid/content/ContentValues;
    const-string v2, "audio_id"

    aget-wide v4, v20, v11

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1913
    const-string/jumbo v2, "recent_order"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1914
    aput-object v15, v27, v11

    .line 1910
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1916
    .end local v15    # "newValues":Landroid/content/ContentValues;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->NOW_PLAYLIST_QUEUE_UNIQUE_URI:Landroid/net/Uri;

    .line 1917
    move-object/from16 v0, v27

    invoke-static {v2, v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->bulkInsert(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 1920
    move-object/from16 v24, p1

    .line 1921
    .local v24, "resultListInfo":Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->NOW_PLAYLIST_QUEUE_UNIQUE_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "recent_order DESC"

    .line 1922
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1921
    .local v8, "c":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 1924
    if-eqz v8, :cond_e

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1925
    new-instance v26, Ljava/util/HashMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .line 1926
    .local v26, "uniquePosList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Integer;>;"
    move-object/from16 v0, v24

    iget v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;->playPos:I

    move/from16 v16, v0

    .line 1927
    .local v16, "playPos":I
    const-wide/16 v18, -0x1

    .line 1929
    .local v18, "playPurchaseId":J
    :cond_4
    const-string v2, "purchased_audio_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 1930
    .local v22, "purchaseId":J
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    add-int/lit8 v10, v2, -0x1

    .line 1931
    .local v10, "curPosition":I
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1932
    move/from16 v0, v16

    if-ne v10, v0, :cond_5

    .line 1933
    move-wide/from16 v18, v22

    .line 1935
    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1937
    move-object/from16 v0, v20

    array-length v2, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->size()I

    move-result v4

    if-eq v2, v4, :cond_6

    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->size()I

    move-result v2

    if-gtz v2, :cond_8

    .line 1939
    :cond_6
    const-string v2, "SV-List"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getUniqueTrackList] No Duplicate Tracks. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1940
    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " unique tracks"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1939
    invoke-static {v2, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1980
    if-eqz v8, :cond_1

    if-eqz v3, :cond_7

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1946
    :cond_8
    :try_start_2
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1947
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 1953
    :goto_2
    const/4 v11, 0x0

    .line 1954
    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->size()I

    move-result v2

    new-array v9, v2, [I

    .line 1955
    .local v9, "curIdxList":[I
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 1956
    .local v25, "retainPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v12, v11

    .end local v11    # "i":I
    .local v12, "i":I
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 1957
    .local v17, "position":I
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1958
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "i":I
    .restart local v11    # "i":I
    aput v17, v9, v12

    move v12, v11

    .line 1959
    .end local v11    # "i":I
    .restart local v12    # "i":I
    goto :goto_3

    .line 1949
    .end local v9    # "curIdxList":[I
    .end local v12    # "i":I
    .end local v17    # "position":I
    .end local v25    # "retainPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v11    # "i":I
    :cond_9
    const-string v2, "SV-List"

    const-string v4, "[getUniqueTrackList] Play Position is not set. Go To First"

    invoke-static {v2, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1950
    const/16 v16, 0x0

    goto :goto_2

    .line 1961
    .end local v11    # "i":I
    .restart local v9    # "curIdxList":[I
    .restart local v12    # "i":I
    .restart local v25    # "retainPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_a
    invoke-static {v9}, Ljava/util/Arrays;->sort([I)V

    .line 1962
    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->size()I

    move-result v2

    new-array v14, v2, [J

    .line 1963
    .local v14, "newIdList":[J
    const/4 v11, 0x0

    .line 1964
    .end local v12    # "i":I
    .restart local v11    # "i":I
    array-length v4, v9

    const/4 v2, 0x0

    move v12, v11

    .end local v11    # "i":I
    .restart local v12    # "i":I
    :goto_4
    if-ge v2, v4, :cond_c

    aget v13, v9, v2

    .line 1965
    .local v13, "index":I
    move/from16 v0, v16

    if-ne v13, v0, :cond_b

    .line 1966
    move/from16 v16, v12

    .line 1968
    :cond_b
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "i":I
    .restart local v11    # "i":I
    aget-wide v6, v20, v13

    aput-wide v6, v14, v12

    .line 1964
    add-int/lit8 v2, v2, 0x1

    move v12, v11

    .end local v11    # "i":I
    .restart local v12    # "i":I
    goto :goto_4

    .line 1970
    .end local v13    # "index":I
    :cond_c
    move-object/from16 v0, v24

    iput-object v14, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;->playList:[J

    .line 1971
    move/from16 v0, v16

    move-object/from16 v1, v24

    iput v0, v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;->playPos:I

    .line 1974
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;->recentlyPlayList:Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->buildRemainRecentlyPositions(Ljava/util/List;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1980
    if-eqz v8, :cond_1

    if-eqz v3, :cond_d

    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_d
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1977
    .end local v9    # "curIdxList":[I
    .end local v10    # "curPosition":I
    .end local v12    # "i":I
    .end local v14    # "newIdList":[J
    .end local v16    # "playPos":I
    .end local v18    # "playPurchaseId":J
    .end local v22    # "purchaseId":J
    .end local v25    # "retainPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v26    # "uniquePosList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v11    # "i":I
    :cond_e
    :try_start_4
    const-string v2, "SV-List"

    const-string v4, "getUniqueTrackList> There is no track"

    invoke-static {v2, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1980
    if-eqz v8, :cond_1

    if-eqz v3, :cond_f

    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v2

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_f
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1921
    .end local v11    # "i":I
    :catch_3
    move-exception v2

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1980
    :catchall_0
    move-exception v3

    move-object/from16 v28, v3

    move-object v3, v2

    move-object/from16 v2, v28

    :goto_5
    if-eqz v8, :cond_10

    if-eqz v3, :cond_11

    :try_start_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    :cond_10
    :goto_6
    throw v2

    :catch_4
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_11
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_1
    move-exception v2

    goto :goto_5
.end method

.method private insertMediaIdsToMusicProvider([J)Z
    .locals 2
    .param p1, "list"    # [J

    .prologue
    .line 1877
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;->insertMediaIdsToMusicProvider(Landroid/content/Context;[J)Z

    move-result v0

    return v0
.end method

.method private internalChangeRepeat(IZ)Z
    .locals 2
    .param p1, "repeat"    # I
    .param p2, "doSave"    # Z

    .prologue
    .line 2867
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRepeatMode:I

    if-ne v0, p1, :cond_0

    .line 2868
    const/4 v0, 0x0

    .line 2875
    :goto_0
    return v0

    .line 2870
    :cond_0
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRepeatMode:I

    .line 2871
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->notifyRepeatChanged()V

    .line 2872
    if-eqz p2, :cond_1

    .line 2873
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRepeatMode:I

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setRepeat(I)V

    .line 2875
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private internalChangeShuffle(IZ)Z
    .locals 3
    .param p1, "shuffle"    # I
    .param p2, "doSave"    # Z

    .prologue
    const/4 v0, 0x1

    .line 2832
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleMode:I

    if-ne v1, p1, :cond_1

    .line 2833
    const/4 v0, 0x0

    .line 2849
    :cond_0
    :goto_0
    return v0

    .line 2835
    :cond_1
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleMode:I

    .line 2836
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalChangeShuffle mIsShuffle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " setShuffle(): mPlayListLength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->printLog(Ljava/lang/String;)V

    .line 2838
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayList:[J

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    if-lez v1, :cond_2

    .line 2841
    if-ne p1, v0, :cond_2

    .line 2842
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->createShuffleIndex(I)V

    .line 2845
    :cond_2
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->notifyShuffleChanged(Z)V

    .line 2846
    if-eqz p2, :cond_0

    .line 2847
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleMode:I

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setShuffle(I)V

    goto :goto_0
.end method

.method private internalChangeSortMode(IZ)Z
    .locals 4
    .param p1, "sortMode"    # I
    .param p2, "doSave"    # Z

    .prologue
    const/4 v3, 0x1

    .line 2887
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mOrderController:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->setSortMode(IZ)Z

    move-result v0

    .line 2888
    .local v0, "isChanged":Z
    if-eqz v0, :cond_1

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    if-lez v1, :cond_1

    .line 2889
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalChangeSortMode sortMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->printLog(Ljava/lang/String;)V

    .line 2890
    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->buildSortList(Z)V

    .line 2891
    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->isOnlineContent(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2892
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mQueue:Ljava/util/List;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    invoke-direct {p0, v1, v3, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->skipOnlineContentsBySortMode(Ljava/util/List;II)V

    .line 2895
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->pushExtraSortModeChanged()V

    .line 2896
    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->notifySortModeChanged(Z)V

    .line 2898
    :cond_1
    return v0
.end method

.method private internalEnqueue(Ljava/util/List;IZI)V
    .locals 9
    .param p2, "action"    # I
    .param p3, "doChange"    # Z
    .param p4, "positionToPlay"    # I
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
    .line 2190
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    monitor-enter p0

    .line 2191
    :try_start_0
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mUriType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    .line 2192
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->cancelConverter(Z)V

    .line 2193
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    .line 2194
    .local v1, "length":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 2195
    .local v3, "size":I
    new-array v2, v3, [J

    .line 2196
    .local v2, "list":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 2197
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/session/MediaSession$QueueItem;

    invoke-virtual {v4}, Landroid/media/session/MediaSession$QueueItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaDescription;->getMediaId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 2196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2199
    :cond_0
    invoke-direct {p0, v2, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->enqueueInternal([JIZI)V

    .line 2200
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->enqueueInternal(Ljava/util/List;I)V

    .line 2201
    if-nez p3, :cond_1

    if-nez v1, :cond_2

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    if-lez v4, :cond_2

    .line 2202
    :cond_1
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->notifyMetaChanged(I)V

    .line 2204
    :cond_2
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->notifyQueueComposed(I)V

    .line 2205
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->executeConverter()V

    .line 2217
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "list":[J
    .end local v3    # "size":I
    :goto_1
    monitor-exit p0

    .line 2218
    return-void

    .line 2209
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    new-instance v8, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$5;

    invoke-direct {v8, p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$5;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;I)V

    invoke-direct {v5, v6, v7, p1, v8}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Ljava/util/List;Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter$OnResultListener;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 2217
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private internalEnqueue([JIZI)V
    .locals 5
    .param p1, "list"    # [J
    .param p2, "action"    # I
    .param p3, "doChange"    # Z
    .param p4, "positionToPlay"    # I

    .prologue
    .line 2172
    monitor-enter p0

    .line 2173
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->clearQueue()V

    .line 2174
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    .line 2175
    .local v0, "length":I
    const-string v1, "SV-List"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internalEnqueue mPlayListLength: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " list.length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2177
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->enqueueInternal([JIZI)V

    .line 2178
    const-string v1, "SV-List"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internalEnqueue mPlayListLength: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " After enque"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2179
    if-nez p3, :cond_0

    if-nez v0, :cond_1

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    if-lez v1, :cond_1

    .line 2181
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->notifyMetaChanged(I)V

    .line 2183
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getCurrentBaseUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayList:[J

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->buildUpQueue(Landroid/net/Uri;[JZI)V

    .line 2185
    monitor-exit p0

    .line 2186
    return-void

    .line 2185
    .end local v0    # "length":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private internalMoveTo(ZIZ)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "direction"    # I
    .param p3, "isGapLessPlaying"    # Z

    .prologue
    .line 2645
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->isLegalAgreed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2646
    const-string v0, "SMUSIC-SV-List"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalMoveTo() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but ignore this request. Because it is not legal agreed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2648
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->notifyCurrentMetaAndLegalError()V

    .line 2665
    :cond_0
    :goto_0
    return-void

    .line 2651
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    if-gtz v0, :cond_2

    .line 2652
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    if-eqz v0, :cond_0

    .line 2653
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->notifyEmptyQueue()V

    goto :goto_0

    .line 2658
    :cond_2
    if-eqz p1, :cond_3

    .line 2659
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->notifyMetaChanged(IZ)V

    goto :goto_0

    .line 2661
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    if-eqz v0, :cond_0

    .line 2662
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->onQueueComplete()V

    goto :goto_0
.end method

.method private internalNotifyLegalError()V
    .locals 3

    .prologue
    .line 2088
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    if-eqz v0, :cond_0

    .line 2089
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->onMetaChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Z)V

    .line 2090
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->notifyLegalError()V

    .line 2092
    :cond_0
    return-void
.end method

.method private internalReloadMeta()V
    .locals 2

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->createCurrentPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mCurrentPlayingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    .line 296
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mCurrentPlayingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->onMetaUpdated(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    .line 299
    :cond_0
    return-void
.end method

.method private internalReloadSavedAudioIds()[J
    .locals 14

    .prologue
    const-wide/16 v12, 0x1

    .line 1752
    iget v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    if-lez v7, :cond_1

    .line 1753
    const-string v7, "SMUSIC-SV-List"

    const-string v10, "internalReloadSavedQueue() but ignore this request. Because it is not empty list."

    invoke-static {v7, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    const/4 v5, 0x0

    .line 1804
    :cond_0
    :goto_0
    return-object v5

    .line 1759
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v7}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getQueue()Ljava/lang/String;

    move-result-object v2

    .line 1760
    .local v2, "q":Ljava/lang/String;
    const-string v7, "SV-List"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "reloadSavedQueue q: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1761
    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->reloadQueue(Ljava/lang/String;)[J

    move-result-object v5

    .line 1762
    .local v5, "reloadList":[J
    array-length v7, v5

    if-lez v7, :cond_9

    .line 1763
    const-string v7, "SV-List"

    const-string/jumbo v10, "reloadSavedQueue end "

    invoke-static {v7, v10}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1764
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v7}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getQueueVersion()J

    move-result-wide v8

    .line 1765
    .local v8, "version":J
    cmp-long v7, v8, v12

    if-gez v7, :cond_2

    .line 1767
    const-string v7, "SMUSIC-SV-List"

    const-string v10, "internalReloadSavedAudioIds but version is low. convert to music provider\'s queue"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    invoke-direct {p0, v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->insertMediaIdsToMusicProvider([J)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1770
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    .line 1771
    invoke-interface {v7}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getQueuePosition()I

    move-result v7

    .line 1770
    invoke-direct {p0, v5, v7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->convertToMusicProvidersId([JI)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;

    move-result-object v0

    .line 1772
    .local v0, "converted":Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;
    iget-object v5, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->list:[J

    .line 1773
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v7, v12, v13}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setQueueVersion(J)V

    .line 1781
    .end local v0    # "converted":Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7, v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getAudioIds(Landroid/content/Context;[J)[J

    move-result-object v1

    .line 1782
    .local v1, "ids":[J
    if-eqz v1, :cond_3

    array-length v7, v1

    if-nez v7, :cond_5

    .line 1783
    :cond_3
    sget-object v5, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->EMPTY_PLAYLIST:[J

    goto :goto_0

    .line 1777
    .end local v1    # "ids":[J
    :cond_4
    const-string v7, "SMUSIC-SV-List"

    const-string v10, "Fail to load internalReloadSavedAudioIds but version is low. convert to music provider\'s queue"

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1786
    .restart local v1    # "ids":[J
    :cond_5
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v7}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getRecentlyQueue()Ljava/lang/String;

    move-result-object v4

    .line 1787
    .local v4, "recentlyQueue":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->reloadQueue(Ljava/lang/String;)[J

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getListFromArray([J)Ljava/util/List;

    move-result-object v3

    .line 1788
    .local v3, "recentlyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    array-length v10, v5

    if-eq v7, v10, :cond_6

    .line 1789
    const-string v7, "SMUSIC-SV-List"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "queue list and recently list is not same size. Please check. recentlyList size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1790
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1789
    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    :cond_6
    array-length v7, v1

    array-length v10, v5

    if-eq v7, v10, :cond_0

    .line 1793
    invoke-static {v1}, Ljava/util/Arrays;->sort([J)V

    .line 1794
    invoke-direct {p0, v5, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getRemovedAudioIds([J[J)[J

    move-result-object v6

    .line 1795
    .local v6, "removedIds":[J
    if-eqz v6, :cond_7

    array-length v7, v6

    if-nez v7, :cond_8

    .line 1796
    :cond_7
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRecentlyPositions:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;

    invoke-virtual {v7, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;->setRecentlyPlayList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 1799
    :cond_8
    invoke-static {v6}, Ljava/util/Arrays;->sort([J)V

    .line 1800
    invoke-direct {p0, v5, v3, v6}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->removeDeletedItems([JLjava/util/List;[J)[J

    move-result-object v5

    goto/16 :goto_0

    .line 1804
    .end local v1    # "ids":[J
    .end local v3    # "recentlyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4    # "recentlyQueue":Ljava/lang/String;
    .end local v6    # "removedIds":[J
    .end local v8    # "version":J
    :cond_9
    sget-object v5, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->EMPTY_PLAYLIST:[J

    goto/16 :goto_0
.end method

.method private internalReloadSavedQueue(Z)V
    .locals 10
    .param p1, "syncRequest"    # Z

    .prologue
    .line 1722
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->isLegalAgreed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1723
    const-string v0, "SMUSIC-SV-List"

    const-string v1, "internalReloadSavedQueue() - isLegalAgreed : false"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->notifyCurrentMetaAndLegalError()V

    .line 1749
    :cond_0
    :goto_0
    return-void

    .line 1728
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getUriType()I

    move-result v2

    .line 1729
    .local v2, "uriType":I
    const-string v0, "SV-List"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "internalReloadSavedQueue - uriType "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->internalReloadSavedAudioIds()[J

    move-result-object v4

    .line 1731
    .local v4, "reloadList":[J
    if-eqz v4, :cond_0

    .line 1734
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->EMPTY_PLAYLIST:[J

    invoke-static {v0, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1735
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getAllTrackAudioIds()[J

    move-result-object v4

    .line 1736
    const-string v0, "SV-List"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadLocalAllTrack list.length "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v5, v4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1738
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getDefaultLocalUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v8, p1

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->setUpNewList(Landroid/net/Uri;ILjava/lang/String;[JLjava/util/List;Ljava/util/List;IZZ)V

    goto :goto_0

    .line 1741
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getQueuePosition()I

    move-result v7

    .line 1742
    .local v7, "position":I
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getQueryKey()Ljava/lang/String;

    move-result-object v3

    .line 1744
    .local v3, "keyWord":Ljava/lang/String;
    const-string v0, "SV-List"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reloadSavedQueue length "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v5, v4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1745
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;->getMatchedUri(I)Landroid/net/Uri;

    move-result-object v1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRecentlyPositions:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;

    .line 1746
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;->getRecentlyPlayList()Ljava/util/List;

    move-result-object v6

    const/4 v9, 0x1

    move-object v0, p0

    move v8, p1

    .line 1745
    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->setUpNewList(Landroid/net/Uri;ILjava/lang/String;[JLjava/util/List;Ljava/util/List;IZZ)V

    goto/16 :goto_0
.end method

.method private internalRemoveAll()V
    .locals 1

    .prologue
    .line 2716
    const-string v0, "internalRemoveAll"

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->printLog(Ljava/lang/String;)V

    .line 2717
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->clearAll()V

    .line 2718
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->notifyMetaChanged(I)V

    .line 2719
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->notifyQueueComposed(I)V

    .line 2720
    return-void
.end method

.method private internalRemoveIds([J)V
    .locals 6
    .param p1, "ids"    # [J

    .prologue
    .line 2429
    monitor-enter p0

    .line 2430
    :try_start_0
    invoke-static {p1}, Ljava/util/Arrays;->sort([J)V

    .line 2431
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2432
    .local v3, "removePositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    if-ge v0, v4, :cond_1

    .line 2433
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayList:[J

    aget-wide v4, v4, v0

    invoke-static {p1, v4, v5}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v4

    if-ltz v4, :cond_0

    .line 2434
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2432
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2437
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 2438
    .local v2, "removeItemSize":I
    new-array v1, v2, [I

    .line 2439
    .local v1, "positions":[I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    .line 2440
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v1, v0

    .line 2439
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2442
    :cond_2
    if-lez v2, :cond_3

    .line 2443
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->internalRemovePositions([I)V

    .line 2445
    :cond_3
    monitor-exit p0

    .line 2446
    return-void

    .line 2445
    .end local v0    # "i":I
    .end local v1    # "positions":[I
    .end local v2    # "removeItemSize":I
    .end local v3    # "removePositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private internalRemovePositions([I)V
    .locals 17
    .param p1, "positions"    # [I

    .prologue
    .line 2449
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v14, v0

    if-nez v14, :cond_1

    .line 2450
    :cond_0
    const-string v14, "internalRemovePositions but request item is 0"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->printLog(Ljava/lang/String;)V

    .line 2560
    :goto_0
    return-void

    .line 2457
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "internalRemovePositions current playing mPosition  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->printLog(Ljava/lang/String;)V

    .line 2458
    monitor-enter p0

    .line 2459
    :try_start_0
    move-object/from16 v0, p1

    array-length v14, v0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    if-ne v14, v15, :cond_2

    .line 2460
    const-string v14, "internalRemovePositions. remove all item."

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->printLog(Ljava/lang/String;)V

    .line 2461
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->internalRemoveAll()V

    .line 2462
    monitor-exit p0

    goto :goto_0

    .line 2559
    :catchall_0
    move-exception v14

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    .line 2464
    :cond_2
    :try_start_1
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->sort([I)V

    .line 2465
    const/4 v10, 0x0

    .line 2466
    .local v10, "removeIndex":I
    move-object/from16 v0, p1

    array-length v11, v0

    .line 2467
    .local v11, "removeListSize":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mQueue:Ljava/util/List;

    if-nez v14, :cond_5

    const/4 v9, 0x0

    .line 2468
    .local v9, "qSize":I
    :goto_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    if-eq v14, v9, :cond_3

    .line 2470
    const-string v14, "SMUSIC-SV-List"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "internalRemovePositions qSize "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " list length : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    :cond_3
    const/4 v3, 0x0

    .line 2474
    .local v3, "isMetaChanged":Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2475
    .local v5, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2476
    .local v6, "newQueue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    .line 2477
    .local v8, "playPos":I
    const/4 v7, 0x0

    .local v7, "p":I
    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    if-ge v7, v14, :cond_a

    .line 2478
    if-lt v10, v11, :cond_6

    .line 2479
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayList:[J

    aget-wide v14, v14, v7

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2480
    if-ge v7, v9, :cond_4

    .line 2481
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mQueue:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2477
    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2467
    .end local v3    # "isMetaChanged":Z
    .end local v5    # "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v6    # "newQueue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    .end local v7    # "p":I
    .end local v8    # "playPos":I
    .end local v9    # "qSize":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mQueue:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v9

    goto :goto_1

    .line 2485
    .restart local v3    # "isMetaChanged":Z
    .restart local v5    # "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v6    # "newQueue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    .restart local v7    # "p":I
    .restart local v8    # "playPos":I
    .restart local v9    # "qSize":I
    :cond_6
    aget v12, p1, v10

    .line 2486
    .local v12, "removePosition":I
    if-ne v7, v12, :cond_9

    .line 2493
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    if-ne v12, v14, :cond_8

    .line 2494
    const/4 v3, 0x1

    .line 2495
    const-string v14, "internalRemovePositions removePosition is play pos! trigger meta changed later"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->printLog(Ljava/lang/String;)V

    .line 2502
    :cond_7
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 2497
    :cond_8
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    if-ge v12, v14, :cond_7

    .line 2498
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "internalRemovePositions removePosition "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " mPlayPos "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->printLog(Ljava/lang/String;)V

    .line 2500
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    .line 2504
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayList:[J

    aget-wide v14, v14, v7

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2505
    if-ge v7, v9, :cond_4

    .line 2506
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mQueue:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2513
    .end local v12    # "removePosition":I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getSortMode()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_b

    .line 2514
    move-object/from16 v0, p0

    iput v8, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    .line 2519
    :goto_5
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mQueue:Ljava/util/List;

    .line 2521
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    .line 2522
    .local v13, "size":I
    new-array v4, v13, [J

    .line 2523
    .local v4, "list":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v13, :cond_c

    .line 2524
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    aput-wide v14, v4, v2

    .line 2523
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 2517
    .end local v2    # "i":I
    .end local v4    # "list":[J
    .end local v13    # "size":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mOrderController:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->removePositions([II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    goto :goto_5

    .line 2526
    .restart local v2    # "i":I
    .restart local v4    # "list":[J
    .restart local v13    # "size":I
    :cond_c
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayList:[J

    .line 2527
    array-length v14, v4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    .line 2529
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    if-lt v14, v15, :cond_d

    .line 2530
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    .line 2531
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleMode:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_d

    .line 2534
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShufflePlayPos:I

    .line 2538
    :cond_d
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->buildRemovedRecentlyPositions([I)V

    .line 2540
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleMode:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_e

    .line 2541
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->removeItemInShuffle(II)V

    .line 2549
    :cond_e
    if-eqz v3, :cond_f

    .line 2550
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->notifyMetaChanged(I)V

    .line 2552
    :cond_f
    if-lez v10, :cond_10

    .line 2553
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->notifyQueueComposed(I)V

    .line 2559
    :cond_10
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private internalReorder(II)V
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v1, 0x1

    .line 2740
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getSortMode()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 2772
    :goto_0
    return-void

    .line 2743
    :cond_0
    monitor-enter p0

    .line 2744
    :try_start_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    if-lt p1, v0, :cond_1

    .line 2745
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    add-int/lit8 p1, v0, -0x1

    .line 2747
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    if-lt p2, v0, :cond_2

    .line 2748
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    add-int/lit8 p2, v0, -0x1

    .line 2754
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->reorderList(II)V

    .line 2755
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->buildReorderedRecentlyPositions(II)V

    .line 2757
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleMode:I

    if-ne v0, v1, :cond_3

    .line 2758
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->createShuffleIndex(I)V

    .line 2760
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->isSameListAndQueueItems()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2761
    const-string/jumbo v0, "reorder try to reorder queue items also."

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->printLog(Ljava/lang/String;)V

    .line 2762
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->reorderQueueItem(II)V

    .line 2770
    :cond_4
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->notifyQueueComposed(I)V

    .line 2771
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private internalResetMoveToCount()V
    .locals 1

    .prologue
    .line 2641
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMoveToRequestCount:I

    .line 2642
    return-void
.end method

.method private internalSetList(Landroid/net/Uri;ILjava/lang/String;[JLjava/util/List;I)V
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "uriType"    # I
    .param p3, "keyWord"    # Ljava/lang/String;
    .param p4, "list"    # [J
    .param p6, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I",
            "Ljava/lang/String;",
            "[J",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 2059
    .local p5, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    monitor-enter p0

    .line 2060
    :try_start_0
    const-string v1, "SV-List"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internalSetList() uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uriType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " keyWord: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2062
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->isLegalAgreed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2063
    const-string v1, "SMUSIC-SV-List"

    const-string v2, "internalSetList() but ignore this request. Because it is not legal agreed."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->notifyCurrentMetaAndLegalError()V

    .line 2066
    monitor-exit p0

    .line 2076
    :goto_0
    return-void

    .line 2069
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayList:[J

    invoke-direct {p0, v1, p4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->isSameList([J[J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2070
    const/4 v2, 0x1

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleMode:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    :goto_1
    move/from16 v0, p6

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->internalSetPosition(IIZ)V

    .line 2075
    :goto_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2070
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 2073
    :cond_2
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v8, p6

    :try_start_1
    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->setUpNewList(Landroid/net/Uri;ILjava/lang/String;[JLjava/util/List;Ljava/util/List;IZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private internalSetPosition(IIZ)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "direction"    # I
    .param p3, "shuffle"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2591
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "internalSetPosition "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->printLog(Ljava/lang/String;)V

    .line 2592
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    if-gtz v3, :cond_0

    .line 2593
    const-string v2, "internalSetPosition but there are no play list, thus reload list."

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->printLog(Ljava/lang/String;)V

    .line 2594
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->internalReloadSavedQueue(Z)V

    .line 2622
    :goto_0
    return-void

    .line 2597
    :cond_0
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    if-lt p1, v3, :cond_1

    .line 2598
    const-string v1, "SMUSIC-SV-List"

    const-string v2, "internalSetPosition ignore this request. It is exceed play list length."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2603
    :cond_1
    if-ltz p1, :cond_2

    if-eqz p3, :cond_7

    :cond_2
    move v0, v2

    .line 2604
    .local v0, "forceShuffle":Z
    :goto_1
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    invoke-direct {p0, p1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getBoundCheckedPosition(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    .line 2605
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-boolean v3, v3, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportRepeatEndFirst:Z

    if-eqz v3, :cond_3

    .line 2606
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    iput v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mFirstIndex:I

    .line 2607
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ATT_10776 now playing list case, movePosition : mFirstIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mFirstIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->printLog(Ljava/lang/String;)V

    .line 2609
    :cond_3
    if-eqz v0, :cond_4

    .line 2610
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->createShuffleIndex(I)V

    .line 2612
    :cond_4
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleMode:I

    if-ne v3, v2, :cond_5

    .line 2613
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 2614
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShufflePlayPos:I

    .line 2617
    :cond_5
    if-eqz v0, :cond_6

    .line 2618
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->notifyShuffleChanged(Z)V

    .line 2620
    :cond_6
    const-string v1, "SV-List"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "movePosition() mPosition : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2621
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->notifyMetaChanged(I)V

    goto :goto_0

    .end local v0    # "forceShuffle":Z
    :cond_7
    move v0, v1

    .line 2603
    goto :goto_1
.end method

.method private internalSetQueueItem(JI)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "direction"    # I

    .prologue
    .line 2625
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internalSetQueueItem "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->printLog(Ljava/lang/String;)V

    .line 2626
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mQueue:Ljava/util/List;

    if-nez v2, :cond_0

    .line 2638
    :goto_0
    return-void

    .line 2629
    :cond_0
    const/4 v1, 0x0

    .line 2630
    .local v1, "position":I
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession$QueueItem;

    .line 2631
    .local v0, "item":Landroid/media/session/MediaSession$QueueItem;
    invoke-virtual {v0}, Landroid/media/session/MediaSession$QueueItem;->getQueueId()J

    move-result-wide v4

    cmp-long v3, p1, v4

    if-nez v3, :cond_1

    .line 2632
    const/4 v2, 0x0

    invoke-direct {p0, v1, p3, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->internalSetPosition(IIZ)V

    goto :goto_0

    .line 2635
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 2636
    goto :goto_1

    .line 2637
    .end local v0    # "item":Landroid/media/session/MediaSession$QueueItem;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internalSetQueueItem not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->printLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isEndOfPosition()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1052
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleMode:I

    packed-switch v3, :pswitch_data_0

    .line 1062
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not support shuffle mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1054
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getSortMode()I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 1055
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_1

    .line 1060
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 1055
    goto :goto_0

    .line 1057
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getSortList()Ljava/util/List;

    move-result-object v0

    .line 1058
    .local v0, "sortedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0

    .line 1060
    .end local v0    # "sortedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :pswitch_1
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShufflePlayPos:I

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0

    .line 1052
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isLegalAgreed()Z
    .locals 1

    .prologue
    .line 2668
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->isLegalAgreed()Z

    move-result v0

    return v0
.end method

.method private isLocalMode()Z
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->isLocalMode()Z

    move-result v0

    return v0
.end method

.method private isOnlineContent(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    .prologue
    .line 1605
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isOnline()Z

    move-result v0

    return v0
.end method

.method private isQueueCompleteCondition(I)Z
    .locals 5
    .param p1, "startPos"    # I

    .prologue
    const/4 v1, 0x1

    .line 625
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRepeatMode:I

    if-nez v2, :cond_2

    .line 626
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleMode:I

    if-nez v2, :cond_3

    .line 627
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getSortMode()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 628
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    if-le p1, v2, :cond_2

    .line 643
    :cond_0
    :goto_0
    return v1

    .line 632
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getSortList()Ljava/util/List;

    move-result-object v0

    .line 633
    .local v0, "sortList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 643
    .end local v0    # "sortList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 638
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-le v2, v3, :cond_2

    goto :goto_0
.end method

.method private isQueueThread()Z
    .locals 4

    .prologue
    .line 291
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getId()J

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

.method private isSameList([J[J)Z
    .locals 8
    .param p1, "src"    # [J
    .param p2, "target"    # [J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 539
    if-ne p1, p2, :cond_1

    .line 550
    :cond_0
    :goto_0
    return v1

    .line 542
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 543
    goto :goto_0

    .line 545
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 546
    aget-wide v4, p1, v0

    aget-wide v6, p2, v0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    move v1, v2

    .line 547
    goto :goto_0

    .line 545
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private isSameListAndQueueItems()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2777
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mQueue:Ljava/util/List;

    if-nez v1, :cond_1

    move v1, v0

    :goto_0
    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0
.end method

.method private isSkipCondition(I)Z
    .locals 2
    .param p1, "sortMode"    # I

    .prologue
    .line 665
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->isLocalMode()Z

    move-result v0

    .line 666
    .local v0, "isLocalMode":Z
    if-nez v0, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mIsAvailableNetwork:Z

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSkipCurrentItem(ILcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Z
    .locals 1
    .param p1, "sortMode"    # I
    .param p2, "item"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    .prologue
    .line 661
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->isSkipCondition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isLocal()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyCurrentMetaAndLegalError()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 2079
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->isQueueThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2080
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->internalNotifyLegalError()V

    .line 2085
    :goto_0
    return-void

    .line 2082
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->removeMessages(I)V

    .line 2083
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private notifyMetaChanged(I)V
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 554
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->notifyMetaChanged(IZ)V

    .line 555
    return-void
.end method

.method private notifyMetaChanged(IZ)V
    .locals 17
    .param p1, "direction"    # I
    .param p2, "isGapLessPlaying"    # Z

    .prologue
    .line 558
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyMetaChanged mPosition "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isGapLessPlaying "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->printInfoLog(Ljava/lang/String;)V

    .line 560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mExtras:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mUriType:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->pushDefaultInfo(III)V

    .line 561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    if-nez v2, :cond_1

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayingItemFactory:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mContext:Landroid/content/Context;

    .line 565
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getCurrentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getUriType()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mKeyWord:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    move/from16 v9, p1

    invoke-interface/range {v2 .. v9}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;->getPlayingItem(Landroid/content/Context;Landroid/net/Uri;ILjava/lang/String;III)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v14

    .line 567
    .local v14, "item":Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getSortMode()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->isSkipCurrentItem(ILcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 568
    const-wide/16 v10, 0x0

    .line 572
    .local v10, "base":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    move/from16 v16, v0

    .line 573
    .local v16, "startPos":I
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getPlayableItemOnSkipCondition(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v14

    .line 575
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->isQueueCompleteCondition(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 576
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getLastPositionInQueue()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->onQueueComplete()V

    .line 578
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyMetaChanged mPosition "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  Repeat.OFF and Shuffle."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", last song was played, no next song."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->printInfoLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 586
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyMetaChanged skipped mPosition "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->printInfoLog(Ljava/lang/String;)V

    .line 588
    .end local v10    # "base":J
    .end local v16    # "startPos":I
    :cond_3
    if-nez p2, :cond_5

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->isOnlineContent(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 589
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getNetworkError()I

    move-result v13

    .line 590
    .local v13, "error":I
    const/4 v2, -0x1

    if-eq v13, v2, :cond_5

    .line 591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    invoke-virtual {v2, v13}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->notifyStreamingError(I)V

    .line 592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getQueuePosition()I

    move-result v15

    .line 593
    .local v15, "position":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    add-int/lit8 v3, v15, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    rem-int/2addr v3, v4

    if-ne v2, v3, :cond_7

    .line 595
    const/16 p1, 0x2

    .line 600
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    .line 602
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayingItemFactory:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mContext:Landroid/content/Context;

    .line 603
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getCurrentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getUriType()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mKeyWord:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    move/from16 v9, p1

    invoke-interface/range {v2 .. v9}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;->getPlayingItem(Landroid/content/Context;Landroid/net/Uri;ILjava/lang/String;III)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v14

    .line 607
    .end local v13    # "error":I
    .end local v15    # "position":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mExtras:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mUriType:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->pushDefaultInfo(III)V

    .line 608
    if-nez v14, :cond_6

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v14

    .end local v14    # "item":Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    :cond_6
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mCurrentPlayingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    .line 609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mCurrentPlayingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->onMetaChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Z)V

    .line 610
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->executeNextPlayingItem()V

    .line 611
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->saveQueuePosition(I)V

    .line 612
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getCurrentUri()Landroid/net/Uri;

    move-result-object v12

    .line 613
    .local v12, "currentUri":Landroid/net/Uri;
    if-eqz v12, :cond_0

    .line 614
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->registerCurrentSongObserver(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 596
    .end local v12    # "currentUri":Landroid/net/Uri;
    .restart local v13    # "error":I
    .restart local v14    # "item":Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .restart local v15    # "position":I
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    add-int/lit8 v3, v15, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    rem-int/2addr v3, v4

    if-ne v2, v3, :cond_4

    .line 598
    const/16 p1, 0x3

    goto :goto_1
.end method

.method private notifyQueueComposed(I)V
    .locals 4
    .param p1, "queueChangedReason"    # I

    .prologue
    .line 794
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mExtras:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mUriType:I

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->pushDefaultInfo(III)V

    .line 795
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mExtras:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;

    const-string v1, "com.samsung.android.app.music.core.state.queue.CURRENT_QUEUE_TYPE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->pushIntExtras(Ljava/lang/String;I)V

    .line 796
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mExtras:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->pushQueueChangedReason(I)V

    .line 797
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mQueue:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mExtras:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->notifyQueueComposed(Ljava/util/List;Landroid/os/Bundle;)V

    .line 804
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyQueueComposed size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->printLog(Ljava/lang/String;)V

    .line 806
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayList:[J

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mUriType:I

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mKeyWord:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->saveQueue([JIILjava/lang/String;)V

    .line 807
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->executeNextPlayingItem()V

    .line 808
    return-void
.end method

.method private notifyRepeatChanged()V
    .locals 3

    .prologue
    .line 2879
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mExtras:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRepeatMode:I

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mUnionMode:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->pushRepeatExtras(II)V

    .line 2880
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    if-eqz v0, :cond_0

    .line 2881
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mExtras:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->notifyRepeatChanged(Landroid/os/Bundle;)V

    .line 2883
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->executeNextPlayingItem()V

    .line 2884
    return-void
.end method

.method private notifyShuffleChanged(Z)V
    .locals 2
    .param p1, "doExecuteNext"    # Z

    .prologue
    .line 2857
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->pushExtraShuffleChanged()V

    .line 2858
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    if-eqz v0, :cond_0

    .line 2859
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mExtras:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->notifyShuffleChanged(Landroid/os/Bundle;)V

    .line 2860
    if-eqz p1, :cond_0

    .line 2861
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->executeNextPlayingItem()V

    .line 2864
    :cond_0
    return-void
.end method

.method private notifySortModeChanged(Z)V
    .locals 2
    .param p1, "doExecuteNext"    # Z

    .prologue
    .line 2954
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    if-eqz v0, :cond_0

    .line 2955
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mExtras:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->notifySortChanged(Landroid/os/Bundle;)V

    .line 2956
    if-eqz p1, :cond_0

    .line 2957
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->executeNextPlayingItem()V

    .line 2960
    :cond_0
    return-void
.end method

.method private postTaskMoveTo(ZIZ)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "direction"    # I
    .param p3, "isGapLessPlaying"    # Z

    .prologue
    .line 404
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    const/16 v2, 0xd

    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$MoveRequest;

    invoke-direct {v3, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$MoveRequest;-><init>(ZIZ)V

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 406
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMoveToRequestCount:I

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMoveToRequestCount:I

    mul-int/lit8 v2, v2, 0x32

    int-to-long v2, v2

    :goto_0
    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 408
    return-void

    .line 406
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private preTaskMoveTo()V
    .locals 4

    .prologue
    .line 350
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->removeMessages(I)V

    .line 351
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMoveToRequestCount:I

    if-gtz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    const/16 v1, 0xe

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 355
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMoveToRequestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMoveToRequestCount:I

    .line 356
    return-void
.end method

.method private printInfoLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 3114
    const-string v0, "SMUSIC-SV-List"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3115
    return-void
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 3110
    const-string v0, "SMUSIC-SV-List"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3111
    return-void
.end method

.method private pushExtraShuffleChanged()V
    .locals 5

    .prologue
    .line 2853
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mExtras:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShufflePlayPos:I

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleMode:I

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mUnionMode:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->pushShuffleExtras(Ljava/util/ArrayList;III)V

    .line 2854
    return-void
.end method

.method private pushExtraSortModeChanged()V
    .locals 4

    .prologue
    .line 2949
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mOrderController:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->getSortInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;

    move-result-object v0

    .line 2950
    .local v0, "info":Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mExtras:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;->getOrderedList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;->getSortMode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->pushSortExtras(Ljava/util/ArrayList;I)V

    .line 2951
    return-void
.end method

.method private registerContentObserver(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 920
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mObserver:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;

    if-nez v0, :cond_0

    .line 926
    :goto_0
    return-void

    .line 923
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->unregisterContentObserver()V

    .line 924
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mObserver:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 925
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mIsContentObserverRegistered:Z

    goto :goto_0
.end method

.method private registerCurrentSongObserver(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 763
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->unregisterCurrentSongObserver()V

    .line 764
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mCurrentSongObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 765
    return-void
.end method

.method private reloadQueue(Ljava/lang/String;)[J
    .locals 10
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    .line 1987
    const/4 v2, 0x0

    .line 1988
    .local v2, "list":[J
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 1989
    .local v5, "qLen":I
    :goto_0
    const/4 v3, 0x0

    .line 1990
    .local v3, "listLength":I
    const/4 v7, 0x1

    if-le v5, v7, :cond_4

    .line 1991
    const/4 v4, 0x0

    .line 1992
    .local v4, "n":I
    const/4 v6, 0x0

    .line 1993
    .local v6, "shift":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_4

    .line 1994
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1995
    .local v0, "c":C
    const/16 v7, 0x3b

    if-ne v0, v7, :cond_1

    .line 1996
    add-int/lit8 v7, v3, 0x1

    invoke-direct {p0, v2, v7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->ensurePlayListCapacity([JI)[J

    move-result-object v2

    .line 1997
    int-to-long v8, v4

    aput-wide v8, v2, v3

    .line 1998
    add-int/lit8 v3, v3, 0x1

    .line 1999
    const/4 v4, 0x0

    .line 2000
    const/4 v6, 0x0

    .line 1993
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1988
    .end local v0    # "c":C
    .end local v1    # "i":I
    .end local v3    # "listLength":I
    .end local v4    # "n":I
    .end local v5    # "qLen":I
    .end local v6    # "shift":I
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 2002
    .restart local v0    # "c":C
    .restart local v1    # "i":I
    .restart local v3    # "listLength":I
    .restart local v4    # "n":I
    .restart local v5    # "qLen":I
    .restart local v6    # "shift":I
    :cond_1
    const/16 v7, 0x30

    if-lt v0, v7, :cond_2

    const/16 v7, 0x39

    if-gt v0, v7, :cond_2

    .line 2003
    add-int/lit8 v7, v0, -0x30

    shl-int/2addr v7, v6

    add-int/2addr v4, v7

    .line 2011
    :goto_3
    add-int/lit8 v6, v6, 0x4

    goto :goto_2

    .line 2004
    :cond_2
    const/16 v7, 0x61

    if-lt v0, v7, :cond_3

    const/16 v7, 0x66

    if-gt v0, v7, :cond_3

    .line 2005
    add-int/lit8 v7, v0, 0xa

    add-int/lit8 v7, v7, -0x61

    shl-int/2addr v7, v6

    add-int/2addr v4, v7

    goto :goto_3

    .line 2008
    :cond_3
    const/4 v3, 0x0

    .line 2015
    .end local v0    # "c":C
    .end local v1    # "i":I
    .end local v4    # "n":I
    .end local v6    # "shift":I
    :cond_4
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->shrinkQueue([JI)[J

    move-result-object v2

    .line 2016
    return-object v2
.end method

.method private removeDeletedItems([JLjava/util/List;[J)[J
    .locals 15
    .param p1, "prevList"    # [J
    .param p3, "removeIds"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;[J)[J"
        }
    .end annotation

    .prologue
    .line 1831
    .local p2, "recentlyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    .line 1832
    .local v9, "realSize":I
    move-object/from16 v0, p1

    array-length v7, v0

    .line 1833
    .local v7, "prevListSize":I
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v8

    .line 1834
    .local v8, "prevRecentlySize":I
    new-array v11, v7, [J

    .line 1837
    .local v11, "result":[J
    const/4 v2, 0x0

    .local v2, "i":I
    move v10, v9

    .end local v9    # "realSize":I
    .local v10, "realSize":I
    :goto_0
    if-ge v2, v7, :cond_1

    .line 1838
    aget-wide v4, p1, v2

    .line 1839
    .local v4, "item":J
    move-object/from16 v0, p3

    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v12

    .line 1840
    .local v12, "retId":I
    if-lez v12, :cond_0

    .line 1841
    if-lez v8, :cond_2

    .line 1843
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 1844
    .local v6, "pos":I
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v9, v10

    .line 1837
    .end local v6    # "pos":I
    .end local v10    # "realSize":I
    .restart local v9    # "realSize":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v10, v9

    .end local v9    # "realSize":I
    .restart local v10    # "realSize":I
    goto :goto_0

    .line 1848
    :cond_0
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "realSize":I
    .restart local v9    # "realSize":I
    aput-wide v4, v11, v10

    goto :goto_1

    .line 1851
    .end local v4    # "item":J
    .end local v9    # "realSize":I
    .end local v12    # "retId":I
    .restart local v10    # "realSize":I
    :cond_1
    new-array v3, v10, [J

    .line 1852
    .local v3, "list":[J
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v11, v13, v3, v14, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1853
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v8}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->calculateReorderInRecentlyList(Ljava/util/List;I)V

    .line 1854
    iget-object v13, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRecentlyPositions:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;->setRecentlyPlayList(Ljava/util/List;)V

    .line 1855
    return-object v3

    .end local v3    # "list":[J
    .restart local v4    # "item":J
    .restart local v12    # "retId":I
    :cond_2
    move v9, v10

    .end local v10    # "realSize":I
    .restart local v9    # "realSize":I
    goto :goto_1
.end method

.method private removeItemInShuffle(II)V
    .locals 4
    .param p1, "removeStartPosition"    # I
    .param p2, "playPosition"    # I

    .prologue
    .line 2581
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2582
    .local v1, "size":I
    move v0, p1

    .local v0, "position":I
    :goto_0
    if-gt v0, v1, :cond_0

    .line 2585
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2582
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2587
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShufflePlayPos:I

    .line 2588
    return-void
.end method

.method private removeOldItemFirstByLimit(Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;)Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;
    .locals 18
    .param p1, "listInfo"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;

    .prologue
    .line 2298
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;->playList:[J

    array-length v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->limitQueueSize:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-gt v15, v0, :cond_0

    .line 2345
    .end local p1    # "listInfo":Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;
    :goto_0
    return-object p1

    .line 2303
    .restart local p1    # "listInfo":Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;
    :cond_0
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;->recentlyPlayList:Ljava/util/List;

    .line 2304
    .local v10, "recentlyPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2305
    .local v12, "removePositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    .line 2306
    .local v9, "prevSize":I
    add-int/lit8 v3, v9, -0x1

    .local v3, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget v15, v15, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->limitQueueSize:I

    if-lt v3, v15, :cond_2

    .line 2307
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 2308
    .local v7, "pos":I
    move-object/from16 v0, p1

    iget v15, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;->playPos:I

    if-ne v15, v7, :cond_1

    .line 2310
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget v15, v15, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->limitQueueSize:I

    add-int/lit8 v4, v15, -0x1

    .line 2311
    .local v4, "lastIndex":I
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2312
    .local v5, "latestPosition":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2313
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v10, v4, v15}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2314
    invoke-interface {v10, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2306
    .end local v4    # "lastIndex":I
    .end local v5    # "latestPosition":I
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2317
    :cond_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2318
    invoke-interface {v10, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 2320
    .end local v7    # "pos":I
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v9}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->calculateReorderInRecentlyList(Ljava/util/List;I)V

    .line 2323
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget v15, v15, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->limitQueueSize:I

    new-array v6, v15, [J

    .line 2324
    .local v6, "newList":[J
    invoke-static {v12}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2325
    const/4 v2, 0x0

    .line 2326
    .local v2, "count":I
    const/4 v11, 0x0

    .line 2327
    .local v11, "removePosition":I
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    .line 2328
    .local v13, "removeSize":I
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;->playList:[J

    .line 2329
    .local v8, "prevList":[J
    move-object/from16 v14, p1

    .line 2330
    .local v14, "resultInfo":Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;
    const/4 v3, 0x0

    :goto_3
    array-length v15, v8

    if-ge v3, v15, :cond_5

    .line 2331
    if-le v13, v11, :cond_3

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-ne v3, v15, :cond_3

    .line 2333
    add-int/lit8 v11, v11, 0x1

    .line 2330
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2336
    :cond_3
    aget-wide v16, v8, v3

    aput-wide v16, v6, v2

    .line 2337
    move-object/from16 v0, p1

    iget v15, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;->playPos:I

    if-ne v3, v15, :cond_4

    .line 2339
    iput v2, v14, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;->playPos:I

    .line 2341
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2343
    :cond_5
    iput-object v10, v14, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;->recentlyPlayList:Ljava/util/List;

    .line 2344
    iput-object v6, v14, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;->playList:[J

    move-object/from16 p1, v14

    .line 2345
    goto/16 :goto_0
.end method

.method private reorderList(II)V
    .locals 6
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 2781
    if-ne p1, p2, :cond_1

    .line 2803
    :cond_0
    :goto_0
    return-void

    .line 2784
    :cond_1
    if-ge p1, p2, :cond_3

    .line 2785
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayList:[J

    aget-wide v0, v2, p1

    .line 2786
    .local v0, "tmp":J
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayList:[J

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayList:[J

    sub-int v5, p2, p1

    invoke-static {v2, v3, v4, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2787
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayList:[J

    aput-wide v0, v2, p2

    .line 2788
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    if-ne v2, p1, :cond_2

    .line 2789
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    goto :goto_0

    .line 2790
    :cond_2
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    if-lt v2, p1, :cond_0

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    if-gt v2, p2, :cond_0

    .line 2791
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    goto :goto_0

    .line 2793
    .end local v0    # "tmp":J
    :cond_3
    if-ge p2, p1, :cond_0

    .line 2794
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayList:[J

    aget-wide v0, v2, p1

    .line 2795
    .restart local v0    # "tmp":J
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayList:[J

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayList:[J

    add-int/lit8 v4, p2, 0x1

    sub-int v5, p1, p2

    invoke-static {v2, p2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2796
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayList:[J

    aput-wide v0, v2, p2

    .line 2797
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    if-ne v2, p1, :cond_4

    .line 2798
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    goto :goto_0

    .line 2799
    :cond_4
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    if-lt v2, p2, :cond_0

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    if-gt v2, p1, :cond_0

    .line 2800
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    goto :goto_0
.end method

.method private reorderQueueItem(II)V
    .locals 4
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 2817
    if-ne p1, p2, :cond_0

    .line 2829
    :goto_0
    return-void

    .line 2820
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mQueue:Ljava/util/List;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mQueue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/media/session/MediaSession$QueueItem;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/session/MediaSession$QueueItem;

    .line 2821
    .local v0, "list":[Landroid/media/session/MediaSession$QueueItem;
    aget-object v1, v0, p1

    .line 2822
    .local v1, "tmp":Landroid/media/session/MediaSession$QueueItem;
    if-ge p1, p2, :cond_2

    .line 2823
    add-int/lit8 v2, p1, 0x1

    sub-int v3, p2, p1

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2827
    :cond_1
    :goto_1
    aput-object v1, v0, p2

    .line 2828
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mQueue:Ljava/util/List;

    goto :goto_0

    .line 2824
    :cond_2
    if-le p1, p2, :cond_1

    .line 2825
    add-int/lit8 v2, p2, 0x1

    sub-int v3, p1, p2

    invoke-static {v0, p2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method

.method private saveQueue([JIILjava/lang/String;)V
    .locals 9
    .param p1, "playList"    # [J
    .param p2, "playPos"    # I
    .param p3, "uriType"    # I
    .param p4, "keyword"    # Ljava/lang/String;

    .prologue
    .line 811
    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    .line 813
    const-string v0, "SV-List"

    const-string/jumbo v1, "saveQueue but it is not music media tracks. Thus do not save it"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    :goto_0
    return-void

    .line 817
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mDBUpdater:Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;

    if-nez v0, :cond_1

    .line 818
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mDBUpdater:Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;

    .line 820
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mDBUpdater:Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;->saveNowPlayingQueue([J)V

    .line 821
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getQueueString([J)Ljava/lang/String;

    move-result-object v4

    .line 822
    .local v4, "q":Ljava/lang/String;
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getRecentlyQueueString()Ljava/lang/String;

    move-result-object v5

    .line 823
    .local v5, "recentlyQueue":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    const-wide/16 v2, 0x1

    move v6, p2

    move v7, p3

    move-object v8, p4

    .line 824
    invoke-interface/range {v1 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setQueueInformation(JLjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 825
    const-string v0, "SV-List"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveQueue mUriType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mKeyWord "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " q: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveQueuePosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 790
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setQueuePosition(I)V

    .line 791
    return-void
.end method

.method private setRepeatMode(IZ)V
    .locals 3
    .param p1, "repeatMode"    # I
    .param p2, "doSave"    # Z

    .prologue
    const/4 v2, 0x3

    .line 1347
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->removeMessages(I)V

    .line 1348
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->post(III)V

    .line 1349
    return-void

    .line 1348
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setShuffleMode(IZ)V
    .locals 3
    .param p1, "shuffleMode"    # I
    .param p2, "doSave"    # Z

    .prologue
    const/4 v2, 0x2

    .line 1332
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->removeMessages(I)V

    .line 1333
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->post(III)V

    .line 1334
    return-void

    .line 1333
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setSortMode(IZ)V
    .locals 3
    .param p1, "sortMode"    # I
    .param p2, "doSave"    # Z

    .prologue
    const/16 v2, 0xf

    .line 1629
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->removeMessages(I)V

    .line 1630
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->post(III)V

    .line 1631
    return-void

    .line 1630
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setUnionMode(ZIZ)V
    .locals 4
    .param p1, "syncRequest"    # Z
    .param p2, "value"    # I
    .param p3, "doSave"    # Z

    .prologue
    .line 1404
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mUnionMode:I

    if-ne v2, p2, :cond_1

    .line 1405
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "trying to setUnionMode but it\'s same value value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->printLog(Ljava/lang/String;)V

    .line 1442
    :cond_0
    :goto_0
    return-void

    .line 1408
    :cond_1
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mUnionMode:I

    .line 1411
    packed-switch p2, :pswitch_data_0

    .line 1429
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUnionMode request value is abnormal. value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->printLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1413
    :pswitch_0
    const/4 v1, 0x0

    .line 1414
    .local v1, "shuffle":I
    const/4 v0, 0x0

    .line 1432
    .local v0, "repeat":I
    :goto_1
    if-eqz p1, :cond_2

    .line 1433
    invoke-direct {p0, v1, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->internalChangeShuffle(IZ)Z

    .line 1434
    invoke-direct {p0, v0, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->internalChangeRepeat(IZ)Z

    .line 1439
    :goto_2
    if-eqz p3, :cond_0

    .line 1440
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mUnionMode:I

    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setUnionShuffleRepeat(I)V

    goto :goto_0

    .line 1417
    .end local v0    # "repeat":I
    .end local v1    # "shuffle":I
    :pswitch_1
    const/4 v1, 0x0

    .line 1418
    .restart local v1    # "shuffle":I
    const/4 v0, 0x2

    .line 1419
    .restart local v0    # "repeat":I
    goto :goto_1

    .line 1421
    .end local v0    # "repeat":I
    .end local v1    # "shuffle":I
    :pswitch_2
    const/4 v1, 0x0

    .line 1422
    .restart local v1    # "shuffle":I
    const/4 v0, 0x1

    .line 1423
    .restart local v0    # "repeat":I
    goto :goto_1

    .line 1425
    .end local v0    # "repeat":I
    .end local v1    # "shuffle":I
    :pswitch_3
    const/4 v1, 0x1

    .line 1426
    .restart local v1    # "shuffle":I
    const/4 v0, 0x0

    .line 1427
    .restart local v0    # "repeat":I
    goto :goto_1

    .line 1436
    :cond_2
    invoke-direct {p0, v1, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->setShuffleMode(IZ)V

    .line 1437
    invoke-direct {p0, v0, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->setRepeatMode(IZ)V

    goto :goto_2

    .line 1411
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setUpNewList(Landroid/net/Uri;ILjava/lang/String;[JLjava/util/List;Ljava/util/List;IZZ)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "uriType"    # I
    .param p3, "keyWord"    # Ljava/lang/String;
    .param p4, "list"    # [J
    .param p7, "position"    # I
    .param p8, "syncRequest"    # Z
    .param p9, "isReload"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I",
            "Ljava/lang/String;",
            "[J",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;IZZ)V"
        }
    .end annotation

    .prologue
    .local p5, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    .local p6, "recentlyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 2097
    if-nez p1, :cond_0

    .line 2154
    :goto_0
    return-void

    .line 2100
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->clearQueue()V

    .line 2101
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getCurrentBaseUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2102
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->changeBaseUri(Landroid/net/Uri;)V

    .line 2105
    :cond_1
    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    .line 2108
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mContext:Landroid/content/Context;

    const-string v3, "DLNA"

    invoke-static {v1, v3}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 2111
    :cond_2
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mUriType:I

    .line 2112
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mKeyWord:Ljava/lang/String;

    .line 2114
    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->cancelConverter(Z)V

    .line 2115
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayList:[J

    .line 2116
    if-nez p4, :cond_8

    move v1, v2

    :goto_1
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    .line 2119
    if-eqz p6, :cond_3

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 2120
    :cond_3
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->buildRecentlyPositions(I)V

    .line 2123
    :cond_4
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    invoke-direct {p0, p7, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getBoundCheckedPosition(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    .line 2124
    invoke-direct {p0, p8}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->buildSortList(Z)V

    .line 2125
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleMode:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_5

    .line 2126
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->createShuffleIndex(I)V

    .line 2128
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-boolean v1, v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportRepeatEndFirst:Z

    if-eqz v1, :cond_6

    .line 2129
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mFirstIndex:I

    .line 2130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ATT_10776 setUpNewList : mFirstIndex="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mFirstIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->printLog(Ljava/lang/String;)V

    .line 2133
    :cond_6
    const-string v1, "SV-List"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setUpNewList()  mPlayListLength : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mPlayPos : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2136
    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->notifyMetaChanged(I)V

    .line 2137
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    if-eqz v1, :cond_7

    .line 2138
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    invoke-virtual {v1, p4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->onQueueChanged([J)V

    .line 2141
    :cond_7
    if-nez p5, :cond_a

    .line 2143
    if-eqz p9, :cond_9

    const/4 v0, 0x4

    .line 2145
    .local v0, "queueChangedReason":I
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getCurrentBaseUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p4, p8, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->buildUpQueue(Landroid/net/Uri;[JZI)V

    goto/16 :goto_0

    .line 2116
    .end local v0    # "queueChangedReason":I
    :cond_8
    array-length v1, p4

    goto/16 :goto_1

    :cond_9
    move v0, v2

    .line 2143
    goto :goto_2

    .line 2149
    :cond_a
    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mQueue:Ljava/util/List;

    .line 2150
    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->notifyQueueComposed(I)V

    .line 2152
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->executeConverter()V

    goto/16 :goto_0
.end method

.method private shrinkQueue([JI)[J
    .locals 4
    .param p1, "list"    # [J
    .param p2, "length"    # I

    .prologue
    const/4 v1, 0x0

    .line 2020
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2021
    :cond_0
    const-string v1, "SV-List"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "return empty list length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2022
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->EMPTY_PLAYLIST:[J

    .line 2026
    :goto_0
    return-object v0

    .line 2024
    :cond_1
    new-array v0, p2, [J

    .line 2025
    .local v0, "newList":[J
    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private skipOnlineContentsBySortMode(Ljava/util/List;II)V
    .locals 17
    .param p2, "direction"    # I
    .param p3, "startPos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2903
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2904
    :cond_0
    const-string/jumbo v2, "skipOnlineContentsBySortMode queue is null or empty"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->printLog(Ljava/lang/String;)V

    .line 2946
    :cond_1
    :goto_0
    return-void

    .line 2908
    :cond_2
    const-wide/16 v10, 0x0

    .line 2912
    .local v10, "base":J
    move/from16 v13, p3

    .line 2914
    .local v13, "currentPos":I
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShufflePlayPos:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getNextPosition(IIZ)I

    move-result v13

    .line 2915
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/session/MediaSession$QueueItem;

    .line 2916
    .local v12, "currentItem":Landroid/media/session/MediaSession$QueueItem;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getCpAttrsFromQueueItem(Landroid/media/session/MediaSession$QueueItem;)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs;->isLocal(I)Z

    move-result v15

    .line 2917
    .local v15, "isLocal":Z
    if-eqz v15, :cond_4

    .line 2918
    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    .line 2927
    :goto_1
    move/from16 v0, p3

    if-ne v0, v13, :cond_5

    .line 2928
    const-string v2, "SMUSIC-SV-List"

    const-string v3, "There is no local contents. Please check concept."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2929
    const/16 v16, 0x0

    .line 2935
    .local v16, "item":Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mExtras:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mUriType:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->pushDefaultInfo(III)V

    .line 2936
    if-nez v16, :cond_6

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v2

    :goto_3
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mCurrentPlayingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    .line 2937
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mCurrentPlayingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->onMetaChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Z)V

    .line 2938
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->saveQueuePosition(I)V

    .line 2939
    if-eqz v16, :cond_1

    .line 2942
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getCurrentUri()Landroid/net/Uri;

    move-result-object v14

    .line 2943
    .local v14, "currentUri":Landroid/net/Uri;
    if-eqz v14, :cond_1

    .line 2944
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->registerCurrentSongObserver(Landroid/net/Uri;)V

    goto :goto_0

    .line 2921
    .end local v14    # "currentUri":Landroid/net/Uri;
    .end local v16    # "item":Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    :cond_4
    move/from16 v0, p3

    if-ne v0, v13, :cond_3

    goto :goto_1

    .line 2931
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayingItemFactory:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mContext:Landroid/content/Context;

    .line 2932
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getCurrentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getUriType()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mKeyWord:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    move/from16 v9, p2

    invoke-interface/range {v2 .. v9}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;->getPlayingItem(Landroid/content/Context;Landroid/net/Uri;ILjava/lang/String;III)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v16

    .restart local v16    # "item":Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    goto :goto_2

    :cond_6
    move-object/from16 v2, v16

    .line 2936
    goto :goto_3
.end method

.method private testDummyQueue([JLjava/util/List;)Ljava/util/List;
    .locals 10
    .param p1, "ids"    # [J
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    const/4 v8, 0x0

    .line 981
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 982
    .local v4, "time":J
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 983
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    invoke-interface {v3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 984
    move-object v2, p1

    .line 985
    .local v2, "originList":[J
    :goto_0
    array-length v6, v2

    const/16 v7, 0x2710

    if-ge v6, v7, :cond_0

    .line 986
    array-length v0, v2

    .line 987
    .local v0, "len":I
    mul-int/lit8 v6, v0, 0x2

    new-array v1, v6, [J

    .line 988
    .local v1, "list":[J
    invoke-static {v2, v8, v1, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 989
    invoke-static {v2, v8, v1, v0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 990
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v3, v6, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 991
    move-object v2, v1

    .line 992
    goto :goto_0

    .line 993
    .end local v0    # "len":I
    .end local v1    # "list":[J
    :cond_0
    const-string v6, "SV-List"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "make dummy items size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " takes "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 994
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 993
    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayList:[J

    .line 996
    array-length v6, v2

    iput v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    .line 997
    move-object p2, v3

    .line 998
    return-object p2
.end method

.method private toggleRepeatMode()I
    .locals 4

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1487
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getRepeatMode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1498
    const-string/jumbo v0, "toggleRepeatMode but current mode is abnormal."

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->printLog(Ljava/lang/String;)V

    move v0, v2

    .line 1499
    :goto_0
    return v0

    .line 1489
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->setRepeatMode(I)V

    goto :goto_0

    .line 1492
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->setRepeatMode(I)V

    move v0, v1

    .line 1493
    goto :goto_0

    .line 1495
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->setRepeatMode(I)V

    move v0, v2

    .line 1496
    goto :goto_0

    .line 1487
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private toggleShuffleMode()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1504
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getShuffleMode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1512
    const-string/jumbo v0, "toggleShuffleMode but current mode is abnormal."

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->printLog(Ljava/lang/String;)V

    move v0, v1

    .line 1513
    :goto_0
    return v0

    .line 1506
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->setShuffleMode(I)V

    goto :goto_0

    .line 1509
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->setShuffleMode(I)V

    move v0, v1

    .line 1510
    goto :goto_0

    .line 1504
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private toggleUnionMode()I
    .locals 5

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 1518
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getUnionMode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1534
    const-string/jumbo v0, "toggleUnionMode but current mode is abnormal."

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->printLog(Ljava/lang/String;)V

    move v0, v3

    .line 1535
    :goto_0
    return v0

    .line 1522
    :pswitch_0
    invoke-direct {p0, v3, v0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->setUnionMode(ZIZ)V

    goto :goto_0

    .line 1525
    :pswitch_1
    invoke-direct {p0, v3, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->setUnionMode(ZIZ)V

    move v0, v1

    .line 1526
    goto :goto_0

    .line 1528
    :pswitch_2
    invoke-direct {p0, v3, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->setUnionMode(ZIZ)V

    move v0, v2

    .line 1529
    goto :goto_0

    .line 1531
    :pswitch_3
    invoke-direct {p0, v3, v3, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->setUnionMode(ZIZ)V

    move v0, v3

    .line 1532
    goto :goto_0

    .line 1518
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private unregisterContentObserver()V
    .locals 2

    .prologue
    .line 932
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mObserver:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;

    if-nez v0, :cond_1

    .line 939
    :cond_0
    :goto_0
    return-void

    .line 935
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mIsContentObserverRegistered:Z

    if-eqz v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mObserver:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 937
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mIsContentObserverRegistered:Z

    goto :goto_0
.end method

.method private unregisterCurrentSongObserver()V
    .locals 2

    .prologue
    .line 768
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mCurrentSongObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 769
    return-void
.end method

.method private updateNextPosition()Z
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1076
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-boolean v3, v3, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportRepeatEndFirst:Z

    if-eqz v3, :cond_2

    .line 1077
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mFirstIndex:I

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    add-int/lit8 v4, v4, -0x1

    if-le v3, v4, :cond_0

    .line 1078
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mFirstIndex:I

    .line 1079
    const-string v3, "ATT_10776 updateNextPosition() mPlayListLength had been changed reset first index to 0"

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->printLog(Ljava/lang/String;)V

    .line 1083
    :cond_0
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mFirstIndex:I

    if-ne v3, v5, :cond_1

    .line 1084
    const-string v3, "ATT_10776 updateNextPosition() : No first index information thus set current mPosition as first."

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->printLog(Ljava/lang/String;)V

    .line 1086
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    iput v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mFirstIndex:I

    .line 1088
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ATT_10776 updateNextPosition() mPlayPos="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mFirstIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mFirstIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mPlayListLength="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->printLog(Ljava/lang/String;)V

    .line 1091
    :cond_2
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRepeatMode:I

    packed-switch v3, :pswitch_data_0

    .line 1141
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not support repeat mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRepeatMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1093
    :pswitch_0
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-boolean v3, v3, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportRepeatEndFirst:Z

    if-eqz v3, :cond_7

    .line 1094
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShufflePlayPos:I

    invoke-direct {p0, v3, v4, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getNextPosition(IIZ)I

    move-result v0

    .line 1095
    .local v0, "nextPosition":I
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mFirstIndex:I

    if-ne v0, v3, :cond_5

    .line 1096
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleMode:I

    if-ne v3, v2, :cond_3

    .line 1097
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->createShuffleIndex(I)V

    .line 1098
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->notifyShuffleChanged(Z)V

    .line 1100
    :cond_3
    const-string v2, "ATT_10776 updateNextPosition() : Repeat.OFF, last song was played, thus stop."

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->printLog(Ljava/lang/String;)V

    .line 1102
    iput v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mFirstIndex:I

    .line 1143
    .end local v0    # "nextPosition":I
    :cond_4
    :goto_0
    return v1

    .line 1105
    .restart local v0    # "nextPosition":I
    :cond_5
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    .end local v0    # "nextPosition":I
    :cond_6
    :goto_1
    move v1, v2

    .line 1143
    goto :goto_0

    .line 1107
    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->isEndOfPosition()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1108
    const-string/jumbo v3, "updateNextPosition() : Repeat.OFF, last song was played, so stop."

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->printLog(Ljava/lang/String;)V

    .line 1110
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleMode:I

    if-ne v3, v2, :cond_4

    .line 1111
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->createShuffleIndex(I)V

    .line 1112
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->notifyShuffleChanged(Z)V

    goto :goto_0

    .line 1116
    :cond_8
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShufflePlayPos:I

    invoke-direct {p0, v1, v3, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getNextPosition(IIZ)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    goto :goto_1

    .line 1122
    :pswitch_1
    const-string/jumbo v1, "updateNextPosition() : Repeat.One, current song is played again."

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->printLog(Ljava/lang/String;)V

    goto :goto_1

    .line 1125
    :pswitch_2
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShufflePlayPos:I

    invoke-direct {p0, v3, v4, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getNextPosition(IIZ)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    .line 1126
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleMode:I

    if-ne v3, v2, :cond_6

    .line 1127
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-boolean v3, v3, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportRepeatEndFirst:Z

    if-eqz v3, :cond_9

    .line 1128
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mFirstIndex:I

    if-ne v3, v4, :cond_6

    .line 1129
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->createShuffleIndex(I)V

    .line 1130
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->notifyShuffleChanged(Z)V

    goto :goto_1

    .line 1133
    :cond_9
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->isEndOfPosition()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1134
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->createShuffleIndex(I)V

    .line 1135
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->notifyShuffleChanged(Z)V

    goto :goto_1

    .line 1091
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public disableMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1546
    invoke-direct {p0, v2, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->internalChangeRepeat(IZ)Z

    move-result v0

    .line 1547
    .local v0, "isNotified":Z
    invoke-direct {p0, v2, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->internalChangeShuffle(IZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1548
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-boolean v1, v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportUnionMode:Z

    if-eqz v1, :cond_0

    .line 1549
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mUnionMode:I

    .line 1550
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mExtras:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mUnionMode:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->pushUnionExtras(I)V

    .line 1551
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1552
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mExtras:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->notifyUnionChanged(Landroid/os/Bundle;)V

    .line 1555
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 3119
    const-string v0, "  Meta title: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3121
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    const-string v1, "android.media.metadata.TITLE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3120
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3122
    const-string v0, "  current uri: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3123
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getCurrentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3124
    const-string v0, "  mPlayList: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3125
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayList:[J

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3126
    const-string v0, "  mPlayListLength: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3127
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3128
    const-string v0, "  mShuffleMode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3129
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleMode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3130
    const-string v0, "  mRepeatMode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3131
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRepeatMode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3132
    const-string v0, "  mCurrentPlayingItem: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3133
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mCurrentPlayingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3134
    const-string v0, "  mQueue: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3135
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mQueue:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3136
    return-void
.end method

.method public enableMode()V
    .locals 1

    .prologue
    .line 1541
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->loadSavedValues(Z)V

    .line 1542
    return-void
.end method

.method public enqueue(Ljava/util/List;IZI)V
    .locals 8
    .param p2, "action"    # I
    .param p3, "doChange"    # Z
    .param p4, "positionToPlay"    # I
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
    .local p1, "qItems":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    const/4 v1, 0x0

    .line 323
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    const/16 v7, 0xc

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$AddRequest;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$AddRequest;-><init>([JLjava/util/List;IZI)V

    invoke-virtual {v6, v7, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 325
    return-void
.end method

.method public enqueue([JIZI)V
    .locals 8
    .param p1, "list"    # [J
    .param p2, "action"    # I
    .param p3, "doChange"    # Z
    .param p4, "positionToPlay"    # I

    .prologue
    const/4 v2, 0x0

    .line 315
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    const/16 v7, 0xb

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$AddRequest;

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$AddRequest;-><init>([JLjava/util/List;IZI)V

    invoke-virtual {v6, v7, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 317
    return-void
.end method

.method public getCurAudioId()J
    .locals 4

    .prologue
    .line 518
    const-wide/16 v0, -0x1

    .line 519
    .local v0, "audioId":J
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayList:[J

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    if-lez v2, :cond_1

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    if-ltz v2, :cond_1

    .line 521
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    if-lt v2, v3, :cond_0

    .line 522
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    .line 524
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayList:[J

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    aget-wide v0, v2, v3

    .line 526
    :cond_1
    return-wide v0
.end method

.method public getCurrentBaseUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mBaseUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 511
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getDefaultLocalUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->changeBaseUri(Landroid/net/Uri;)V

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mBaseUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getCurrentUri()Landroid/net/Uri;
    .locals 6

    .prologue
    .line 496
    const/4 v2, 0x0

    .line 497
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getCurAudioId()J

    move-result-wide v0

    .line 498
    .local v0, "audioId":J
    const-string v3, "SV-List"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentUri() audioId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayList:[J

    if-eqz v3, :cond_0

    .line 500
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->appendWithBaseUri(J)Landroid/net/Uri;

    move-result-object v2

    .line 502
    :cond_0
    return-object v2
.end method

.method public getExtraInformation(I)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 1616
    sparse-switch p1, :sswitch_data_0

    .line 1624
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1618
    :sswitch_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1620
    :sswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    goto :goto_0

    .line 1622
    :sswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    goto :goto_0

    .line 1616
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mExtras:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getKeyWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mKeyWord:Ljava/lang/String;

    return-object v0
.end method

.method public getMode(I)I
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-boolean v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportUnionMode:Z

    if-eqz v0, :cond_0

    .line 1461
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mUnionMode:I

    .line 1466
    :goto_0
    return v0

    .line 1463
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1464
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleMode:I

    goto :goto_0

    .line 1466
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRepeatMode:I

    goto :goto_0
.end method

.method public getNowPlayingListPosition()I
    .locals 1

    .prologue
    .line 481
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    return v0
.end method

.method public getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mCurrentPlayingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    if-nez v0, :cond_0

    .line 458
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->createCurrentPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    .line 459
    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mCurrentPlayingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mCurrentPlayingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    return-object v0

    .line 459
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    goto :goto_0
.end method

.method public getPrevItem()Landroid/media/session/MediaSession$QueueItem;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 466
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayList:[J

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    if-nez v2, :cond_1

    .line 476
    :cond_0
    :goto_0
    return-object v0

    .line 469
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mQueue:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->isSameListAndQueueItems()Z

    move-result v2

    if-nez v2, :cond_3

    .line 470
    :cond_2
    const-string v2, "getPrevItem() but the queue did not compose yet."

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->printLog(Ljava/lang/String;)V

    goto :goto_0

    .line 473
    :cond_3
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShufflePlayPos:I

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getPrevPosition(IIZ)I

    move-result v1

    .line 474
    .local v1, "position":I
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mQueue:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession$QueueItem;

    .line 475
    .local v0, "item":Landroid/media/session/MediaSession$QueueItem;
    const-string v2, "SV-List"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPrevItem() QueueItem : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
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
    .line 452
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mQueue:Ljava/util/List;

    return-object v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 1338
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRepeatMode:I

    return v0
.end method

.method public getShuffleMode()I
    .locals 1

    .prologue
    .line 1323
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleMode:I

    return v0
.end method

.method public getSortMode()I
    .locals 2

    .prologue
    .line 1559
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mOrderController:Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;->getSortInfo()Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;->getSortMode()I

    move-result v0

    .line 1560
    .local v0, "sortMode":I
    return v0
.end method

.method public getUnionMode()I
    .locals 1

    .prologue
    .line 1353
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mUnionMode:I

    return v0
.end method

.method public getUriType()I
    .locals 1

    .prologue
    .line 486
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mUriType:I

    return v0
.end method

.method public loadSavedValues(Z)V
    .locals 6
    .param p1, "syncRequest"    # Z

    .prologue
    const/4 v5, 0x0

    .line 223
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-boolean v4, v4, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportUnionMode:Z

    if-eqz v4, :cond_0

    .line 224
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v4}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getUnionShuffleRepeat()I

    move-result v3

    .line 225
    .local v3, "unionMode":I
    invoke-direct {p0, p1, v3, v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->setUnionMode(ZIZ)V

    .line 240
    .end local v3    # "unionMode":I
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v4}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getSortMode()I

    move-result v2

    .line 241
    .local v2, "sort":I
    if-eqz p1, :cond_3

    .line 242
    invoke-direct {p0, v2, v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->internalChangeSortMode(IZ)Z

    .line 246
    :goto_1
    return-void

    .line 227
    .end local v2    # "sort":I
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v4}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getRepeat()I

    move-result v0

    .line 228
    .local v0, "repeat":I
    if-eqz p1, :cond_1

    .line 229
    invoke-direct {p0, v0, v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->internalChangeRepeat(IZ)Z

    .line 233
    :goto_2
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v4}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getShuffle()I

    move-result v1

    .line 234
    .local v1, "shuffle":I
    if-eqz p1, :cond_2

    .line 235
    invoke-direct {p0, v1, v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->internalChangeShuffle(IZ)Z

    goto :goto_0

    .line 231
    .end local v1    # "shuffle":I
    :cond_1
    invoke-direct {p0, v0, v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->setRepeatMode(IZ)V

    goto :goto_2

    .line 237
    .restart local v1    # "shuffle":I
    :cond_2
    invoke-direct {p0, v1, v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->setShuffleMode(IZ)V

    goto :goto_0

    .line 244
    .end local v0    # "repeat":I
    .end local v1    # "shuffle":I
    .restart local v2    # "sort":I
    :cond_3
    invoke-direct {p0, v2, v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->setSortMode(IZ)V

    goto :goto_1
.end method

.method public movePosition(II)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "direction"    # I

    .prologue
    const/4 v2, 0x4

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movePosition "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", direction : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->printInfoLog(Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->removeMessages(I)V

    .line 422
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    invoke-virtual {v0, v2, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->post(III)V

    .line 423
    return-void
.end method

.method public moveQueueItem(II)V
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 434
    if-ne p1, p2, :cond_0

    .line 438
    :goto_0
    return-void

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->post(III)V

    goto :goto_0
.end method

.method public moveToNext(ZZ)V
    .locals 4
    .param p1, "ignoreRepeatOne"    # Z
    .param p2, "isGapLessPlaying"    # Z

    .prologue
    const/4 v3, 0x1

    .line 330
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->preTaskMoveTo()V

    .line 332
    if-eqz p1, :cond_1

    .line 333
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShufflePlayPos:I

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getNextPosition(IIZ)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    .line 334
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleMode:I

    if-ne v1, v3, :cond_0

    .line 336
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->isEndOfPosition()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->createShuffleIndex(I)V

    .line 338
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->notifyShuffleChanged(Z)V

    .line 341
    :cond_0
    const/4 v0, 0x1

    .line 345
    .local v0, "success":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveToNext "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->printInfoLog(Ljava/lang/String;)V

    .line 346
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->postTaskMoveTo(ZIZ)V

    .line 347
    return-void

    .line 343
    .end local v0    # "success":Z
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->updateNextPosition()Z

    move-result v0

    .restart local v0    # "success":Z
    goto :goto_0
.end method

.method public moveToPrev()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 412
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->preTaskMoveTo()V

    .line 413
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mShufflePlayPos:I

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getPrevPosition(IIZ)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveToPrev "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->printInfoLog(Ljava/lang/String;)V

    .line 415
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->postTaskMoveTo(ZIZ)V

    .line 416
    return-void
.end method

.method public moveToQueueItem(JI)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "direction"    # I

    .prologue
    const/4 v2, 0x5

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveToQueueItem "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", direction : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->printInfoLog(Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->removeMessages(I)V

    .line 429
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    long-to-int v1, p1

    invoke-virtual {v0, v2, v1, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->post(III)V

    .line 430
    return-void
.end method

.method public onContentChanged(Landroid/net/Uri;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 3038
    const-string v3, "SV-List"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onContentChanged uri "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3039
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mUriType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 3040
    const-string v3, "onContentChanged but current is online track, ignore this"

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->printLog(Ljava/lang/String;)V

    .line 3065
    :goto_0
    return-void

    .line 3044
    :cond_0
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    if-gtz v3, :cond_1

    .line 3045
    const-string v3, "onContentChanged but there are no list, ignore this"

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->printLog(Ljava/lang/String;)V

    goto :goto_0

    .line 3049
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayList:[J

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getAudioIds(Landroid/content/Context;[J)[J

    move-result-object v0

    .line 3050
    .local v0, "ids":[J
    if-eqz v0, :cond_2

    array-length v3, v0

    if-nez v3, :cond_3

    .line 3051
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->internalRemoveAll()V

    goto :goto_0

    .line 3055
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayList:[J

    invoke-virtual {v3}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    .line 3056
    .local v1, "originCopy":[J
    invoke-static {v1}, Ljava/util/Arrays;->sort([J)V

    .line 3057
    invoke-static {v0}, Ljava/util/Arrays;->sort([J)V

    .line 3059
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getRemovedAudioIds([J[J)[J

    move-result-object v2

    .line 3060
    .local v2, "removedIds":[J
    if-eqz v2, :cond_4

    array-length v3, v2

    if-nez v3, :cond_5

    .line 3061
    :cond_4
    const-string v3, "onContentChanged but there are no removed list, ignore this"

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->printLog(Ljava/lang/String;)V

    goto :goto_0

    .line 3064
    :cond_5
    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->internalRemoveIds([J)V

    goto :goto_0
.end method

.method public onCustomEvent(ILjava/lang/String;)V
    .locals 5
    .param p1, "event"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 1570
    packed-switch p1, :pswitch_data_0

    .line 1602
    :cond_0
    :goto_0
    return-void

    .line 1572
    :pswitch_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1573
    .local v1, "isOn":Z
    if-nez v1, :cond_1

    .line 1574
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    if-lez v2, :cond_0

    .line 1576
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->movePosition(II)V

    goto :goto_0

    .line 1580
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getSortMode()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 1581
    invoke-direct {p0, v4, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->setSortMode(IZ)V

    .line 1586
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->isOnlineContent(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1587
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->movePosition(II)V

    goto :goto_0

    .line 1591
    .end local v1    # "isOn":Z
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mIsAvailableNetwork:Z

    .line 1592
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mIsAvailableNetwork:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->isOnlineContent(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1593
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getNetworkError()I

    move-result v0

    .line 1594
    .local v0, "error":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1595
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->notifyStreamingError(I)V

    goto :goto_0

    .line 1570
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResult(Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;)V
    .locals 2
    .param p1, "result"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;

    .prologue
    .line 3140
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->pushExtraSortModeChanged()V

    .line 3141
    const-string v0, "SV-List"

    const-string/jumbo v1, "sortMode pushed !!"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3142
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 212
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->unregisterContentObserver()V

    .line 213
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->unregisterCurrentSongObserver()V

    .line 214
    return-void
.end method

.method public reloadAudioIds()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 259
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->isLegalAgreed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 260
    const-string v1, "SMUSIC-SV-List"

    const-string/jumbo v2, "reloadAudioIds() - isLegalAgreed : false"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->notifyCurrentMetaAndLegalError()V

    .line 278
    :goto_0
    return-void

    .line 264
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->internalReloadSavedAudioIds()[J

    move-result-object v0

    .line 265
    .local v0, "list":[J
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->EMPTY_PLAYLIST:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 266
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getAllTrackAudioIds()[J

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayList:[J

    .line 267
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayList:[J

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    .line 268
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    .line 269
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mKeyWord:Ljava/lang/String;

    .line 276
    .end local v0    # "list":[J
    :goto_2
    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->buildSortList(Z)V

    goto :goto_0

    .line 267
    .restart local v0    # "list":[J
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayList:[J

    array-length v1, v1

    goto :goto_1

    .line 271
    :cond_2
    if-nez v0, :cond_3

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->EMPTY_PLAYLIST:[J

    .end local v0    # "list":[J
    :cond_3
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayList:[J

    .line 272
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayList:[J

    if-nez v1, :cond_4

    move v1, v2

    :goto_3
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayListLength:I

    .line 273
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getQueuePosition()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayPos:I

    .line 274
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getQueryKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mKeyWord:Ljava/lang/String;

    goto :goto_2

    .line 272
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mPlayList:[J

    array-length v1, v1

    goto :goto_3
.end method

.method public reloadMeta()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 282
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->isQueueThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->internalReloadMeta()V

    .line 288
    :goto_0
    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->removeMessages(I)V

    .line 286
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public reloadQueue(Z)V
    .locals 3
    .param p1, "syncRequest"    # Z

    .prologue
    const/4 v2, 0x0

    .line 250
    if-eqz p1, :cond_0

    .line 251
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;->reloadSavedQueue(Z)V

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public removeTracks([J)V
    .locals 3
    .param p1, "ids"    # [J

    .prologue
    .line 442
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 443
    return-void
.end method

.method public removeTracksPositions([I)V
    .locals 3
    .param p1, "position"    # [I

    .prologue
    .line 447
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 448
    return-void
.end method

.method public setList(ILjava/lang/String;[JLjava/util/List;I)V
    .locals 8
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
    .local p4, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    const/4 v7, 0x1

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setList position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uriType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " keyWord: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->printInfoLog(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    invoke-virtual {v0, v7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->removeMessages(I)V

    .line 308
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mMessage:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$OpenRequest;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$OpenRequest;-><init>(ILjava/lang/String;[JLjava/util/List;I)V

    const/4 v1, 0x0

    invoke-virtual {v6, v7, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 310
    return-void

    .line 304
    :cond_0
    array-length v0, p3

    goto :goto_0
.end method

.method public setMode(II)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "value"    # I

    .prologue
    .line 1358
    packed-switch p1, :pswitch_data_0

    .line 1381
    :goto_0
    return-void

    .line 1360
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-boolean v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportUnionMode:Z

    if-eqz v0, :cond_0

    .line 1361
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getShuffleMode()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->convertRepeatUnionMode(II)V

    goto :goto_0

    .line 1363
    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->setRepeatMode(I)V

    goto :goto_0

    .line 1367
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mOptions:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    iget-boolean v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportUnionMode:Z

    if-eqz v0, :cond_1

    .line 1368
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->convertShuffleUnionMode(I)V

    goto :goto_0

    .line 1370
    :cond_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->setShuffleMode(I)V

    goto :goto_0

    .line 1374
    :pswitch_2
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->setUnionMode(ZIZ)V

    goto :goto_0

    .line 1358
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setQueueChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;)V
    .locals 1
    .param p1, "queueChangedListener"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    .prologue
    .line 218
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->mNotifier:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    .line 219
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1
    .param p1, "repeatMode"    # I

    .prologue
    .line 1343
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->setRepeatMode(IZ)V

    .line 1344
    return-void
.end method

.method public setShuffleMode(I)V
    .locals 1
    .param p1, "shuffleMode"    # I

    .prologue
    .line 1328
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->setShuffleMode(IZ)V

    .line 1329
    return-void
.end method

.method public setSortMode(I)V
    .locals 1
    .param p1, "sortMode"    # I

    .prologue
    .line 1565
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->setSortMode(IZ)V

    .line 1566
    return-void
.end method

.method public toggleMode(I)I
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 1472
    packed-switch p1, :pswitch_data_0

    .line 1481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "toggleMode but current mode is abnormal."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->printLog(Ljava/lang/String;)V

    .line 1482
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 1474
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->toggleRepeatMode()I

    move-result v0

    goto :goto_0

    .line 1476
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->toggleShuffleMode()I

    move-result v0

    goto :goto_0

    .line 1478
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->toggleUnionMode()I

    move-result v0

    goto :goto_0

    .line 1472
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
