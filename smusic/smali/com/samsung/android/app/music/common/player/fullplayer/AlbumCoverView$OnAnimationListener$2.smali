.class Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener$2;
.super Ljava/lang/Object;
.source "AlbumCoverView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->process3DAudioEffect(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;

    .prologue
    .line 1013
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener$2;->this$1:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 1016
    iget v2, p1, Landroid/os/Message;->what:I

    .line 1017
    .local v2, "messagePosition":I
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener$2;->this$1:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;

    invoke-static {v4}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->access$2200(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 1019
    .local v0, "curPosition":I
    if-eq v0, v2, :cond_0

    .line 1026
    :goto_0
    return v5

    .line 1022
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener$2;->this$1:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;

    iget-object v4, v4, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    .line 1023
    invoke-static {v4}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$1800(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v3

    .line 1024
    .local v3, "state":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v1

    .line 1025
    .local v1, "isPlaying":Z
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener$2;->this$1:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;

    invoke-static {v4}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->access$2300(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;)I

    move-result v4

    invoke-static {v2, v4, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->openQueuePosition(IIZ)V

    goto :goto_0
.end method
