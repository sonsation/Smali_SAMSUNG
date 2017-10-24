.class Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;
.super Landroid/media/session/MediaController$Callback;
.source "PlaybackStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;->this$0:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;-><init>(Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;)V

    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 5
    .param p1, "metadata"    # Landroid/media/MediaMetadata;

    .prologue
    .line 318
    const-string/jumbo v2, "PlaybackStateMonitor_LOCK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onMetadataChanged() metadata="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;->this$0:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->-get1(Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;)Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 320
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;->this$0:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->-get1(Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;)Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;->onMetadataChanged(Landroid/media/MediaMetadata;)V

    .line 323
    :cond_0
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;->this$0:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->-get0(Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;)Landroid/media/session/MediaController;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 324
    const-string/jumbo v2, "android.media.metadata.MEDIA_ID"

    invoke-virtual {p1, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "id":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 326
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "com.samsung.android.servicebox.mediasession.extra.MEDIA_ID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;->this$0:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->-get0(Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;)Landroid/media/session/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 328
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;->this$0:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->-get0(Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;)Landroid/media/session/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.servicebox.mediasession.action.REQUEST_LYRIC"

    invoke-virtual {v2, v3, v0}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 317
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "id":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 3
    .param p1, "state"    # Landroid/media/session/PlaybackState;

    .prologue
    .line 310
    const-string/jumbo v0, "PlaybackStateMonitor_LOCK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPlaybackStateChanged() state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;->this$0:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->-get1(Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;)Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;->this$0:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->-get1(Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;)Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V

    .line 309
    :cond_0
    return-void
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 335
    const-string/jumbo v2, "com.samsung.android.servicebox.mediasession.action.RESULT_LYRIC"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 336
    const-string/jumbo v2, "com.samsung.android.servicebox.mediasession.extra.MEDIA_ID"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, "mediaId":Ljava/lang/String;
    const-string/jumbo v2, "com.samsung.android.servicebox.mediasession.extra.LYRIC"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "lyric":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;->this$0:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->-get1(Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;)Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 340
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;->this$0:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->-get1(Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;)Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;->onLyricsChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :cond_0
    const-string/jumbo v2, "PlaybackStateMonitor_LOCK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSessionEvent() ACTION_RESULT_LYRIC mediaId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " lyric? = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .end local v0    # "lyric":Ljava/lang/String;
    .end local v1    # "mediaId":Ljava/lang/String;
    :cond_1
    return-void
.end method
