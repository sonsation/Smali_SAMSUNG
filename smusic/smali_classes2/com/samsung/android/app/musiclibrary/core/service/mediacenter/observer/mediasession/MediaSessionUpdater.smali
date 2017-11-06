.class public final Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;
.super Ljava/lang/Object;
.source "MediaSessionUpdater.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-MediaCenter"

.field private static final REMOTE_TAG:I = 0x6a

.field private static final SUB_TAG:Ljava/lang/String; = "MediaSession: "

.field private static final SUPPORTED_ACTIONS:J = 0x1b7fL

.field private static final TAG:Ljava/lang/String; = "SV-MediaCenter"

.field private static final UNKOWN_DURATION:J = -0x1L


# instance fields
.field private final mArtworkConverter:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/IArtworkConverter;

.field private final mContext:Landroid/content/Context;

.field private mHasPendingMediaMetadata:Z

.field private final mLaunchIntentMusic:Landroid/app/PendingIntent;

.field private final mMediaButtonComponentName:Landroid/content/ComponentName;

.field private mMediaButtonRegistered:Z

.field private mMediaMetadata:Landroid/media/MediaMetadata;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mMediaSession:Landroid/media/session/MediaSession;

.field private final mMediaSessionData:Landroid/os/Bundle;

.field private final mPlaybackStateBuilder:Landroid/media/session/PlaybackState$Builder;

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

.field private final mSessionCallBack:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;Ljava/lang/Class;Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;Lcom/samsung/android/app/musiclibrary/core/utils/graphics/IArtworkConverter;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "abstractionFactory"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;
    .param p4, "serviceFacade"    # Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;
    .param p5, "artworkConverter"    # Lcom/samsung/android/app/musiclibrary/core/utils/graphics/IArtworkConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;",
            "Lcom/samsung/android/app/musiclibrary/core/utils/graphics/IArtworkConverter;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "clsMediaButton":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v4, 0x6a

    const/4 v3, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaSessionData:Landroid/os/Bundle;

    .line 83
    iput-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mHasPendingMediaMetadata:Z

    .line 87
    iput-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaButtonRegistered:Z

    .line 92
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mContext:Landroid/content/Context;

    .line 93
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p4}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mSessionCallBack:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;

    .line 94
    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mArtworkConverter:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/IArtworkConverter;

    .line 96
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;->getLaunchIntentSet()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/ILaunchIntentSet;

    move-result-object v0

    .line 97
    .local v0, "launchIntent":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/ILaunchIntentSet;
    const/4 v1, 0x1

    .line 98
    invoke-interface {v0, v1, v4}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/ILaunchIntentSet;->getLaunchIntentMusic(ZI)Landroid/content/Intent;

    move-result-object v1

    .line 97
    invoke-static {p1, v4, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mLaunchIntentMusic:Landroid/app/PendingIntent;

    .line 99
    new-instance v1, Landroid/content/ComponentName;

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaButtonComponentName:Landroid/content/ComponentName;

    .line 102
    new-instance v1, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v1}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mPlaybackStateBuilder:Landroid/media/session/PlaybackState$Builder;

    .line 103
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mPlaybackStateBuilder:Landroid/media/session/PlaybackState$Builder;

    const-wide/16 v2, 0x1b7f

    invoke-virtual {v1, v2, v3}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    .line 104
    return-void
.end method

.method private addArtworkToMetadata(Landroid/media/MediaMetadata;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata;
    .locals 2
    .param p1, "metadata"    # Landroid/media/MediaMetadata;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "artwork"    # Landroid/graphics/Bitmap;

    .prologue
    .line 250
    if-nez p1, :cond_0

    .line 251
    const/4 v1, 0x0

    .line 257
    :goto_0
    return-object v1

    .line 255
    :cond_0
    new-instance v0, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v0, p1}, Landroid/media/MediaMetadata$Builder;-><init>(Landroid/media/MediaMetadata;)V

    .line 256
    .local v0, "b":Landroid/media/MediaMetadata$Builder;
    const-string v1, "android.media.metadata.ALBUM_ART"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaMetadata$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata$Builder;

    .line 257
    invoke-virtual {v0}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v1

    goto :goto_0
