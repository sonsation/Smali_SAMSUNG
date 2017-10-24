.class Lcom/android/server/desktopmode/DesktopModeService$3;
.super Ljava/lang/Object;
.source "DesktopModeService.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/desktopmode/DesktopModeService;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$3;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputDeviceAdded(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$3;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap22(Lcom/android/server/desktopmode/DesktopModeService;)V

    .line 207
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$3;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap20(Lcom/android/server/desktopmode/DesktopModeService;)V

    .line 208
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$3;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap24(Lcom/android/server/desktopmode/DesktopModeService;)V

    .line 205
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 221
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 4
    .param p1, "deviceId"    # I

    .prologue
    const/16 v1, 0x6b

    .line 213
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$3;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap22(Lcom/android/server/desktopmode/DesktopModeService;)V

    .line 214
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$3;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap20(Lcom/android/server/desktopmode/DesktopModeService;)V

    .line 215
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$3;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get4(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->removeMessages(I)V

    .line 216
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$3;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get4(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    move-result-object v0

    .line 217
    const-wide/16 v2, 0xbb8

    .line 216
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 212
    return-void
.end method
