.class public Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;
.super Ljava/lang/Object;
.source "PlaybackStateMonitor.java"

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;,
        Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;
    }
.end annotation


# static fields
.field private static mLock:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsPlaying:Z

.field private mMediaController:Landroid/media/session/MediaController;

.field private mOnPlaybackStateChangedListener:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

.field private mSessionCb:Landroid/media/session/MediaController$Callback;

.field private mSessionManager:Landroid/media/session/MediaSessionManager;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;)Landroid/media/session/MediaController;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;)Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mLock:Ljava/lang/Object;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    .line 78
    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mIsPlaying:Z

    .line 83
    if-nez p1, :cond_0

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 86
    :cond_0
    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mContext:Landroid/content/Context;

    .line 87
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "media_session"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    .line 82
    return-void
.end method

.method private sendCurrentState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 236
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-nez v1, :cond_1

    .line 237
    :cond_0
    return-void

    .line 240
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->getCurrentActiveSessionPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;->onSessionChanged(Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V

    .line 242
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;->onMetadataChanged(Landroid/media/MediaMetadata;)V

    .line 243
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 244
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 245
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    const-string/jumbo v1, "com.samsung.android.servicebox.mediasession.extra.LOCK_SCREEN_PENDING_INTENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    invoke-interface {v2, v1}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;->onPendingIntentChanged(Landroid/app/PendingIntent;)V

    .line 235
    :goto_0
    return-void

    .line 247
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    invoke-interface {v1, v3}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;->onPendingIntentChanged(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private start()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 156
    const-string/jumbo v1, "PlaybackStateMonitor_LOCK"

    const-string/jumbo v2, "Start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-boolean v1, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mIsPlaying:Z

    if-eqz v1, :cond_0

    .line 158
    const-string/jumbo v1, "PlaybackStateMonitor_LOCK"

    const-string/jumbo v2, "Start -- return : already playing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-void

    .line 162
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mIsPlaying:Z

    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "handler":Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_1

    .line 165
    new-instance v0, Landroid/os/Handler;

    .end local v0    # "handler":Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v1, p0, v3, v0}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;Landroid/os/Handler;)V

    .line 172
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v1, v3}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->onActiveSessionsChanged(Ljava/util/List;)V

    .line 155
    return-void
.end method

.method private stop()V
    .locals 2

    .prologue
    .line 176
    const-string/jumbo v0, "PlaybackStateMonitor_LOCK"

    const-string/jumbo v1, "Stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mIsPlaying:Z

    .line 178
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v0, p0}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    .line 175
    return-void
.end method

.method private updateController(Landroid/media/session/MediaController;)V
    .locals 3
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .prologue
    .line 200
    const-string/jumbo v0, "PlaybackStateMonitor_LOCK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateController: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", current controller = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    sget-object v1, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 203
    if-nez p1, :cond_3

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->getCurrentActiveSessionPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;->onSessionDestroyed(Ljava/lang/String;)V

    .line 214
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit v1

    .line 199
    return-void

    .line 216
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_4

    .line 217
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 218
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_5

    .line 219
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    if-eqz v0, :cond_5

    .line 220
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    .line 225
    :cond_5
    new-instance v0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;-><init>(Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    .line 227
    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    .line 228
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v2}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 230
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->sendCurrentState()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getCurrentActiveSessionPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 252
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-nez v0, :cond_0

    .line 253
    return-object v1

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaButtonReceiver()Landroid/app/PendingIntent;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 266
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-nez v0, :cond_0

    .line 267
    return-object v1

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMediaButtonReceiver()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getSessionActivity()Landroid/app/PendingIntent;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 259
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-nez v0, :cond_0

    .line 260
    return-object v1

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public onActiveSessionsChanged(Ljava/util/List;)V
    .locals 13
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
    .local p1, "controllers":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    const/4 v12, 0x0

    .line 107
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .local v6, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_1

    .line 109
    const-string/jumbo v8, "Size: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "controller$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 112
    .local v0, "controller":Landroid/media/session/MediaController;
    const-string/jumbo v8, " Package: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string/jumbo v8, " Flags: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getFlags()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string/jumbo v8, " State: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    const-string/jumbo v8, " Metadata: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v4

    .line 120
    .local v4, "metadata":Landroid/media/MediaMetadata;
    if-nez v4, :cond_0

    const-string/jumbo v8, "null"

    :goto_1
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object v8

    goto :goto_1

    .line 124
    .end local v0    # "controller":Landroid/media/session/MediaController;
    .end local v1    # "controller$iterator":Ljava/util/Iterator;
    .end local v4    # "metadata":Landroid/media/MediaMetadata;
    :cond_1
    const-string/jumbo v8, "PlaybackStateMonitor_LOCK"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onActiveSessionsChanged controllers: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 152
    :cond_2
    invoke-direct {p0, v12}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->updateController(Landroid/media/session/MediaController;)V

    .line 106
    return-void

    .line 127
    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "controller$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 128
    .restart local v0    # "controller":Landroid/media/session/MediaController;
    if-eqz v0, :cond_4

    .line 132
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v5

    .line 133
    .local v5, "playbackState":Landroid/media/session/PlaybackState;
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v4

    .line 134
    .restart local v4    # "metadata":Landroid/media/MediaMetadata;
    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    .line 138
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getFlags()J

    move-result-wide v2

    .line 139
    .local v2, "flags":J
    const-wide/16 v8, 0x2

    and-long/2addr v8, v2

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_4

    .line 143
    invoke-virtual {v5}, Landroid/media/session/PlaybackState;->getState()I

    move-result v7

    .line 144
    .local v7, "state":I
    const/4 v8, 0x3

    if-eq v7, v8, :cond_5

    const/4 v8, 0x6

    if-ne v7, v8, :cond_4

    .line 145
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->updateController(Landroid/media/session/MediaController;)V

    .line 146
    return-void
.end method

.method public removeOnPlaybackStateChangedListener()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    .line 102
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->stop()V

    .line 100
    return-void
.end method

.method public sendMediaButtonEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    .line 182
    const-string/jumbo v0, "PlaybackStateMonitor_LOCK"

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

    .line 183
    sget-object v1, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 184
    if-nez p1, :cond_0

    .line 185
    :try_start_0
    const-string/jumbo v0, "PlaybackStateMonitor_LOCK"

    const-string/jumbo v2, "sendMediaButtonEvent: KeyEvent is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 186
    return v3

    .line 188
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-nez v0, :cond_1

    .line 190
    const-string/jumbo v0, "PlaybackStateMonitor_LOCK"

    const-string/jumbo v2, "send to SessionManager"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/media/session/MediaSessionManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 195
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setOnPlaybackStateChangedListener(Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;)V
    .locals 2
    .param p1, "onPlaybackStateChangedListener"    # Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    .prologue
    .line 91
    const-string/jumbo v0, "PlaybackStateMonitor_LOCK"

    const-string/jumbo v1, "addOnPlaybackStateChangedListener() : onPlaybackStateChangedListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    .line 94
    if-eqz p1, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->start()V

    .line 96
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->sendCurrentState()V

    .line 90
    :cond_0
    return-void
.end method
