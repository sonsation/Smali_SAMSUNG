.class Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MiniPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->onBottomBarMenuDestroyed()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;

    .prologue
    .line 466
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$2;->this$0:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 469
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$2;->this$0:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->access$1300(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;)Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->updateControlButtonEnabled()V

    .line 470
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$2;->this$0:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->access$1200(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;)Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->updateLoading()V

    .line 471
    return-void
.end method
