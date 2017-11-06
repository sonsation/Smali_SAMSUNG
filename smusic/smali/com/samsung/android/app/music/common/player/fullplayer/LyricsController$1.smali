.class Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$1;
.super Ljava/lang/Object;
.source "LyricsController.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/lyrics/LyricsCache$OnLyricsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLyricGetFinished(JLcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Ljava/lang/Object;)V
    .locals 1
    .param p1, "audioId"    # J
    .param p3, "lyrics"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .param p4, "user"    # Ljava/lang/Object;

    .prologue
    .line 106
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$1;->onLyricLoadFinished(JLcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method public onLyricLoadFinished(JLcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Ljava/lang/Object;)V
    .locals 3
    .param p1, "audioId"    # J
    .param p3, "lyrics"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .param p4, "user"    # Ljava/lang/Object;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->access$100(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->access$100(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->access$200(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;)Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;

    move-result-object v0

    iget-wide v0, v0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;->audioId:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->access$200(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;)Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;

    move-result-object v0

    iput-object p3, v0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;->lyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .line 119
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->access$302(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;Z)Z

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->access$200(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;)Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->access$400(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;)V

    .line 122
    :cond_1
    return-void

    .line 119
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
