.class Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$1;
.super Ljava/lang/Object;
.source "LockScreenFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$OnVisibilityChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    .prologue
    .line 649
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$1;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(I)V
    .locals 5
    .param p1, "visibility"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 652
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$1;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->access$500(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;)Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 662
    :goto_0
    return-void

    .line 655
    :cond_0
    if-nez p1, :cond_1

    .line 656
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$1;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$1;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->access$600(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$1;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->access$700(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->access$800(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;Landroid/view/View;Landroid/view/animation/Animation;I)V

    .line 657
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$1;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$1;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->access$900(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$1;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->access$700(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->access$800(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;Landroid/view/View;Landroid/view/animation/Animation;I)V

    goto :goto_0

    .line 660
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$1;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$1;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->access$600(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$1;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->access$1000(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->access$800(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;Landroid/view/View;Landroid/view/animation/Animation;I)V

    .line 661
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$1;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$1;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->access$900(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$1;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->access$1000(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->access$800(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;Landroid/view/View;Landroid/view/animation/Animation;I)V

    goto :goto_0
.end method
