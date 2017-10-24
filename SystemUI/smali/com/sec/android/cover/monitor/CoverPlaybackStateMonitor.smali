.class public Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;
.super Ljava/lang/Object;
.source "CoverPlaybackStateMonitor.java"

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$1;,
        Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$2;,
        Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;,
        Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$SessionCallback;
    }
.end annotation


# static fields
.field private static final AUTO_DISABLED_PACKAGES:[Ljava/lang/String;

.field private static final AUTO_ENABLED_PACKAGES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static mLock:Ljava/lang/Object;

.field private static sInstance:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMediaController:Landroid/media/session/MediaController;

.field private mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

.field private mPlayBackStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSessionCb:Landroid/media/session/MediaController$Callback;

.field private mSessionManager:Landroid/media/session/MediaSessionManager;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;)Landroid/media/session/MediaController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;)Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;)Landroid/media/session/MediaSessionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    const-class v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->TAG:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->sInstance:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mLock:Ljava/lang/Object;

    .line 48
    new-array v0, v6, [Ljava/lang/String;

    .line 49
    const-string/jumbo v1, "com.google.android.music"

    aput-object v1, v0, v2

    .line 50
    const-string/jumbo v1, "com.sec.android.app.music"

    aput-object v1, v0, v3

    .line 51
    const-string/jumbo v1, "com.samsung.android.app.music.chn"

    aput-object v1, v0, v4

    .line 52
    const-string/jumbo v1, "com.spotify.music"

    aput-object v1, v0, v5

    .line 48
    sput-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->AUTO_ENABLED_PACKAGES:[Ljava/lang/String;

    .line 56
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 57
    const-string/jumbo v1, "com.sec.android.app.voicenote"

    aput-object v1, v0, v2

    .line 58
    const-string/jumbo v1, "com.samsung.android.app.memo"

    aput-object v1, v0, v3

    .line 59
    const-string/jumbo v1, "com.samsung.android.app.notes"

    aput-object v1, v0, v4

    .line 60
    const-string/jumbo v1, "com.shazam.android"

    aput-object v1, v0, v5

    .line 61
    const-string/jumbo v1, "com.samsung.android.video"

    aput-object v1, v0, v6

    .line 56
    sput-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->AUTO_DISABLED_PACKAGES:[Ljava/lang/String;

    .line 29
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    .line 84
    new-instance v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$1;-><init>(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;)V

    iput-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 394
    new-instance v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$2;-><init>(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;)V

    iput-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mPlayBackStateReceiver:Landroid/content/BroadcastReceiver;

    .line 74
    if-nez p1, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 77
    :cond_0
    iput-object p1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mContext:Landroid/content/Context;

    .line 78
    sget-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->AUTO_ENABLED_PACKAGES:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 79
    sget-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->AUTO_DISABLED_PACKAGES:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mContext:Landroid/content/Context;

    .line 81
    const-string/jumbo v1, "media_session"

    .line 80
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    .line 73
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    sget-object v1, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 66
    :try_start_0
    sget-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->sInstance:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->sInstance:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    .line 69
    :cond_0
    sget-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->sInstance:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private updateController(Landroid/media/session/MediaController;)V
    .locals 3
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .prologue
    .line 286
    monitor-enter p0

    .line 287
    if-nez p1, :cond_2

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    .line 294
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    .line 295
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    invoke-interface {v0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;->onSessionDestroyed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    .line 285
    return-void

    .line 299
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_3

    .line 300
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    .line 301
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    .line 300
    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 302
    :cond_3
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_4

    .line 303
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    if-eqz v0, :cond_4

    .line 304
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    .line 309
    :cond_4
    new-instance v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$SessionCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$SessionCallback;-><init>(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$SessionCallback;)V

    iput-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    .line 311
    iput-object p1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    .line 312
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 314
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V

    .line 316
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;->onMetadataChanged(Landroid/media/MediaMetadata;)V

    .line 317
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/cover/CoverUtils;->getPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;->onMusicPakcageChanged(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getCurrentlyPlayingPacakge()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 347
    monitor-enter p0

    .line 348
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_0

    .line 349
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 351
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    .line 352
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 353
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    :cond_1
    monitor-exit p0

    .line 357
    return-object v3

    .line 347
    .end local v0    # "controllers":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isCurentlyPlaying()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 328
    monitor-enter p0

    .line 329
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    monitor-exit p0

    .line 330
    return v2

    .line 332
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 333
    .local v0, "state":Landroid/media/session/PlaybackState;
    if-nez v0, :cond_1

    monitor-exit p0

    .line 334
    return v2

    .line 337
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    .line 338
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_3

    :cond_2
    :goto_0
    monitor-exit p0

    .line 337
    return v1

    :cond_3
    move v1, v2

    .line 338
    goto :goto_0

    .line 328
    .end local v0    # "state":Landroid/media/session/PlaybackState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isRelevant(Ljava/lang/String;)Z
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 121
    sget-object v6, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->AUTO_DISABLED_PACKAGES:[Ljava/lang/String;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->AUTO_DISABLED_PACKAGES:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_0

    .line 122
    sget-object v6, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->AUTO_DISABLED_PACKAGES:[Ljava/lang/String;

    invoke-static {v6, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_0

    .line 123
    sget-object v6, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isRelevant packageName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " result=false reason=BLACK_LIST"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return v7

    .line 129
    :cond_0
    sget-object v6, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->AUTO_ENABLED_PACKAGES:[Ljava/lang/String;

    if-eqz v6, :cond_1

    sget-object v6, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->AUTO_ENABLED_PACKAGES:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_1

    .line 130
    sget-object v6, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->AUTO_ENABLED_PACKAGES:[Ljava/lang/String;

    invoke-static {v6, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_1

    .line 131
    sget-object v6, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isRelevant packageName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " result=true reason=WHITE_LIST"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return v10

    .line 137
    :cond_1
    iget-object v6, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 139
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/16 v6, 0x80

    :try_start_0
    invoke-virtual {v3, p1, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 140
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_2

    .line 141
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v8, "com.sec.android.cover.ledcover.SUPPORT_MUSIC"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 142
    .local v5, "supportsMusic":Z
    if-eqz v5, :cond_2

    .line 143
    sget-object v6, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->TAG:Ljava/lang/String;

    .line 144
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isRelevant packageName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " result=true reason=METADATA"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 143
    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    return v10

    .line 148
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "supportsMusic":Z
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v6, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " not found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    iget-object v6, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    .line 155
    .local v2, "notifications":[Landroid/service/notification/StatusBarNotification;
    if-eqz v2, :cond_4

    .line 156
    array-length v8, v2

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_4

    aget-object v4, v2, v6

    .line 157
    .local v4, "sb":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 158
    sget-object v6, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isRelevant packageName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 159
    const-string/jumbo v8, " result=true reason=NOTIFICATION"

    .line 158
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return v10

    .line 156
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 165
    .end local v4    # "sb":Landroid/service/notification/StatusBarNotification;
    :cond_4
    sget-object v6, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isRelevant packageName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " result=false reason=END"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return v7
.end method

.method public onActiveSessionsChanged(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "controllers":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .local v6, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 174
    const-string/jumbo v7, "Size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "controller$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 177
    .local v0, "controller":Landroid/media/session/MediaController;
    const-string/jumbo v7, " Package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string/jumbo v7, " State: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 184
    .end local v0    # "controller":Landroid/media/session/MediaController;
    .end local v1    # "controller$iterator":Ljava/util/Iterator;
    :cond_0
    sget-object v7, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onActiveSessionsChanged controllers: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 171
    :cond_1
    :goto_1
    return-void

    .line 187
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "controller$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 188
    .restart local v0    # "controller":Landroid/media/session/MediaController;
    if-eqz v0, :cond_3

    .line 189
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v5

    .line 191
    .local v5, "playbackState":Landroid/media/session/PlaybackState;
    if-eqz v5, :cond_3

    .line 192
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getFlags()J

    move-result-wide v2

    .line 193
    .local v2, "flags":J
    invoke-virtual {v5}, Landroid/media/session/PlaybackState;->getState()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_3

    .line 194
    const-wide/16 v8, 0x2

    and-long/2addr v8, v2

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_3

    .line 195
    invoke-virtual {p0, v4}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->isRelevant(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 196
    invoke-direct {p0, v0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->updateController(Landroid/media/session/MediaController;)V

    .line 197
    return-void

    .line 199
    :cond_4
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->updateController(Landroid/media/session/MediaController;)V

    .line 200
    return-void

    .line 208
    .end local v0    # "controller":Landroid/media/session/MediaController;
    .end local v2    # "flags":J
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "playbackState":Landroid/media/session/PlaybackState;
    :cond_5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 209
    .restart local v0    # "controller":Landroid/media/session/MediaController;
    if-eqz v0, :cond_6

    .line 210
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 211
    .restart local v4    # "pkg":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->isRelevant(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 212
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v5

    .line 213
    .restart local v5    # "playbackState":Landroid/media/session/PlaybackState;
    if-eqz v5, :cond_6

    .line 214
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getFlags()J

    move-result-wide v2

    .line 215
    .restart local v2    # "flags":J
    invoke-virtual {v5}, Landroid/media/session/PlaybackState;->getState()I

    move-result v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_6

    .line 216
    const-wide/16 v8, 0x2

    and-long/2addr v8, v2

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_6

    .line 217
    invoke-direct {p0, v0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->updateController(Landroid/media/session/MediaController;)V

    .line 218
    return-void

    .line 226
    .end local v0    # "controller":Landroid/media/session/MediaController;
    .end local v2    # "flags":J
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "playbackState":Landroid/media/session/PlaybackState;
    :cond_7
    iget-object v7, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v7, :cond_8

    .line 227
    const/4 v7, 0x0

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/session/MediaController;

    invoke-virtual {v7}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v7

    .line 228
    iget-object v8, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v8}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v8

    .line 227
    invoke-virtual {v7, v8}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 226
    if-eqz v7, :cond_8

    .line 229
    const/4 v7, 0x0

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 230
    .restart local v0    # "controller":Landroid/media/session/MediaController;
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getFlags()J

    move-result-wide v2

    .line 231
    .restart local v2    # "flags":J
    const-wide/16 v8, 0x2

    and-long/2addr v8, v2

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_8

    .line 232
    sget-object v7, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->TAG:Ljava/lang/String;

    .line 233
    const-string/jumbo v8, "onActiveSessionsChanged().Top of List<MediaController> is same as before : "

    .line 232
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-void

    .line 238
    .end local v0    # "controller":Landroid/media/session/MediaController;
    .end local v2    # "flags":J
    :cond_8
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->updateController(Landroid/media/session/MediaController;)V

    goto/16 :goto_1
.end method

.method public sendMediaButtonEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    .line 270
    sget-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendMediaButtonEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    monitor-enter p0

    .line 272
    if-nez p1, :cond_0

    .line 273
    :try_start_0
    sget-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendMediaButtonEvent: KeyEvent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 274
    return v3

    .line 276
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-nez v0, :cond_1

    .line 277
    sget-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendMediaButtonEvent: No current media session"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 278
    return v3

    .line 281
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOnPlaybackStateChangedListener(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;)V
    .locals 3
    .param p1, "onPlaybackStateChangedListener"    # Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    .line 111
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V

    .line 114
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;->onMetadataChanged(Landroid/media/MediaMetadata;)V

    .line 115
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/cover/CoverUtils;->getPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;->onMusicPakcageChanged(Ljava/lang/String;)V

    .line 109
    :cond_0
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 243
    sget-object v2, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 245
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.samsung.android.REMOVE_MEDIA_NOTIFICATION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 246
    iget-object v2, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mPlayBackStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 247
    const/4 v1, 0x0

    .line 248
    .local v1, "handler":Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_0

    .line 249
    new-instance v1, Landroid/os/Handler;

    .end local v1    # "handler":Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 251
    :cond_0
    iget-object v2, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v2, p0, v4, v5, v1}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;ILandroid/os/Handler;)V

    .line 253
    iget-object v2, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v2, v4, v5}, Landroid/media/session/MediaSessionManager;->getActiveSessionsForUser(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->onActiveSessionsChanged(Ljava/util/List;)V

    .line 255
    iget-object v2, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v2, v3}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 242
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 259
    sget-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    invoke-interface {v0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;->onSessionDestroyed()V

    .line 263
    :cond_0
    invoke-direct {p0, v2}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->updateController(Landroid/media/session/MediaController;)V

    .line 264
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v0, p0}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    .line 265
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mPlayBackStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 266
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 258
    return-void
.end method