.end method

.method private ensureSession()Z
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaSession:Landroid/media/session/MediaSession;

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaSessionUtils;->getSessionInstance(Landroid/content/Context;)Landroid/media/session/MediaSession;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaSession:Landroid/media/session/MediaSession;

    .line 224
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->setUpMediaSession(Landroid/media/session/MediaSession;)V

    .line 225
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->updateAllInfo()V

    .line 227
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private notifyNextSongChanged(Z)V
    .locals 4
    .param p1, "hasNextSong"    # Z

    .prologue
    .line 286
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 287
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "has_next_song"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 288
    const-string v1, "com.sec.android.app.music.NEXT_SONG_CHANGED"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 291
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaSessionData:Landroid/os/Bundle;

    const-string v2, "com.sec.android.app.music.EXTRA_HAS_NEXT_SONG"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 292
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaSessionData:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->setSessionExtra(Landroid/os/Bundle;)V

    .line 293
    const-string v1, "SV-MediaCenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaSession:  notifyNextSongChanged  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method private sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->ensureSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaSession;->sendSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 300
    :cond_0
    return-void
.end method

.method private setMediaButtonReceiver()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 346
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->ensureSession()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 349
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 350
    .local v0, "i":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 353
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaButtonComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 354
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 355
    .local v1, "pi":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v2, v1}, Landroid/media/session/MediaSession;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V

    .line 357
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "pi":Landroid/app/PendingIntent;
    :cond_0
    return-void
.end method

.method private setMeta(Landroid/media/MediaMetadata;)V
    .locals 4
    .param p1, "m"    # Landroid/media/MediaMetadata;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 303
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaMetadata:Landroid/media/MediaMetadata;

    .line 304
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->ensureSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    const-string v0, "SV-MediaCenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaSession: MediaSession setMeta  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    if-eqz p1, :cond_1

    const-string v0, "android.media.metadata.DURATION"

    invoke-virtual {p1, v0}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mHasPendingMediaMetadata:Z

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V

    goto :goto_0
.end method

