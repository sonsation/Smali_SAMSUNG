.class public Lcom/samsung/android/app/music/common/lyrics/LyricsCache;
.super Ljava/lang/Object;
.source "LyricsCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;,
        Lcom/samsung/android/app/music/common/lyrics/LyricsCache$OnLyricsListener;,
        Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsCacheHolder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mActivityCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private final mClientCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mCursorCpAttrs:I

.field private mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field private volatile mLastChangeNotification:J

.field private final mLyricsCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Long;",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;",
            ">;"
        }
    .end annotation
.end field

.field private mLyricsLoader:Landroid/os/Handler$Callback;

.field private final mLyricsLock:Ljava/lang/Object;

.field private final mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

.field private volatile mNeedCloseCursor:Z

.field private mNotify:Landroid/database/ContentObserver;

.field private volatile mObserverRegistered:Z

.field private mShareLyrics:Landroid/os/Handler$Callback;

.field private mSyncLyricsLoader:Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;

.field private mThread:Landroid/os/HandlerThread;

.field private mUiHandler:Landroid/os/Handler;

.field private volatile mUsingCursor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$1;

    const/high16 v1, 0x100000

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$1;-><init>(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mLyricsCache:Landroid/util/LruCache;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mClientCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 47
    invoke-static {}, Lcom/samsung/android/app/music/service/metadata/LocalMusicContents;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    .line 55
    new-instance v0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$2;-><init>(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mActivityCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 98
    new-instance v0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$3;-><init>(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mNotify:Landroid/database/ContentObserver;

    .line 270
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mLyricsLock:Ljava/lang/Object;

    .line 278
    new-instance v0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$4;-><init>(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mShareLyrics:Landroid/os/Handler$Callback;

    .line 311
    new-instance v0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;-><init>(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mLyricsLoader:Landroid/os/Handler$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->checkRegisterObserver()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->checkUnregisterObserver()V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mSyncLyricsLoader:Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mObserverRegistered:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/lyrics/LyricsCache;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/lyrics/LyricsCache;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mUsingCursor:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mNeedCloseCursor:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    .prologue
    .line 29
    iget v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mCursorCpAttrs:I

    return v0
.end method

.method static synthetic access$1802(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/lyrics/LyricsCache;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mCursorCpAttrs:I

    return p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mLastChangeNotification:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;J)J
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/lyrics/LyricsCache;
    .param p1, "x1"    # J

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mLastChangeNotification:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->closeCursor()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mLyricsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)Landroid/util/LruCache;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mLyricsCache:Landroid/util/LruCache;

    return-object v0
.end method

.method private checkRegisterObserver()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mClientCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->registerObserver(Landroid/content/Context;)V

    .line 131
    :cond_0
    return-void
.end method

.method private checkUnregisterObserver()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mClientCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->unregisterObserver(Landroid/content/Context;)V

    .line 137
    :cond_0
    return-void
.end method

.method private closeCursor()V
    .locals 3

    .prologue
    .line 113
    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 114
    iget-boolean v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mUsingCursor:Z

    if-eqz v1, :cond_1

    .line 115
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mNeedCloseCursor:Z

    .line 116
    sget-object v1, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->LOG_TAG:Ljava/lang/String;

    const-string v2, "closeCursor() : mUsingCursor is true"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mCursor:Landroid/database/Cursor;

    .line 120
    .local v0, "c":Landroid/database/Cursor;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mCursor:Landroid/database/Cursor;

    .line 121
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mNeedCloseCursor:Z

    .line 122
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 123
    sget-object v1, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->LOG_TAG:Ljava/lang/String;

    const-string v2, "closeCursor()"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doInit(Landroid/app/Application;)V
    .locals 2
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 187
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mContext:Landroid/content/Context;

    .line 188
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mInitialized:Z

    if-nez v0, :cond_0

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mInitialized:Z

    .line 190
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mActivityCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 191
    new-instance v0, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mSyncLyricsLoader:Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;

    .line 193
    :cond_0
    return-void
.end method

.method private doInit(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mContext:Landroid/content/Context;

    .line 180
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mInitialized:Z

    if-nez v0, :cond_0

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mInitialized:Z

    .line 182
    new-instance v0, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mSyncLyricsLoader:Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;

    .line 184
    :cond_0
    return-void
.end method

.method private ensureLoadingThread()V
    .locals 5

    .prologue
    .line 257
    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_1

    .line 258
    iget-object v2, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mLyricsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 259
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 260
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LyricsLoaderThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 261
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 262
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mLyricsLoader:Landroid/os/Handler$Callback;

    invoke-direct {v1, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mHandler:Landroid/os/Handler;

    .line 263
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mShareLyrics:Landroid/os/Handler$Callback;

    invoke-direct {v1, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mUiHandler:Landroid/os/Handler;

    .line 264
    iput-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mThread:Landroid/os/HandlerThread;

    .line 266
    .end local v0    # "thread":Landroid/os/HandlerThread;
    :cond_0
    monitor-exit v2

    .line 268
    :cond_1
    return-void

    .line 266
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance()Lcom/samsung/android/app/music/common/lyrics/LyricsCache;
    .locals 1

    .prologue
    .line 200
    invoke-static {}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsCacheHolder;->access$500()Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 171
    invoke-static {}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->getInstance()Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->doInit(Landroid/app/Application;)V

    .line 172
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    invoke-static {}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->getInstance()Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->doInit(Landroid/content/Context;)V

    .line 176
    return-void
.end method

.method private isLyricsSupported(I)Z
    .locals 1
    .param p1, "cpAttrs"    # I

    .prologue
    .line 243
    invoke-static {p1}, Lcom/samsung/android/app/music/provider/CpAttrs;->isLocal(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/music/provider/CpAttrs;->isOnline(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadLyrics(IJLcom/samsung/android/app/music/common/lyrics/LyricsCache$OnLyricsListener;Ljava/lang/Object;)V
    .locals 10
    .param p1, "cpAttrs"    # I
    .param p2, "audioId"    # J
    .param p4, "l"    # Lcom/samsung/android/app/music/common/lyrics/LyricsCache$OnLyricsListener;
    .param p5, "user"    # Ljava/lang/Object;

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->ensureLoadingThread()V

    .line 252
    iget-object v7, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    new-instance v0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;-><init>(IJLcom/samsung/android/app/music/common/lyrics/LyricsCache$OnLyricsListener;Ljava/lang/Object;)V

    invoke-virtual {v7, v8, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 253
    .local v6, "msg":Landroid/os/Message;
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 254
    return-void
.end method

.method private registerObserver(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mObserverRegistered:Z

    if-nez v0, :cond_0

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mObserverRegistered:Z

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mNotify:Landroid/database/ContentObserver;

    .line 154
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 157
    :cond_0
    return-void
.end method

.method private unregisterObserver(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mObserverRegistered:Z

    if-eqz v0, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->closeCursor()V

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mObserverRegistered:Z

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mNotify:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 168
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 237
    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mLyricsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mLyricsCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 239
    monitor-exit v1

    .line 240
    return-void

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLyrics(IJLcom/samsung/android/app/music/common/lyrics/LyricsCache$OnLyricsListener;Ljava/lang/Object;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .locals 4
    .param p1, "cpAttrs"    # I
    .param p2, "audioId"    # J
    .param p4, "l"    # Lcom/samsung/android/app/music/common/lyrics/LyricsCache$OnLyricsListener;
    .param p5, "user"    # Ljava/lang/Object;

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->isLyricsSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    sget-object v1, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lyrics is not supported ! - cpAttrs :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", audioId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-interface {p4, p2, p3, v1, p5}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$OnLyricsListener;->onLyricGetFinished(JLcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Ljava/lang/Object;)V

    .line 215
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .line 227
    :goto_0
    return-object v0

    .line 219
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mLyricsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mLyricsCache:Landroid/util/LruCache;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .line 221
    .local v0, "lyrics":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    if-eqz v0, :cond_1

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    if-eq v0, v1, :cond_1

    .line 223
    invoke-interface {p4, p2, p3, v0, p5}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$OnLyricsListener;->onLyricGetFinished(JLcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Ljava/lang/Object;)V

    goto :goto_0

    .line 221
    .end local v0    # "lyrics":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 225
    .restart local v0    # "lyrics":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->loadLyrics(IJLcom/samsung/android/app/music/common/lyrics/LyricsCache$OnLyricsListener;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public registerObserver()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->registerObserver(Landroid/content/Context;)V

    .line 141
    return-void
.end method

.method public remove(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 231
    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mLyricsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mLyricsCache:Landroid/util/LruCache;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    monitor-exit v1

    .line 234
    return-void

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterObserver()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->unregisterObserver(Landroid/content/Context;)V

    .line 145
    return-void
.end method
