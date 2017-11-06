.class Lcom/samsung/android/app/music/common/player/volume/VolumeController$2;
.super Landroid/view/View$AccessibilityDelegate;
.source "VolumeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/player/volume/VolumeController;->createVolumeButton(Landroid/view/View;)V
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
    .line 122
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController$2;->this$0:Lcom/samsung/android/app/music/common/player/volume/VolumeController;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 125
    const/16 v0, 0x40

    if-ne p2, v0, :cond_0

    .line 126
    const-string v0, "UiPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    invoke-static {}, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->access$1100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " performAccessibilityAction() - ACTION_ACCESSIBILITY_FOCUS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f120056

    if-ne v0, v1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController$2;->this$0:Lcom/samsung/android/app/music/common/player/volume/VolumeController;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->access$1200(Lcom/samsung/android/app/music/common/player/volume/VolumeController;)Lcom/samsung/android/app/music/common/player/volume/IVolumeControl;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/common/player/volume/IVolumeControl;->setContentDescription(Landroid/view/View;)V

    .line 132
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
