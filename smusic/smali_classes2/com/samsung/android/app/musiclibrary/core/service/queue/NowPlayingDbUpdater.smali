.class final Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;
.super Ljava/lang/Object;
.source "NowPlayingDbUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater$Saver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-List"

.field private static final TAG:Ljava/lang/String; = "SV-List"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mLegacy:Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;

.field private mSaver:Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater$Saver;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 43
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method


# virtual methods
.method saveNowPlayingQueue([J)V
    .locals 2
    .param p1, "list"    # [J

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;->mSaver:Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater$Saver;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;->mSaver:Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater$Saver;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater$Saver;->cancel()V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;->mLegacy:Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;->mLegacy:Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->cancel()V

    .line 53
    :cond_1
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater$Saver;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater$Saver;-><init>(Landroid/content/Context;[J)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;->mSaver:Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater$Saver;

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;->mSaver:Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater$Saver;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 56
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/MusicStaticFeatures;->SUPPORT_LEGACY_BT_AVRCP:Z

    if-eqz v0, :cond_2

    .line 57
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;-><init>(Landroid/content/Context;[J)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;->mLegacy:Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;->mLegacy:Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 60
    :cond_2
    return-void
.end method
