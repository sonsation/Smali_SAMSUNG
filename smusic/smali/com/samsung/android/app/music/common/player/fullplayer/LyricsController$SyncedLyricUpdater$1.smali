.class Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater$1;
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
    .line 583
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater$1;->this$1:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 586
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater$1;->this$1:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->access$1000(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;I)J

    .line 587
    return-void
.end method
