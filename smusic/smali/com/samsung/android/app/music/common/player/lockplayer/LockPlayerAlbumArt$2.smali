.class Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt$2;
.super Ljava/lang/Object;
.source "LockPlayerAlbumArt.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->initGestureInternal(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;

.field final synthetic val$detector:Landroid/view/GestureDetector;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;Landroid/view/GestureDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt$2;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;

    iput-object p2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt$2;->val$detector:Landroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt$2;->val$detector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
