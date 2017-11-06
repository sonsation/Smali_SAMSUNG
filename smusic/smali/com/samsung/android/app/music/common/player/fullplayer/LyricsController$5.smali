.class Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$5;
.super Ljava/lang/Object;
.source "LyricsController.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder$OnLyricsJumpedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->initLoggingInternal(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)V
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
    .line 173
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$5;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLyricsJumped(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 176
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$5;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->access$700(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;)Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$ILyricsLogger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$5;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->access$700(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;)Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$ILyricsLogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$ILyricsLogger;->onLoggingLyricsJumped()V

    .line 179
    :cond_0
    return-void
.end method
