.class public Lcom/samsung/android/app/music/common/player/MilkFavoriteController;
.super Ljava/lang/Object;
.source "MilkFavoriteController.java"


# static fields
.field private static final WAIT_TIME_OUT:J = 0x7530L


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private mIsWorkerSuccess:Z

.field private final mLock:Ljava/lang/Object;

.field private final mMilkUIWorker:Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/FragmentManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/MilkFavoriteController;->mLock:Ljava/lang/Object;

    .line 56
    new-instance v0, Lcom/samsung/android/app/music/common/player/MilkFavoriteController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/player/MilkFavoriteController$1;-><init>(Lcom/samsung/android/app/music/common/player/MilkFavoriteController;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/MilkFavoriteController;->mMilkUIWorker:Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;

    .line 27
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/MilkFavoriteController;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/samsung/android/app/music/common/player/MilkFavoriteController;->mFragmentManager:Landroid/app/FragmentManager;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/player/MilkFavoriteController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/MilkFavoriteController;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/MilkFavoriteController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/music/common/player/MilkFavoriteController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/MilkFavoriteController;
    .param p1, "x1"    # Z

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/samsung/android/app/music/common/player/MilkFavoriteController;->mIsWorkerSuccess:Z

    return p1
.end method


# virtual methods
.method public toggleFavorite(JZ)Z
    .locals 7
    .param p1, "audioId"    # J
    .param p3, "isFavorite"    # Z
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 33
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/MilkFavoriteController;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, p2}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Tracks;->getSimpleTrack(Landroid/content/Context;J)Lcom/samsung/android/app/music/common/model/SimpleTrack;

    move-result-object v1

    .line 34
    .local v1, "simpleTrack":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    if-nez v1, :cond_0

    .line 53
    :goto_0
    return v2

    .line 38
    :cond_0
    if-nez p3, :cond_1

    .line 39
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/MilkFavoriteController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/MilkFavoriteController;->mFragmentManager:Landroid/app/FragmentManager;

    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/MilkFavoriteController;->mMilkUIWorker:Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;

    .line 40
    invoke-virtual {v3, v4, v5, v1}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->addFavoriteSong(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Lcom/samsung/android/app/music/common/model/SimpleTrack;)V

    .line 45
    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/app/music/common/player/MilkFavoriteController;->mIsWorkerSuccess:Z

    .line 46
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/MilkFavoriteController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 48
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/MilkFavoriteController;->mLock:Ljava/lang/Object;

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :goto_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    iget-boolean v2, p0, Lcom/samsung/android/app/music/common/player/MilkFavoriteController;->mIsWorkerSuccess:Z

    goto :goto_0

    .line 42
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/MilkFavoriteController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/MilkFavoriteController;->mFragmentManager:Landroid/app/FragmentManager;

    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/MilkFavoriteController;->mMilkUIWorker:Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;

    .line 43
    invoke-virtual {v3, v4, v5, v1}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->deleteFavoriteSong(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Lcom/samsung/android/app/music/common/model/SimpleTrack;)V

    goto :goto_1

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 52
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
