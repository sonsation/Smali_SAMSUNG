.class Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerPrimaryColorUpdater$1;
.super Ljava/lang/Object;
.source "LockScreenFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerPrimaryColorUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerPrimaryColorUpdater;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerPrimaryColorUpdater;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerPrimaryColorUpdater;

    .prologue
    .line 594
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerPrimaryColorUpdater$1;->this$1:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerPrimaryColorUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetTintInfo(Landroid/net/Uri;JLcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;)V
    .locals 2
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "albumId"    # J
    .param p4, "tintInfo"    # Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 598
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerPrimaryColorUpdater$1;->this$1:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerPrimaryColorUpdater;

    iget-object v0, v0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerPrimaryColorUpdater;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->access$200(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;)Lcom/samsung/android/app/music/common/player/FavoriteController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerPrimaryColorUpdater$1;->this$1:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerPrimaryColorUpdater;

    iget-object v0, v0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerPrimaryColorUpdater;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->access$200(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;)Lcom/samsung/android/app/music/common/player/FavoriteController;

    move-result-object v0

    iget v1, p4, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;->gradientColorA:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/FavoriteController;->setPrimaryColor(I)V

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerPrimaryColorUpdater$1;->this$1:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerPrimaryColorUpdater;

    iget-object v0, v0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerPrimaryColorUpdater;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->access$400(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;)Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    move-result-object v0

    iget v1, p4, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;->primaryColor:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->setPrimaryColor(I)V

    .line 604
    return-void
.end method
