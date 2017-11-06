.class public Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;
.super Ljava/lang/Object;
.source "EMExoPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer/ExoPlayer$Listener;
.implements Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;
.implements Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;
.implements Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$Listener;
.implements Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;
.implements Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;
.implements Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;
.implements Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$EventListener;
.implements Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;
.implements Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer;
.implements Lcom/google/android/exoplayer/text/TextRenderer;
.implements Lcom/google/android/exoplayer/upstream/BandwidthMeter$EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$StateStore;,
        Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer/ExoPlayer$Listener;",
        "Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;",
        "Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;",
        "Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$Listener;",
        "Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;",
        "Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;",
        "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;",
        "Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$EventListener;",
        "Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;",
        "Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/exoplayer/metadata/id3/Id3Frame;",
        ">;>;",
        "Lcom/google/android/exoplayer/text/TextRenderer;",
        "Lcom/google/android/exoplayer/upstream/BandwidthMeter$EventListener;"
    }
.end annotation


# instance fields
.field private audioCapabilities:Lcom/google/android/exoplayer/audio/AudioCapabilities;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private audioCapabilitiesReceiver:Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private audioRenderer:Lcom/google/android/exoplayer/TrackRenderer;

.field private captionListener:Lcom/devbrackets/android/exomedia/core/listener/CaptionListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private id3MetadataListener:Lcom/devbrackets/android/exomedia/core/listener/Id3MetadataListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private infoListener:Lcom/devbrackets/android/exomedia/core/listener/InfoListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private internalErrorListener:Lcom/devbrackets/android/exomedia/core/listener/InternalErrorListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mainHandler:Landroid/os/Handler;

.field private final player:Lcom/google/android/exoplayer/ExoPlayer;

.field private prepared:Z

.field private rendererBuilder:Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;

.field private rendererBuildingState:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;

.field private stateStore:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$StateStore;

.field private final stopped:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private surface:Landroid/view/Surface;

