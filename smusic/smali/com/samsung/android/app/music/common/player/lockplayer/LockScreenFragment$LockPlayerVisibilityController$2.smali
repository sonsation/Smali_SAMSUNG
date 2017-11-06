.class Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$2;
.super Ljava/lang/Object;
.source "LockScreenFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;)V
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
    .line 685
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$2;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 688
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$2;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->access$1100(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;)Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->openViewIfHasLyrics(Z)V

    .line 689
    return-void
.end method
