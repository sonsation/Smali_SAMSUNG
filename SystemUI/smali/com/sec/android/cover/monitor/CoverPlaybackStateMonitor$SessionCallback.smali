.class Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$SessionCallback;
.super Landroid/media/session/MediaController$Callback;
.source "CoverPlaybackStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;


# direct methods
.method private constructor <init>(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$SessionCallback;->this$0:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$SessionCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$SessionCallback;-><init>(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;)V

    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 3
    .param p1, "metadata"    # Landroid/media/MediaMetadata;

    .prologue
    .line 379
    invoke-static {}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMetadataChanged metadata="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$SessionCallback;->this$0:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->-get4(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;)Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$SessionCallback;->this$0:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->-get4(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;)Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;->onMetadataChanged(Landroid/media/MediaMetadata;)V

    .line 378
    :cond_0
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 3
    .param p1, "state"    # Landroid/media/session/PlaybackState;

    .prologue
    .line 371
    invoke-static {}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPlaybackStateChanged state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$SessionCallback;->this$0:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->-get4(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;)Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$SessionCallback;->this$0:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->-get4(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;)Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V

    .line 370
    :cond_0
    return-void
.end method

.method public onSessionDestroyed()V
    .locals 2

    .prologue
    .line 387
    invoke-static {}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onSessionDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$SessionCallback;->this$0:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->-get4(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;)Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$SessionCallback;->this$0:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->-get4(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;)Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;->onSessionDestroyed()V

    .line 386
    :cond_0
    return-void
.end method