.field private videoRenderer:Lcom/google/android/exoplayer/TrackRenderer;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;-><init>(Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;)V
    .locals 3
    .param p1, "rendererBuilder"    # Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->stopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 115
    new-instance v0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$StateStore;

    invoke-direct {v0, v1}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$StateStore;-><init>(Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$1;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->stateStore:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$StateStore;

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->prepared:Z

    .line 137
    iput-object v1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 145
    const/4 v0, 0x4

    const/16 v1, 0x3e8

    const/16 v2, 0x1388

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer/ExoPlayer$Factory;->newInstance(III)Lcom/google/android/exoplayer/ExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    .line 146
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer/ExoPlayer;->addListener(Lcom/google/android/exoplayer/ExoPlayer$Listener;)V

    .line 148
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->mainHandler:Landroid/os/Handler;

    .line 149
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 150
    sget-object v0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;->IDLE:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->rendererBuildingState:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;

    .line 151
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer/ExoPlayer;->setSelectedTrack(II)V

    .line 153
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->replaceRenderBuilder(Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;)V

    .line 154
    return-void
.end method

.method private pushSurface(Z)V
    .locals 4
    .param p1, "blockForSurfacePush"    # Z

    .prologue
    const/4 v3, 0x1

    .line 677
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->videoRenderer:Lcom/google/android/exoplayer/TrackRenderer;

    if-nez v0, :cond_0

    .line 686
    :goto_0
    return-void

    .line 681
    :cond_0
    if-eqz p1, :cond_1

    .line 682
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->videoRenderer:Lcom/google/android/exoplayer/TrackRenderer;

    iget-object v2, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->surface:Landroid/view/Surface;

    invoke-interface {v0, v1, v3, v2}, Lcom/google/android/exoplayer/ExoPlayer;->blockingSendMessage(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    goto :goto_0

    .line 684
    :cond_1
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->videoRenderer:Lcom/google/android/exoplayer/TrackRenderer;

    iget-object v2, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->surface:Landroid/view/Surface;

    invoke-interface {v0, v1, v3, v2}, Lcom/google/android/exoplayer/ExoPlayer;->sendMessage(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private reportPlayerState()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 653
    iget-object v5, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v5}, Lcom/google/android/exoplayer/ExoPlayer;->getPlayWhenReady()Z

    move-result v3

    .line 654
    .local v3, "playWhenReady":Z
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->getPlaybackState()I

    move-result v4

    .line 656
    .local v4, "playbackState":I
    iget-object v5, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->stateStore:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$StateStore;

    invoke-virtual {v5, v3, v4}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$StateStore;->getState(ZI)I

    move-result v2

    .line 657
    .local v2, "newState":I
    iget-object v5, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->stateStore:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$StateStore;

    invoke-virtual {v5}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$StateStore;->getMostRecentState()I

    move-result v5

    if-eq v2, v5, :cond_1

    .line 658
    iget-object v5, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->stateStore:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$StateStore;

    invoke-virtual {v5, v3, v4}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$StateStore;->setMostRecentState(ZI)V

    .line 663
    iget-object v5, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->stateStore:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$StateStore;

    const/4 v6, 0x3

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    invoke-virtual {v5, v6, v7}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$StateStore;->matchesHistory([IZ)Z

    move-result v0

    .line 664
    .local v0, "informSeekCompletion":Z
    iget-object v5, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->stateStore:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$StateStore;

    const/4 v6, 0x4

    new-array v6, v6, [I

    fill-array-data v6, :array_1

    invoke-virtual {v5, v6, v7}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$StateStore;->matchesHistory([IZ)Z

    move-result v5

    or-int/2addr v0, v5

    .line 666
    iget-object v5, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;

    .line 667
    .local v1, "listener":Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;
    invoke-interface {v1, v3, v4}, Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;->onStateChanged(ZI)V

    .line 669
    if-eqz v0, :cond_0

    .line 670
    invoke-interface {v1}, Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;->onSeekComplete()V

    goto :goto_0

    .line 674
    .end local v0    # "informSeekCompletion":Z
    .end local v1    # "listener":Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;
    :cond_1
    return-void

    .line 663
    nop

    :array_0
    .array-data 4
        0x64
        0x3
        0x4
    .end array-data

    .line 664
    :array_1
    .array-data 4
        0x64
        0x4
        0x3
        0x4
    .end array-data
.end method


# virtual methods
.method public addListener(Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;

    .prologue
    .line 168
    if-eqz p1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_0
    return-void
.end method

.method public blockingClearSurface()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 209
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->surface:Landroid/view/Surface;

    .line 210
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->pushSurface(Z)V

    .line 211
    return-void
.end method

.method public forcePrepare()V
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->prepared:Z

    .line 270
    return-void
.end method

.method public getAvailableTracks()Ljava/util/Map;
    .locals 8
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/MediaFormat;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->getPlaybackState()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 226
    const/4 v1, 0x0

    .line 242
    :cond_0
    return-object v1

    .line 229
    :cond_1
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 230
    .local v1, "trackMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Lcom/google/android/exoplayer/MediaFormat;>;>;"
    const/4 v5, 0x4

    new-array v2, v5, [I

    fill-array-data v2, :array_0

    .line 233
    .local v2, "trackTypes":[I
    array-length v6, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_0

    aget v4, v2, v5

    .line 234
    .local v4, "type":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->getTrackCount(I)I

    move-result v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 235
    .local v3, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/MediaFormat;>;"
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 238
    invoke-virtual {p0, v4, v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->getTrackFormat(II)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 233
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 230
    :array_0
    .array-data 4
        0x1
        0x0
        0x2
        0x3
    .end array-data
.end method

.method public getBufferedPercentage()I
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getBufferedPercentage()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getPlayWhenReady()Z

    move-result v0

    return v0
.end method

.method public getPlaybackLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getPlaybackLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackState()I
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->rendererBuildingState:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;

    sget-object v1, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;->BUILDING:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;

    if-ne v0, v1, :cond_0

    .line 376
    const/4 v0, 0x2

    .line 379
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getPlaybackState()I

    move-result v0

    goto :goto_0
.end method

.method public getSelectedTrack(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 254
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/ExoPlayer;->getSelectedTrack(I)I

    move-result v0

    return v0
.end method

.method public getTrackCount(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 246
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/ExoPlayer;->getTrackCount(I)I

    move-result v0

    return v0
.end method

.method public getTrackFormat(II)Lcom/google/android/exoplayer/MediaFormat;
    .locals 1
    .param p1, "type"    # I
    .param p2, "index"    # I

    .prologue
    .line 250
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer/ExoPlayer;->getTrackFormat(II)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public onAudioCapabilitiesChanged(Lcom/google/android/exoplayer/audio/AudioCapabilities;)V
    .locals 4
    .param p1, "audioCapabilities"    # Lcom/google/android/exoplayer/audio/AudioCapabilities;

    .prologue
    .line 633
    iget-object v3, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->audioCapabilities:Lcom/google/android/exoplayer/audio/AudioCapabilities;

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer/audio/AudioCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->audioCapabilities:Lcom/google/android/exoplayer/audio/AudioCapabilities;

    .line 638
    iget-object v3, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->rendererBuilder:Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;

    if-eqz v3, :cond_0

    .line 643
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->getPlayWhenReady()Z

    move-result v2

    .line 644
    .local v2, "playWhenReady":Z
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    .line 646
    .local v0, "currentPosition":J
    iget-object v3, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->rendererBuilder:Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;

    invoke-virtual {p0, v3}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->replaceRenderBuilder(Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;)V

    .line 648
    iget-object v3, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v3, v0, v1}, Lcom/google/android/exoplayer/ExoPlayer;->seekTo(J)V

    .line 649
    iget-object v3, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v3, v2}, Lcom/google/android/exoplayer/ExoPlayer;->setPlayWhenReady(Z)V

    goto :goto_0
.end method

.method public onAudioTrackInitializationError(Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;)V
    .locals 1
    .param p1, "e"    # Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;

    .prologue
    .line 543
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->internalErrorListener:Lcom/devbrackets/android/exomedia/core/listener/InternalErrorListener;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->internalErrorListener:Lcom/devbrackets/android/exomedia/core/listener/InternalErrorListener;

    invoke-interface {v0, p1}, Lcom/devbrackets/android/exomedia/core/listener/InternalErrorListener;->onAudioTrackInitializationError(Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;)V

    .line 546
    :cond_0
    return-void
.end method

.method public onAudioTrackUnderrun(IJJ)V
    .locals 6
    .param p1, "bufferSize"    # I
    .param p2, "bufferSizeMs"    # J
    .param p4, "elapsedSinceLastFeedMs"    # J

    .prologue
    .line 557
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->internalErrorListener:Lcom/devbrackets/android/exomedia/core/listener/InternalErrorListener;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->internalErrorListener:Lcom/devbrackets/android/exomedia/core/listener/InternalErrorListener;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/devbrackets/android/exomedia/core/listener/InternalErrorListener;->onAudioTrackUnderrun(IJJ)V

    .line 560
    :cond_0
    return-void
.end method

.method public onAudioTrackWriteError(Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;)V
    .locals 1
    .param p1, "e"    # Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;

    .prologue
    .line 550
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->internalErrorListener:Lcom/devbrackets/android/exomedia/core/listener/InternalErrorListener;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->internalErrorListener:Lcom/devbrackets/android/exomedia/core/listener/InternalErrorListener;

    invoke-interface {v0, p1}, Lcom/devbrackets/android/exomedia/core/listener/InternalErrorListener;->onAudioTrackWriteError(Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;)V

    .line 553
    :cond_0
    return-void
.end method

.method public onAvailableRangeChanged(ILcom/google/android/exoplayer/TimeRange;)V
    .locals 1
    .param p1, "sourceId"    # I
    .param p2, "availableRange"    # Lcom/google/android/exoplayer/TimeRange;

    .prologue
    .line 592
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->infoListener:Lcom/devbrackets/android/exomedia/core/listener/InfoListener;

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->infoListener:Lcom/devbrackets/android/exomedia/core/listener/InfoListener;

    invoke-interface {v0, p1, p2}, Lcom/devbrackets/android/exomedia/core/listener/InfoListener;->onAvailableRangeChanged(ILcom/google/android/exoplayer/TimeRange;)V

    .line 595
    :cond_0
    return-void
.end method

.method public onBandwidthSample(IJJ)V
    .locals 6
    .param p1, "elapsedMs"    # I
    .param p2, "bytes"    # J
    .param p4, "bitrateEstimate"    # J

    .prologue
    .line 497
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->infoListener:Lcom/devbrackets/android/exomedia/core/listener/InfoListener;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->infoListener:Lcom/devbrackets/android/exomedia/core/listener/InfoListener;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/devbrackets/android/exomedia/core/listener/InfoListener;->onBandwidthSample(IJJ)V

    .line 500
    :cond_0
    return-void
.end method

.method public onCryptoError(Landroid/media/MediaCodec$CryptoException;)V
    .locals 1
    .param p1, "e"    # Landroid/media/MediaCodec$CryptoException;

    .prologue
    .line 564
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->internalErrorListener:Lcom/devbrackets/android/exomedia/core/listener/InternalErrorListener;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->internalErrorListener:Lcom/devbrackets/android/exomedia/core/listener/InternalErrorListener;

    invoke-interface {v0, p1}, Lcom/devbrackets/android/exomedia/core/listener/InternalErrorListener;->onCryptoError(Landroid/media/MediaCodec$CryptoException;)V

    .line 567
    :cond_0
    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/text/Cue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 578
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/text/Cue;>;"
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->captionListener:Lcom/devbrackets/android/exomedia/core/listener/CaptionListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->getSelectedTrack(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 579
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->captionListener:Lcom/devbrackets/android/exomedia/core/listener/CaptionListener;

    invoke-interface {v0, p1}, Lcom/devbrackets/android/exomedia/core/listener/CaptionListener;->onCues(Ljava/util/List;)V

    .line 581
    :cond_0
    return-void
.end method

.method public onDecoderInitializationError(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V
    .locals 1
    .param p1, "e"    # Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;

    .prologue
    .line 529
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->internalErrorListener:Lcom/devbrackets/android/exomedia/core/listener/InternalErrorListener;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->internalErrorListener:Lcom/devbrackets/android/exomedia/core/listener/InternalErrorListener;

    invoke-interface {v0, p1}, Lcom/devbrackets/android/exomedia/core/listener/InternalErrorListener;->onDecoderInitializationError(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V

    .line 532
    :cond_0
    return-void
.end method

.method public onDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 6
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "initializationDurationMs"    # J

    .prologue
    .line 536
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->infoListener:Lcom/devbrackets/android/exomedia/core/listener/InfoListener;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->infoListener:Lcom/devbrackets/android/exomedia/core/listener/InfoListener;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/devbrackets/android/exomedia/core/listener/InfoListener;->onDecoderInitialized(Ljava/lang/String;JJ)V

    .line 539
    :cond_0
    return-void
.end method

.method public onDownstreamFormatChanged(ILcom/google/android/exoplayer/chunk/Format;IJ)V
    .locals 2
    .param p1, "sourceId"    # I
    .param p2, "format"    # Lcom/google/android/exoplayer/chunk/Format;
    .param p3, "trigger"    # I
    .param p4, "mediaTimeMs"    # J

    .prologue
    .line 504
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->infoListener:Lcom/devbrackets/android/exomedia/core/listener/InfoListener;

    if-nez v0, :cond_1

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 508
    :cond_1
    if-nez p1, :cond_2

    .line 509
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->infoListener:Lcom/devbrackets/android/exomedia/core/listener/InfoListener;

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/devbrackets/android/exomedia/core/listener/InfoListener;->onVideoFormatEnabled(Lcom/google/android/exoplayer/chunk/Format;IJ)V

    goto :goto_0

    .line 510
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->infoListener:Lcom/devbrackets/android/exomedia/core/listener/InfoListener;

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/devbrackets/android/exomedia/core/listener/InfoListener;->onAudioFormatEnabled(Lcom/google/android/exoplayer/chunk/Format;IJ)V

    goto :goto_0
.end method

.method public onDrawnToSurface(Landroid/view/Surface;)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 605
    return-void
.end method

.method public onDrmKeysLoaded()V
    .locals 0

    .prologue
    .line 518
    return-void
.end method

.method public onDrmSessionManagerError(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 522
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->internalErrorListener:Lcom/devbrackets/android/exomedia/core/listener/InternalErrorListener;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->internalErrorListener:Lcom/devbrackets/android/exomedia/core/listener/InternalErrorListener;

    invoke-interface {v0, p1}, Lcom/devbrackets/android/exomedia/core/listener/InternalErrorListener;->onDrmSessionManagerError(Ljava/lang/Exception;)V

    .line 525
    :cond_0
    return-void
.end method

.method public onDroppedFrames(IJ)V
    .locals 2
    .param p1, "count"    # I
    .param p2, "elapsed"    # J

    .prologue
    .line 490
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->infoListener:Lcom/devbrackets/android/exomedia/core/listener/InfoListener;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->infoListener:Lcom/devbrackets/android/exomedia/core/listener/InfoListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/devbrackets/android/exomedia/core/listener/InfoListener;->onDroppedFrames(IJ)V

    .line 493
    :cond_0
    return-void
.end method

.method public onLoadCanceled(IJ)V
    .locals 0
    .param p1, "sourceId"    # I
    .param p2, "bytesLoaded"    # J

    .prologue
    .line 624
    return-void
.end method

.method public onLoadCompleted(IJIILcom/google/android/exoplayer/chunk/Format;JJJJ)V
    .locals 19
    .param p1, "sourceId"    # I
    .param p2, "bytesLoaded"    # J
    .param p4, "type"    # I
    .param p5, "trigger"    # I
    .param p6, "format"    # Lcom/google/android/exoplayer/chunk/Format;
    .param p7, "mediaStartTimeMs"    # J
    .param p9, "mediaEndTimeMs"    # J
    .param p11, "elapsedRealtimeMs"    # J
    .param p13, "loadDurationMs"    # J

    .prologue
    .line 616
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->infoListener:Lcom/devbrackets/android/exomedia/core/listener/InfoListener;

    if-eqz v2, :cond_0

    .line 617
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->infoListener:Lcom/devbrackets/android/exomedia/core/listener/InfoListener;

    move/from16 v4, p1

    move-wide/from16 v5, p2

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move-wide/from16 v16, p13

    invoke-interface/range {v3 .. v17}, Lcom/devbrackets/android/exomedia/core/listener/InfoListener;->onLoadCompleted(IJIILcom/google/android/exoplayer/chunk/Format;JJJJ)V

    .line 619
    :cond_0
    return-void
.end method

.method public onLoadError(ILjava/io/IOException;)V
    .locals 1
    .param p1, "sourceId"    # I
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 571
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->internalErrorListener:Lcom/devbrackets/android/exomedia/core/listener/InternalErrorListener;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->internalErrorListener:Lcom/devbrackets/android/exomedia/core/listener/InternalErrorListener;

    invoke-interface {v0, p1, p2}, Lcom/devbrackets/android/exomedia/core/listener/InternalErrorListener;->onLoadError(ILjava/io/IOException;)V

    .line 574
    :cond_0
    return-void
.end method

.method public onLoadStarted(IJIILcom/google/android/exoplayer/chunk/Format;JJ)V
    .locals 13
    .param p1, "sourceId"    # I
    .param p2, "length"    # J
    .param p4, "type"    # I
    .param p5, "trigger"    # I
    .param p6, "format"    # Lcom/google/android/exoplayer/chunk/Format;
    .param p7, "mediaStartTimeMs"    # J
    .param p9, "mediaEndTimeMs"    # J

    .prologue
    .line 609
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->infoListener:Lcom/devbrackets/android/exomedia/core/listener/InfoListener;

    if-eqz v0, :cond_0

    .line 610
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->infoListener:Lcom/devbrackets/android/exomedia/core/listener/InfoListener;

    move v2, p1

    move-wide v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-interface/range {v1 .. v11}, Lcom/devbrackets/android/exomedia/core/listener/InfoListener;->onLoadStarted(IJIILcom/google/android/exoplayer/chunk/Format;JJ)V

    .line 612
    :cond_0
    return-void
.end method

.method public bridge synthetic onMetadata(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 75
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->onMetadata(Ljava/util/List;)V

    return-void
.end method

.method public onMetadata(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/metadata/id3/Id3Frame;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 585
    .local p1, "metadata":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/metadata/id3/Id3Frame;>;"
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->id3MetadataListener:Lcom/devbrackets/android/exomedia/core/listener/Id3MetadataListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->getSelectedTrack(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 586
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->id3MetadataListener:Lcom/devbrackets/android/exomedia/core/listener/Id3MetadataListener;

    invoke-interface {v0, p1}, Lcom/devbrackets/android/exomedia/core/listener/Id3MetadataListener;->onId3Metadata(Ljava/util/List;)V

    .line 588
    :cond_0
    return-void
.end method

.method public onPlayWhenReadyCommitted()V
    .locals 0

    .prologue
    .line 600
    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer/ExoPlaybackException;)V
    .locals 3
    .param p1, "exception"    # Lcom/google/android/exoplayer/ExoPlaybackException;

    .prologue
    .line 475
    sget-object v1, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;->IDLE:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;

    iput-object v1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->rendererBuildingState:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;

    .line 476
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;

    .line 477
    .local v0, "listener":Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;
    invoke-interface {v0, p0, p1}, Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;->onError(Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;Ljava/lang/Exception;)V

    goto :goto_0

    .line 479
    .end local v0    # "listener":Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;
    :cond_0
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 0
    .param p1, "playWhenReady"    # Z
    .param p2, "state"    # I

    .prologue
    .line 470
    invoke-direct {p0}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->reportPlayerState()V

    .line 471
    return-void
.end method

.method public onRenderers([Lcom/google/android/exoplayer/TrackRenderer;Lcom/google/android/exoplayer/upstream/BandwidthMeter;)V
    .locals 3
    .param p1, "renderers"    # [Lcom/google/android/exoplayer/TrackRenderer;
    .param p2, "bandwidthMeter"    # Lcom/google/android/exoplayer/upstream/BandwidthMeter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 292
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 293
    aget-object v1, p1, v0

    if-nez v1, :cond_0

    .line 295
    new-instance v1, Lcom/google/android/exoplayer/DummyTrackRenderer;

    invoke-direct {v1}, Lcom/google/android/exoplayer/DummyTrackRenderer;-><init>()V

    aput-object v1, p1, v0

    .line 292
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    :cond_1
    aget-object v1, p1, v2

    iput-object v1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->videoRenderer:Lcom/google/android/exoplayer/TrackRenderer;

    .line 301
    const/4 v1, 0x1

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->audioRenderer:Lcom/google/android/exoplayer/TrackRenderer;

    .line 303
    invoke-direct {p0, v2}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->pushSurface(Z)V

    .line 304
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v1, p1}, Lcom/google/android/exoplayer/ExoPlayer;->prepare([Lcom/google/android/exoplayer/TrackRenderer;)V

    .line 305
    sget-object v1, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;->BUILT:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;

    iput-object v1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->rendererBuildingState:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;

    .line 306
    return-void
.end method

.method public onRenderersError(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 309
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->internalErrorListener:Lcom/devbrackets/android/exomedia/core/listener/InternalErrorListener;

    if-eqz v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->internalErrorListener:Lcom/devbrackets/android/exomedia/core/listener/InternalErrorListener;

    invoke-interface {v1, p1}, Lcom/devbrackets/android/exomedia/core/listener/InternalErrorListener;->onRendererInitializationError(Ljava/lang/Exception;)V

    .line 313
    :cond_0
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;

    .line 314
    .local v0, "listener":Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;
    invoke-interface {v0, p0, p1}, Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;->onError(Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;Ljava/lang/Exception;)V

    goto :goto_0

    .line 317
    .end local v0    # "listener":Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;
    :cond_1
    sget-object v1, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;->IDLE:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;

    iput-object v1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->rendererBuildingState:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;

    .line 318
    invoke-direct {p0}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->reportPlayerState()V

    .line 319
    return-void
.end method

.method public onUpstreamDiscarded(IJJ)V
    .locals 0
    .param p1, "sourceId"    # I
    .param p2, "mediaStartTimeMs"    # J
    .param p4, "mediaEndTimeMs"    # J

    .prologue
    .line 629
    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unappliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F

    .prologue
    .line 483
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;

    .line 484
    .local v0, "listener":Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;->onVideoSizeChanged(IIIF)V

    goto :goto_0

    .line 486
    .end local v0    # "listener":Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;
    :cond_0
    return-void
.end method

.method public prepare()V
    .locals 2

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->prepared:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->rendererBuilder:Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;

    if-nez v0, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->rendererBuildingState:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;

    sget-object v1, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;->BUILT:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;

    if-ne v0, v1, :cond_2

    .line 278
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->stop()V

    .line 281
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->videoRenderer:Lcom/google/android/exoplayer/TrackRenderer;

    .line 282
    sget-object v0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;->BUILDING:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->rendererBuildingState:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;

    .line 283
    invoke-direct {p0}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->reportPlayerState()V

    .line 285
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->rendererBuilder:Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;

    invoke-virtual {v0, p0}, Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;->buildRenderers(Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;)V

    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->prepared:Z

    .line 288
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->stopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 359
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->rendererBuilder:Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->rendererBuilder:Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;->cancel()V

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->audioCapabilitiesReceiver:Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->audioCapabilitiesReceiver:Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;->unregister()V

    .line 365
    iput-object v1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->audioCapabilitiesReceiver:Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;

    .line 368
    :cond_1
    sget-object v0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;->IDLE:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->rendererBuildingState:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;

    .line 369
    iput-object v1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->surface:Landroid/view/Surface;

    .line 370
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->release()V

    .line 371
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->stayAwake(Z)V

    .line 372
    return-void
.end method

.method public replaceRenderBuilder(Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;)V
    .locals 2
    .param p1, "renderBuilder"    # Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 157
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->rendererBuilder:Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;

    .line 158
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->rendererBuilder:Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->audioCapabilities:Lcom/google/android/exoplayer/audio/AudioCapabilities;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->rendererBuilder:Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;

    invoke-virtual {v1}, Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$Listener;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->audioCapabilitiesReceiver:Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;

    .line 160
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->audioCapabilitiesReceiver:Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;->register()Lcom/google/android/exoplayer/audio/AudioCapabilities;

    .line 163
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->prepared:Z

    .line 164
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->prepare()V

    .line 165
    return-void
.end method

.method public seekTo(J)V
    .locals 3
    .param p1, "positionMs"    # J

    .prologue
    .line 334
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer/ExoPlayer;->seekTo(J)V

    .line 335
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->stateStore:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$StateStore;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->stateStore:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$StateStore;

    invoke-virtual {v1}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$StateStore;->isLastReportedPlayWhenReady()Z

    move-result v1

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$StateStore;->setMostRecentState(ZI)V

    .line 336
    return-void
.end method

.method public setMetadataListener(Lcom/devbrackets/android/exomedia/core/listener/Id3MetadataListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/devbrackets/android/exomedia/core/listener/Id3MetadataListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 192
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->id3MetadataListener:Lcom/devbrackets/android/exomedia/core/listener/Id3MetadataListener;

    .line 193
    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 1
    .param p1, "playWhenReady"    # Z

    .prologue
    .line 329
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/ExoPlayer;->setPlayWhenReady(Z)V

    .line 330
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->stayAwake(Z)V

    .line 331
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->surface:Landroid/view/Surface;

    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->pushSurface(Z)V

    .line 198
    return-void
.end method

.method protected stayAwake(Z)V
    .locals 1
    .param p1, "awake"    # Z

    .prologue
    .line 457
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2

    .line 462
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    .line 463
    :cond_2
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->stopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/ExoPlayer;->setPlayWhenReady(Z)V

    .line 324
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->stop()V

    .line 326
    :cond_0
    return-void
.end method
