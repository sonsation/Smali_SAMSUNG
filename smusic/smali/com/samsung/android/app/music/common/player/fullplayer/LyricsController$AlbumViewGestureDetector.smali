.class Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$AlbumViewGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "LyricsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumViewGestureDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;)V
    .locals 0

    .prologue
    .line 556
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$AlbumViewGestureDetector;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;
    .param p2, "x1"    # Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$1;

    .prologue
    .line 556
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$AlbumViewGestureDetector;-><init>(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 559
    invoke-static {}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlbumViewGestureDetector - onScroll"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$AlbumViewGestureDetector;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->access$900(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 565
    invoke-static {}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlbumViewGestureDetector - onSingleTapUp"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$AlbumViewGestureDetector;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->closeView(Z)V

    .line 567
    const/4 v0, 0x0

    return v0
.end method
