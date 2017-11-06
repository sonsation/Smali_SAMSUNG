.class Lcom/samsung/android/app/music/common/player/volume/VolumeController$3;
.super Ljava/lang/Object;
.source "VolumeController.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnVolumeControlChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/volume/VolumeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/volume/VolumeController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/volume/VolumeController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/volume/VolumeController;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController$3;->this$0:Lcom/samsung/android/app/music/common/player/volume/VolumeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPanelVisibilityChanged(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 332
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController$3;->this$0:Lcom/samsung/android/app/music/common/player/volume/VolumeController;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController$3;->this$0:Lcom/samsung/android/app/music/common/player/volume/VolumeController;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->access$1400(Lcom/samsung/android/app/music/common/player/volume/VolumeController;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->access$1500(Lcom/samsung/android/app/music/common/player/volume/VolumeController;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController$3;->this$0:Lcom/samsung/android/app/music/common/player/volume/VolumeController;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->access$1300(Lcom/samsung/android/app/music/common/player/volume/VolumeController;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController$3;->this$0:Lcom/samsung/android/app/music/common/player/volume/VolumeController;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->access$1300(Lcom/samsung/android/app/music/common/player/volume/VolumeController;)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_3

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 335
    :cond_0
    if-eqz p1, :cond_1

    .line 336
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController$3;->this$0:Lcom/samsung/android/app/music/common/player/volume/VolumeController;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->access$1600(Lcom/samsung/android/app/music/common/player/volume/VolumeController;)V

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController$3;->this$0:Lcom/samsung/android/app/music/common/player/volume/VolumeController;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->access$1700(Lcom/samsung/android/app/music/common/player/volume/VolumeController;)Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnPanelVisibilityChangedListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 339
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController$3;->this$0:Lcom/samsung/android/app/music/common/player/volume/VolumeController;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->access$1700(Lcom/samsung/android/app/music/common/player/volume/VolumeController;)Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnPanelVisibilityChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnPanelVisibilityChangedListener;->onPanelVisibilityChanged(Z)V

    .line 341
    :cond_2
    return-void

    .line 333
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onVolumeStateChanged(Z)V
    .locals 1
    .param p1, "isOutput"    # Z

    .prologue
    .line 324
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController$3;->this$0:Lcom/samsung/android/app/music/common/player/volume/VolumeController;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->access$1300(Lcom/samsung/android/app/music/common/player/volume/VolumeController;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController$3;->this$0:Lcom/samsung/android/app/music/common/player/volume/VolumeController;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->access$1300(Lcom/samsung/android/app/music/common/player/volume/VolumeController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    .line 327
    :cond_0
    return-void
.end method
