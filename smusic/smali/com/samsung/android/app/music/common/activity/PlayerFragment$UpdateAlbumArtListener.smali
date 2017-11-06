.class Lcom/samsung/android/app/music/common/activity/PlayerFragment$UpdateAlbumArtListener;
.super Ljava/lang/Object;
.source "PlayerFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$OnUpdateAlbumArtListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/PlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateAlbumArtListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)V
    .locals 0

    .prologue
    .line 1260
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$UpdateAlbumArtListener;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/common/activity/PlayerFragment;Lcom/samsung/android/app/music/common/activity/PlayerFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/common/activity/PlayerFragment;
    .param p2, "x1"    # Lcom/samsung/android/app/music/common/activity/PlayerFragment$1;

    .prologue
    .line 1260
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/activity/PlayerFragment$UpdateAlbumArtListener;-><init>(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)V

    return-void
.end method


# virtual methods
.method public OnUpdateAlbumArt(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$UpdateAlbumArtListener;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->access$1200(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)Lcom/samsung/android/app/music/common/view/PlayerTransitionController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1264
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$UpdateAlbumArtListener;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->access$1200(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)Lcom/samsung/android/app/music/common/view/PlayerTransitionController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->updateFakeAlbumView(Landroid/graphics/Bitmap;)V

    .line 1266
    :cond_0
    return-void
.end method

.method public onAlbumArtAnimation(Z)V
    .locals 1
    .param p1, "isAnimating"    # Z

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$UpdateAlbumArtListener;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->access$1300(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)Lcom/samsung/android/app/music/common/player/ShuffleController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1271
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$UpdateAlbumArtListener;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->access$1300(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)Lcom/samsung/android/app/music/common/player/ShuffleController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/player/ShuffleController;->setEnabled(Z)V

    .line 1273
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$UpdateAlbumArtListener;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->access$1400(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)Lcom/samsung/android/app/music/common/player/RepeatController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1274
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$UpdateAlbumArtListener;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->access$1400(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)Lcom/samsung/android/app/music/common/player/RepeatController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/player/RepeatController;->setEnabled(Z)V

    .line 1276
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$UpdateAlbumArtListener;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->access$900(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)Lcom/samsung/android/app/music/common/player/volume/VolumeControllable;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 1277
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$UpdateAlbumArtListener;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->access$900(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)Lcom/samsung/android/app/music/common/player/volume/VolumeControllable;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/common/player/volume/VolumeControllable;->hideVolumePanel()V

    .line 1279
    :cond_2
    return-void
.end method
