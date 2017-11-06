.class public final Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;
.super Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;
.source "MilkPlayerTimeLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$RadioHistoryTimerEvent;,
        Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;,
        Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$SmartStationSeedMod;,
        Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$SmartStationSeedRadio;
    }
.end annotation


# static fields
.field private static final FIFTEEN_SEC_IN_MILLIS:J = 0x3a98L

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-MediaCenter"

.field private static final ONE_MIN_IN_MILLIS:J = 0xea60L

.field private static final SUB_TAG:Ljava/lang/String; = "MilkPlayerTimeLogger"

.field private static final TAG:Ljava/lang/String; = "SV-MediaCenter"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentPlayingPosition:J

.field private mCurrentPlayingStartTime:J

.field private mExtraContent:Landroid/os/Bundle;

.field private mInit:Z

.field private mMusicMetadata:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Landroid/content/Context;)V
    .locals 1
    .param p1, "s"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->mInit:Z

    .line 60
    iput-object p2, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->mMusicMetadata:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->mExtraContent:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 34
    invoke-static {p0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->isMilk(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->getSourceId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->mCurrentPlayingPosition:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->mCurrentPlayingStartTime:J

    return-wide v0
.end method

.method private static getSourceId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 125
    const/4 v7, 0x0

    .line 126
    .local v7, "sourceId":Ljava/lang/String;
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    .line 127
    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "source_id"

    aput-object v0, v2, v4

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 129
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v7

    .line 132
    :cond_0
    if-eqz v6, :cond_1

    if-eqz v3, :cond_2

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 133
    :cond_1
    :goto_0
    return-object v7

    .line 132
    :catch_0
    move-exception v0

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 126
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    :catchall_0
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_1
    if-eqz v6, :cond_3

    if-eqz v3, :cond_4

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_2
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private static isMilk(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z
    .locals 2
    .param p0, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 120
    const-string v0, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lcom/samsung/android/app/music/provider/CpAttrs;->getCpName(I)I

    move-result v0

    const/high16 v1, 0x80000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isMusicType(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z
    .locals 1
    .param p0, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isSong()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 101
    const-string v3, "com.samsung.android.app.music.core.state.PLAYER_EXTRA"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    const-string v3, "player_extra_content"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->mExtraContent:Landroid/os/Bundle;

    .line 103
    iget-object v3, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->mExtraContent:Landroid/os/Bundle;

    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 105
    .local v2, "settle":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    .line 106
    invoke-static {v2}, Lcom/samsung/android/app/music/common/model/Track;->getSettleThreshold(Ljava/lang/String;)I

    move-result v3

    int-to-long v0, v3

    .line 107
    .local v0, "sTime":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    .line 108
    const-string v3, "MilkPlayerTimeLogger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onExtrasChanged >> threshold time - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    new-instance v3, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;

    iget-object v4, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;-><init>(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1, v3}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->addTimeEvent(JLcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;)V

    .line 113
    .end local v0    # "sTime":J
    .end local v2    # "settle":Ljava/lang/String;
    :cond_0
    return-void

    .line 103
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->mExtraContent:Landroid/os/Bundle;

    const-string/jumbo v4, "settlement_ext"

    .line 104
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 4
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 66
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->mMusicMetadata:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 67
    invoke-static {p1}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->isMusicType(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->mInit:Z

    .line 69
    invoke-static {p1}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->isMilk(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isRadio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const-wide/32 v0, 0xea60

    new-instance v2, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$SmartStationSeedRadio;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$SmartStationSeedRadio;-><init>(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->addTimeEvent(JLcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;)V

    .line 78
    :goto_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->mCurrentPlayingStartTime:J

    .line 79
    return-void

    .line 73
    :cond_0
    const-wide/16 v0, 0x3a98

    new-instance v2, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$SmartStationSeedMod;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$SmartStationSeedMod;-><init>(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->addTimeEvent(JLcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;)V

    goto :goto_0

    .line 76
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->mInit:Z

    goto :goto_0
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 4
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    const-wide/16 v2, 0x0

    .line 83
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    .line 84
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->mInit:Z

    if-nez v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 89
    iget-wide v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->mCurrentPlayingStartTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 90
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->mCurrentPlayingStartTime:J

    .line 92
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->mCurrentPlayingPosition:J

    goto :goto_0

    .line 94
    :cond_2
    iput-wide v2, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->mCurrentPlayingPosition:J

    goto :goto_0
.end method
