.class Lcom/samsung/android/app/music/common/activity/PlayerFragment$12;
.super Ljava/lang/Object;
.source "PlayerFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/PlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    .prologue
    .line 1377
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$12;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .prologue
    .line 1380
    const-string v0, "UiPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onWindowFocusChanged() - hasFocus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$12;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->access$900(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)Lcom/samsung/android/app/music/common/player/volume/VolumeControllable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1383
    if-nez p1, :cond_0

    .line 1384
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$12;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->access$900(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)Lcom/samsung/android/app/music/common/player/volume/VolumeControllable;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/common/player/volume/VolumeControllable;->hideVolumePanel()V

    .line 1386
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$12;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->access$900(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)Lcom/samsung/android/app/music/common/player/volume/VolumeControllable;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/common/player/volume/VolumeControllable;->updateVolumeUi()V

    .line 1388
    :cond_1
    return-void
.end method
