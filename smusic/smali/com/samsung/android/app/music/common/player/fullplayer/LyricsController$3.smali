.class Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$3;
.super Ljava/lang/Object;
.source "LyricsController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;-><init>(Landroid/view/View;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
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
    .line 136
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$3;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$3;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->access$500(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