.method private setPendingMediaMetadata(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 317
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaMetadata:Landroid/media/MediaMetadata;

    const-string v2, "android.media.metadata.DURATION"

    .line 318
    invoke-static {v1, v2, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->changeAttribute(Landroid/media/MediaMetadata;Ljava/lang/String;J)Landroid/media/MediaMetadata;

    move-result-object v0

    .line 319
    .local v0, "m":Landroid/media/MediaMetadata;
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->setMeta(Landroid/media/MediaMetadata;)V

    .line 320
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mHasPendingMediaMetadata:Z

    .line 321
    return-void
.end method

.method private setPlaybackState(Landroid/media/session/PlaybackState$Builder;)V
    .locals 4
    .param p1, "builder"    # Landroid/media/session/PlaybackState$Builder;

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->ensureSession()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    invoke-virtual {p1}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v0

    .line 326
    .local v0, "s":Landroid/media/session/PlaybackState;
    const-string v1, "SV-MediaCenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaSession: MediaSession setPlaybackState  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v1, v0}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    .line 329
    .end local v0    # "s":Landroid/media/session/PlaybackState;
    :cond_0
    return-void
.end method

.method private setPlaybackStateStop()V
    .locals 5

    .prologue
    .line 367
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mPlaybackStateBuilder:Landroid/media/session/PlaybackState$Builder;

    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    .line 368
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/session/PlaybackState$Builder;->setState(IJF)Landroid/media/session/PlaybackState$Builder;

    .line 370
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mPlaybackStateBuilder:Landroid/media/session/PlaybackState$Builder;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->setPlaybackState(Landroid/media/session/PlaybackState$Builder;)V

    .line 371
    return-void
.end method

.method private setQueue(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 339
    .local p1, "q":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->ensureSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    const-string v0, "SV-MediaCenter"

    const-string v1, "MediaSession: MediaSession setQueue"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaSessionUtils;->setQueue(Ljava/util/List;)V

    .line 343
    :cond_0
    return-void
.end method

.method private setSessionExtra(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->ensureSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    const-string v0, "SV-MediaCenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaSession: MediaSession setSessionExtra  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setExtras(Landroid/os/Bundle;)V

    .line 336
    :cond_0
    return-void
.end method

.method private setUpMediaSession(Landroid/media/session/MediaSession;)V
    .locals 2
    .param p1, "m"    # Landroid/media/session/MediaSession;

    .prologue
    .line 238
    const-string v0, "SV-MediaCenter"

    const-string v1, "MediaSession:  setUpMediaSession()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mSessionCallBack:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;

    invoke-virtual {p1, v0}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    .line 242
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mSessionCallBack:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->setMediaSession(Landroid/media/session/MediaSession;)V

    .line 244
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/session/MediaSession;->setFlags(I)V

    .line 246
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mLaunchIntentMusic:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0}, Landroid/media/session/MediaSession;->setSessionActivity(Landroid/app/PendingIntent;)V

    .line 247
    return-void
.end method

.method private updateAllInfo()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaMetadata:Landroid/media/MediaMetadata;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->setMeta(Landroid/media/MediaMetadata;)V

    .line 232
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mPlaybackStateBuilder:Landroid/media/session/PlaybackState$Builder;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->setPlaybackState(Landroid/media/session/PlaybackState$Builder;)V

    .line 233
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaSessionData:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->setSessionExtra(Landroid/os/Bundle;)V

    .line 234
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mQueue:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->setQueue(Ljava/util/List;)V

    .line 235
    return-void
.end method

.method private updateMediaSessionQueueMode(II)V
    .locals 4
    .param p1, "repeat"    # I
    .param p2, "shuffle"    # I

    .prologue
    .line 195
    const-string v1, "SV-MediaCenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaSession:  updateMediaSessionQueueMode() repeat: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " shuffle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 199
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v1, "repeat"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 200
    const-string/jumbo v1, "shuffle"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 201
    const-string v1, "com.samsung.android.bt.AVRCP"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 204
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaSessionData:Landroid/os/Bundle;

    const-string v2, "com.sec.android.app.music.EXTRA_REPEAT"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 205
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaSessionData:Landroid/os/Bundle;

    const-string v2, "com.sec.android.app.music.EXTRA_SHUFFLE"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 206
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaSessionData:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->setSessionExtra(Landroid/os/Bundle;)V

    .line 207
    return-void
.end method

.method private updateMediaSessionState(IJF)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "position"    # J
    .param p4, "playSpeed"    # F

    .prologue
    .line 266
    const-string v0, "SV-MediaCenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaSession:  updateMediaSessionState() state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " playSpeed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 271
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->setMediaButtonReceiver()V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mPlaybackStateBuilder:Landroid/media/session/PlaybackState$Builder;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/media/session/PlaybackState$Builder;->setState(IJF)Landroid/media/session/PlaybackState$Builder;

    .line 274
    return-void
.end method

.method private updatePlaybackState(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 4
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 210
    .line 211
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    .line 212
    .local v0, "state":I
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 213
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->setPlaybackStateStop()V

    .line 218
    :goto_1
    return-void

    .line 211
    .end local v0    # "state":I
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 215
    .restart local v0    # "state":I
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPosition()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlaySpeed()F

    move-result v1

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->updateMediaSessionState(IJF)V

    .line 216
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mPlaybackStateBuilder:Landroid/media/session/PlaybackState$Builder;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->setPlaybackState(Landroid/media/session/PlaybackState$Builder;)V

    goto :goto_1
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 164
    const-string v5, "com.samsung.android.app.music.core.state.ARTWORK_UPDATED"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 165
    const-string v5, "artwork"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 166
    .local v0, "artwork":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaMetadata:Landroid/media/MediaMetadata;

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mArtworkConverter:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/IArtworkConverter;

    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mContext:Landroid/content/Context;

    .line 167
    invoke-interface {v6, v7, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/IArtworkConverter;->convert(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 166
    invoke-direct {p0, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->addArtworkToMetadata(Landroid/media/MediaMetadata;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata;

    move-result-object v1

    .line 168
    .local v1, "convertedMeta":Landroid/media/MediaMetadata;
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->setMeta(Landroid/media/MediaMetadata;)V

    .line 185
    .end local v0    # "artwork":Landroid/graphics/Bitmap;
    .end local v1    # "convertedMeta":Landroid/media/MediaMetadata;
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    const-string v5, "com.samsung.android.app.music.core.state.queue.MODE_CHANGED"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 170
    if-eqz p2, :cond_0

    .line 173
    const-string v5, "com.samsung.android.app.music.core.state.queue.MODE_VALUES"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 174
    .local v4, "values":Landroid/os/Bundle;
    if-eqz v4, :cond_0

    .line 177
    const-string v5, "extra.repeat_state"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 178
    .local v2, "repeat":I
    const-string v5, "extra.shuffle_state"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 179
    .local v3, "shuffle":I
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->updateMediaSessionQueueMode(II)V

    goto :goto_0

    .line 180
    .end local v2    # "repeat":I
    .end local v3    # "shuffle":I
    .end local v4    # "values":Landroid/os/Bundle;
    :cond_2
    const-string v5, "com.sec.android.app.music.NEXT_SONG_CHANGED"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 181
    const-string v5, "has_next_song"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->notifyNextSongChanged(Z)V

    goto :goto_0

    .line 182
    :cond_3
    const-string v5, "com.samsung.android.app.music.core.state.HIDE_NOTIFICATION"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->setPlaybackStateStop()V

    goto :goto_0
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 7
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    const/4 v6, 0x1

    .line 117
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mHasPendingMediaMetadata:Z

    .line 118
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mSessionCallBack:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;

    invoke-virtual {v4, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->setMusicMetadata(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 120
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v3

    .line 122
    .local v3, "s":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->updatePlaybackState(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    .line 123
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 125
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->setMeta(Landroid/media/MediaMetadata;)V

    .line 133
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->ensureSession()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 134
    iget-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaButtonRegistered:Z

    if-nez v4, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->setMediaButtonReceiver()V

    .line 136
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v4, v6}, Landroid/media/session/MediaSession;->setActive(Z)V

    .line 137
    iput-boolean v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaButtonRegistered:Z

    .line 140
    :cond_0
    return-void

    .line 127
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v2

    .line 128
    .local v2, "mm":Landroid/media/MediaMetadata;
    const-string v4, "android.media.metadata.ALBUM_ART"

    invoke-virtual {v2, v4}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 129
    .local v0, "artwork":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mArtworkConverter:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/IArtworkConverter;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mContext:Landroid/content/Context;

    .line 130
    invoke-interface {v4, v5, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/IArtworkConverter;->convert(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->addArtworkToMetadata(Landroid/media/MediaMetadata;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata;

    move-result-object v1

    .line 131
    .local v1, "convertedMeta":Landroid/media/MediaMetadata;
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->setMeta(Landroid/media/MediaMetadata;)V

    goto :goto_0
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 6
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    const-wide/16 v4, 0x0

    .line 144
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mHasPendingMediaMetadata:Z

    if-eqz v2, :cond_0

    .line 145
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getDuration()J

    move-result-wide v0

    .line 146
    .local v0, "duration":J
    cmp-long v2, v0, v4

    if-lez v2, :cond_1

    .line 147
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->setPendingMediaMetadata(J)V

    .line 152
    .end local v0    # "duration":J
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->updatePlaybackState(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    .line 153
    return-void

    .line 148
    .restart local v0    # "duration":J
    :cond_1
    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    .line 149
    const-wide/16 v2, -0x1

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->setPendingMediaMetadata(J)V

    goto :goto_0
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "extras"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mQueue:Ljava/util/List;

    .line 159
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->setQueue(Ljava/util/List;)V

    .line 160
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->setPlaybackStateStop()V

    .line 190
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mSessionCallBack:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->release()V

    .line 191
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaSessionUtils;->releasePlayer()V

    .line 192
    return-void
.end method

.method public final setLyricLoader(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader;)V
    .locals 1
    .param p1, "lyricLoader"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mSessionCallBack:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->setLyricLoader(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader;)V

    .line 109
    return-void
.end method

.method public setPlayerLoggers(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "playerLoggers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mSessionCallBack:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->setPlayerLoggers(Landroid/util/SparseArray;)V

    .line 113
    return-void
.end method
