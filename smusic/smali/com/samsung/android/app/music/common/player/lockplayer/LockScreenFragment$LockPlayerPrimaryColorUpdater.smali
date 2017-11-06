.class Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerPrimaryColorUpdater;
.super Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;
.source "LockScreenFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LockPlayerPrimaryColorUpdater"
.end annotation


# instance fields
.field private final mButtonColorUpdater:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;

.field private mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 1
    .param p2, "o"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .prologue
    .line 607
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerPrimaryColorUpdater;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;-><init>()V

    .line 593
    new-instance v0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerPrimaryColorUpdater$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerPrimaryColorUpdater$1;-><init>(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerPrimaryColorUpdater;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerPrimaryColorUpdater;->mButtonColorUpdater:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;

    .line 608
    iput-object p2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerPrimaryColorUpdater;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 609
    invoke-interface {p2, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 610
    return-void
.end method


# virtual methods
.method changeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 1
    .param p1, "o"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .prologue
    .line 613
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerPrimaryColorUpdater;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 614
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerPrimaryColorUpdater;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 615
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerPrimaryColorUpdater;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 616
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 8
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 620
    const-string v1, "com.samsung.android.app.music.metadata.ALBUM_ID"

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 621
    .local v4, "albumId":J
    const-string v1, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v0, v6

    .line 622
    .local v0, "cpAttrs":I
    invoke-static {v0}, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->getArtWorkUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 624
    .local v3, "baseUri":Landroid/net/Uri;
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->getInstance()Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerPrimaryColorUpdater;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;

    .line 625
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f0d0064

    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerPrimaryColorUpdater;->mButtonColorUpdater:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->getColor(Landroid/content/Context;Landroid/net/Uri;JILcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;)V

    .line 627
    return-void
.end method
