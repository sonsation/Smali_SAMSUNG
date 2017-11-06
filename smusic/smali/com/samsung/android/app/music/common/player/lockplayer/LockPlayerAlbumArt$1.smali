.class Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "LockPlayerAlbumArt.java"


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

.field final synthetic val$a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt$1;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;

    iput-object p2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt$1;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distX"    # F
    .param p4, "distY"    # F

    .prologue
    .line 158
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt$1;->val$a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 159
    const/4 v0, 0x1

    return v0
.end method
