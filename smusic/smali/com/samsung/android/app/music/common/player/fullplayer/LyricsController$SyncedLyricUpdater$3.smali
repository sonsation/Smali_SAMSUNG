.class Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater$3;
.super Ljava/lang/Object;
.source "LyricsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;

    .prologue
    .line 616
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater$3;->this$1:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 619
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater$3;->this$1:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->access$1600(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;)Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater$3;->this$1:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->access$1500(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;)Landroid/view/Choreographer$FrameCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 620
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater$3;->this$1:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->access$1600(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;)Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater$3;->this$1:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->access$1500(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;)Landroid/view/Choreographer$FrameCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 621
    return-void
.end method
