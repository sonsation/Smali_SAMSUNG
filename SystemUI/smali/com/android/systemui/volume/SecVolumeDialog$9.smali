.class Lcom/android/systemui/volume/SecVolumeDialog$9;
.super Ljava/lang/Object;
.source "SecVolumeDialog.java"

# interfaces
.implements Lcom/android/systemui/volume/VolumeDialogMotion$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/SecVolumeDialog;->initDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 770
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimatingChanged(Z)V
    .locals 3
    .param p1, "animating"    # Z

    .prologue
    const/4 v2, 0x0

    .line 773
    if-eqz p1, :cond_0

    .line 774
    return-void

    .line 775
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->-get31(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 776
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->-get20(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$H;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$H;->sendEmptyMessage(I)Z

    .line 777
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0, v2}, Lcom/android/systemui/volume/SecVolumeDialog;->-set18(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z

    .line 779
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->-get30(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 780
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->-get20(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$H;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$H;->sendEmptyMessage(I)Z

    .line 781
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0, v2}, Lcom/android/systemui/volume/SecVolumeDialog;->-set17(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z

    .line 772
    :cond_2
    return-void
.end method
