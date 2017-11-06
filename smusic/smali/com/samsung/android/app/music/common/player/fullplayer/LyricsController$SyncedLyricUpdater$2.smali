.class Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater$2;
.super Ljava/lang/Object;
.source "LyricsController.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


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
    .line 599
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater$2;->this$1:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 5
    .param p1, "frameTimeNanos"    # J

    .prologue
    .line 602
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater$2;->this$1:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 603
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater$2;->this$1:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater$2;->this$1:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->access$1100(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->access$1000(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;I)J

    move-result-wide v0

    .line 604
    .local v0, "delayTime":J
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater$2;->this$1:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->access$1102(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;I)I

    .line 607
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater$2;->this$1:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->access$1200(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update next synced lyric (delay time :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater$2;->this$1:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->access$1400(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater$2;->this$1:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->access$1300(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 611
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater$2;->this$1:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->access$1400(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater$2;->this$1:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->access$1300(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 613
    .end local v0    # "delayTime":J
    :cond_0
    return-void
.end method
